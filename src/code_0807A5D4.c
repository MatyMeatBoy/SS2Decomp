#include "global.h"
struct Entry852CC { u32 data[4]; };
extern struct Collection852CC *collection852CC asm("gUnk_03006440");
struct Collection852CC { u32 kind; u8 pad[0x100]; struct Entry852CC entries[1]; };
void sub_0805FB7C(u32,u32,u32,u32);
void sub_0801A664(u32,u32);
extern struct Map85064 map85064 asm("gUnk_03005740");
struct Map85064 { u8 pad[0xE8]; u16 tile[1]; };
extern struct UiMap85014 uiMap85014 asm("gUnk_03005740");
struct UiMap85014 { u8 pad[0x2C]; u16 data[1][32]; };
void sub_08085518(void);
extern u32 task84f9c[] asm("gUnk_03006450");
void sub_08082BB0(void);
void sub_080854A0(void);
extern u32 task84f24[] asm("gUnk_03006450");
void sub_08085484(void);
extern u32 task84eac[] asm("gUnk_03006450");

void sub_080852AC(void);
void sub_0808381C(u32 index);
void sub_08083AE8(u32 index);
void sub_08085534(s32 arg0, s32 arg1);
extern u8 gUnk_03005740[];
extern u32 gUnk_084ECBDC[];
extern u32 gUnk_084ECC04[];
void sub_0801A664(u32 index, u32 value);
u32 sub_08065158(void *arg0, u32 arg1, u32 arg2, s32 arg3, s32 arg4);
void sub_08065230(void *arg0, s32 arg1, s32 arg2, u16 arg3, s32 arg4);
void sub_0801A3D0(u8 *arg0, u32 arg1, u32 arg2);
void sub_0805FB7C(u32 arg0, u32 arg1, u32 arg2, u32 arg3);

void sub_08083AE8(u32 index);
void sub_0808381C(u32 index);

extern const u32 gUnk_084EBD4C[];

// Stat/skill allocation menu. `height` is a function-lifetime constant: reload rematerializes it
// at the second sub_0800903C call, which keeps the original reload-register rotation.
// Empty constraints retain the original pointer reloads and constant lifetimes.
struct SkillA5D4 { u16 level, exp; };
struct SkillsA5D4 { u16 points; u16 pad; struct SkillA5D4 e[8]; };
struct StatsA5D4 { s16 v[5]; u16 points; s16 rest[10]; };
struct ResultA5D4 { s16 v[0x18]; };
struct DataA5D4 {
    u8 *name;
    u8 pad4[0xC];
    struct StatsA5D4 stats;  /* 0x10 */
    struct SkillsA5D4 skills; /* 0x30 */
};
struct MgrA5D4 {
    u32 f0;
    u32 state;
    u8 pad8[4];
    u32 cursor;
    u8 pad10[4];
    u32 prev;
    u8 pad18[0xC];
    u32 run;
    u8 pad28[0x5B8 - 0x28];
    u8 sprite[0x68];
    u32 f620;
};
struct PlayerA5D4 { u8 pad[0x30]; u32 flags; u8 pad34[4]; s16 stat[4]; u8 pad40[0x20]; u16 f60, f62; u8 pad64[0x14C - 0x64]; };
struct StageA5D4 { u8 pad[0x1FA]; u16 value; };
struct IndexA5D4 { u8 pad[0x14A]; u16 value; };
union BgA5D4 { u32 word; u16 half[2]; };

extern struct MgrA5D4 *mgrA5D4 asm("gUnk_03006440");
extern struct DataA5D4 *dataA5D4 asm("gUnk_030034E0");
extern struct PlayerA5D4 playersA5D4[] asm("gUnk_03003CE0");
extern struct StageA5D4 stageA5D4 asm("gUnk_03001F40");
extern struct IndexA5D4 *indexA5D4 asm("gUnk_03005CF4");
extern u16 tableA5D4Stage[] asm("gUnk_084EBD38");
extern u16 keysA5D4_Held asm("gUnk_03001308");
extern u16 keysA5D4_Rep asm("gUnk_0300130C");
extern u16 keysA5D4_New asm("gUnk_03001324");
void sub_08000990(s32, s32);
void sub_080009F8(s32, s32, s32);
void sub_0801AB50(s32);
void sub_08058688(s32);
void sub_080586B4(s32);
s32 sub_08057B64(s32);
void sub_0802A590(s32, s32);
void sub_0801A664(u32 index, u32 value);
u32 sub_08065158(void *arg0, u32 arg1, u32 arg2, s32 arg3, s32 arg4);
void sub_08065230(void *arg0, s32 arg1, s32 arg2, u16 arg3, s32 arg4);
void sub_0801A3D0(u8 *arg0, u32 arg1, u32 arg2);
void sub_0805FB7C(u32 arg0, u32 arg1, u32 arg2, u32 arg3);
void sub_08065504(s32, s32, s32, s32, s32);
void sub_08085014(u32, u32, u32);
void sub_0808516C(void);
s16 sub_0801A638_s16(u8 *) asm("sub_0801A638");

void sub_0807A5D4_v(void) asm("sub_0807A5D4");
static inline struct DataA5D4 *readDataA5D4(void) {
    struct DataA5D4 **addr = &dataA5D4;
    asm("" : "+r"(addr));
    return *addr;
}
static inline struct MgrA5D4 *readMgrA5D4(void) {
    struct MgrA5D4 **addr = &mgrA5D4;
    asm("" : "+r"(addr));
    return *addr;
}
/* [TaskCharacterStatAndSkillAllocationMenu] No meaningful input or return. Uses shared manager0x03006440,
 * local player and saved-character pointer0x030034E0. Initializes graphics, two tabs and five-effect task
 * pool, gated by initial scene/player conditions. State0/1 shows stats/skills; A enters temporary edits
 * state2/3. Four stat rows spend available halfword points, with maxima500 except row3 max333; left only
 * reverses changes from this session, A commits32-byte saved-stat block, B discards deltas. Eight skill rows
 * spend points into level/progress, level capped7; A commits36-byte work block and B restores snapshot;
 * successful level increments start indicator task. */
void sub_0807A5D4_v(void)
{
    struct StatsA5D4 stats;
    struct StatsA5D4 saved;
    struct StatsA5D4 backup;
    struct StatsA5D4 scratch;
    struct ResultA5D4 res;
    struct SkillsA5D4 delta;
    struct SkillsA5D4 undo;
    struct SkillsA5D4 work;
    u16 zero1, zero2, zero3;
    u16 iconH;
    u16 iconW;
    union BgA5D4 bg;
    s32 anim;
    u32 scroll;
    u32 bounce;
    u32 phase;
    s32 from;
    s32 to;
    s32 t;
    s32 dirty;
    struct PlayerA5D4 *player;
    u8 *text;
    u8 *p;
    s32 w;
    u32 i;
    s32 y;
    u32 state;
    u32 mode;
    u32 flag;
    u32 height;

    mgrA5D4->f0 = 1;
    sub_080009F8(0x1F00, 0, 1);
    player = &playersA5D4[sub_080020F4()];
    gUnk_03001250[1] = 0;
    gUnk_03001250[0] = 0;
    gUnk_03001250[3] = 0;
    gUnk_03001250[2] = 0;
    gUnk_03001250[5] = 0;
    gUnk_03001250[4] = 0;
    gUnk_03001250[7] = 0;
    gUnk_03001250[6] = 0;
    sub_0800B7DC(sub_0801DE60() + 6, 0x1D, 0x06000000, 0, 0xF);
    sub_0800B7DC(0xF, 0x1A, 0x06000000, 0, 0xF);
    sub_0800B7DC(0xE, 0x1B, 0x06000000, 0, 0xF);
    sub_0800B650(0x40000004, 0x1F, 0x06000000, 0, 0xE);
    sub_0800903C(4, 0x38, 1, 10, 7, 0);
    sub_08000AF0(0xE, (void *)(sub_08007290(0x70003) + 0x1C0), 1);
    stageA5D4.value = tableA5D4Stage[indexA5D4->value];
    switch (gUnk_03003470) {
    case 0: sub_08065158(mgrA5D4->sprite, 0x50006, 0, -1, 0); break;
    case 1: sub_08065158(mgrA5D4->sprite, 0x50007, 0, -1, 0); break;
    case 2: sub_08065158(mgrA5D4->sprite, 0x50008, 0, -1, 0); break;
    case 3: sub_08065158(mgrA5D4->sprite, 0x50009, 0, -1, 0); break;
    case 4: sub_08065158(mgrA5D4->sprite, 0x5000A, 0, -1, 0); break;
    }
    sub_08000990(0, 1);
    sub_080009C0(0x1F00, 0, 1);
    bg.word = (bg.word & 0xFFFF0000) | 0x1D01;
    sub_08000AA8(1, bg.half);
    bg.half[0] = 0x9A02;
    sub_08000AA8(2, bg.half);
    bg.half[0] = 0x1F03;
    sub_08000AA8(3, bg.half);
    phase = 0;
    bounce = 10;
    scroll = 0;
    height = 7;
    t = 0x400;
    mgrA5D4->run = 1;
    mgrA5D4->state = 0;
    mgrA5D4->cursor = 0xFFFF;
    mgrA5D4->f620 = 0;
    sub_08000C08(8, 2);
    if (sub_0805F184() == 0 && sub_0800CDF8() == 0 && sub_0800D060() == 0
        && !(playersA5D4[sub_080020F4()].flags & 0x2000)) {
        sub_0808516C();
        sub_0801AB50(6);
        if (sub_0800CB9C() == 0)
            sub_08058688(0xD7);
        while (mgrA5D4->run != 0) {
            if ((sub_0800CF10() != 0 || sub_0805F184() != 0 || sub_0800CDF8() != 0 || sub_0800D060() != 0
                 || (playersA5D4[sub_080020F4()].flags & 0x2000))
                && sub_0801AAE0() != 0)
                mgrA5D4->run = 0;
            if (sub_0800CD8C() != 0 || sub_0801AAE0() == 0) {
                keysA5D4_Rep = 0;
                keysA5D4_New = 0;
                keysA5D4_Held = 0;
            }
            if (sub_080021A8() != 0)
                break;
            switch (mgrA5D4->state) {
            case 0:
                if (keysA5D4_Held & 0x10) {
                    mgrA5D4->state = 1;
                    sub_0805865C(0xE);
                        break;
                }
                if (keysA5D4_New & 2) {
                    sub_0805865C(0x10);
                    mgrA5D4->run = 0;
                    break;
                }
                if (keysA5D4_New & 1) {
                    *(vu16 *)&readDataA5D4()->stats.points;
                    readMgrA5D4()->state = 2;
                    {
                        u16 *fillAddr = &zero1;
                        register u32 fillZero asm("r1");
                        
                        fillZero = 0;
                        
                        *fillAddr = fillZero;
                        CpuSet(fillAddr, &stats, 0x01000010);
                    }
                    CpuCopy16(&readDataA5D4()->stats, &saved, 0x20);
                    {
                        struct MgrA5D4 *mgr = readMgrA5D4();
                        register u32 reset asm("r0") = 0;
                        
                        mgr->cursor = reset;
                        mgr->prev = reset;
                    }
                    to = 0x2E;
                    sub_0805865C(0xF);
                        break;
                }
                break;
            case 1:
                if (keysA5D4_Held & 0x20) {
                    mgrA5D4->state = 0;
                    sub_0805865C(0xE);
                        break;
                }
                if (keysA5D4_New & 2) {
                    mgrA5D4->run = 0;
                    break;
                }
                if (keysA5D4_New & 1) {
                    *(vu16 *)&readDataA5D4()->skills.points;
                    readMgrA5D4()->state = 3;
                    {
                        u16 *fillAddr = &zero2;
                        register u32 fillZero asm("r1");
                        
                        fillZero = 0;
                        
                        *fillAddr = fillZero;
                        {
                            struct SkillsA5D4 *fillDest = &delta;
                            
                            CpuSet(fillAddr, fillDest, 0x01000012);
                        }
                    }
                    CpuCopy16(&dataA5D4->skills, &undo, 0x24);
                    CpuCopy16(&dataA5D4->skills, &work, 0x24);
                    {
                        struct MgrA5D4 *mgr = readMgrA5D4();
                        register u32 reset asm("r0") = 0;
                        
                        mgr->cursor = reset;
                        mgr->prev = reset;
                    }
                    to = 0x2F;
                    sub_0805865C(0xF);
                }
                break;
            case 2:
                if (keysA5D4_New & 2) {
                    mgrA5D4->state = 0;
                    zero3 = 0; CpuSet(&zero3, &stats, 0x01000010);
                    sub_0805865C(0x10);
                        break;
                }
                if (keysA5D4_Held & 0x80) {
                    if (mgrA5D4->cursor <= 2) {
                        mgrA5D4->cursor++;
                        sub_0805865C(0xE);
                        break;
                    }
                    break;
                }
                if (keysA5D4_Held & 0x40) {
                    if (mgrA5D4->cursor != 0) {
                        mgrA5D4->cursor--;
                        sub_0805865C(0xE);
                    }
                    break;
                }
                if (keysA5D4_New & 1) {
                    sub_0805865C(0xF);
                    mgrA5D4->state = 0;
                    CpuCopy16(&saved, &dataA5D4->stats, 0x20);
                    break;
                }
                if (keysA5D4_Held & 0x10) {
                    if (saved.points == 0)
                        break;
                    switch (mgrA5D4->cursor) {
                    case 0:
                        if (saved.v[0] > 499)
                            break;
                        stats.v[0]++;
                        saved.v[0]++;
                        saved.points--;
                        stats.points++;
                        sub_0805865C(0x62);
                        break;
                    case 3:
                        if (saved.v[3] > 332)
                            break;
                        stats.v[3]++;
                        saved.v[3]++;
                        saved.points--;
                        stats.points++;
                        sub_0805865C(0x62);
                        break;
                    case 2:
                        if (saved.v[2] > 499)
                            break;
                        stats.v[2]++;
                        saved.v[2]++;
                        saved.points--;
                        stats.points++;
                        sub_0805865C(0x62);
                        break;
                    case 1:
                        if (saved.v[1] > 499)
                            break;
                        stats.v[1]++;
                        saved.v[1]++;
                        saved.points--;
                        stats.points++;
                        sub_0805865C(0x62);
                        break;
                    }
                } else if (keysA5D4_Held & 0x20) {
                    switch (mgrA5D4->cursor) {
                    case 0:
                        if (stats.v[0] == 0)
                            break;
                        stats.points--;
                        saved.points++;
                        stats.v[0]--;
                        saved.v[0]--;
                        sub_0805865C(0x62);
                        break;
                    case 3:
                        if (stats.v[3] == 0)
                            break;
                        stats.points--;
                        saved.points++;
                        stats.v[3]--;
                        saved.v[3]--;
                        sub_0805865C(0x62);
                        break;
                    case 2:
                        if (stats.v[2] == 0)
                            break;
                        stats.points--;
                        saved.points++;
                        stats.v[2]--;
                        saved.v[2]--;
                        sub_0805865C(0x62);
                        break;
                    case 1:
                        if (stats.v[1] == 0)
                            break;
                        stats.points--;
                        saved.points++;
                        stats.v[1]--;
                        saved.v[1]--;
                        sub_0805865C(0x62);
                        break;
                    }
                }
                break;
            case 3:
                if (keysA5D4_New & 2) {
                    CpuCopy16(&undo, &dataA5D4->skills, 0x24);
                    mgrA5D4->state = 1;
                    sub_0805865C(0x10);
                    break;
                }
                if (keysA5D4_Held & 0x80) {
                    if (mgrA5D4->cursor <= 6) {
                        mgrA5D4->cursor++;
                        sub_0805865C(0x62);
                        break;
                    }
                    break;
                }
                if (keysA5D4_Held & 0x40) {
                    if (mgrA5D4->cursor != 0) {
                        mgrA5D4->cursor--;
                        sub_0805865C(0x62);
                    }
                    break;
                }
                if (keysA5D4_New & 1) {
                    sub_0805865C(0xF);
                    mgrA5D4->state = 1;
                    CpuCopy16(&work, &dataA5D4->skills, 0x24);
                    break;
                }
                if (keysA5D4_Held & 0x10) {
                    if (work.points == 0)
                        break;
                    if (work.e[mgrA5D4->cursor].level > 6)
                        break;
                    sub_0805865C(0x3A);
                    work.e[mgrA5D4->cursor].exp++;
                    if (work.e[mgrA5D4->cursor].exp >= work.e[mgrA5D4->cursor].level + 1) {
                        work.e[mgrA5D4->cursor].level = work.e[mgrA5D4->cursor].level + 1;
                        delta.e[mgrA5D4->cursor].level++;
                        work.points--;
                        delta.points++;
                        delta.e[mgrA5D4->cursor].exp++;
                        sub_08085218(0xA0, mgrA5D4->cursor * 8 + 0x28);
                        if (work.e[mgrA5D4->cursor].level <= 6) {
                            work.e[mgrA5D4->cursor].exp = 0;
                        } else {
                            work.e[mgrA5D4->cursor].exp = 0;
                            work.e[mgrA5D4->cursor].level = 7;
                        }
                    } else {
                        delta.e[mgrA5D4->cursor].exp++;
                        work.points--;
                        delta.points++;
                    }
                } else if (keysA5D4_Held & 0x20) {
                    if (delta.e[mgrA5D4->cursor].exp == 0)
                        break;
                    sub_0805865C(0x3C);
                    work.e[mgrA5D4->cursor].exp--;
                    delta.e[mgrA5D4->cursor].exp--;
                    work.points++;
                    if (work.e[mgrA5D4->cursor].exp & 0x8000) {
                        work.e[mgrA5D4->cursor].level--;
                        if (work.e[mgrA5D4->cursor].level & 0x8000)
                            work.e[mgrA5D4->cursor].level = 0;
                        work.e[mgrA5D4->cursor].exp = work.e[mgrA5D4->cursor].level;
                    }
                }
                break;
            case 4:
            case 5:
                break;
            }
            switch (mgrA5D4->state) {
            case 0:
                gUnk_03001250[5] = 0;
                if (dirty) {
                    sub_0801A664(2, 0x12);
                    dirty = 0;
                }
                break;
            case 1:
                gUnk_03001250[5] = 0x100;
                if (dirty) {
                    sub_0801A664(2, 0x12);
                    dirty = 0;
                }
                break;
            case 2:
                if (mgrA5D4->cursor != mgrA5D4->prev) {
                    from = mgrA5D4->prev * 8 + 0x2E;
                    to = mgrA5D4->cursor * 8 + 0x2E;
                    mgrA5D4->prev = mgrA5D4->cursor;
                    t = 0;
                }
                if (t > 0x400) {
                    anim = to;
                } else {
                    sub_080659F4(&anim, from, to, t);
                    t += (0x400 - t) >> 1;
                    if (((0x400 - t) >> 1) == 0)
                        t++;
                }
                sub_080659BC(mgrA5D4->sprite, 8, anim, 0x16, 0, 2);
                if (saved.points != 0) {
                    switch (mgrA5D4->cursor) {
                    case 0: sub_08065230(mgrA5D4->sprite, 0x40, 0x2F, 3, 1); break;
                    case 1: sub_08065230(mgrA5D4->sprite, 0x40, 0x37, 3, 1); break;
                    case 2: sub_08065230(mgrA5D4->sprite, 0x40, 0x3F, 3, 1); break;
                    case 3: sub_08065230(mgrA5D4->sprite, 0x40, 0x47, 3, 1); break;
                    }
                }
                switch (mgrA5D4->cursor) {
                case 0: if (stats.v[0] != 0) sub_08065230(mgrA5D4->sprite, 0x20, 0x2F, 3, 2); break;
                case 1: if (stats.v[1] != 0) sub_08065230(mgrA5D4->sprite, 0x20, 0x37, 3, 2); break;
                case 2: if (stats.v[2] != 0) sub_08065230(mgrA5D4->sprite, 0x20, 0x3F, 3, 2); break;
                case 3: if (stats.v[3] != 0) sub_08065230(mgrA5D4->sprite, 0x20, 0x47, 3, 2); break;
                }
                text = (u8 *)sub_08007290((mgrA5D4->cursor + 1000) | 0x140000);
                p = text + 2;
                sub_0801A3D0(p, (u16)(15 - ((u32)sub_0801A638(p) >> 1)), 0x11);
                dirty = 1;
                break;
            case 3: {
                register u32 one asm("r5");
                if (mgrA5D4->cursor != mgrA5D4->prev) {
                    from = mgrA5D4->prev * 8 + 0x2F;
                    to = mgrA5D4->cursor * 8 + 0x2F;
                    mgrA5D4->prev = mgrA5D4->cursor;
                    t = 0;
                }
                if (t > 0x400) {
                    anim = to;
                } else {
                    sub_080659F4(&anim, from, to, t);
                    t += (0x400 - t) >> 1;
                    if (((0x400 - t) >> 1) == 0)
                        t++;
                }
                switch (sub_0801DE60()) {
                case 0: text = (u8 *)sub_08007290((mgrA5D4->cursor + 0x3ED) | 0x140000); break;
                case 1: text = (u8 *)sub_08007290((mgrA5D4->cursor + 0x3F5) | 0x140000); break;
                case 2: text = (u8 *)sub_08007290((mgrA5D4->cursor + 0x3FD) | 0x140000); break;
                case 3: text = (u8 *)sub_08007290((mgrA5D4->cursor + 0x405) | 0x140000); break;
                case 4: text = (u8 *)sub_08007290((mgrA5D4->cursor + 0x40D) | 0x140000); break;
                case 5: text = (u8 *)sub_08007290((mgrA5D4->cursor + 0x415) | 0x140000); break;
                case 6: text = (u8 *)sub_08007290((mgrA5D4->cursor + 0x41D) | 0x140000); break;
                case 7: text = (u8 *)sub_08007290((mgrA5D4->cursor + 0x425) | 0x140000); break;
                }
                p = text + 2;
                { u16 x; w = sub_0801A638_s16(p); x = -(w / 2 + (w & ({ one = 1; one; }))); sub_0801A3D0(p, (u16)(x + 15), 0x11); }
                sub_080659BC(mgrA5D4->sprite, 0x70, anim, 0x16, one, 2);
                dirty = 1;
                break;
            }
            case 4:
                break;
            }
            if (mgrA5D4->state <= 1) {
                s32 v = gUnk_080B9704[phase]; bounce = (v >> 6) + 6;
            } else {
                bounce++;
                if (bounce > 10)
                    bounce = 10;
            }
            phase += 4;
            if (phase > 0xFF)
                phase = 0;
            sub_0800903C(4, 0x38, 1, (u16)bounce, height, 0);
            scroll += 0x40;
            gUnk_03001250[7] = scroll >> 8;
            sub_0801A3D0((u8 *)dataA5D4, 0x11, 0xE);
            sub_0805FB7C(0xC, 0xB, *(s32 *)((u8 *)dataA5D4 + 0x20) + 1, 0);
            sub_08065504(0x1C, 1, *(s32 *)((u8 *)dataA5D4 + 0x1C), 0, 10);
            {
            state = mgrA5D4->state;
            if (state != 3) {
                if (state == 2) {
                    CpuCopy16(&dataA5D4->stats, &backup, 0x20);
                    CpuCopy16(&saved, &dataA5D4->stats, 0x20);
                    sub_0801BA74(player, 0, &scratch, &res, (s32)&dataA5D4->skills);
                    player->f62 = res.v[5];
                    player->f60 = res.v[4];
                    CpuCopy16(&backup, &dataA5D4->stats, 0x20);
                    sub_0805FB7C(7, 3, saved.points, 0);
                    if (stats.v[0]) flag = state; else flag = 0;
                    sub_0805FB7C(7, 5, saved.v[0], flag);
                    if (stats.v[1]) flag = state; else flag = 0;
                    sub_0805FB7C(7, 6, saved.v[1], flag);
                    if (stats.v[2]) flag = state; else flag = 0;
                    sub_0805FB7C(7, 7, saved.v[2], flag);
                    if (stats.v[3]) flag = state; else flag = 0;
                    sub_0805FB7C(7, 8, saved.v[3], flag);
                } else {
                    sub_0801BA74(player, 0, &stats, &res, (s32)&dataA5D4->skills);
                    sub_0805FB7C(7, 3, dataA5D4->stats.points, 0);
                    if (stats.v[0]) flag = 2; else flag = 0;
                    sub_0805FB7C(7, 5, player->stat[0], flag);
                    if (stats.v[1]) flag = 2; else flag = 0;
                    sub_0805FB7C(7, 6, player->stat[1], flag);
                    if (stats.v[2]) flag = 2; else flag = 0;
                    sub_0805FB7C(7, 7, player->stat[2], flag);
                    if (stats.v[3]) flag = 2; else flag = 0;
                    sub_0805FB7C(7, 8, player->stat[3], flag);
                }
                sub_0805FB7C(7, 0xA, res.v[0], 0);
                sub_0805FB7C(7, 0xB, res.v[1], 0);
                sub_0805FB7C(5, 0xD, res.v[0x12], 0);
                sub_0805FB7C(5, 0xE, res.v[0x13], 0);
                sub_0805FB7C(5, 0xF, res.v[0x14], 0);
                sub_0805FB7C(0xC, 0xD, res.v[0x15], 0);
                sub_0805FB7C(0xC, 0xE, res.v[0x16], 0);
                sub_0805FB7C(0xC, 0xF, res.v[0x17], 0);
                sub_08085064(dataA5D4->skills.points);
                for (i = 0; i <= 7; i++) {
                    sub_0805FB7C(0x15, i + 5, dataA5D4->skills.e[i].level, 0);
                    if (dataA5D4->skills.e[i].level <= 6) {
                        sub_08085014(i, dataA5D4->skills.e[i].level + 1, 3);
                        sub_08085014(i, dataA5D4->skills.e[i].exp, 0);
                    } else {
                        sub_08065370(mgrA5D4->sprite, 0x23, (s32)&iconH, (s32)&iconW, 1);
                        sub_08065230(mgrA5D4->sprite, 0xB0, i * 8 + 0x30, 0x23, iconH);
                    }
                }
            } else {
                sub_0801BA74(player, 0, &stats, &res, (s32)&work);
                sub_0805FB7C(7, 0xA, res.v[0], 0);
                sub_0805FB7C(7, 0xB, res.v[1], 0);
                sub_0805FB7C(5, 0xD, res.v[0x12], 0);
                sub_0805FB7C(5, 0xE, res.v[0x13], 0);
                sub_0805FB7C(5, 0xF, res.v[0x14], 0);
                sub_0805FB7C(0xC, 0xD, res.v[0x15], 0);
                sub_0805FB7C(0xC, 0xE, res.v[0x16], 0);
                sub_0805FB7C(0xC, 0xF, res.v[0x17], 0);
                sub_0805FB7C(7, 3, dataA5D4->stats.points, 0);
                if (stats.v[0]) flag = 2; else flag = 0;
                sub_0805FB7C(7, 5, stats.v[0], flag);
                if (stats.v[1]) flag = 2; else flag = 0;
                sub_0805FB7C(7, 6, stats.v[1], flag);
                if (stats.v[2]) flag = 2; else flag = 0;
                sub_0805FB7C(7, 7, stats.v[2], flag);
                if (stats.v[3]) flag = 2; else flag = 0;
                sub_0805FB7C(7, 8, stats.v[3], flag);
                sub_08085064(work.points);
                for (i = 0; i <= 7; i++) {
                    sub_0805FB7C(0x15, i + 5, work.e[i].level, 0);
                    if (work.e[i].level <= 6) {
                        sub_08085014(i, work.e[i].level + 1, 3);
                        sub_08085014(i, work.e[i].exp, 0);
                    } else {
                        sub_08065370(mgrA5D4->sprite, 0x23, (s32)&iconH, (s32)&iconW, 1);
                        sub_08065230(mgrA5D4->sprite, 0xB0, i * 8 + 0x30, 0x23, iconH);
                    }
                }
            }
            }
            sub_080003F0();
        }
        sub_0806617C();
        sub_080586B4(0);
        sub_0801ABE8(6);
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        sub_0800D2F4();
        sub_080851B8();
    }
    sub_08000C08(0x10, 8);
    sub_0800903C(0, 0, 0, 0, 0, 0);
    playersA5D4[sub_080020F4()].flags &= ~8;
    sub_0801A664(2, 0x11);
    i = sub_08057B64(3);
    if (i - 2 <= 7)
        sub_0802A590(0, 0xE);
    sub_08000420(0x11201100);
}
struct Pair7B7B4 { u32 a, b; };
struct Mgr7B7B4 {
    u32 f0;
    u32 f4;
    u32 f8;
    u8 padC[0xC];
    u32 f18;
    u32 f1C;
    u32 f20;
    u32 f24;
    u32 f28;
    u32 f2C;
    u8 pad30[4];
    u32 f34;
    u32 f38;
    u8 pad3C[0x10];
    u16 f4C, f4E, f50, f52;
    u8 pad54[0x14];
    u16 f68;
    u16 f6A;
    u8 pad6C[8];
    struct Pair7B7B4 rows[6];
    u8 padA4[0x34];
    u32 fD8;
    u32 fDC;
    u32 fE0;
    u32 fE4;
    u32 fE8;
    u32 fEC;
    u8 *fF0;
    u16 fF4;
    u8 padF6[0x5B4 - 0xF6];
    u8 *f5B4;
    u8 f5B8[4];
};
union Bg7B7B4 { u32 word; u16 half[2]; };

struct Stage7B7B4 { u8 pad[0x1FA]; u16 value; };
struct Index7B7B4 { u8 pad[0x14A]; u16 value; };
extern struct Stage7B7B4 stage7B7B4 asm("gUnk_03001F40");
extern struct Index7B7B4 *index7B7B4 asm("gUnk_03005CF4");
struct Player7B7B4 { u8 pad[0x30]; u32 flags; u8 pad34[0x30]; u16 f64; u8 pad66[0x14C - 0x66]; };
extern struct Player7B7B4 players7B7B4[] asm("gUnk_03003CE0");
extern struct Mgr7B7B4 *mgr7B7B4 asm("gUnk_03006440");
extern u16 table7B7B4Stage[] asm("gUnk_084EBD38");
extern u16 table7B7B4Text[] asm("gUnk_084ECB98");
void sub_08000990(s32, s32);
void sub_080009F8(s32, s32, s32);
void sub_08060DB0(s32);
void sub_08061688(s32);
void sub_0801AB50(s32);
void sub_08058688(s32);
void sub_0807C29C(void);
void sub_0805FFBC(s32, s32, void *, u32);
void sub_080811E0();
void sub_08080A78(void);
void sub_08082960();
void sub_080815F4(void *);
void sub_080586B4(s32);
s32 sub_08057B64(s32);
void sub_0802A590(s32, s32);
void sub_0801A664(u32 index, u32 value);
u32 sub_08065158(void *arg0, u32 arg1, u32 arg2, s32 arg3, s32 arg4);
void sub_08065230(void *arg0, s32 arg1, s32 arg2, u16 arg3, s32 arg4);
void sub_0801A3D0(u8 *arg0, u32 arg1, u32 arg2);
void sub_0805FC80(s32 x, s32 y, void *item, s32 mode);

void sub_0807B7B4_v(void) asm("sub_0807B7B4");
/* [TaskInventoryMenu] The ordinary matched task body sets the item-menu manager mode to 2 and prepares the
 * local-player inventory screen/background resources. Under its scene and player guards, initializes menu
 * activity/state/cursor/held-item fields and runs while manager +0x24 remains nonzero and 021A8 reports no
 * cancellation. Each iteration invokes the shared 7C29C interaction handler, then selects the item-contents
 * drawing path or an item/set-detail path from manager flags/state. This is the outer inventory-menu task,
 * distinct from the shared interaction handler or a pure drawing pass; no exact localized screen title is
 * assigned. */
void sub_0807B7B4_v(void)
{

    union Bg7B7B4 bg;
    u8 pad[8];
    struct Player *player;
    s32 savedIrq;
    u8 savedVcount;
    u32 scroll;
    u32 lastLevel;
    u32 lastCount;
    u16 i;
    u8 *text;
    u16 mode;

    mgr7B7B4->f0 = 2;
    sub_080009F8(0x1F00, 0, 1);
    player = &gUnk_03003CE0[sub_080020F4()];
    gUnk_03001250[1] = 0;
    gUnk_03001250[0] = 0;
    gUnk_03001250[3] = 0;
    gUnk_03001250[2] = 0;
    gUnk_03001250[5] = 0;
    gUnk_03001250[4] = 0;
    gUnk_03001250[7] = 0;
    gUnk_03001250[6] = 0;
    sub_0800B7DC(0x40000003, 0x1A, 0x06000000, 0, 0xF);
    sub_0800B7DC(0x40000005, 0x1B, 0x06000000, 0, 0xF);
    sub_0800B650(0x40000004, 0x1F, 0x06000000, 0, 0xE);
    sub_08000AF0(0xE, (void *)(sub_08007290(0x70003) + 0x1C0), 1);
    stage7B7B4.value = table7B7B4Stage[index7B7B4->value];
    switch (gUnk_03003470) {
    case 0: sub_08065158(mgr7B7B4->f5B8, 0x50006, 0, -1, 0); break;
    case 1: sub_08065158(mgr7B7B4->f5B8, 0x50007, 0, -1, 0); break;
    case 2: sub_08065158(mgr7B7B4->f5B8, 0x50008, 0, -1, 0); break;
    case 3: sub_08065158(mgr7B7B4->f5B8, 0x50009, 0, -1, 0); break;
    case 4: sub_08065158(mgr7B7B4->f5B8, 0x5000A, 0, -1, 0); break;
    }
    sub_08000990(0, 1);
    bg.word = (bg.word & 0xFFFF0000) | 0x1D03;
    sub_08000AA8(1, bg.half);
    bg.half[0] = 0x9A01;
    sub_08000AA8(2, bg.half);
    bg.half[0] = 0x1F03;
    sub_08000AA8(3, bg.half);
    if (sub_0805F184() == 0 && sub_0800CDF8() == 0 && sub_0800D060() == 0
        && !(players7B7B4[sub_080020F4()].flags & 0x2000)) {
        sub_08060DB0(0);
        sub_08061688(0);
        savedVcount = (u8)sub_08001108(0x88);
        savedIrq = sub_0800115C((u32)sub_0808528C);
        sub_08000D8C();
        sub_0801AB50(6);
        sub_080009C0(0x1D00, 0, 1);
        sub_08000C08(8, 2);
        if (sub_0800CB9C() == 0)
            sub_08058688(0xD7);
        sub_0800903C(0, 0, 0, 0, 0, 0);
        mgr7B7B4->f4 = 0;
        mgr7B7B4->f8 = 0;
        mgr7B7B4->f18 = 0;
        mgr7B7B4->f1C = 0x16;
        mgr7B7B4->f20 = 0;
        mgr7B7B4->f24 = 1;
        mgr7B7B4->f28 = 0;
        mgr7B7B4->fD8 = 0;
        mgr7B7B4->fDC = 0;
        mgr7B7B4->fE0 = 0x58;
        mgr7B7B4->fE4 = 0x20;
        mgr7B7B4->fE8 = 0x58;
        mgr7B7B4->fEC = 0x20;
        mgr7B7B4->fF0 = 0;
        mgr7B7B4->fF4 = 0;
        mgr7B7B4->f2C = 0;
        mgr7B7B4->f34 = sub_0805D3D4();
        mgr7B7B4->f38 = 0;
        mgr7B7B4->f4C = 0;
        mgr7B7B4->f4E = 0;
        mgr7B7B4->f50 = 0;
        mgr7B7B4->f52 = 0;
        mgr7B7B4->f68 = 5;
        mgr7B7B4->f6A = 100;
        lastLevel = *(u16 *)(gUnk_030034E0 + 0x68);
        lastCount = 0xFFFFFF;
        for (i = 0; i <= 5; i++) {
            mgr7B7B4->rows[i].a = 0;
            mgr7B7B4->rows[i].b = (u16)(i % 5U);
        }
        while (mgr7B7B4->f24 != 0 && sub_080021A8() == 0) {
            sub_0807C29C();
            if (!(mgr7B7B4->f28 & 1)) {
                gUnk_03001250[5] = 0;
                if (mgr7B7B4->f1C == 0x16) {
                    sub_08065230(mgr7B7B4->f5B8, mgr7B7B4->fE0, mgr7B7B4->fE4, 0xB, 0);
                } else {
                    sub_08065230(mgr7B7B4->f5B8, mgr7B7B4->fE0, mgr7B7B4->fE4 - 4, 0xB, 1);
                    sub_0805FC80(mgr7B7B4->fE0, mgr7B7B4->fE4 - 4, &mgr7B7B4->fF4, 8);
                }
                if (lastCount != players7B7B4[sub_080020F4()].f64
                    || mgr7B7B4->f6A != mgr7B7B4->f4
                    || lastLevel != *(u16 *)(gUnk_030034E0 + 0x68)) {
                    if (mgr7B7B4->f68++ > 5) {
                        if (mgr7B7B4->f1C == 0x16) {
                            if (mgr7B7B4->f18 != 7) {
                                sub_0805FFBC(0xF, 0x12, mgr7B7B4->fF0, 0x80000000);
                            } else {
                                text = (u8 *)sub_08007290(table7B7B4Text[mgr7B7B4->f4] | 0x140000) + 2;
                                sub_0801A3D0(text, (u16)(15 - ((u32)sub_0801A638(text) >> 1)), 0x12);
                            }
                        } else {
                            sub_0805FFBC(0xF, 0x12, &mgr7B7B4->fF4, 0x80000000);
                        }
                        lastLevel = *(u16 *)(gUnk_030034E0 + 0x68);
                        sub_080811E0(player);
                        mgr7B7B4->f68 = 0;
                        mgr7B7B4->f6A = mgr7B7B4->f4;
                        lastCount = players7B7B4[sub_080020F4()].f64;
                    }
                }
                sub_08080A78();
                if (mgr7B7B4->f2C != 0) {
                    sub_0801A664(2, 0x12);
                    mgr7B7B4->f2C = 0;
                }
            } else {
                mgr7B7B4->f6A = 100;
                mgr7B7B4->f2C = 1;
                sub_0801A664(2, 0x12);
                gUnk_03001250[5] = 0x100;
                if (mgr7B7B4->f18 == 9)
                    sub_08082960(mgr7B7B4->f5B4);
                else if (mgr7B7B4->f1C == 0x16)
                    sub_080815F4(mgr7B7B4->fF0);
                else
                    sub_080815F4(&mgr7B7B4->fF4);
            }
            scroll += 0x40;
            gUnk_03001250[7] = scroll >> 8;
            sub_080003F0();
            if (sub_0801AAE0() != 0 && (players7B7B4[sub_080020F4()].flags & 0x2000))
                break;
        }
        sub_0806617C();
        sub_080586B4(0);
        sub_0801ABE8(6);
        while (sub_0801AAE0() == 0) {
            sub_08080A78();
            sub_080003F0();
        }
        sub_08000E48();
        sub_0800115C(savedIrq);
        sub_08001108(savedVcount);
        sub_080653D4(0);
        sub_080653FC(0);
    }
    sub_08000C08(0x10, 8);
    sub_0801A664(2, 0x12);
    mode = sub_08057B64(3);
    if ((u16)(mode - 2) <= 7)
        sub_0802A590(0, 0xE);
    sub_08057624(10);
    sub_08000420(0x11201100);
}
/* [RemoveItemFromInventoryLocation] Dispatches a location kind and index: 0 bag, 1 weapon-selection slot,
 * 2/3/4 fixed headgear/glove/body slots, 5 coordinated-action item, 6 ring, and 11/13/16 the menu record array
 * at +0x104. Clears only the item kind halfword, then refreshes selected weapon or fixed equipment activation
 * when applicable. It does not erase the full record, check the index, or remove a quantity from a stack.
 * Unsupported location kinds do nothing. Location kind is distinct from item kind. */
void sub_0807BD78(u32 kind, u32 index)
{
    switch (kind) {
    case 0: {
        u8 *base = (u8 *)gUnk_030034E0;
        u32 offset = index * 16;
        *(u16 *)(base + offset + 0x150) = 0;
        break; }
    case 1: {
        u8 *base = (u8 *)gUnk_030034E0;
        u8 *dest = base + index * 16;
        *(u16 *)(dest + 0x70) = 0;
        if (index == *(u16 *)(base + 0x68)) sub_0805AD78(index);
        break; }
    case 2:
        *(u16 *)((u8 *)gUnk_030034E0 + 0x100) = 0;
        sub_0805D094(); break;
    case 3:
        *(u16 *)((u8 *)gUnk_030034E0 + 0x120) = 0;
        sub_0805D13C(); break;
    case 4:
        *(u16 *)((u8 *)gUnk_030034E0 + 0x110) = 0;
        sub_0805D0E8(); break;
    case 5:
        *(u16 *)((u8 *)gUnk_030034E0 + 0x130) = 0;
        sub_0805D190(); break;
    case 6:
        *(u16 *)((u8 *)gUnk_030034E0 + 0x140) = 0;
        sub_0805D1E0(); break;
    case 11: case 13: case 16:
        { u8 *base = (u8 *)gUnk_03006440;
        u32 offset = index * 16;
        *(u16 *)(base + offset + 0x104) = 0;
        break; }
    }
}
struct Copy7BEA0 { u32 words[4]; };
/* [PlaceItemInInventoryLocation] Copies all 16 source item bytes into a location selected by kind/index: bag,
 * weapon-selection slot, fixed equipment or menu stock buffer. Refreshes activation for the selected weapon
 * and fixed equipment. For location kind 5 additionally resets halfword manager +0x136 before its refresh.
 * Unlike removal, only location kinds 13 and 16 address the menu array; kind 11 does nothing. No index, null
 * or eligibility validation is performed here; unsupported kinds do nothing. */
void sub_0807BEA0(u32 kind, u32 index, struct Copy7BEA0 *item)
{
    switch (kind) {
    case 0:
        { u8 *base = (u8 *)gUnk_030034E0;
        u32 offset = index * 16;
        base += offset;
        base += 0x150;
        *(struct Copy7BEA0 *)base = *item; } break;
    case 1:
        { u8 *base = (u8 *)gUnk_030034E0;
        u32 offset = index * 16;
        base += offset;
        base += 0x70;
        *(struct Copy7BEA0 *)base = *item; }
        if (index == *(u16 *)((u8 *)gUnk_030034E0 + 0x68)) sub_0805AD78(index);
        break;
    case 2:
        *(struct Copy7BEA0 *)((u8 *)gUnk_030034E0 + 0x100) = *item;
        sub_0805D094(); break;
    case 3:
        *(struct Copy7BEA0 *)((u8 *)gUnk_030034E0 + 0x120) = *item;
        sub_0805D13C(); break;
    case 4:
        *(struct Copy7BEA0 *)((u8 *)gUnk_030034E0 + 0x110) = *item;
        sub_0805D0E8(); break;
    case 5:
        *(struct Copy7BEA0 *)((u8 *)gUnk_030034E0 + 0x130) = *item;
        *(u16 *)((u8 *)gUnk_030034E0 + 0x136) = 0;
        sub_0805D190(); break;
    case 6:
        *(struct Copy7BEA0 *)((u8 *)gUnk_030034E0 + 0x140) = *item;
        sub_0805D1E0(); break;
    case 13: case 16:
        { u8 *base = (u8 *)gUnk_03006440;
        u32 offset = index * 16;
        base += offset;
        base += 0x104;
        *(struct Copy7BEA0 *)base = *item; } break;
    }
}
struct Item7C014 { u16 kind; u16 pad; u32 count; u32 rest[2]; };
/* [SpendInventoryCurrency] Spends the requested unsigned amount from kind-10 stacks, repeatedly selecting the
 * smallest count among 25 bag records first. When bag stacks are exhausted, uses 75 stash records, or the menu
 * array at +0x104 when menu mode equals 4. Fully consumed bag entries are removed by 5D580, preserving their
 * count bytes; fully consumed secondary entries clear both kind and count. Stops after satisfying the amount
 * or finding no secondary stack. No success value, up-front affordability check or rollback on insufficient
 * funds is provided. Minimum searches use strict unsigned less-than against 0xFFFFFFFF, so malformed stacks
 * with that exact count are not selected. */
void sub_0807C014(u32 arg0)
{
    u32 amount = arg0;
    register u32 minimum asm("r5");
    u32 selected;
    u32 i;
    u32 remaining;
    u8 *base;
    u32 offset;
    register s32 *ptr1 asm("r1");
    register s32 *ptr7 asm("r7");
    struct Item7C014 *chosen;
    s32 *inventory = &gUnk_030034E0;
    s32 *inventory2 = inventory;
    u8 *cursor;
    register u32 *count asm("r2");

loop:
    minimum = -1;
    selected = 25;
    i = 0;
    ptr1 = inventory2;
    base = (u8 *)*ptr1;
    count = (u32 *)(base + 0x154);
    cursor = (u8 *)*ptr1;
    do {
        register u32 fieldOffset asm("r7") = 0x150;
        if (*(u16 *)(cursor + fieldOffset) == 10) {
            u32 value = *count;
            if (value < minimum) { selected = i; minimum = value; }
        }
        count += 4;
        cursor += 16;
        i++;
    } while (i <= 24);
    if (selected <= 24) {
        if (minimum >= amount) {
            u32 *item;
            u32 value;
            ptr1 = inventory;
            item = (u32 *)*ptr1;
            value = selected * 16;
            item = (u32 *)((u8 *)item + 0x154);
            item = (u32 *)((u8 *)item + value);
            value = *item - amount;
            *item = value;
            remaining = value;
            if (remaining == 0) sub_0805D580(selected);
        } else {
            register u32 index asm("r1");
            ptr7 = inventory2;
            base = (u8 *)*ptr7;
            index = selected * 16;
            base += 0x154;
            base += index;
            amount -= *(u32 *)base;
            sub_0805D580(selected);
            goto loop;
        }
    } else {
        selected = 75;
        if (*(u32 *)gUnk_03006440 != 4) { ptr7 = inventory; base = (u8 *)*ptr7; cursor = base + 0x2E0; }
        else { offset = 0x104; cursor = (u8 *)gUnk_03006440 + offset; }
        i = 0;
        do {
            if (*(u16 *)cursor == 10) {
                u32 value = *(u32 *)(cursor + 4);
                if (value < minimum) { selected = i; minimum = value; chosen = (struct Item7C014 *)cursor; }
            }
            i++;
            cursor += 16;
        } while (i <= 74);
        if (selected != 75) {
            if (minimum < amount) {
                struct Item7C014 *p = chosen;
                u32 zero;
                amount -= p->count;
                zero = 0;
                p->count = zero;
                p->kind = zero;
                goto loop;
            }
            {
                register struct Item7C014 *p asm("r2") = chosen;
                u32 result = p->count - amount;
                p->count = result;
                if (result == 0) p->kind = result;
            }
        }
    }
}
struct Item7C114 { u16 kind; u16 pad; u32 count; u8 flag; u8 rest[7]; };
struct Manager7C114 { u32 kind; u32 f4; u32 f8; u8 padC[12]; u32 f18; u32 f1C; u32 f20; u8 pad24[0xD0]; struct Item7C114 item; };
/* [SellHeldInventoryItem] Removes the held item from its recorded source location and values it with 5AE94.
 * Kind-10 money retains that value; ordinary other kinds divide by 10 with a minimum of 1. For kinds 2..5 a
 * nonzero broken byte forces proceeds 1, while unbroken equipment divides by 10 without a minimum. Builds a
 * temporary kind-10 record and tries bag insertion 5AB20. On success clears the 16-byte held record, updates
 * menu locations, plays sound 0x63 and returns 1; on failure restores the source item with 7BEA0, plays 0x61
 * and returns 0. The currency temporary initializes kind and count only; no claim of zeroed remaining fields
 * or fully atomic bag insertion is made. */
s32 sub_0807C114(void)
{
    struct Item7C114 item;
    u32 zero;
    u32 count;
    s32 kind;
    register struct Manager7C114 *manager asm("r4");
    sub_0807BD78(((struct Manager7C114 *)gUnk_03006440)->f1C, ((struct Manager7C114 *)gUnk_03006440)->f20);
    count = sub_0805AE94(&((struct Manager7C114 *)gUnk_03006440)->item);
    manager = (struct Manager7C114 *)gUnk_03006440;
    { register struct Item7C114 *p asm("r1") = &manager->item; kind = p->kind; }
    if (kind != 10) {
    switch (kind) {
    case 2: case 3: case 4: case 5:
        { register u8 *flag asm("r0") = (u8 *)manager + 0xFC;
        if (*flag == 0) count /= 10;
        else goto one; }
        break;
    default:
        count /= 10;
        if (count == 0) {
one:
            count = 1;
        }
        break;
    }
    }
    item.kind = 10;
    item.count = count;
    if (sub_0805AB20(&item) != 0) {
    ((struct Manager7C114 *)gUnk_03006440)->f18 = ((struct Manager7C114 *)gUnk_03006440)->f1C;
    ((struct Manager7C114 *)gUnk_03006440)->f4 = ((struct Manager7C114 *)gUnk_03006440)->f20;
    ((struct Manager7C114 *)gUnk_03006440)->f8 = ((struct Manager7C114 *)gUnk_03006440)->f20 + 1;
    { u32 *zp = &zero;
    void *dst;
    zero = 0;
    dst = &((struct Manager7C114 *)gUnk_03006440)->item;
    CpuSet(zp, dst, 0x05000004); }
    ((struct Manager7C114 *)gUnk_03006440)->f1C = 22;
    ((struct Manager7C114 *)gUnk_03006440)->f20 = 0;
    sub_0805865C(0x63);
    return 1;
    } else {
        sub_0807BEA0(((struct Manager7C114 *)gUnk_03006440)->f1C, ((struct Manager7C114 *)gUnk_03006440)->f20, &((struct Manager7C114 *)gUnk_03006440)->item);
        sub_0805865C(0x61);
        return 0;
    }
}
/* [DrawItemMenuBinaryChoiceIndicator] Reads the item-menu manager word +4 as a binary zero/nonzero selection.
 * Uses the sprite at +0xA4 and animation-progress halfwords +0x4C/+0x50 or +0x4E/+0x52 through 65370, then
 * issues three draws at x=0x68/0x78/0x88 and y=0x78. The two branches select different center frames and swap
 * which side uses 65230 versus 65264. Any nonzero selection follows the same branch; an input domain
 * restricted to 0 or 1 is not assumed. Animation-state mutation is part of this drawing helper, so it is not a
 * side-effect-free renderer. */
void sub_0807C1D8(void) {
    u8 *manager;
    register u32 saved asm("r5");
    manager = (u8 *)gUnk_03006440;
    saved = *(u32 *)((u8 *)gUnk_03006440 + 4);
    if (saved != 0) {
        sub_08065370((u8 *)gUnk_03006440 + 0xA4, 4, (u8 *)gUnk_03006440 + 0x4E, (u8 *)gUnk_03006440 + 0x52, 1);
        sub_08065230((u8 *)gUnk_03006440 + 0xA4, 0x78, 0x78, 9, 0);
        sub_08065264((u8 *)gUnk_03006440 + 0xA4, 0x88, 0x78, 5, *(u16 *)((u8 *)gUnk_03006440 + 0x4E));
        sub_08065230((u8 *)gUnk_03006440 + 0xA4, 0x68, 0x78, 4, *(u16 *)((u8 *)gUnk_03006440 + 0x4C));
        return;
    }
    sub_08065370((u8 *)gUnk_03006440 + 0xA4, 5, (u8 *)gUnk_03006440 + 0x4C, (u8 *)gUnk_03006440 + 0x50, 1);
    sub_08065230((u8 *)gUnk_03006440 + 0xA4, 0x78, 0x78, 8, saved);
    sub_08065230((u8 *)gUnk_03006440 + 0xA4, 0x88, 0x78, 5, *(u16 *)((u8 *)gUnk_03006440 + 0x4E));
    sub_08065264((u8 *)gUnk_03006440 + 0xA4, 0x68, 0x78, 4, *(u16 *)((u8 *)gUnk_03006440 + 0x4C));
}
// Hand-written draft (all switch cases + tail); exact size/registers still differ, see shard82.txt.
extern u32 sub_0805AE34(const u8 *item);
extern u32 sub_0805AE94(const void *item);
extern u32 sub_0805B068(const void *item);
extern u32 sub_0805B0F0(void);
extern u32 sub_0808543C(void);
extern u32 sub_08085330(void);
extern u16 keys29_03001308 asm("gUnk_03001308");
extern u16 keys29_0300130C asm("gUnk_0300130C");
extern u16 keys29_03001324 asm("gUnk_03001324");
extern const u32 gUnk_084EBD4C[];
extern s16 gUnk_084ECBB0[];
extern s16 gUnk_084ECBBC[];
extern u32 gUnk_084ECBC8[];
struct Item82 { u16 kind; u16 sub; u32 count; u8 flag; u8 flag2; u8 pad[6]; };
struct Inv82 { u8 pad0[0x54]; u16 f54; u16 f56[9]; u16 equip; u16 f6A; u8 pad6C[4]; struct Item82 belt[9]; struct Item82 equipA, equipB, equipC, equipD, equipE; struct Item82 items[25]; struct Item82 bank[75]; };
struct Mgr82 {
    u32 mode; u32 cursor; u32 prev; u32 fC; s32 f10; u32 f14; u32 state; u32 heldFrom; u32 heldIdx; s32 f24; u32 flags;
    u32 f2C; u32 f30; s32 f34; u32 f38; s32 f3C; u32 f40; u32 page; u32 f48; u8 pad4C[0x54 - 0x4C]; u32 f54; u32 f58; u32 f5C; u32 f60; u8 pad64[4];
    u16 f68; s16 f6A; u32 f6C; u32 f70; struct { u32 t, n; } anim[6]; u8 padA4[0xE0 - 0xA4]; s32 fE0; s32 fE4; s32 posX; s32 posY;
    struct Item82 *cur; struct Item82 held; struct Item82 stock[75]; struct { u8 pad[0x136]; u16 f136[6]; } *f5B4; u8 sprite[4];
};
struct Pos82 { s16 x, y; };
struct C82 { u32 c; }; /* one u32 field: stores through it stay MEM_IN_STRUCT_P */
extern struct Pos82 gUnk_084ECBBC_82[] asm("gUnk_084ECBBC");
extern struct Pos82 gUnk_084ECBB0_82[] asm("gUnk_084ECBB0");
extern struct Mgr82 *gMgr82 asm("gUnk_03006440");
extern struct Inv82 *gInv82 asm("gUnk_030034E0");
static inline void Drop82(vu32 *z) { *z = 0; CpuSet((void *)z, &gMgr82->held, 0x05000004); gMgr82->heldFrom = 0x16; gMgr82->heldIdx = 0; }
/* Same as Drop82, but the empty volatile asm keeps cross-jumping from merging this tail with another identical DROP tail (the ROM keeps them separate because its registers differ). */
static inline void Drop82Sep(vu32 *z) { *z = 0; CpuSet((void *)z, &gMgr82->held, 0x05000004); gMgr82->heldFrom = 0x16; gMgr82->heldIdx = 0;  }
#define DROP82() Drop82(&sp14)
/* Drop82P: the DROP through a pointer to gMgr82 (the observed unallocated function-scope gp, so reload re-loads the address at each use like the ROM; or a pointer kept in a register). The inline form computes z (add r0, sp, #20) before the zero store, like the ROM. */
static inline void Drop82P(vu32 *z, struct Mgr82 **g) { *z = 0; CpuSet((void *)z, &(*g)->held, 0x05000004); (*g)->heldFrom = 0x16; (*g)->heldIdx = 0; }
/* Drop82PH: CpuSet's destination is the held pointer already in a register (ROM: mov r1, r9); z remains the zero source. */
static inline void Drop82PH(vu32 *z, struct Item82 *h, struct Mgr82 **g) { *z = 0; CpuSet((void *)z, h, 0x05000004); (*g)->heldFrom = 0x16; (*g)->heldIdx = 0; }
#define REFRESH82() { sub_0805AD78(gInv82->equip); sub_0805D094(); sub_0805D0E8(); sub_0805D13C(); }
struct Player82 { u8 pad[0x77]; u8 f77; u8 f78; u8 pad79[0x8C - 0x79]; s32 f8C; s32 f90; u8 pad94[0xC6 - 0x94]; u16 fC6; u8 rest[0x14C - 0xC8]; };
extern struct Player82 gPlayers82[] asm("gUnk_03003CE0");
/* Second name for the gMgr82 slot: GCC does not merge it with gMgr82, but it still assembles to a gUnk_03006440 relocation like the ROM. */
extern struct Mgr82 *gMgr82Slot082 asm("gUnk_03006440");
/* [ProcessItemMenuInteractionState] The compiling NONMATCHING draft describes the shared item-menu input and
 * interaction-state handler; equivalent C is not established. Original 7C2A8..7C2C4 reads manager 03006440
 * +0x28 bit0 and masks input halfwords, while 7C2C6..7C2E8 additionally gates input through 1AAE0/CD8C. The
 * scene/query path 7C2EA..7C320 can clear manager +0x24. Original 7C322..7C338 reads the word at manager +0x18
 * and dispatches states 0..21. This is an interaction-state routine rather than the outer scheduler callback,
 * a pure predicate or an unconditional frame advance. */
void sub_0807C29C(void) {
    u16 keys; u16 down; u32 cur, val, i, n, from, saved, have, ok, slot, base, col; s32 d, idx; u8 *text; u16 target, lo, hi;
    struct Item82 *item; struct Item82 *held;
    s32 sp4[4];
    vu32 sp14;
    s32 sp18[4];
    s32 sp28;
    s32 sp2C;
    struct Mgr82 **gp;

    /* Preserve the existing flags-read address lifetime. */
    { struct Mgr82 **q; q = &gMgr82; 
    if ((*q)->flags & 1) {
        keys29_03001308 = 0;
        keys29_03001324 &= ~1;
    } }
    gp = &gMgr82Slot082; /* Slot address, not a snapshot of the mutable manager pointer. */
    if (sub_0801AAE0() == 0)
        keys29_03001324 = 0;
    if (sub_0800CD8C() != 0) {
        keys29_0300130C = 0;
        keys29_03001324 = 0;
        keys29_03001308 = 0;
    }
    if ((sub_0800CF10() != 0 || sub_0805F184() != 0 || sub_0800CDF8() != 0 || sub_0800D060() != 0)
        && sub_0801AAE0() != 0 && sub_0801AC78() != 0)
        gMgr82->f24 = 0;
    switch (gMgr82->state) {
    case 0:
        if (keys29_03001308 & 0x10) {
            sub_0805865C(0x62);
            cur = gMgr82->cursor;
            if (cur % 5 < 4) {
                gMgr82->prev = cur;
                gMgr82->cursor = cur + 1;
                break;
            }
            if (gMgr82->heldFrom != 0x16) {
                switch (gMgr82->mode) {
                case 2:
                    if (gMgr82->held.kind == 1) {
                        if (cur <= 14) {
                            if (*(u32 *)(sub_08007290(gMgr82->held.sub | 0x100000) + 0xA4) == 0)
                                break;
                            gMgr82->state = 8;
                            gMgr82->cursor = 0;
                            gMgr82->prev = 1;
                            break;
                        }
                        gMgr82->state = 10;
                        gMgr82->cursor = 0;
                        gMgr82->prev = 1;
                        break;
                    }
                    gMgr82->state = 10;
                    gMgr82->cursor = 0;
                    gMgr82->prev = 1;
                    break;
                case 3:
                    if (gMgr82->heldFrom == 11)
                        break;
                    gMgr82->state = 12;
                    gMgr82->cursor = 0;
                    gMgr82->prev = 1;
                    break;
                case 4:
                    gMgr82->state = 13;
                    gMgr82->cursor = cur / 5 * 3;
                    gMgr82->prev = 1;
                    break;
                case 6: {
                    struct Item82 *h; /* ROM: h in r1, kind re-read (volatile) for the kind==9 test */
                    h = &gMgr82->held;
                    if (h->kind == 10) {
                        if (gMgr82->flags & 4) {
                            gMgr82->state = 17;
                            gMgr82->cursor = 100;
                        }
                        break;
                    }
                    if (*(vu16 *)&h->kind == 9) {
                        gMgr82->state = 16;
                        gMgr82->cursor = 0;
                        gMgr82->prev = 1;
                    }
                    break; }
                }
            } else {
                switch (gMgr82->mode) {
                case 2:
                    if (cur > 14) {
                        gMgr82->state = 10;
                        gMgr82->cursor = 0;
                        gMgr82->prev = 1;
                    } else {
                        gMgr82->state = 8;
                        gMgr82->cursor = 0;
                        gMgr82->prev = 1;
                    }
                    break;
                case 3:
                    gMgr82->state = 11;
                    gMgr82->cursor = cur / 5 * 3;
                    gMgr82->prev = 1;
                    if (gMgr82->cursor == 12)
                        gMgr82->cursor = 9;
                    break;
                case 4:
                    gMgr82->state = 13;
                    gMgr82->cursor = cur / 5 * 3;
                    gMgr82->prev = 1;
                    break;
                case 6:
                    gMgr82->state = 16;
                    gMgr82->cursor = 0;
                    gMgr82->prev = 1;
                    break;
                }
            }
        } else if (keys29_03001308 & 0x20) {
            sub_0805865C(0x62);
            cur = gMgr82->cursor;
            if (cur % 5 != 0) {
                gMgr82->prev = cur;
                gMgr82->cursor = cur - 1;
                break;
            }
            saved = cur;
            if (gMgr82->heldFrom != 0x16) {
                switch (gMgr82->held.kind) {
                case 1: gMgr82->cursor = 100; break;
                case 2: gMgr82->cursor = 0; break;
                case 4: gMgr82->cursor = 5; break;
                case 5: gMgr82->cursor = 20; break;
                case 3: gMgr82->cursor = 10; break;
                case 7: gMgr82->cursor = 101; break;
                case 6: gMgr82->cursor = 102; break;
                default: gMgr82->cursor = 103; break;
                }
            }
            if (gMgr82->mode == 5)
                gMgr82->cursor = 103;
            cur = gMgr82->cursor;
            switch (cur) {
            case 0:
                gMgr82->state = 1;
                gMgr82->cursor = 0;
                gMgr82->prev = 1;
                gMgr82->f6A = 100;
                break;
            case 5:
                gMgr82->state = 2;
                gMgr82->cursor = 0;
                gMgr82->prev = 1;
                break;
            case 10:
            case 15:
                gMgr82->state = 4;
                gMgr82->cursor = 0;
                gMgr82->prev = 1;
                break;
            case 20:
                gMgr82->state = 3;
                gMgr82->cursor = 0;
                gMgr82->prev = 1;
                break;
            case 100:
                gMgr82->state = 9;
                gMgr82->cursor = 0;
                gMgr82->prev = 1;
                break;
            case 101:
                gMgr82->state = 5;
                gMgr82->cursor = 0;
                gMgr82->prev = 1;
                break;
            case 102:
                gMgr82->state = 6;
                gMgr82->cursor = 0;
                gMgr82->prev = 1;
                break;
            case 103:
                gMgr82->cursor = saved;
                break;
            case 104:
                break;
            }
        } else if (keys29_03001308 & 0x40) {
            if (gMgr82->cursor >= 5) {
                gMgr82->prev = gMgr82->cursor;
                gMgr82->cursor -= 5;
                sub_0805865C(0x62);
            }
        } else if ((down = keys29_03001308 & 0x80) != 0) {
            u32 cdn;
            cdn = gMgr82->cursor;
            if (cdn < 20) {
                gMgr82->prev = cdn;
                gMgr82->cursor = cdn + 5;
                sub_0805865C(0x62);
            } else if (gMgr82->heldFrom == 0x16) {
                gMgr82->prev = 20;
                gMgr82->state = 7;
                switch (cdn) {
                case 20 ... 21:
                    gMgr82->cursor = 1;
                    sub_0805865C(0x62);
                    break;
                case 22 ... 24:
                    gMgr82->cursor = 2;
                    sub_0805865C(0x62);
                    break;
                }
            }
        } else if (keys29_03001324 & 1) {
            u16 tg0; u32 n0; u32 v0; struct Item82 *hd; /* block-local n0/v0/hd: case 0 has its own held pointer (ROM spills it to [sp,#52]; case 13 keeps the function-level held in r9), and the function-level n/val shifted registers in other cases */
            gMgr82->f6A = 100;
            if (gMgr82->mode != 5) {
                from = gMgr82->heldFrom;
                if (from == 0x16) {
                    struct Item82 *it;
                    u8 *inventoryBase;
                    inventoryBase = (u8 *)gInv82;
                    it = (struct Item82 *)(inventoryBase + gMgr82->cursor * 16 + 0x150);
                    if (it->kind == 0)
                        break;
                    if (it->kind != 10) {
                        gMgr82->heldFrom = gMgr82->state;
                        gMgr82->heldIdx = gMgr82->cursor;
                        gMgr82->held = *it;
                        sub_0805865C(0x5E);
                        break;
                    }
                    gMgr82->heldFrom = gMgr82->state;
                    gMgr82->heldIdx = gMgr82->cursor;
                    gMgr82->held.kind = 10;
                    gMgr82->held.count = gInv82->items[gMgr82->cursor].count;
                    gMgr82->state = 20;
                    gMgr82->fC = 0;
                    val = gInv82->items[gMgr82->cursor].count;
                    {
                        u32 denominationIndex082;
                        n0 = 6;
                        for (denominationIndex082 = 4; denominationIndex082 <= 9; denominationIndex082++, n0--) {
                            if (gUnk_084EBD4C[denominationIndex082] <= val)
                                break;
                        }
                    }
                    gMgr82->f14 = n0;
                    gMgr82->f10 = n0 - 1;
                    sub_0805865C(0x5E);
                    break;
                }
                tg0 = gMgr82->cur->kind;
                if (tg0 == 0) {
                    if (gMgr82->held.kind != 10) {
                        if (from != 11) {
                            sub_0807BD78(from, gMgr82->heldIdx);
                            sub_0807BEA0(0, gMgr82->cursor, (void *)&gMgr82->held);
                            DROP82();
                            sub_0805865C(0x5F);
                            break;
                        }
                        sub_0807C014(sub_0805AE94(&gMgr82->held));
                        sub_0807BEA0(0, gMgr82->cursor, (void *)&gMgr82->held);
                        if (gMgr82->heldIdx > 8)
                            sub_0807BD78(gMgr82->heldFrom, gMgr82->heldIdx);
                        gMgr82->cursor = gMgr82->heldIdx;
                        gMgr82->prev = gMgr82->heldIdx + 1;
                        gMgr82->state = gMgr82->heldFrom;
                        DROP82();
                        sub_0805865C(0x63);
                        break;
                    }
                    switch (from) {
                    case 0:
                        gInv82->items[gMgr82->heldIdx].count -= gMgr82->held.count;
                        if ((s32)gInv82->items[gMgr82->heldIdx].count < 0)
                            gInv82->items[gMgr82->heldIdx].count = 0;
                        if (gInv82->items[gMgr82->heldIdx].count == 0)
                            gInv82->items[gMgr82->heldIdx].kind = 0;
                        sub_0807BEA0(0, gMgr82->cursor, (void *)&gMgr82->held);
                        DROP82();
                        sub_0805865C(0x5F);
                        break;
                    case 13:
                        gMgr82->stock[gMgr82->heldIdx].count -= gMgr82->held.count;
                        if (gMgr82->stock[gMgr82->heldIdx].count == 0)
                            gMgr82->stock[gMgr82->heldIdx].kind = 0;
                        sub_0807BEA0(0, gMgr82->cursor, (void *)&gMgr82->held);
                        DROP82();
                        sub_0805865C(0x5F);
                        break;
                    }
                    break;
                }
                hd = &gMgr82->held;
                if (gMgr82->held.kind != 10) {
                    if (from == 11)
                        break;
                    if (*(u32 *)hd == 0x000C0001) {
                        /* (gInv82 + cursor*16) + 0x150 / + 0x158: ROM shares the base-first sum */
                        switch (gInv82->items[gMgr82->cursor].kind) {
                        case 2 ... 5:
                            if (*((u8 *)gInv82 + gMgr82->cursor * 16 + 0x158) != 0) {
                                *((u8 *)gInv82 + gMgr82->cursor * 16 + 0x158) = 0;
                                gMgr82->f6A = 100;
                                sub_0807BD78(gMgr82->heldFrom, gMgr82->heldIdx);
                                DROP82();
                                sub_0805865C(0x18C);
                                break;
                            }
                            item = (struct Item82 *)((u8 *)gInv82 + gMgr82->cursor * 16 + 0x150);
                            *(struct Item82 *)sp4 = *item;
                            sub_0807BEA0(0, gMgr82->cursor, (void *)hd);
                            sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)sp4);
                            DROP82();
                            sub_0805865C(0x5F);
                            break;
                        default:
                            *(struct Item82 *)sp4 = gInv82->items[gMgr82->cursor];
                            sub_0807BEA0(0, gMgr82->cursor, (void *)&gMgr82->held);
                            sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)sp4);
                            DROP82();
                            sub_0805865C(0x5F);
                            break;
                        }
                        break;
                    }
                    switch (from) {
                        struct Item82 *dit; /* block-local item (ROM keeps it in r1, not in the function-level item reg) */
                    case 0:
                    case 13:
                        *(struct Item82 *)sp4 = gInv82->items[gMgr82->cursor];
                        sub_0807BEA0(0, gMgr82->cursor, (void *)&gMgr82->held);
                        sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)sp4);
                        DROP82();
                        sub_0805865C(0x5F);
                        break;
                    case 6:
                        break;
                    default: {
                        /* ROM computes &held, then loads gInv82, before the item address */
                        struct Item82 *hh = &gMgr82->held;
                        struct Inv82 *iv = gInv82;
                        dit = (struct Item82 *)((u8 *)iv + gMgr82->cursor * 16 + 0x150);
                        if (hh->kind != dit->kind) {
                            sub_0805865C(0x61);
                            break;
                        }
                        ok = 0;
                        switch (dit->kind) {
                        case 2:
                            if (sub_0805AE34((void *)&gInv82->items[gMgr82->cursor]))
                                ok = 1;
                            break;
                        case 5:
                            if (sub_0805D2E0((void *)&gInv82->items[gMgr82->cursor]))
                                ok = 1;
                            break;
                        case 3:
                            if (sub_0805D278((void *)&gInv82->items[gMgr82->cursor]))
                                ok = 1;
                            break;
                        case 4:
                            if (sub_0805D210((void *)&gInv82->items[gMgr82->cursor]))
                                ok = 1;
                            break;
                        case 6:
                        case 7:
                            ok = 1;
                            break;
                        }
                        if (!ok) {
                            sub_0805865C(0x61);
                            break;
                        }
                        *(struct Item82 *)sp4 = gInv82->items[gMgr82->cursor];
                        sub_0807BEA0(0, gMgr82->cursor, (void *)&gMgr82->held);
                        sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)sp4);
                        switch (((struct Item82 *)sp4)->kind) {
                        case 2: sub_0805AD78(gInv82->equip); break;
                        case 5: sub_0805D13C(); break;
                        case 3: sub_0805D0E8(); break;
                        case 4: sub_0805D094(); break;
                        case 6: sub_0805D1E0(); break;
                        case 7: sub_0805D190(); break;
                        }
                        DROP82();
                        sub_0805865C(0x5F);
                        break;
                    }
                    }
                    break;
                }
                /* holding money, tg0 slot occupied */
                if (gInv82->items[gMgr82->heldIdx].count == gMgr82->held.count) {
                    item = (struct Item82 *)((u8 *)gInv82 + gMgr82->cursor * 16 + 0x150);
                    if (item->kind == 10) {
                        u32 vb; /* own money sum (ROM r0; v0 sat in r1 and pushed cursor/cursor*16 to r3/r1). The count loop above uses val. */
                        vb = gInv82->items[gMgr82->cursor].count + gMgr82->held.count;
                        if (vb <= 100000) {
                            if (gMgr82->heldIdx != gMgr82->cursor) {
                                gInv82->items[gMgr82->cursor].count = vb;
                                sub_0807BD78(gMgr82->heldFrom, gMgr82->heldIdx);
                            }
                            DROP82();
                            sub_0805865C(0x5F);
                            break;
                        }
                        if (gMgr82->heldIdx != gMgr82->cursor) {
                            gMgr82->held.count = vb - 100000;
                            gInv82->items[gMgr82->cursor].count = 100000;
                            sub_0807BEA0(0, gMgr82->heldIdx, (void *)hd);
                        }
                        DROP82();
                        sub_0805865C(0x5F);
                        break;
                    }
                    *(struct Item82 *)sp4 = *item;
                    sub_0807BEA0(0, gMgr82->cursor, (void *)hd);
                    sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)sp4);
                    DROP82();
                    sub_0805865C(0x5F);
                    break;
                }
                if (tg0 != 10) {
                    sub_0805865C(0x61);
                    break;
                }
                v0 = gInv82->items[gMgr82->cursor].count + gMgr82->held.count;
                if (v0 <= 100000) {
                    switch (from) {
                    case 0:
                        gInv82->items[gMgr82->heldIdx].count -= gMgr82->held.count;
                        if (gInv82->items[gMgr82->heldIdx].count == 0)
                            gInv82->items[gMgr82->heldIdx].kind = 0;
                        break;
                    case 13:
                        gMgr82->stock[gMgr82->heldIdx].count -= gMgr82->held.count;
                        if (gMgr82->stock[gMgr82->heldIdx].count == 0)
                            gMgr82->stock[gMgr82->heldIdx].kind = 0;
                        break;
                    }
                    gInv82->items[gMgr82->cursor].count += gMgr82->held.count;
                    DROP82();
                    sub_0805865C(0x5F);
                    break;
                }
                if (gMgr82->heldIdx != gMgr82->cursor) {
                    cur = v0 - 100000; /* excess over the 100000 cap; shares the function-level cur (ROM r5) */
                    {
                    switch (from) {
                    case 0:
                        gMgr82->held.count = gInv82->items[gMgr82->heldIdx].count - gMgr82->held.count + cur;
                        break;
                    case 13:
                        gMgr82->held.count = gMgr82->stock[gMgr82->heldIdx].count - gMgr82->held.count + cur;
                        break;
                    } }
                    gInv82->items[gMgr82->cursor].count = 100000;
                    sub_0807BEA0(0, gMgr82->heldIdx, (void *)&gMgr82->held);
                }
                DROP82();
                sub_0805865C(0x5F);
            } else {
                struct Item82 *cit;
                struct Mgr82 *abilityManager082;
                cit = gMgr82->cur;
                if (cit->kind != 0) switch (cit->kind) {
                case 2 ... 5:
                    if (cit->flag == 0)
                        break;
                    { register struct Mgr82 **q asm("r6"); /* the slot address stays in r6 across the cost query */
                    have = sub_0805B0F0();
                    q = &gMgr82Slot082;
                    if (have < sub_0805B068((*q)->cur)) {
                        sub_0805865C(0x61);
                        break;
                    }
                    (*q)->cur->flag = 0;
                    abilityManager082 = *q;
                    abilityManager082->f68 = 6;
                    abilityManager082->f6A = 100;
                    sub_0807C014(sub_0805B068(abilityManager082->cur));
                    }
                    sub_0805865C(0x18C);
                    break;
                }
            }
        } else if (keys29_03001324 & 0x100) {
            switch (gMgr82->mode) {
            case 2:
                break;
            case 3:
                if (gMgr82->heldFrom != 11 && gMgr82->heldFrom != 0x16) {
                    gMgr82->state = 12;
                    gMgr82->cursor = 0;
                    gMgr82->prev = 1;
                    sub_0805865C(0x62);
                }
                break;
            }
        }
        break;
    case 1: {
        u16 lo, hi;
        lo = gInv82->equip / 3 * 3;
        hi = lo + 3;
        asm("" : : "r"(hi));
        if (lo >= gMgr82->cursor)
            gMgr82->cursor = lo;
        else if (hi <= gMgr82->cursor)
            gMgr82->cursor = hi - 1;
        if (keys29_03001308 & 0x10) {
            if (gMgr82->cursor == lo) {
                gMgr82->state = 0;
                gMgr82->cursor = 0;
                gMgr82->prev = 1;
                gMgr82->f6A = 100;
                sub_0805865C(0x62);
                break;
            }
            gMgr82->cursor--;
            sub_0805865C(0x62);
        } else if ((u16)(keys29_03001308 & 0x20)) {
            if (gMgr82->cursor < hi - 1) {
                gMgr82->cursor++;
                sub_0805865C(0x62);
            }
        } else if ((u16)(keys29_03001308 & 0x80)) {
            if (gMgr82->heldFrom != 0x16)
                break;
            if (gMgr82->mode != 5) {
                gMgr82->f6A = 100;
                switch (gMgr82->cursor % 3) {
                case 0:
                    gMgr82->state = 2;
                    gMgr82->cursor = 0;
                    gMgr82->prev = 1;
                    sub_0805865C(0x62);
                    break;
                case 1:
                    gMgr82->state = 9;
                    gMgr82->cursor = 0;
                    gMgr82->prev = 1;
                    sub_0805865C(0x62);
                    break;
                case 2:
                    gMgr82->state = 5;
                    gMgr82->cursor = 0;
                    gMgr82->prev = 1;
                    sub_0805865C(0x62);
                    break;
                }
            } else {
                gMgr82->state = 7;
                gMgr82->cursor = 0;
                gMgr82->prev = 2;
                sub_0805865C(0x62);
            }
        } else if (keys29_03001324 & 1) {
            u32 fr, cu; struct Item82 *it;
            fr = gMgr82->heldFrom;
            if (fr == 0x16) {
                if (gInv82->belt[gMgr82->cursor].kind == 0)
                    break;
                gMgr82->heldFrom = gMgr82->state;
                gMgr82->heldIdx = gMgr82->cursor;
                gMgr82->held = gInv82->belt[gMgr82->cursor];
                gMgr82->held.flag2 = 0;
                sub_0805AD78(gInv82->equip);
                sub_0805865C(0x5E);
                break;
            }
            if (gMgr82->cur->kind == 0) {
                if (fr != 11) {
                    if (sub_0805AE34((void *)&gMgr82->held)) {
                        sub_0807BD78(gMgr82->heldFrom, gMgr82->heldIdx);
                        sub_0807BEA0(1, gMgr82->cursor, (void *)&gMgr82->held);
                        DROP82();
                        sub_0805865C(0x5F);
                    } else {
                        sub_0805865C(0x61);
                    }
                    sub_0805AD78(gInv82->equip);
                    gMgr82->f6A = 100;
                    break;
                }
                if (gMgr82->held.kind != 2)
                    break;
                if (!sub_0805AE34((void *)&gMgr82->held)) {
                    sub_0805865C(0x61);
                    break;
                }
                sub_0807C014(sub_0805AE94(&gMgr82->held));
                sub_0807BEA0(1, gMgr82->cursor, (void *)&gMgr82->held);
                if (gMgr82->heldIdx > 8)
                    sub_0807BD78(gMgr82->heldFrom, gMgr82->heldIdx);
                gMgr82->cursor = gMgr82->heldIdx;
                gMgr82->prev = gMgr82->heldIdx + 1;
                gMgr82->state = gMgr82->heldFrom;
                DROP82();
                sub_0805865C(0x63);
                sub_0805AD78(gInv82->equip);
                break;
            }
            if (fr == 11) {
                sub_0805865C(0x61);
                break;
            }
            if (sub_0805AE34((void *)&gMgr82->held)) {
                *(struct Item82 *)sp4 = gInv82->belt[gMgr82->cursor];
                sub_0807BEA0(1, gMgr82->cursor, (void *)&gMgr82->held);
                sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)sp4);
                DROP82();
                sub_0805865C(0x5F);
            } else {
                sub_0805865C(0x61);
            }
            sub_0805AD78(gInv82->equip);
        } else if (keys29_03001324 & 0x100) {
            switch (gMgr82->mode) {
            case 2:
                break;
            case 3:
                if (gMgr82->heldFrom == 1) {
                    gMgr82->state = 12;
                    gMgr82->cursor = 0;
                    gMgr82->prev = 1;
                    sub_0805865C(0x62);
                }
                break;
            }
        }
        break;
    }
    case 2:
        if ((u16)(keys29_03001308 & 0x40)) {
            if (gMgr82->heldFrom == 0x16) {
                gMgr82->state = 1;
                gMgr82->cursor = 0;
                gMgr82->prev = 1;
                gMgr82->f6A = 100;
                sub_0805865C(0x62);
            }
        } else if ((u16)(keys29_03001308 & 0x80)) {
            if (gMgr82->heldFrom == 0x16) {
                gMgr82->state = 4;
                gMgr82->cursor = 0;
                gMgr82->prev = 1;
                gMgr82->f6A = 100;
                sub_0805865C(0x62);
            }
        } else if ((u16)(keys29_03001308 & 0x10)) {
            gMgr82->state = 0;
            gMgr82->cursor = 5;
            gMgr82->prev = 1;
            sub_0805865C(0x62);
        } else if ((u16)(keys29_03001308 & 0x20)) {
            if (gMgr82->heldFrom == 0x16) {
                gMgr82->state = 9;
                gMgr82->cursor = 0;
                gMgr82->prev = 1;
                gMgr82->f6A = 100;
                sub_0805865C(0x62);
            }
        } else if (keys29_03001324 & 1) {
            gMgr82->f6A = 100;
            if (gMgr82->heldFrom == 0x16) {
                if (gInv82->equipA.kind != 0) {
                    gMgr82->heldFrom = gMgr82->state;
                    gMgr82->heldIdx = gMgr82->cursor;
                    gMgr82->held = gInv82->equipA;
                    gMgr82->held.flag2 = 0;
                    sub_0805D094();
                    sub_0805865C(0x5E);
                }
            } else if (gMgr82->cur->kind == 0) {
                if (gMgr82->heldFrom != 11) {
                    if (sub_0805D210((void *)&gMgr82->held)) {
                        sub_0807BD78(gMgr82->heldFrom, gMgr82->heldIdx);
                        sub_0807BEA0(2, gMgr82->cursor, (void *)&gMgr82->held);
                        DROP82();
                        sub_0805865C(0x5F);
                    } else {
                        sub_0805865C(0x61);
                    }
                } else if (gMgr82->held.kind == 4) {
                    if (sub_0805D210((void *)&gMgr82->held)) {
                        sub_0807C014(sub_0805AE94(&gMgr82->held));
                        sub_0807BEA0(2, gMgr82->cursor, (void *)&gMgr82->held);
                        if (gMgr82->heldIdx > 8)
                            sub_0807BD78(gMgr82->heldFrom, gMgr82->heldIdx);
                        gMgr82->cursor = gMgr82->heldIdx;
                        gMgr82->state = gMgr82->heldFrom;
                        DROP82();
                        sub_0805865C(0x63);
                    } else {
                        sub_0805865C(0x61);
                    }
                }
            } else if (gMgr82->heldFrom != 11) {
                if (sub_0805D210((void *)&gMgr82->held)) {
                    *(struct Item82 *)sp4 = gInv82->equipA;
                    sub_0807BEA0(2, gMgr82->cursor, (void *)&gMgr82->held);
                    sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)sp4);
                    DROP82();
                    sub_0805865C(0x5F);
                } else {
                    sub_0805865C(0x61);
                }
            } else {
                sub_0805865C(0x61);
            }
            REFRESH82();
        } else if (keys29_03001324 & 0x100) {
            switch (gMgr82->mode) {
            case 2:
                break;
            case 3:
                if (gMgr82->heldFrom == 2) {
                    gMgr82->state = 12;
                    gMgr82->cursor = 0;
                    gMgr82->prev = 1;
                    sub_0805865C(0x62);
                }
                break;
            }
        }
        break;
    case 3:
        if ((u16)(keys29_03001308 & 0x40)) {
            if (gMgr82->heldFrom == 0x16) {
                gMgr82->state = 4;
                gMgr82->f6A = 100;
                gMgr82->cursor = 0;
                gMgr82->prev = 1;
                sub_0805865C(0x62);
            }
        } else if ((u16)(keys29_03001308 & 0x80)) {
            if (gMgr82->heldFrom == 0x16) {
                gMgr82->state = 7;
                gMgr82->f6A = 100;
                gMgr82->cursor = 0;
                gMgr82->prev = 1;
                sub_0805865C(0x62);
            }
        } else if ((u16)(keys29_03001308 & 0x10)) {
            gMgr82->state = 0;
            gMgr82->cursor = 20;
            gMgr82->prev = 1;
            sub_0805865C(0x62);
        } else if ((u16)(keys29_03001308 & 0x20)) {
            if (gMgr82->heldFrom == 0x16) {
                gMgr82->state = 6;
                gMgr82->cursor = 0;
                gMgr82->prev = 1;
                gMgr82->f6A = 100;
                sub_0805865C(0x62);
            }
        } else if (keys29_03001324 & 1) {
            gMgr82->f6A = 100;
            if (gMgr82->heldFrom == 0x16) {
                if (gInv82->equipC.kind != 0) {
                    gMgr82->heldFrom = gMgr82->state;
                    gMgr82->heldIdx = gMgr82->cursor;
                    gMgr82->held = gInv82->equipC;
                    gMgr82->held.flag2 = 0;
                    sub_0805D13C();
                    sub_0805865C(0x5E);
                }
            } else if (gMgr82->cur->kind == 0) {
                if (gMgr82->heldFrom != 11) {
                    if (sub_0805D2E0((void *)&gMgr82->held)) {
                        sub_0807BD78(gMgr82->heldFrom, gMgr82->heldIdx);
                        sub_0807BEA0(3, gMgr82->cursor, (void *)&gMgr82->held);
                        DROP82();
                        sub_0805865C(0x5F);
                    } else {
                        sub_0805865C(0x61);
                    }
                } else if (gMgr82->held.kind == 5) {
                    if (sub_0805D2E0((void *)&gMgr82->held)) {
                        sub_0807C014(sub_0805AE94(&gMgr82->held));
                        sub_0807BEA0(3, gMgr82->cursor, (void *)&gMgr82->held);
                        if (gMgr82->heldIdx > 8)
                            sub_0807BD78(gMgr82->heldFrom, gMgr82->heldIdx);
                        gMgr82->cursor = gMgr82->heldIdx;
                        gMgr82->state = gMgr82->heldFrom;
                        DROP82();
                        sub_0805865C(0x63);
                    } else {
                        sub_0805865C(0x61);
                    }
                }
            } else if (gMgr82->heldFrom != 11) {
                if (sub_0805D2E0((void *)&gMgr82->held)) {
                    *(struct Item82 *)sp4 = gInv82->equipC;
                    sub_0807BEA0(3, gMgr82->cursor, (void *)&gMgr82->held);
                    sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)sp4);
                    DROP82();
                    sub_0805865C(0x5F);
                } else {
                    sub_0805865C(0x61);
                }
            } else {
                sub_0805865C(0x61);
            }
            REFRESH82();
        } else if (keys29_03001324 & 0x100) {
            switch (gMgr82->mode) {
            case 2:
                break;
            case 3:
                if (gMgr82->heldFrom == 2) {
                    gMgr82->state = 12;
                    gMgr82->cursor = 0;
                    gMgr82->prev = 1;
                    sub_0805865C(0x62);
                }
                break;
            }
        }
        break;
    case 4:
        if ((u16)(keys29_03001308 & 0x40)) {
            if (gMgr82->heldFrom == 0x16) {
                gMgr82->state = 2;
                gMgr82->cursor = 0;
                gMgr82->prev = 1;
                gMgr82->f6A = 100;
                sub_0805865C(0x62);
            }
        } else if ((u16)(keys29_03001308 & 0x80)) {
            if (gMgr82->heldFrom == 0x16) {
                gMgr82->state = 3;
                gMgr82->cursor = 1;
                gMgr82->prev = 2;
                gMgr82->f6A = 100;
                sub_0805865C(0x62);
            }
        } else if ((u16)(keys29_03001308 & 0x10)) {
            gMgr82->state = 0;
            gMgr82->cursor = 10;
            gMgr82->prev = 1;
            sub_0805865C(0x62);
        } else if ((u16)(keys29_03001308 & 0x20)) {
            if (gMgr82->heldFrom == 0x16) {
                gMgr82->state = 9;
                gMgr82->cursor = 0;
                gMgr82->prev = 1;
                gMgr82->f6A = 100;
                sub_0805865C(0x62);
            }
        } else if (keys29_03001324 & 1) {
            gMgr82->f6A = 100;
            if (gMgr82->heldFrom == 0x16) {
                if (gInv82->equipB.kind != 0) {
                    gMgr82->heldFrom = gMgr82->state;
                    gMgr82->heldIdx = gMgr82->cursor;
                    gMgr82->held = gInv82->equipB;
                    gMgr82->held.flag2 = 0;
                    sub_0805D0E8();
                    sub_0805865C(0x5E);
                }
            } else if (gMgr82->cur->kind == 0) {
                if (gMgr82->heldFrom != 11) {
                    if (sub_0805D278((void *)&gMgr82->held)) {
                        sub_0807BD78(gMgr82->heldFrom, gMgr82->heldIdx);
                        sub_0807BEA0(4, gMgr82->cursor, (void *)&gMgr82->held);
                        DROP82();
                        sub_0805865C(0x5F);
                    } else {
                        sub_0805865C(0x61);
                    }
                } else if (gMgr82->held.kind == 3) {
                    if (sub_0805D278((void *)&gMgr82->held)) {
                        sub_0807C014(sub_0805AE94(&gMgr82->held));
                        sub_0807BEA0(4, gMgr82->cursor, (void *)&gMgr82->held);
                        if (gMgr82->heldIdx > 8)
                            sub_0807BD78(gMgr82->heldFrom, gMgr82->heldIdx);
                        gMgr82->cursor = gMgr82->heldIdx;
                        gMgr82->state = gMgr82->heldFrom;
                        DROP82();
                        sub_0805865C(0x63);
                    } else {
                        sub_0805865C(0x61);
                    }
                }
                sub_0805D0E8();
            } else {
                if (gMgr82->heldFrom != 11) {
                    if (sub_0805D278((void *)&gMgr82->held)) {
                        *(struct Item82 *)sp4 = gInv82->equipB;
                        sub_0807BEA0(4, gMgr82->cursor, (void *)&gMgr82->held);
                        sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)sp4);
                        DROP82();
                        sub_0805865C(0x5F);
                    } else {
                        sub_0805865C(0x61);
                    }
                } else {
                    sub_0805865C(0x61);
                }
                sub_0805D0E8();
            }
            REFRESH82();
        } else if (keys29_03001324 & 0x100) {
            switch (gMgr82->mode) {
            case 2:
                break;
            case 3:
                if (gMgr82->heldFrom == 4) {
                    gMgr82->state = 12;
                    gMgr82->cursor = 0;
                    gMgr82->prev = 1;
                    sub_0805865C(0x62);
                }
                break;
            }
        }
        break;
    case 5:
        if ((u16)(keys29_03001308 & 0x40)) {
            if (gMgr82->heldFrom == 0x16) {
                gMgr82->state = 1;
                gMgr82->cursor = 2;
                gMgr82->prev = 1;
                sub_0805865C(0x62);
            }
        } else if ((u16)(keys29_03001308 & 0x80)) {
            if (gMgr82->heldFrom == 0x16) {
                gMgr82->state = 6;
                gMgr82->cursor = 0;
                gMgr82->prev = 1;
                gMgr82->f6A = 100;
                sub_0805865C(0x62);
            }
        } else if ((u16)(keys29_03001308 & 0x10)) {
            if (gMgr82->heldFrom == 0x16) {
                gMgr82->state = 9;
                gMgr82->cursor = 0;
                gMgr82->prev = 1;
                gMgr82->f6A = 100;
                sub_0805865C(0x62);
            } else {
                gMgr82->state = 0;
                gMgr82->cursor = 10;
                gMgr82->prev = 1;
                sub_0805865C(0x62);
            }
        } else if (keys29_03001324 & 1) {
            u32 fr;
            gMgr82->f6A = 100;
            fr = gMgr82->heldFrom;
            if (fr == 0x16) {
                if (gInv82->equipD.kind == 0)
                    break;
                gMgr82->heldFrom = gMgr82->state;
                gMgr82->heldIdx = gMgr82->cursor;
                gMgr82->held = gInv82->equipD;
                gMgr82->held.flag2 = 0;
                sub_0805D190();
                sub_0805865C(0x5E);
                break;
            }
            if (gMgr82->cur->kind == 0) {
                if (fr != 11) {
                    sub_0807BD78(fr, gMgr82->heldIdx);
                    sub_0807BEA0(5, gMgr82->cursor, (void *)&gMgr82->held);
                    DROP82();
                } else {
                    sub_0807C014(sub_0805AE94(&gMgr82->held));
                    sub_0807BEA0(5, gMgr82->cursor, (void *)&gMgr82->held);
                    if (gMgr82->heldIdx > 8)
                        sub_0807BD78(gMgr82->heldFrom, gMgr82->heldIdx);
                    gMgr82->cursor = gMgr82->heldIdx;
                    gMgr82->state = gMgr82->heldFrom;
                    DROP82();
                }
                gPlayers82[sub_080020F4()].fC6 = 0;
                sub_0805D190();
                sub_0805865C(0x5F);
                break;
            }
            if (fr == 11) {
                sub_0805865C(0x61);
                break;
            }
            *(struct Item82 *)sp4 = gInv82->equipD;
            sub_0807BEA0(5, gMgr82->cursor, (void *)&gMgr82->held);
            sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)sp4);
            DROP82();
            sub_0805865C(0x5F);
            sub_0805D190();
            gPlayers82[sub_080020F4()].fC6 = 0;
        } else if (keys29_03001324 & 0x100) {
            switch (gMgr82->mode) {
            case 2:
                break;
            case 3:
                if (gMgr82->heldFrom == 5) {
                    gMgr82->state = 12;
                    gMgr82->cursor = 0;
                    gMgr82->prev = 1;
                    sub_0805865C(0x62);
                }
                break;
            }
        }
        break;
    case 6: {
        u32 fr;
        if ((u16)(keys29_03001308 & 0x40)) {
            if (gMgr82->heldFrom == 0x16) {
                gMgr82->state = 5;
                gMgr82->cursor = 0;
                gMgr82->prev = 1;
                gMgr82->f6A = 100;
                sub_0805865C(0x62);
            }
        } else if ((u16)(keys29_03001308 & 0x80)) {
            if (gMgr82->heldFrom == 0x16) {
                gMgr82->state = 7;
                gMgr82->cursor = 0;
                gMgr82->prev = 1;
                gMgr82->f6A = 100;
                sub_0805865C(0x62);
            }
        } else if ((u16)(keys29_03001308 & 0x10)) {
            if (gMgr82->heldFrom == 0x16) {
                gMgr82->state = 3;
                gMgr82->cursor = 0;
                gMgr82->f6A = 100;
                sub_0805865C(0x62);
            } else {
                gMgr82->state = 0;
                gMgr82->cursor = 20;
                gMgr82->prev = 1;
                sub_0805865C(0x62);
            }
        } else if (keys29_03001324 & 1) {
            gMgr82->f6A = 100;
            fr = gMgr82->heldFrom;
            if (fr == 0x16) {
                if (gInv82->equipE.kind != 0) {
                    u32 ok6, nn;
                    ok6 = 0;
                    if (gPlayers82[sub_080020F4()].f77 > 3) {
                        nn = gPlayers82[sub_080020F4()].f77;
                        for (i = 3; i < nn; i++) {
                            if (gInv82->belt[i].kind == 2) {
                                ok6++;
                                break;
                            }
                        }
                    } else if (gPlayers82[sub_080020F4()].f78 > 3) {
                        nn = gPlayers82[sub_080020F4()].f78;
                        for (i = 3; i < nn; i++) {
                            if (gInv82->f56[i] != 0) {
                                ok6++;
                                break;
                            }
                        }
                    }
                    if (ok6) {
                        sub_0805865C(0x61);
                    } else {
                        gMgr82->heldFrom = gMgr82->state;
                        gMgr82->heldIdx = gMgr82->cursor;
                        gMgr82->held = gInv82->equipE;
                        gMgr82->held.flag2 = 0;
                        sub_0805D1E0();
                        sub_0805865C(0x5E);
                    }
                }
            } else if (gMgr82->cur->kind == 0) {
                if (fr != 11) {
                    sub_0807BD78(fr, gMgr82->heldIdx);
                    sub_0807BEA0(6, gMgr82->cursor, (void *)&gMgr82->held);
                    DROP82();
                    sub_0805865C(0x5F);
                    sub_0805D1E0();
                } else if (gMgr82->held.kind == 6) {
                    sub_0807C014(sub_0805AE94(&gMgr82->held));
                    sub_0807BEA0(6, gMgr82->cursor, (void *)&gMgr82->held);
                    if (gMgr82->heldIdx > 8)
                        sub_0807BD78(gMgr82->heldFrom, gMgr82->heldIdx);
                    gMgr82->cursor = gMgr82->heldIdx;
                    gMgr82->state = gMgr82->heldFrom;
                    DROP82();
                    sub_0805865C(0x63);
                    sub_0805D1E0();
                }
            } else if (fr != 11) {
                u32 ok6, nn;
                ok6 = 0;
                if (gPlayers82[sub_080020F4()].f77 > 3) {
                    u32 bi;
                    nn = gPlayers82[sub_080020F4()].f77;
                    for (bi = 3; bi < nn; bi++) {
                        if (gInv82->belt[bi].kind == 2) {
                            ok6++;
                            break;
                        }
                    }
                } else if (gPlayers82[sub_080020F4()].f78 > 3) {
                    nn = gPlayers82[sub_080020F4()].f78;
                    for (i = 3; i < nn; i++) {
                        if (gInv82->f56[i] != 0) {
                            ok6++;
                            break;
                        }
                    }
                }
                if (!ok6) {
                    *(struct Item82 *)sp4 = gInv82->equipE;
                    sub_0807BEA0(6, gMgr82->cursor, (void *)&gMgr82->held);
                    sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)sp4);
                    DROP82();
                    sub_0805865C(0x5F);
                    sub_0805D1E0();
                } else {
                    sub_0805865C(0x61);
                }
            } else {
                sub_0805865C(0x61);
            }
            REFRESH82();
        } else if (keys29_03001324 & 0x100) {
            switch (gMgr82->mode) {
            case 2:
                break;
            case 3:
                if (gMgr82->heldFrom == 6) {
                    gMgr82->state = 12;
                    gMgr82->cursor = 0;
                    gMgr82->prev = 1;
                    sub_0805865C(0x62);
                }
                break;
            }
        }
        break;
    }
    case 7: {
        u32 c;
        if (keys29_03001308 & 0x10) {
            if ((gMgr82->cursor & 3) <= 2) {
                gMgr82->prev = gMgr82->cursor;
                gMgr82->cursor++;
                sub_0805865C(0x62);
            }
        } else if ((u16)(keys29_03001308 & 0x20)) {
            if (gMgr82->cursor & 3) {
                gMgr82->prev = gMgr82->cursor;
                gMgr82->cursor--;
                sub_0805865C(0x62);
            }
        } else if (keys29_03001308 & 0x40) {
            c = gMgr82->cursor;
            if (c > 3) {
                gMgr82->prev = c;
                gMgr82->cursor = c - 4;
                sub_0805865C(0x62);
                break;
            }
            switch (c) {
            case 0:
                if (gMgr82->mode == 5)
                    break;
                gMgr82->state = 6;
                gMgr82->cursor = 0;
                gMgr82->prev = 2;
                gMgr82->f6A = 100;
                sub_0805865C(0x62);
                break;
            case 1:
                gMgr82->state = 0;
                gMgr82->cursor = 20;
                gMgr82->prev = 1;
                gMgr82->f6A = 100;
                sub_0805865C(0x62);
                break;
            case 2:
                gMgr82->state = 0;
                gMgr82->cursor = 24;
                gMgr82->prev = 1;
                gMgr82->f6A = 100;
                sub_0805865C(0x62);
                break;
            case 3:
                switch (gMgr82->mode) {
                case 2:
                    gMgr82->state = 8;
                    gMgr82->cursor = 2;
                    gMgr82->prev = 0;
                    gMgr82->f6A = 100;
                    sub_0805865C(0x62);
                    break;
                case 3:
                    gMgr82->state = 11;
                    gMgr82->cursor = 10;
                    gMgr82->prev = 0;
                    gMgr82->f6A = 100;
                    sub_0805865C(0x62);
                    break;
                case 5:
                    gMgr82->state = 0;
                    gMgr82->cursor = 24;
                    gMgr82->prev = 0;
                    gMgr82->f6A = 100;
                    sub_0805865C(0x62);
                    break;
                case 4:
                    gMgr82->state = 13;
                    gMgr82->cursor = 13;
                    gMgr82->prev = 0;
                    gMgr82->f6A = 100;
                    sub_0805865C(0x62);
                    break;
                }
                break;
            }
        } else if (keys29_03001308 & 0x80) {
            if (gMgr82->cursor <= 7) {
                gMgr82->prev = gMgr82->cursor;
                gMgr82->cursor += 4;
                sub_0805865C(0x62);
            }
        }
        break;
    }
    case 8: {
        u16 q = gInv82->f54 / 3;
        u16 lo = q * 3;
        u16 hi = lo + 3;
        if (lo >= gMgr82->cursor)
            gMgr82->cursor = lo;
        else if (hi <= gMgr82->cursor)
            gMgr82->cursor = hi - 1;
        if (keys29_03001308 & 0x20) {
            if (gMgr82->cursor == lo) {
                gMgr82->state = 0;
                gMgr82->cursor = 4;
                gMgr82->prev = 1;
            } else {
                gMgr82->cursor--;
            }
            sub_0805865C(0x62);
        } else if ((u16)(keys29_03001308 & 0x10)) {
            if (gMgr82->cursor < hi - 1) {
                gMgr82->cursor++;
                sub_0805865C(0x62);
            }
        } else if ((u16)(keys29_03001308 & 0x80)) {
            gMgr82->state = 10;
            gMgr82->cursor = 0;
            gMgr82->prev = 1;
            sub_0805865C(0x62);
        } else if (keys29_03001324 & 1) {
            u32 from = gMgr82->heldFrom;
            if (from == 0x16) {
                if (gInv82->f56[gMgr82->cursor] != 0) {
                    gInv82->f56[gMgr82->cursor] = 0;
                    sub_0805865C(0x61);
                }
            } else if (from == 0) {
                gInv82->f56[gMgr82->cursor] = gMgr82->held.sub + 1;
                Drop82Sep(&sp14);
                sub_0805865C(0x5F);
            }
        }
        break;
    }
    case 9: {
        if (keys29_03001308 & 0x40) {
            if (gMgr82->heldFrom == 0x16) {
                gMgr82->state = 1;
                gMgr82->cursor = 1;
                gMgr82->prev = 2;
                gMgr82->f6A = 100;
                sub_0805865C(0x62);
            }
        } else if ((u16)(keys29_03001308 & 0x80)) {
            if (gMgr82->heldFrom == 0x16) {
                gMgr82->state = 6;
                gMgr82->cursor = 1;
                gMgr82->prev = 1;
                gMgr82->f6A = 100;
                sub_0805865C(0x62);
            }
        } else if ((u16)(keys29_03001308 & 0x10)) {
            if (gMgr82->heldFrom == 0x16) {
                gMgr82->state = 4;
                gMgr82->cursor = 0;
                gMgr82->prev = 1;
                gMgr82->f6A = 100;
            } else {
                gMgr82->state = 0;
                gMgr82->cursor = 10;
                gMgr82->prev = 1;
            }
            sub_0805865C(0x62);
        } else if (keys29_03001308 & 0x20) {
            if (gMgr82->heldFrom == 0x16) {
                gMgr82->state = 5;
                gMgr82->cursor = 0;
                gMgr82->prev = 1;
                gMgr82->f6A = 100;
                sub_0805865C(0x62);
            }
        } else if ((keys29_03001324 & 1) && gMgr82->heldFrom != 0x16) {
            u16 arg;
            if ((u8)sub_0801DE60() == 0)
                arg = sub_0801E0AC((u8 *)gInv82 + 0x30, 5);
            else
                arg = 0;
            if (sub_0805BD5C(&gMgr82->held, arg) && gMgr82->held.kind == 1) {
                if (gMgr82->held.sub == 6)
                    gMgr82->f24 = 0;
                if (gMgr82->heldFrom != 11) {
                    sub_0807BD78(gMgr82->heldFrom, gMgr82->heldIdx);
                    sub_0805865C(0x5F);
                } else {
                    sub_0807C014(sub_0805AE94(&gMgr82->held));
                    sub_0805865C(0x63);
                }
                Drop82Sep(&sp14);
            }
        }
        break;
    }
    case 10: {
        if (keys29_03001308 & 0x40) {
            if (gMgr82->heldFrom == 0x16) {
                gMgr82->state = 8;
                gMgr82->cursor = 0;
                gMgr82->prev = 1;
                sub_0805865C(0x62);
            } else {
                u16 kind = gMgr82->held.kind;
                if (kind != 10)
                if (kind == 1 && *(u32 *)(sub_08007290(gMgr82->held.sub | 0x100000) + 0xA4) != 0) {
                    gMgr82->state = 8;
                    gMgr82->cursor = 0;
                    gMgr82->prev = kind;
                    sub_0805865C(0x62);
                }
            }
        } else if ((u16)(keys29_03001308 & 0x80)) {
            if (gMgr82->heldFrom == 0x16) {
                gMgr82->state = 7;
                gMgr82->cursor = 3;
                gMgr82->prev = 1;
                sub_0805865C(0x62);
            }
        } else if (keys29_03001308 & 0x20) {
            gMgr82->state = 0;
            gMgr82->cursor = 24;
            gMgr82->prev = 1;
            sub_0805865C(0x62);
        } else if (keys29_03001324 & 1) {
            gMgr82->f6A = 100;
            if (gMgr82->heldFrom != 0x16) {
                sp28 = gPlayers82[sub_080020F4()].f8C;
                sp2C = gPlayers82[sub_080020F4()].f90;
                sub_0805B4CC(&sp28, &sp2C);
                if (sp28 != 0 && sp2C != 0) {
                    sub_08066490(gPlayers82[sub_080020F4()].f8C, gPlayers82[sub_080020F4()].f90, &gMgr82->held);
                    if (gMgr82->held.kind == 10) {
                        gInv82->items[gMgr82->heldIdx].count -= gMgr82->held.count;
                        if (gInv82->items[gMgr82->heldIdx].count == 0)
                            sub_0807BD78(gMgr82->heldFrom, gMgr82->heldIdx);
                    } else {
                        sub_0807BD78(gMgr82->heldFrom, gMgr82->heldIdx);
                    }
                    DROP82();
                    sub_0805865C(0x60);
                    gMgr82->f70 = 0;
                    gMgr82->state = 21;
                } else {
                    sub_0805865C(0x61);
                }
            }
        }
        break;
    }
    case 21: {
        u32 n = gMgr82->f70++;
        if (n > 40) {
            gMgr82->state = 10;
            gMgr82->cursor = 0;
            gMgr82->prev = 1;
        }
        break;
    }
    case 11: {
        u32 c;
        if (keys29_03001308 & 0x10) {
            c = gMgr82->cursor;
            if (c % 3 <= 1) {
                gMgr82->cursor = c + 1;
                sub_0805865C(0x62);
            }
        } else if (keys29_03001308 & 0x20) {
            u32 r;
            c = gMgr82->cursor;
            r = c % 3;
            if (r != 0) {
                gMgr82->cursor = c - 1;
            } else {
                gMgr82->cursor = c / 3 * 5 + 4;
                gMgr82->state = 0;
            }
            sub_0805865C(0x62);
        } else if (keys29_03001308 & 0x40) {
            if (gMgr82->cursor > 2) {
                gMgr82->cursor -= 3;
                sub_0805865C(0x62);
            }
        } else if ((u16)(keys29_03001308 & 0x80)) {
            if (gMgr82->cursor <= 8) {
                gMgr82->cursor += 3;
                sub_0805865C(0x62);
            }
        } else if (keys29_03001324 & 1) {
            if (gMgr82->heldFrom == 0x16 && gMgr82->stock[gMgr82->cursor].kind != 0) {
                if (sub_0805AE94(&gMgr82->stock[gMgr82->cursor]) <= sub_0805B0F0()) {
                    gMgr82->heldFrom = gMgr82->state;
                    gMgr82->heldIdx = gMgr82->cursor;
                    gMgr82->held = gMgr82->stock[gMgr82->heldIdx];
                    gMgr82->held.flag2 = 0;
                    sub_0805865C(0x5E);
                } else {
                    sub_0805865C(0x61);
                }
            }
        } else if (keys29_03001324 & 0x100) {
            if (gMgr82->heldFrom != 0x16) {
                gMgr82->state = 0;
                gMgr82->cursor = sub_0805CFA0();
                if (gMgr82->cursor == -1)
                    gMgr82->cursor = 0;
                gMgr82->prev = gMgr82->cursor + 1;
                sub_0805865C(0x62);
            }
        }
        break;
    }
    case 12:
        if (keys29_03001308 & 0x20) {
            gMgr82->state = 0;
            gMgr82->cursor = 24;
            sub_0805865C(0x62);
        } else if (keys29_03001324 & 1) {
            gMgr82->f6A = 100;
            if (gMgr82->heldFrom != 0x16 && gMgr82->held.kind != 0 && gMgr82->held.kind != 10)
                sub_0807C114();
        }
        break;
    case 13:
        if (keys29_03001308 & 0x10) {
            cur = gMgr82->cursor;
            if (cur % 3 < 2) {
                gMgr82->prev = cur;
                gMgr82->cursor = cur + 1;
                sub_0805865C(0x62);
                break;
            }
            if (gMgr82->heldFrom != 0x16)
                break;
            gMgr82->prev = 5;
            gMgr82->cursor = cur / 3;
            gMgr82->state = 14;
            if (gMgr82->cursor > gMgr82->f48)
                gMgr82->cursor = gMgr82->f48;
        } else if (keys29_03001308 & 0x20) {
            u32 c;
            c = gMgr82->cursor;
            if (c % 3 != 0) {
                gMgr82->prev = c;
                gMgr82->cursor = c - 1;
                sub_0805865C(0x62);
                break;
            }
            gMgr82->prev = c;
            gMgr82->cursor = c / 3 * 5 + 4;
            gMgr82->state = 0;
            sub_0805865C(0x62);
        } else if (keys29_03001308 & 0x40) {
            if (gMgr82->cursor >= 3) {
                gMgr82->prev = gMgr82->cursor;
                gMgr82->cursor -= 3;
                sub_0805865C(0x62);
            }
        } else if (keys29_03001308 & 0x80) {
            cur = gMgr82->cursor;
            if (cur % 15 < 12) {
                gMgr82->prev = cur;
                gMgr82->cursor = cur + 3;
                sub_0805865C(0x62);
                break;
            }
            if (gMgr82->heldFrom != 0x16)
                break;
            gMgr82->prev = 20;
            gMgr82->state = 7;
            gMgr82->cursor = 3;
            sub_0805865C(0x62);
        } else if (keys29_03001324 & 1) {
            u16 tg;
            gMgr82->f6A = 100;
            from = gMgr82->heldFrom;
            if (from == 0x16) {
                u32 s;
                struct Item82 *it;
                u32 k;
                u32 j;
                u32 v;
                s = gMgr82->cursor + gMgr82->page * 15;
                /* (gMgr82 + s*16) + 0x104: ROM adds the struct offset last */
                it = (struct Item82 *)((u8 *)gMgr82 + s * 16 + 0x104);
                if (it->kind == 0)
                    break;
                if (it->kind != 10) {
                    gMgr82->heldFrom = gMgr82->state;
                    gMgr82->heldIdx = s;
                    gMgr82->held = *it;
                    sub_0805865C(0x5E);
                    break;
                }
                gMgr82->heldFrom = gMgr82->state;
                gMgr82->heldIdx = s;
                gMgr82->held.kind = 10;
                gMgr82->held.count = gMgr82->stock[gMgr82->heldIdx].count;
                gMgr82->state = 20;
                gMgr82->fC = 0;
                v = gMgr82->stock[gMgr82->heldIdx].count;
                k = 6;
                for (j = 4; j <= 9; j++, k--) {
                    if (gUnk_084EBD4C[j] <= v)
                        break;
                }
                gMgr82->f14 = k;
                gMgr82->f10 = k - 1;
                sub_0805865C(0x5E);
                break;
            }
            tg = gMgr82->cur->kind;
            if (tg == 0) {
                if (gMgr82->held.kind != 10) {
                    sub_0807BD78(from, gMgr82->heldIdx);
                    sub_0807BEA0(13, gMgr82->cursor + gMgr82->page * 15, (void *)&gMgr82->held);
                    DROP82();
                    sub_0805865C(0x5F);
                    break;
                }
                switch (from) {
                case 0:
                    gInv82->items[gMgr82->heldIdx].count -= gMgr82->held.count;
                    if (gInv82->items[gMgr82->heldIdx].count == 0)
                        gInv82->items[gMgr82->heldIdx].kind = 0;
                    break;
                case 13:
                    gMgr82->stock[gMgr82->heldIdx].count -= gMgr82->held.count;
                    if (gMgr82->stock[gMgr82->heldIdx].count == 0)
                        gMgr82->stock[gMgr82->heldIdx].kind = 0;
                    break;
                }
                sub_0807BEA0(13, gMgr82->cursor + gMgr82->page * 15, (void *)&gMgr82->held);
                DROP82();
                sub_0805865C(0x5F);
                break;
            }
            held = &gMgr82->held;
            if (held->kind != 10) {
                if (from == 11)
                    break;
                if (*(u32 *)held == 0x000C0001) {
                    item = (struct Item82 *)((u8 *)gMgr82 + (gMgr82->cursor + gMgr82->page * 15) * 16 + 0x104);
                    switch (item->kind) {
                    case 2 ... 5: {
                        if (*((u8 *)gMgr82 + (gMgr82->cursor + gMgr82->page * 15) * 16 + 0x10C) != 0) {
                            *((u8 *)gMgr82 + (gMgr82->cursor + gMgr82->page * 15) * 16 + 0x10C) = 0;
                            sub_0807BD78((*gp)->heldFrom, (*gp)->heldIdx);
                            Drop82P(&sp14, gp);
                        } else {
                            *(struct Item82 *)sp4 = *item;
                            sub_0807BEA0(13, gMgr82->cursor + gMgr82->page * 15, (void *)held);
                            sub_0807BEA0((*gp)->heldFrom, (*gp)->heldIdx, (void *)sp4);
                            Drop82P(&sp14, gp);
                        }
                        break; }
                    default:
                        *(struct Item82 *)sp4 = gMgr82->stock[gMgr82->cursor + gMgr82->page * 15];
                        sub_0807BEA0(13, gMgr82->cursor + gMgr82->page * 15, (void *)&gMgr82->held);
                        sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)sp4);
                        DROP82();
                        sub_0805865C(0x5F);
                        break;
                    }
                    break;
                }
                switch (from) {
                case 13:
                    *(struct Item82 *)sp4 = gMgr82->stock[gMgr82->cursor + gMgr82->page * 15];
                    sub_0807BEA0(13, gMgr82->cursor + gMgr82->page * 15, (void *)held);
                    sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)sp4);
                    DROP82();
                    sub_0805865C(0x5F);
                    break;
                case 0:
                    *(struct Item82 *)sp4 = gMgr82->stock[gMgr82->cursor + gMgr82->page * 15];
                    sub_0807BEA0(13, gMgr82->cursor + gMgr82->page * 15, (void *)held);
                    sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)sp4);
                    DROP82();
                    sub_0805865C(0x5F);
                    break;
                default: {
                    struct Item82 *it;
                    it = (struct Item82 *)((u8 *)gMgr82 + (gMgr82->cursor + gMgr82->page * 15) * 16 + 0x104);
                    if (held->kind != it->kind)
                        break;
                    *(struct Item82 *)sp4 = *it;
                    sub_0807BEA0(13, gMgr82->cursor + gMgr82->page * 15, (void *)held);
                    sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)sp4);
                    DROP82();
                    sub_0805865C(0x5F);
                    break;
                }
                }
                break;
            }
            /* holding money, tg slot occupied */
            switch (from) {
            case 13: {
                u32 s; struct Item82 *it; u32 vv; /* block-local vv: the function-level val (r1) blocked s from r1 */
                if (gMgr82->stock[gMgr82->heldIdx].count == gMgr82->held.count) {
                    s = gMgr82->cursor + gMgr82->page * 15;
                    /* (gMgr82 + s*16) + 0x104: ROM keeps s*16 (sl) for the count address too */
                    it = (struct Item82 *)((u8 *)gMgr82 + s * 16 + 0x104);
                    if (it->kind == 10) {
                        /* ROM's `mov r0, sl` before the count address is a real copy of s*16 (sl), not a reload, so
                           the reload rotation after the 100000 compare continues from r5 (ldr r6 / mov r7, r8, DROP
                           gMgr82 reloads r2/r3, zero r4). The asm copy keeps that move; C82 keeps the stores in-struct
                           (so gMgr82 stays known in the BD78 call). */
                        struct C82 *pc;
                        { u32 t; u8 *b; b = (u8 *)gMgr82 + offsetof(struct Mgr82, stock) + offsetof(struct Item82, count); asm("" : "=r"(t) : "0"(s * 16)); pc = (struct C82 *)(b + t); }
                        vv = pc->c + gMgr82->held.count;
                        if (vv <= 100000) {
                            if (gMgr82->heldIdx != s) {
                                pc->c = vv;
                                sub_0807BD78(gMgr82->heldFrom, gMgr82->heldIdx);
                            }
                        } else if (gMgr82->heldIdx != s) {
                            gMgr82->held.count = vv - 100000;
                            gMgr82->stock[gMgr82->cursor + gMgr82->page * 15].count = 100000;
                            sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)held);
                        }
                        { /* ROM: &sp14 first, zero for the CpuSet source in r1, then a fresh zero in r4 for heldIdx after the call */
                            vu32 *z082p = &sp14;
                            u32 z082 = 0;
                            *z082p = z082;
                            CpuSet((void *)z082p, &(*gp)->held, 0x05000004);
                            (*gp)->heldFrom = 0x16;
                            { register u32 y082 asm("r4") = 0; (*gp)->heldIdx = y082; }
                        }
                        sub_0805865C(0x5F);
                        sub_0805865C(0x5F);
                        break;
                    }
                    *(struct Item82 *)sp4 = *it;
                    sub_0807BEA0(13, gMgr82->cursor + gMgr82->page * 15, (void *)held);
                    sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)sp4);
                    DROP82();
                    sub_0805865C(0x5F);
                    break;
                }
                if (tg != 10) {
                    sub_0805865C(0x61);
                    break;
                }
                s = gMgr82->cursor + gMgr82->page * 15;
                vv = gMgr82->stock[s].count + gMgr82->held.count;
                if (vv <= 100000) {
                    gMgr82->stock[gMgr82->heldIdx].count -= gMgr82->held.count;
                    gMgr82->stock[gMgr82->cursor + gMgr82->page * 15].count += gMgr82->held.count;
                    Drop82PH(&sp14, held, gp);
                    sub_0805865C(0x5F);
                    break;
                }
                if (gMgr82->heldIdx != s) {
                    gMgr82->held.count = vv - 100000;
                    gMgr82->stock[gMgr82->cursor + gMgr82->page * 15].count = 100000;
                    sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)held);
                }
                Drop82Sep(&sp14);
                sub_0805865C(0x5F);
                break;
            }
            case 0: {
                u32 moneyTotal082;
                slot = gMgr82->cursor + gMgr82->page * 15;
                if (gMgr82->stock[slot].kind != 10) {
                    sub_0805865C(0x61);
                    break;
                }
                if (gInv82->items[gMgr82->heldIdx].count == gMgr82->held.count) {
                    moneyTotal082 = gMgr82->stock[slot].count + gMgr82->held.count;
                    if (moneyTotal082 <= 100000) {
                        gMgr82->stock[slot].count = moneyTotal082;
                        sub_0807BD78(gMgr82->heldFrom, gMgr82->heldIdx);
                        DROP82();
                    } else {
                        gMgr82->held.count = moneyTotal082 - 100000;
                        gMgr82->stock[gMgr82->cursor + gMgr82->page * 15].count = 100000;
                        sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)held);
                        DROP82();
                    }
                    sub_0805865C(0x5F);
                    break;
                }
                moneyTotal082 = gMgr82->stock[slot].count + gMgr82->held.count;
                if (moneyTotal082 <= 100000) {
                    gInv82->items[gMgr82->heldIdx].count -= gMgr82->held.count;
                    gMgr82->stock[gMgr82->cursor + gMgr82->page * 15].count += gMgr82->held.count;
                    DROP82();
                    sub_0805865C(0x5F);
                    break;
                }
                gMgr82->held.count = moneyTotal082 - 100000;
                gMgr82->stock[gMgr82->cursor + gMgr82->page * 15].count = 100000;
                sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)held);
                DROP82();
                sub_0805865C(0x5F);
                break;
            }
            }
        } else if (keys29_03001324 & 0x100) {
            switch (gMgr82->mode) {
            case 2:
                break;
            case 3:
                if (gMgr82->heldFrom != 11 && gMgr82->heldFrom != 0x16) {
                    gMgr82->state = 12;
                    gMgr82->cursor = 0;
                    gMgr82->prev = 1;
                    sub_0805865C(0x62);
                }
                break;
            }
        }
        break;
    case 14: {

        u32 c;
        if (keys29_03001308 & 0x40) {
            if (gMgr82->cursor != 0) {
                gMgr82->cursor--;
                sub_0805865C(0x62);
            }
        } else if (keys29_03001308 & 0x80) {
            if (gMgr82->cursor < gMgr82->f48 && gMgr82->cursor <= 3) {
                gMgr82->cursor++;
                sub_0805865C(0x62);
            }
        } else if ((u16)(keys29_03001308 & 0x20)) {
            gMgr82->state = 13;
            gMgr82->cursor = gMgr82->cursor * 3 + 2;
            gMgr82->prev = 1;
            gMgr82->f6A = 100;
            sub_0805865C(0x62);
        } else if (keys29_03001324 & 1) {
            struct Mgr82 *m = gMgr82;
            c = m->cursor;
            col = m->f48; /* function-level col, not a block-local (register choice) */
            if (c >= col && col <= 4) {
                m->cursor = 0;
                m->state = 15;
            } else {
                m->page = c;
            }
            sub_0805865C(0xF);
        }
        if (gMgr82->state == 14 && gMgr82->cursor == gMgr82->f48) {
            sub_08065424(gMgr82->posX - 0x18, gMgr82->posY - 0x10, gUnk_084ECBC8[gMgr82->cursor], 0, 9);
            sub_08065230(gMgr82->sprite, gMgr82->posX - 0x20, gMgr82->posY - 0x10, 10, 0);
        }
        break;
    }
    case 15:
        if (keys29_03001308 & 0x20) {
            if (gMgr82->cursor == 1)
                sub_0805865C(0xC6);
            gMgr82->cursor = 0;
        } else if (keys29_03001308 & 0x10) {
            if (gMgr82->cursor == 0)
                sub_0805865C(0xC7);
            gMgr82->cursor = 1;
        } else if (keys29_03001324 & 1) {
            if (gMgr82->cursor == 0) {
                if (sub_0808543C() >= gUnk_084ECBC8[gMgr82->f48]) {
                    sub_0807C014(gUnk_084ECBC8[gMgr82->f48]);
                    gInv82->f6A++;
                    gMgr82->f48 = gInv82->f6A;
                    sub_0805865C(0x63);
                }
                gMgr82->state = 14;
                gMgr82->cursor = gMgr82->f48 - 1;
            } else {
                gMgr82->state = 14;
                gMgr82->cursor = gMgr82->f48;
                keys29_03001324 &= ~2;
                sub_0805865C(0x10);
            }
        } else if (keys29_03001324 & 2) {
            gMgr82->state = 14;
            gMgr82->cursor = gMgr82->f48;
            keys29_03001324 &= ~2;
            sub_0805865C(0x10);
        }
        break;
    case 16: {
        u32 fr, cu;
        struct Item82 *it;
        if (keys29_03001308 & 0x20) {
            if (gMgr82->cursor != 0) {
                gMgr82->cursor--;
                sub_0805865C(0x62);
                break;
            }
            gMgr82->state = 0;
            gMgr82->cursor = 9;
            sub_0805865C(0x62);
        } else if ((u16)(keys29_03001308 & 0x10)) {
            if (gMgr82->cursor <= 1) {
                gMgr82->cursor++;
                sub_0805865C(0x62);
            }
        } else if ((u16)(keys29_03001308 & 0x80)) {
            if ((gMgr82->flags & 4) && gMgr82->held.kind == 10) {
                gMgr82->state = 17;
                gMgr82->cursor = 0;
                gMgr82->prev = 100;
                sub_0805865C(0x62);
            }
        } else if (keys29_03001324 & 1) {
            fr = gMgr82->heldFrom;
            if (fr == 0x16) {
                cu = gMgr82->cursor;
                it = (struct Item82 *)((u32)gMgr82 + cu * sizeof(struct Item82) + offsetof(struct Mgr82, stock));
                if (it->kind == 0)
                    break;
                gMgr82->heldFrom = gMgr82->state;
                gMgr82->heldIdx = cu;
                gMgr82->held = *it;
                gMgr82->held.flag2 = 0;
                gMgr82->flags &= ~4;
                sub_0805865C(0x5E);
                break;
            }
            target = gMgr82->cur->kind;
            if (target == 0) {
                sub_0807BD78(fr, gMgr82->heldIdx);
                sub_0807BEA0(16, gMgr82->cursor, (void *)&gMgr82->held);
                DROP82();
                sub_0805865C(0x5F);
                n = 0;
                for (i = 0; i <= 2; i++) {
                    if (gMgr82->stock[i].kind != 0)
                        n++;
                }
                if (n == 3)
                    gMgr82->flags |= 4;
                break;
            }
            switch (fr) {
            case 1:
                if (gMgr82->cur->kind == 2) {
                    *(struct Item82 *)sp4 = gMgr82->stock[gMgr82->cursor];
                    sub_0807BEA0(16, gMgr82->cursor, (void *)&gMgr82->held);
                    sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)sp4);
                    DROP82();
                    sub_0805AD78(gInv82->equip);
                    sub_0805865C(0x5F);
                } else {
                    sub_0805865C(0x61);
                }
                break;
            case 2:
                if (gMgr82->cur->kind == 4) {
                    *(struct Item82 *)sp4 = gMgr82->stock[gMgr82->cursor];
                    sub_0807BEA0(16, gMgr82->cursor, (void *)&gMgr82->held);
                    sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)sp4);
                    DROP82();
                    sub_0805D094();
                    sub_0805865C(0x5F);
                } else {
                    sub_0805865C(0x61);
                }
                break;
            case 3:
                if (gMgr82->cur->kind == 5) {
                    *(struct Item82 *)sp4 = gMgr82->stock[gMgr82->cursor];
                    sub_0807BEA0(16, gMgr82->cursor, (void *)&gMgr82->held);
                    sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)sp4);
                    DROP82();
                    sub_0805D13C();
                    sub_0805865C(0x5F);
                } else {
                    sub_0805865C(0x61);
                }
                break;
            case 4:
                if (gMgr82->cur->kind == 3) {
                    *(struct Item82 *)sp4 = gMgr82->stock[gMgr82->cursor];
                    sub_0807BEA0(16, gMgr82->cursor, (void *)&gMgr82->held);
                    sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)sp4);
                    DROP82();
                    sub_0805D0E8();
                    sub_0805865C(0x5F);
                } else {
                    sub_0805865C(0x61);
                }
                break;
            case 5:
                if (gMgr82->cur->kind == 7) {
                    *(struct Item82 *)sp4 = gMgr82->stock[gMgr82->cursor];
                    sub_0807BEA0(16, gMgr82->cursor, (void *)&gMgr82->held);
                    sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)sp4);
                    DROP82();
                    sub_0805D190();
                    sub_0805865C(0x5F);
                } else {
                    sub_0805865C(0x61);
                }
                break;
            case 6:
                if (gMgr82->cur->kind == 6) {
                    *(struct Item82 *)sp4 = gMgr82->stock[gMgr82->cursor];
                    sub_0807BEA0(16, gMgr82->cursor, (void *)&gMgr82->held);
                    sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)sp4);
                    DROP82();
                    sub_0805D1E0();
                    sub_0805865C(0x5F);
                } else {
                    sub_0805865C(0x61);
                }
                break;
            case 0:
            case 16:
                *(struct Item82 *)sp4 = gMgr82->stock[gMgr82->cursor];
                sub_0807BEA0(16, gMgr82->cursor, (void *)&gMgr82->held);
                sub_0807BEA0(gMgr82->heldFrom, gMgr82->heldIdx, (void *)sp4);
                DROP82();
                sub_0805865C(0x5F);
                break;
            }
        }
        break;
    }
    case 17:
        if (keys29_03001308 & 0x20) {
            gMgr82->state = 0;
            gMgr82->cursor = 24;
            gMgr82->prev = 100;
            sub_0805865C(0x62);
        } else if (keys29_03001324 & 1) {
            u32 *p;
            struct Inv82 *inventoryBase082;
            gMgr82->stock[3] = gMgr82->held;
            inventoryBase082 = gInv82;
            have = gMgr82->heldIdx;
            { /* ROM: idx*16 first, then (inventory + items[0].count) + idx*16; one barrier keeps that grouping */
                u32 off082 = have * sizeof(struct Item82);
                inventoryBase082 = (struct Inv82 *)((u8 *)inventoryBase082 + offsetof(struct Inv82, items) + offsetof(struct Item82, count));
                
                p = (u32 *)((u8 *)inventoryBase082 + off082);
            }
            if (*p == gMgr82->held.count)
                sub_0807BD78(gMgr82->heldFrom, have);
            else
                *p -= gMgr82->held.count;
            DROP82();
            gMgr82->state = 18;
            gMgr82->cursor = 0;
            gMgr82->prev = 100;
            gMgr82->f54 = 0;
            gMgr82->f58 = gMgr82->stock[3].count / 10000;
            gMgr82->f60 = 11 - gMgr82->f58;
            gMgr82->f5C = 0;
            sub_0805865C(0xBB);
        } else if (keys29_03001324 & 2) {
            gMgr82->state = gMgr82->heldFrom;
            gMgr82->cursor = gMgr82->heldIdx;
            keys29_03001324 &= ~2;
            DROP82();
            sub_0805865C(0x62);
        }
        break;
    case 18:
        if (keys29_03001308 & 0x20) {
            if (gMgr82->cursor == 1) {
                gMgr82->cursor = 0;
                sub_0805865C(0xC6);
            }
        } else if ((u16)(keys29_03001308 & 0x10)) {
            if (gMgr82->cursor == 0) {
                gMgr82->cursor = 1;
                sub_0805865C(0xC7);
            }
        } else if (keys29_03001324 & 1) {
            if (gMgr82->cursor == 1) {
                sub_0805AB20(&gMgr82->stock[3]);
                gMgr82->stock[3].kind = 0;
                gMgr82->state = 0;
                gMgr82->cursor = 0;
                gMgr82->prev = 100;
                sub_0805865C(0x10);
            } else {
                gMgr82->flags &= ~4;
                gMgr82->state = 19;
                sub_0807BD78(0x10, 3);
                gMgr82->fC = 0;
                gMgr82->f10 = 0;
                gMgr82->f54 = 0xA0;
                gMgr82->f58 = 0;
                sub_0805865C(0x63);
            }
        } else if (keys29_03001324 & 2) {
            sub_0805AB20(&gMgr82->stock[3]);
            gMgr82->stock[3].kind = 0;
            gMgr82->state = 0;
            gMgr82->cursor = 0;
            gMgr82->prev = 100;
            keys29_03001324 = 0;
            sub_0805865C(0x10);
        }
        break;
    case 19:
        if (gMgr82->fC != 0) {
            sub_0808441C(&gMgr82->stock[0], sp18);
            sub_0807BD78(0x10, 0);
            sub_0807BD78(0x10, 1);
            sub_0807BD78(0x10, 2);
            gMgr82->cursor = sub_0805CFA0();
            sub_0805AB20(sp18);
            gMgr82->state = 0;
            gMgr82->prev = 100;
        }
        break;
    case 20: {
        struct Mgr82 *m = gMgr82;
        u32 v;
        if (m->fC != 0)
            break;
        if (keys29_03001308 & 0x10) {
            if (--m->f10 < 0)
                m->f10 = 0;
            sub_0805865C(0x62);
        } else if (keys29_03001308 & 0x20) {
            if (++m->f10 >= m->f14)
                m->f10 = m->f14 - 1;
            sub_0805865C(0x62);
        } else if (keys29_03001308 & 0x40) {
            switch (m->heldFrom) {
            case 0:
                v = m->held.count + gUnk_084EBD4C[9 - m->f10];
                if (v <= gInv82->items[m->heldIdx].count) {
                    m->held.count = v;
                    sub_0805865C(0x62);
                }
                break;
            case 13:
                v = m->held.count + gUnk_084EBD4C[9 - m->f10];
                if (v <= m->stock[m->heldIdx].count) {
                    m->held.count = v;
                    sub_0805865C(0x62);
                }
                break;
            }
        } else if (keys29_03001308 & 0x80) {
            u32 *pcnt = &m->held.count;
            s32 d;
            if (*pcnt != gUnk_084EBD4C[9 - m->f10] && (d = *pcnt - gUnk_084EBD4C[9 - m->f10]) >= 0) {
                *pcnt = d;
                sub_0805865C(0x62);
            }
        } else if (keys29_03001324 & 1) {
            m->state = m->heldFrom;
            m->cursor = m->heldIdx;
            if (m->state == 13)
                m->cursor = m->heldIdx - m->page * 15;
            sub_0805865C(0xF);
        } else if (keys29_03001324 & 2) {
            vu32 *fillSource082;
            m->state = m->heldFrom;
            m->cursor = m->heldIdx;
            if (m->state == 13)
                m->cursor = m->heldIdx - m->page * 15;
            fillSource082 = &sp14;
            *fillSource082 = 0;
            CpuSet((void *)fillSource082, &gMgr82->held, 0x05000004);
            gMgr82->heldIdx = 0;
            gMgr82->heldFrom = 0;
            sub_0805865C(0x10);
        }
        break;
    }
    }
done82:
    if (gMgr82->mode == 6) {
        n = 0;
        for (i = 0; i <= 2; i++) {
            if (gMgr82->stock[i].kind != 0)
                n++;
        }
        if (n == 3)
            gMgr82->flags |= 4;
        else
            gMgr82->flags &= ~4;
    }
    if (keys29_03001324 == 8) {
        if (!(gMgr82->flags & 1)) {
            gMgr82->f24 = 0;
            sub_0805865C(0x10);
        }
    } else if (keys29_03001324 == 2) {
        if (!(gMgr82->flags & 1)) {
            switch (gMgr82->heldFrom) {
            case 12:
                gMgr82->state = gMgr82->heldFrom;
                gMgr82->cursor = gMgr82->heldIdx;
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 11:
            case 13:
            case 16:
                gMgr82->f6A = -1;
                DROP82();
                break;
            case 22:
            default:
                gMgr82->f24 = 0;
                break;
            }
        } else {
            gMgr82->flags &= ~1;
        }
        sub_0805865C(0x10);
    } else if (keys29_03001324 == 4 && keys29_03001308 == 0) {
        if (gMgr82->state != 14 && gMgr82->state != 7 && gMgr82->state != 10
         && gMgr82->cur != NULL && gMgr82->cur->kind != 0 && gMgr82->cur->kind != 10) {
            if (!(gMgr82->flags & 1)) {
                gMgr82->flags |= 1;
                sub_0801A664(2, 0x12);
                sub_0805865C(0xDC);
            } else {
                gMgr82->flags &= ~1;
                sub_0805865C(0xDD);
            }
        } else if (gMgr82->state == 9 && gMgr82->f5B4 != 0) {
            if (!(gMgr82->flags & 1)) {
                gMgr82->flags |= 1;
                sub_0801A664(2, 0x12);
                sub_0805865C(0xDC);
            } else {
                gMgr82->flags &= ~1;
                sub_0805865C(0xDD);
            }
        }
    } else if (gMgr82->mode == 4 && gMgr82->state != 20 && !(gMgr82->flags & 1)
            && (keys29_03001324 & 0x100)) {
        if (++gMgr82->page >= gMgr82->f48)
            gMgr82->page = 0;
        sub_0805865C(0xE);
    }
    switch (gMgr82->state) {
    case 0:
        if (gMgr82->cursor != gMgr82->prev) {
            gMgr82->posX = gMgr82->cursor % 5 * 16 + 0x58;
            gMgr82->posY = gMgr82->cursor / 5 * 16 + 0x20;
            gMgr82->prev = gMgr82->cursor;
            gMgr82->f6C = 0;
        }
        break;
    case 1:
        if (gMgr82->cursor != gMgr82->prev) {
            register u32 beltCursorValue082 asm("r6");
            register u32 beltColumnValue082 asm("r0");
            u32 beltQuotient082;
            register u32 beltDoubleQuotient082 asm("r1");
            register u32 beltRowBase082 asm("r5");
            beltCursorValue082 = gMgr82->cursor;
            
            beltQuotient082 = beltCursorValue082 / 3;
            beltDoubleQuotient082 = beltQuotient082 + beltQuotient082;
            
            beltRowBase082 = beltDoubleQuotient082 + beltQuotient082;
            
            /* The column is computed inside the index (after the &posX address), like the ROM. */
            gMgr82->posX = gUnk_084ECBBC[({
                beltColumnValue082 = beltCursorValue082 - beltRowBase082;
                asm("" : "+r"(beltColumnValue082));
                beltColumnValue082;
            }) * 2] + 0x38;
            gMgr82->posY = (&gUnk_084ECBBC[1])[(gMgr82->cursor - beltRowBase082) * 2] + 0x10;
            gMgr82->prev = gMgr82->cursor;
            gMgr82->f6C = 0;
        }
        break;
    case 2:
        if (gMgr82->cursor != gMgr82->prev)
            gMgr82->f6C = 0;
        gMgr82->posX = 0x40;
        gMgr82->posY = 0x30;
        gMgr82->prev = gMgr82->cursor;
        break;
    case 3:
        if (gMgr82->cursor != gMgr82->prev)
            gMgr82->f6C = 0;
        gMgr82->posX = 0x3C;
        gMgr82->posY = 0x60;
        gMgr82->prev = gMgr82->cursor;
        break;
    case 4:
        if (gMgr82->cursor != gMgr82->prev)
            gMgr82->f6C = 0;
        gMgr82->posX = 0x40;
        gMgr82->posY = 0x48;
        gMgr82->prev = gMgr82->cursor;
        break;
    case 5:
        if (gMgr82->cursor != gMgr82->prev)
            gMgr82->f6C = 0;
        gMgr82->posX = 0x0C;
        gMgr82->posY = 0x40;
        gMgr82->prev = gMgr82->cursor;
        break;
    case 6:
        if (gMgr82->cursor != gMgr82->prev)
            gMgr82->f6C = 0;
        gMgr82->posX = 0x10;
        gMgr82->posY = 0x60;
        gMgr82->prev = gMgr82->cursor;
        break;
    case 9:
        gMgr82->posX = 0x24;
        gMgr82->posY = 0x48;
        gMgr82->prev = gMgr82->cursor;
        gMgr82->f6C = 0;
        break;
    case 7:
        if (gMgr82->cursor != gMgr82->prev) {
            col = gMgr82->cursor & 3;
            /* posY in each branch: its address is then posX's + 4 (ROM adds r1, #4); cross-jumping merges the tails */
            if (col <= 1) {
                gMgr82->posX = col * 72 + 0x10;
                gMgr82->posY = (gMgr82->cursor >> 2) * 8 + 0x74;
            } else {
                gMgr82->posX = col * 56 + 0x24;
                gMgr82->posY = (gMgr82->cursor >> 2) * 8 + 0x74;
            }
            gMgr82->prev = gMgr82->cursor;
            gMgr82->f6C = 0;
        }
        break;
    case 10:
        gMgr82->posX = 0xB4;
        gMgr82->posY = 0x60;
        gMgr82->prev = gMgr82->cursor;
        gMgr82->f6C = 0;
        break;
    case 8:
        if (gMgr82->cursor != gMgr82->prev) {
            register u32 rowEnd082 asm("r3");
            struct C82 *positionY82;
            register u32 rowCursorValue082 asm("r6");
            rowCursorValue082 = gMgr82->cursor;
            
            {
                /* Same row-base split as case 1: q + q in r1, then + q in r5. */
                u32 rowQuotient082 = rowCursorValue082 / 3;
                register u32 rowDouble082 asm("r1") = rowQuotient082 + rowQuotient082;
                register u32 rowBase082 asm("r5");
                
                rowBase082 = rowDouble082 + rowQuotient082;
                asm("" : "+r"(rowBase082));
                base = rowBase082;
            }
            idx = base + 3;
            rowEnd082 = (u32)idx;
            
            {
                /* cursor + 1 stays a separate r0 value, computed after the &posX address. */
                register u32 nextCursorX asm("r0");
                gMgr82->posX = gUnk_084ECBB0[(rowEnd082 - ({
                    nextCursorX = rowCursorValue082 + 1;
                    
                    nextCursorX;
                })) * 2] + 0xB8;
            }
            positionY82 = (struct C82 *)&gMgr82->posY;
            {
                u32 nextCursorY = gMgr82->cursor + 1;
                register u32 rowDeltaY082 asm("r0") = rowEnd082 - nextCursorY;
                asm("" : "+r"(rowDeltaY082));
                positionY82->c = (u32)((&gUnk_084ECBB0[1])[rowDeltaY082 * 2] + 0x10);
            }
            gMgr82->prev = gMgr82->cursor;
            gMgr82->f6C = 0;
        }
        break;
    case 12:
        gMgr82->posX = 0xBC;
        gMgr82->posY = 0x60;
        gMgr82->prev = gMgr82->cursor;
        break;
    case 11:
        if (gMgr82->cursor != gMgr82->prev) {
            gMgr82->posX = gMgr82->cursor % 3 * 16 + 0xB8;
            gMgr82->posY = gMgr82->cursor / 3 * 16 + 0x20;
            gMgr82->prev = gMgr82->cursor;
            gMgr82->f6C = 0;
        }
        break;
    case 13:
        if (gMgr82->cursor != gMgr82->prev) {
            gMgr82->posX = gMgr82->cursor % 3 * 16 + 0xB8;
            gMgr82->posY = gMgr82->cursor / 3 * 16 + 0x20;
            gMgr82->prev = gMgr82->cursor;
        }
        break;
    case 14:
        if (gMgr82->cursor != gMgr82->prev) {
            gMgr82->posX = 0xE8;
            gMgr82->posY = gMgr82->cursor * 16 + 0x20;
            gMgr82->prev = gMgr82->cursor;
        }
        if (gMgr82->cursor == gMgr82->f48 && gMgr82->cursor <= 4) {
            text = (u8 *)sub_08007290(0x140189) + 2;
            sub_0801A3D0(text, (u16)(15 - (u32)sub_0801A638(text) / 2), 0x12);
        }
        sub_0801A664(0xE, 3);
        sub_0801A664(0x12, 2);
        break;
    case 15:
        sub_0807C1D8();
        text = (u8 *)sub_08007290(0x14018A) + 2;
        sub_0801A3D0(text, (u16)(15 - (u32)(sub_0801A638(text) + 1) / 2), 0x12);
        break;
    case 16:
        if (gMgr82->cursor != gMgr82->prev) {
            gMgr82->posX = gMgr82->cursor * 16 + 0xB8;
            gMgr82->posY = 0x30;
            gMgr82->prev = gMgr82->cursor;
        }
        break;
    case 17:
        gMgr82->posX = 0xC8;
        gMgr82->posY = gMgr82->f54 + 0x60;
        gMgr82->prev = gMgr82->cursor;
        break;
    case 18:
        sub_0807C1D8();
        gMgr82->f54 += (gMgr82->f58 - gMgr82->f54) / 2;
        {
            s32 dd = gMgr82->f54 - gMgr82->f58; /* block-local (ROM r0); the function-level d took r2 */
            if (dd < 0)
                dd = -dd;
            if (dd == 1) {
                gMgr82->f54 = gMgr82->f58;
            } else if (gMgr82->f54 == gMgr82->f58) {
                gMgr82->f5C += gMgr82->f60;
                if (gMgr82->f5C > 0xFF)
                    gMgr82->f5C = 0;
            }
        }
        gMgr82->posY = gMgr82->f54 + 0x60;
        text = (u8 *)sub_08007290(0x140186) + 2;
        sub_0801A3D0(text, (u16)(15 - (u32)(sub_0801A638(text) + 1) / 2), 0x12);
        break;
    case 19:
        d = gMgr82->f54 - gMgr82->f58;
        gMgr82->f54 = d;
        gMgr82->f58 += 2;
        if (d < 0) {
            sub_0805865C(0x19);
            gMgr82->f54 = 0;
            gMgr82->f58 = -20;
            if (++gMgr82->f10 > 3U)
                gMgr82->fC = 1;
        }
        sub_08065230((u8 *)gMgr82 + 0x5EC, 0xD2, 0x30 - gMgr82->f54, 1, 0);
        break;
    case 20:
        sub_08065424(gMgr82->posX + 8, gMgr82->posY - 0x10, gMgr82->held.count, 0, 9);
        sub_08065230((u8 *)gMgr82 + 0x5B8, gMgr82->posX, gMgr82->posY - 0x10, 10, (u16)(6 - gMgr82->f10));
        break;
    }
    switch (gMgr82->state) {
    case 0:
        gMgr82->cur = &gInv82->items[gMgr82->cursor];
        break;
    case 1:
        gMgr82->cur = &gInv82->belt[gMgr82->cursor];
        break;
    case 2:
        gMgr82->cur = &gInv82->equipA;
        break;
    case 3:
        gMgr82->cur = &gInv82->equipC;
        break;
    case 4:
        gMgr82->cur = &gInv82->equipB;
        break;
    case 5:
        gMgr82->cur = &gInv82->equipD;
        break;
    case 6:
        gMgr82->cur = &gInv82->equipE;
        break;
    case 9:
        gMgr82->cur = NULL;
        break;
    case 7:
    case 10:
    case 12:
    case 14:
    case 15:
    case 18:
        gMgr82->cur = NULL;
        break;
    case 8:
        /* function-level i, not idx (ROM keeps the result in r5) */
        i = sub_0805D548(gInv82->f56[gMgr82->cursor] - 1);
        if (i != -1)
            gMgr82->cur = &gInv82->items[i];
        else
            gMgr82->cur = NULL;
        break;
    case 13:
        gMgr82->cur = &gMgr82->stock[gMgr82->cursor + gMgr82->page * 15];
        break;
    case 11:
    case 16:
        gMgr82->cur = &gMgr82->stock[gMgr82->cursor];
        break;
    }
    {
        struct Mgr82 *m = gMgr82;
        m->fE0 += (m->posX - m->fE0) / 2;
        m->fE4 += (m->posY - m->fE4) / 2;
        if (m->f5B4 != NULL) {
            for (i = 0; i <= 5; i++) {
                if (!(gMgr82->f5B4->f136[i] & 0x8000)) {
                    if (gMgr82->anim[i].t != 0) {
                        gMgr82->anim[i].t--;
                    } else if (gMgr82->anim[i].n++ > 20) {
                        gMgr82->anim[i].t = 3;
                        gMgr82->anim[i].n = 0;
                    }
                }
            }
        } else {
            for (i = 0; i <= 5; i++) {
                gMgr82->anim[i].t = 0;
                gMgr82->anim[i].n = i % 5;
            }
        }
    }
    if (gMgr82->f34 != sub_0805D3D4()) {
        sub_08065504(0x1C, 0, gMgr82->f34, 0, 9);
        sub_080659F4(&gMgr82->f34, gMgr82->f34, sub_0805D3D4(), gMgr82->f38);
        if ((gMgr82->f38 += 0x40) > 0x3FF) {
            gMgr82->f34 = sub_0805D3D4();
            gMgr82->f38 = 0;
        }
    } else {
        sub_08065504(0x1C, 0, sub_0805D3D4(), 0, 9);
    }
    if (gMgr82->mode != 2) {
        if (gMgr82->f3C != sub_08085330()) {
            sub_08065504(0x1C, 1, gMgr82->f3C, 0, 9);
            sub_080659F4(&gMgr82->f3C, gMgr82->f3C, sub_08085330(), gMgr82->f40);
            if ((gMgr82->f40 += 0x40) > 0x3FF) {
                gMgr82->f3C = sub_08085330();
                gMgr82->f40 = 0;
            }
        } else {
            sub_08065504(0x1C, 1, sub_08085330(), 0, 9);
        }
    }
    if (gMgr82->flags & 1)
        return;
    if (gMgr82->f6C++ <= 3)
        return;
    {
        u32 st = gMgr82->state;
        struct Item82 *c;
        if (st == 20)
            return;
        if (gMgr82->held.kind == 10) {
            sub_08065424(gMgr82->fE0 + 8, gMgr82->fE4 - 0x10, gMgr82->held.count, 0, 9);
            sub_08065230(gMgr82->sprite, gMgr82->fE0, gMgr82->fE4 - 0x10, 10, 0);
        } else if (gMgr82->held.kind == 0) {
            c = gMgr82->cur;
            if (c->kind == 10) {
                if (gMgr82->mode == 4 || gMgr82->mode == 5)
                    return;
                if (st == 18)
                    return;
                sub_08065424(gMgr82->posX + 8, gMgr82->posY - 0x10, c->count, 0, 9);
                sub_08065230(gMgr82->sprite, gMgr82->posX, gMgr82->posY - 0x10, 10, 0);
            } else if (c->kind == 0) {
                return;
            } else if (gMgr82->mode == 3) {
                if (st == 9)
                    return;
                if (st == 7)
                    return;
                if (st == 11) {
                    sub_08065424(gMgr82->posX + 8, gMgr82->posY - 8, sub_0805AE94(c), 0, 9);
                    sub_08065230(gMgr82->sprite, gMgr82->posX, gMgr82->posY - 8, 10, 0);
                    return;
                }
                switch (c->kind) {
                case 2 ... 5:
                    if (st == 1) {
                        if (c->flag != 0)
                            sub_08065424(gMgr82->posX + 16, gMgr82->posY - 8, 1, 0, 9);
                        else
                            sub_08065424(gMgr82->posX + 16, gMgr82->posY - 8, sub_0805AE94(c) / 10, 0, 9);
                        sub_08065230(gMgr82->sprite, gMgr82->posX + 8, gMgr82->posY - 8, 12, 0);
                    } else {
                        if (c->flag != 0)
                            sub_08065424(gMgr82->posX + 8, gMgr82->posY - 8, 1, 0, 9);
                        else
                            sub_08065424(gMgr82->posX + 8, gMgr82->posY - 8, sub_0805AE94(c) / 10, 0, 9);
                        sub_08065230(gMgr82->sprite, gMgr82->posX, gMgr82->posY - 8, 12, 0);
                    }
                    break;
                default:
                    switch (gMgr82->state) {
                    case 12:
                        return;
                    case 6:
                        if (sub_0805AE94(gMgr82->cur) / 10 == 0)
                            sub_08065424(gMgr82->posX + 16, gMgr82->posY - 8, 1, 0, 9);
                        else
                            sub_08065424(gMgr82->posX + 16, gMgr82->posY - 8, sub_0805AE94(gMgr82->cur) / 10, 0, 9);
                        sub_08065230(gMgr82->sprite, gMgr82->posX + 8, gMgr82->posY - 8, 12, 0);
                        break;
                    case 5:
                        if (sub_0805AE94(gMgr82->cur) / 10 == 0)
                            sub_08065424(gMgr82->posX + 20, gMgr82->posY - 8, 1, 0, 9);
                        else
                            sub_08065424(gMgr82->posX + 20, gMgr82->posY - 8, sub_0805AE94(gMgr82->cur) / 10, 0, 9);
                        sub_08065230(gMgr82->sprite, gMgr82->posX + 12, gMgr82->posY - 8, 12, 0);
                        break;
                    default:
                        if (sub_0805AE94(gMgr82->cur) / 10 == 0)
                            sub_08065424(gMgr82->posX + 8, gMgr82->posY - 8, 1, 0, 9);
                        else
                            sub_08065424(gMgr82->posX + 8, gMgr82->posY - 8, sub_0805AE94(gMgr82->cur) / 10, 0, 9);
                        sub_08065230(gMgr82->sprite, gMgr82->posX, gMgr82->posY - 8, 12, 0);
                        break;
                    }
                    break;
                }
            } else if (gMgr82->mode == 5) {
                switch (c->kind) {
                case 2 ... 5:
                    if (c->flag != 0) {
                        c->flag = 0;
                        sub_08065424(gMgr82->posX + 8, gMgr82->posY - 8, sub_0805B068(gMgr82->cur), 0, 9);
                        sub_08065230(gMgr82->sprite, gMgr82->posX, gMgr82->posY - 8, 10, 0);
                        gMgr82->cur->flag = 1;
                    }
                    break;
                }
            }
        } else if (gMgr82->mode == 3) {
            if (gMgr82->heldFrom == 11) {
                sub_08065424(gMgr82->posX + 8, gMgr82->posY - 0x10, sub_0805AE94(&gMgr82->held), 0, 9);
                sub_08065230(gMgr82->sprite, gMgr82->posX, gMgr82->posY - 0x10, 10, 0);
            } else {
                if (sub_0805AE94(&gMgr82->held) / 10 == 0)
                    sub_08065424(gMgr82->posX + 8, gMgr82->posY - 0x10, 1, 0, 9);
                else
                    sub_08065424(gMgr82->posX + 8, gMgr82->posY - 0x10, sub_0805AE94(&gMgr82->held) / 10, 0, 9);
                sub_08065230(gMgr82->sprite, gMgr82->posX, gMgr82->posY - 0x10, 12, 0);
            }
        }
    }
}
// Inventory drawing pass.
extern void sub_0805FC80(s32 x, s32 y, void *item, s32 mode);
extern void sub_0805FAC0(s32 x, s32 y, s32 count, s32 mode);
extern u32 sub_0805AE34(const u8 *item);
extern s16 gUnk_084ECBB0[];
extern s16 gUnk_084ECBB2[];
extern s16 gUnk_084ECBBC[];

#define MGR ((u8 *)gUnk_03006440)
#define INV ((u8 *)gUnk_030034E0)
#define F32(p, o) (*(u32 *)((p) + (o)))
#define F16(p, o) (*(u16 *)((p) + (o)))
#define ITEM_MODE(item, mode, chk) \
    mode = 8; \
    switch (*(u16 *)(item)) { \
    case 2: r = sub_0805AE34(item); goto chk; \
    case 3: r = sub_0805D278(item); goto chk; \
    case 4: r = sub_0805D210(item); goto chk; \
    case 5: r = sub_0805D2E0(item); \
    chk: if (r == 0) mode = 10; break; \
    }

/* [DrawItemMenuContents] The matched drawing pass visits 25 bag records at character/inventory base +0x150,
 * stride 16, and calls the shared item-icon renderer with kind-dependent selection-validation flags. It then
 * draws the current three-entry equipment page from +0x70 and fixed equipment records
 * +0x100/+0x110/+0x120/+0x130/+0x140 subject to menu mode. The inventory base is reached through pointer
 * global 030034E0; the independent menu manager is reached through 03006440. Selected held sources may blink
 * using frame parity. Valid item/page/table domains are not independently proved. */
void sub_08080A78(void)
{
    u32 i;
    u32 end;
    u8 *item;
    s32 mode;
    u32 r;
    u16 buf[8];

    item = INV + 0x150;
    for (i = 0; i <= 0x18; i++, item += 0x10) {
        mode = 8;
        switch (*(u16 *)item) {
        case 2: r = sub_0805AE34(item); goto c1;
        case 3: r = sub_0805D278(item); goto c1;
        case 4: r = sub_0805D210(item); goto c1;
        case 5: r = sub_0805D2E0(item);
        c1: if (r == 0) mode = 10; break;
        }
        if (F32(MGR, 0x1C) == 0 && F32(MGR, 0x20) == i) {
            if (gUnk_03002344 & 1)
                sub_0805FC80((i % 5) * 0x10 + 0x58, (i / 5) * 0x10 + 0x20, item, mode);
        } else {
            sub_0805FC80((i % 5) * 0x10 + 0x58, (i / 5) * 0x10 + 0x20, item, mode);
        }
    }

    {
        struct A78Pos { s16 x, y; };
        u32 first;
        first = (u16)(F16(INV, 0x68) / 3) * 3;
        end = first + 3;
        item = INV + (first * 0x10 + 0x70);
        for (i = first; i < end; i++, item += 0x10) {
            mode = 8;
            if (sub_0805AE34(item) == 0)
                mode = 10;
            if (F32(MGR, 0x1C) == 1 && F32(MGR, 0x20) == i) {
                if (gUnk_03002344 & 1)
                    sub_0805FC80(((struct A78Pos *)gUnk_084ECBBC)[i - first].x + 0x38, ((struct A78Pos *)gUnk_084ECBBC)[i - first].y + 0x10, item, mode);
            } else if (F16(INV, 0x68) == i) {
                { s32 x = ((struct A78Pos *)gUnk_084ECBBC)[i - first].x + 0x38; s32 y = ((struct A78Pos *)gUnk_084ECBBC)[i - first].y; s32 sc = *(s32 *)(MGR + 0x74) - 0x10; sub_0805FC80(x, y - sc, item, mode); }
            } else {
                sub_0805FC80(((struct A78Pos *)gUnk_084ECBBC)[i - first].x + 0x38, ((struct A78Pos *)gUnk_084ECBBC)[i - first].y + 0x10, item, mode);
            }
        }
    }

    if (F32(MGR, 0) != 5) {
        item = INV + 0x100;
        mode = 0;
        if (sub_0805D210(item) == 0)
            mode = 2;
        if (F32(MGR, 0x1C) == 2) {
            if (gUnk_03002344 & 1)
                sub_0805FC80(0x40, 0x30, item, mode);
        } else
            sub_0805FC80(0x40, 0x30 - F32(MGR, 0x7C), item, mode);

        item = INV + 0x120;
        mode = 0;
        if (sub_0805D2E0(item) == 0)
            mode = 2;
        if (F32(MGR, 0x1C) == 3) {
            if (gUnk_03002344 & 1)
                sub_0805FC80(0x3C, 0x60, item, mode);
        } else
            sub_0805FC80(0x3C, 0x60 - F32(MGR, 0x8C), item, mode);

        item = INV + 0x110;
        mode = 0;
        if (sub_0805D278(item) == 0)
            mode = 2;
        if (F32(MGR, 0x1C) == 4) {
            if (gUnk_03002344 & 1)
                sub_0805FC80(0x40, 0x48 - F32(MGR, 0x84), item, mode);
        } else
            sub_0805FC80(0x40, 0x48 - F32(MGR, 0x84), item, mode);

        if (F32(MGR, 0x1C) == 5) {
            if (gUnk_03002344 & 1)
                sub_0805FC80(0xC, 0x40 - F32(MGR, 0x9C), INV + 0x130, 8);
        } else
            sub_0805FC80(0xC, 0x40 - F32(MGR, 0x9C), INV + 0x130, 8);

        if (F32(MGR, 0x1C) == 6) {
            if (gUnk_03002344 & 1)
                sub_0805FC80(0x10, 0x60 - F32(MGR, 0x94), INV + 0x140, 8);
        } else
            sub_0805FC80(0x10, 0x60 - F32(MGR, 0x94), INV + 0x140, 8);
    }

    if (F32(MGR, 0) == 2) {
        struct A78Ids { u8 pad[0x56]; u16 ids[3]; };
        s16 *tx = gUnk_084ECBB0;
        s16 *ty = gUnk_084ECBB2;
        u32 first = (u16)(F16(INV, 0x54) / 3) * 3;
        end = first + 3;
        for (i = first; i < end; i++) {
            {
            if (((struct A78Ids *)INV)->ids[i] != 0) {
                s32 found;
                u32 count;
                found = sub_0805D548(((struct A78Ids *)INV)->ids[i] - 1);
                if (found != -1) {
                    u32 j;
                    item = INV + (found * 0x10 + 0x150);
                    count = 0;
                    for (j = 0; j <= 0x18; j++) {
                        if (F16(INV, j * 0x10 + 0x150) == 1 && F16(item, 2) == F16(INV, j * 0x10 + 0x152))
                            count++;
                    }
                } else {
                    count = 0;
                    item = (u8 *)buf;
                    buf[0] = 1;
                    buf[1] = ((struct A78Ids *)INV)->ids[i] - 1;
                }
                {
                u32 k = i + 1;
                sub_0805FAC0(tx[(end - k) * 2] + 0xB8, ty[(end - k) * 2] + 0x18, count, 0);
                sub_0805FC80(tx[(end - k) * 2] + 0xB8, ty[(end - k) * 2] + 0x10, item, 0);
                }
            }
            }
        }
    }

    if (F32(MGR, 0) == 3) {
        for (i = 0; i <= 0xB; i++) {
            item = MGR + (i * 0x10 + 0x104);
            mode = 8;
            switch (*(u16 *)item) {
            case 2: if (sub_0805AE34(item) == 0) mode = 10; break;
            case 3: if (sub_0805D278(item) == 0) mode = 10; break;
            case 4: if (sub_0805D210(item) == 0) mode = 10; break;
            case 5: if (sub_0805D2E0(item) == 0) mode = 10; break;
            }
            if (F32(MGR, 0x1C) == 0xB && F32(MGR, 0x20) == i) {
                if (gUnk_03002344 & 1)
                    sub_0805FC80((i % 3) * 0x10 + 0xB8, (i / 3) * 0x10 + 0xB8, item, mode);
            } else
                sub_0805FC80((i % 3) * 0x10 + 0xB8, (i / 3) * 0x10 + 0x20, item, mode);
        }
    } else if (F32(MGR, 0) == 4) {
        item = MGR + (F32(MGR, 0x44) * 0xF0 + 0x104);
        for (i = 0; i <= 0xE; i++, item += 0x10) {
            mode = 8;
            switch (*(u16 *)item) {
            case 2: if (sub_0805AE34(item) == 0) mode = 10; break;
            case 3: if (sub_0805D278(item) == 0) mode = 10; break;
            case 4: if (sub_0805D210(item) == 0) mode = 10; break;
            case 5: if (sub_0805D2E0(item) == 0) mode = 10; break;
            }
            if (F32(MGR, 0x1C) == 0xD && F32(MGR, 0x20) == i) {
                if (gUnk_03002344 & 1)
                    sub_0805FC80((i % 3) * 0x10 + 0xB8, (i / 3) * 0x10 + 0x20, item, mode);
            } else
                sub_0805FC80((i % 3) * 0x10 + 0xB8, (i / 3) * 0x10 + 0x20, item, mode);
        }
    } else if (F32(MGR, 0) == 6) {
        item = MGR + 0x104;
        for (i = 0; i <= 2; i++, item += 0x10) {
            mode = 8;
            switch (*(u16 *)item) {
            case 2: if (sub_0805AE34(item) == 0) mode = 10; break;
            case 3: if (sub_0805D278(item) == 0) mode = 10; break;
            case 4: if (sub_0805D210(item) == 0) mode = 10; break;
            case 5: if (sub_0805D2E0(item) == 0) mode = 10; break;
            }
            if (F32(MGR, 0x1C) == 0x10 && F32(MGR, 0x20) == i) {
                if (gUnk_03002344 & 1)
                    sub_0805FC80((i % 3) * 0x10 + 0xB8, 0x30, item, mode);
            } else
                sub_0805FC80((i % 3) * 0x10 + 0xB8, 0x30, item, mode);
        }
        mode = 8;
        item = MGR + 0x134;
        switch (*(u16 *)item) {
        case 2: if (sub_0805AE34(item) == 0) mode = 10; break;
        case 3: if (sub_0805D278(item) == 0) mode = 10; break;
        case 4: if (sub_0805D210(item) == 0) mode = 10; break;
        case 5: if (sub_0805D2E0(item) == 0) mode = 10; break;
        }
        if (F32(MGR, 0x1C) == 0x11) {
            if (gUnk_03002344 & 1)
                sub_0805FC80(0xC8, F32(MGR, 0x54) + 0x60, item, mode);
        } else
            { s16 *sn = gUnk_080B9704; s32 s = sn[F32(MGR, 0x5C)]; sub_0805FC80(0xC8, (s >> 5) + F32(MGR, 0x54) + 0x60, item, mode); }
    }
}
#undef MGR
#undef INV
#undef F32
#undef F16
#undef ITEM_MODE
extern u8 *manager811 asm("gUnk_03006440");
extern u8 *bank811 asm("gUnk_030034E0");
/* [DrawItemMenuPlayerStatPreview] r0 player pointer. Uses item-menu current-pointer+0xF0 if manager
 * state+0x1C=22, otherwise held record+0xF4. Calls0x0801BA74 with player, selected record (or null), two stack
 * outputs and save-state+0x30. Item kinds2..5 use null when byte+8 is nonzero; kind1 uses null then increments
 * output base-stat halfword for subtype8/9/10/11 at offsets0/2/6/4. Other kinds pass record unchanged. Draws12
 * signed-halfword preview values against player fields+0x58/+0x5A,+0x7C..+0x86,+0x38/+0x3E/+0x3C/+0x3A with
 * color2 if greater,1 if less,0 if equal using0x0805FB7C. Does not equip the candidate item or establish
 * semantics for unsupported item kinds. */
void sub_080811E0(u8 *arg0) {
 struct Half811 { s16 first; u16 second; };
 s16 sp4[16];
 struct Half811 sp24[12];
    s16 temp_r0_10;
    s16 temp_r0_11;
    s16 temp_r0_12;
    s16 temp_r0_13;
    s16 temp_r0_14;
    s16 temp_r0_3;
    s16 temp_r0_4;
    s16 temp_r0_5;
    s16 temp_r0_6;
    s16 temp_r0_7;
    s16 temp_r0_8;
    s16 temp_r0_9;
    s16 temp_r1;
    s16 temp_r1_10;
    s16 temp_r1_11;
    s16 temp_r1_12;
    s16 temp_r1_2;
    s16 temp_r1_3;
    s16 temp_r1_4;
    s16 temp_r1_5;
    s16 temp_r1_6;
    s16 temp_r1_7;
    s16 temp_r1_8;
    s16 temp_r1_9;
    s32 var_r3;
    s32 var_r3_10;
    s32 var_r3_11;
    s32 var_r3_12;
    s32 var_r3_2;
    s32 var_r3_3;
    s32 var_r3_4;
    s32 var_r3_5;
    s32 var_r3_6;
    s32 var_r3_7;
    s32 var_r3_8;
    s32 var_r3_9;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 var_r0;
    void *var_r1;


 if (*(s32 *)(manager811+0x1c)==0x16) {
  var_r1=*(u8 **)(manager811+0xf0);
  switch(*(u16 *)var_r1) {
  case 1:
   sub_0801BA74(arg0,0,sp4,sp24,(s32)(bank811+0x30));
   var_r0=*(u16 *)(*(u8 **)(manager811+0xf0)+2);
   switch(var_r0) {case 8:sp4[0]++;break;case 9:sp4[1]++;break;case 10:sp4[3]++;break;case 11:sp4[2]++;break;}
   break;
  case 2:case 3:case 4:case 5:
   if (*((u8 *)var_r1+8)==0) {
    sub_0801BA74(arg0,(s32)var_r1,sp4,sp24,(s32)(bank811+0x30));
   } else {
    sub_0801BA74(arg0,0,sp4,sp24,(s32)(bank811+0x30));
   }
   break;
  default:
   sub_0801BA74(arg0,(s32)*(u8 **)(manager811+0xf0),sp4,sp24,(s32)(bank811+0x30));break;
  }
 } else {
  var_r1=manager811+0xf4;
  switch(*(u16 *)var_r1) {
  case 2:case 3:case 4:case 5:
   if(manager811[0xfc]==0) {
    sub_0801BA74(arg0,(s32)var_r1,sp4,sp24,(s32)(bank811+0x30));
   } else {
    sub_0801BA74(arg0,0,sp4,sp24,(s32)(bank811+0x30));
   }
   break;
  case 1:
   sub_0801BA74(arg0,0,sp4,sp24,(s32)(bank811+0x30));
   var_r0=*(u16 *)(manager811+0xf6);
   switch(var_r0) {case 8:sp4[0]++;break;case 9:sp4[1]++;break;case 10:sp4[3]++;break;case 11:sp4[2]++;break;}
   break;
  default:
   sub_0801BA74(arg0,(s32)(manager811+0xf4),sp4,sp24,(s32)(bank811+0x30));break;
  }
 }
draw:
    temp_r1 = sp24[0].first;
    temp_r0_3 = *(s16 *)(arg0+0x58);
    if ((s32) temp_r1 > (s32) temp_r0_3) {
        var_r3 = 2;
    } else {
        var_r3 = 0;
        if ((s32) temp_r1 < (s32) temp_r0_3) {
            var_r3 = 1;
        }
    }
    sub_0805FB7C(6, 0xE, sp24[0].first, var_r3);
    temp_r1_2 = *(s16 *)(arg0+0x5A);
    temp_r0_4 = (s16) sp24[0].second;
    if ((s32) temp_r0_4 > (s32) temp_r1_2) {
        var_r3_2 = 2;
    } else {
        var_r3_2 = 0;
        if ((s32) temp_r0_4 < (s32) temp_r1_2) {
            var_r3_2 = 1;
        }
    }
    sub_0805FB7C(6, 0xF, (s16) sp24[0].second, var_r3_2);
    temp_r1_3 = sp24[9].first;
    temp_r0_5 = *(s16 *)(arg0+0x7C);
    if ((s32) temp_r1_3 > (s32) temp_r0_5) {
        var_r3_3 = 2;
    } else {
        var_r3_3 = 0;
        if ((s32) temp_r1_3 < (s32) temp_r0_5) {
            var_r3_3 = 1;
        }
    }
    sub_0805FB7C(0x16, 0xE, sp24[9].first, var_r3_3);
    temp_r1_4 = (s16) sp24[9].second;
    temp_r0_6 = *(s16 *)(arg0+0x7E);
    if ((s32) temp_r1_4 > (s32) temp_r0_6) {
        var_r3_4 = 2;
    } else {
        var_r3_4 = 0;
        if ((s32) temp_r1_4 < (s32) temp_r0_6) {
            var_r3_4 = 1;
        }
    }
    sub_0805FB7C(0x16, 0xF, (s16) sp24[9].second, var_r3_4);
    temp_r1_5 = sp24[10].first;
    temp_r0_7 = *(s16 *)(arg0+0x80);
    if ((s32) temp_r1_5 > (s32) temp_r0_7) {
        var_r3_5 = 2;
    } else {
        var_r3_5 = 0;
        if ((s32) temp_r1_5 < (s32) temp_r0_7) {
            var_r3_5 = 1;
        }
    }
    sub_0805FB7C(0x16, 0x10, sp24[10].first, var_r3_5);
    temp_r1_6 = (s16) sp24[10].second;
    temp_r0_8 = *(s16 *)(arg0+0x82);
    if ((s32) temp_r1_6 > (s32) temp_r0_8) {
        var_r3_6 = 2;
    } else {
        var_r3_6 = 0;
        if ((s32) temp_r1_6 < (s32) temp_r0_8) {
            var_r3_6 = 1;
        }
    }
    sub_0805FB7C(0x1D, 0xE, (s16) sp24[10].second, var_r3_6);
    temp_r1_7 = sp24[11].first;
    temp_r0_9 = *(s16 *)(arg0+0x84);
    if ((s32) temp_r1_7 > (s32) temp_r0_9) {
        var_r3_7 = 2;
    } else {
        var_r3_7 = 0;
        if ((s32) temp_r1_7 < (s32) temp_r0_9) {
            var_r3_7 = 1;
        }
    }
    sub_0805FB7C(0x1D, 0xF, sp24[11].first, var_r3_7);
    temp_r1_8 = (s16) sp24[11].second;
    temp_r0_10 = *(s16 *)(arg0+0x86);
    if ((s32) temp_r1_8 > (s32) temp_r0_10) {
        var_r3_8 = 2;
    } else {
        var_r3_8 = 0;
        if ((s32) temp_r1_8 < (s32) temp_r0_10) {
            var_r3_8 = 1;
        }
    }
    sub_0805FB7C(0x1D, 0x10, (s16) sp24[11].second, var_r3_8);
    temp_r1_9 = (s16) sp4[0];
    temp_r0_11 = *(s16 *)(arg0+0x38);
    if ((s32) temp_r1_9 > (s32) temp_r0_11) {
        var_r3_9 = 2;
    } else {
        var_r3_9 = 0;
        if ((s32) temp_r1_9 < (s32) temp_r0_11) {
            var_r3_9 = 1;
        }
    }
    sub_0805FB7C(0xF, 0xE, (s16) sp4[0], var_r3_9);
    temp_r1_10 = (s16) sp4[3];
    temp_r0_12 = *(s16 *)(arg0+0x3E);
    if ((s32) temp_r1_10 > (s32) temp_r0_12) {
        var_r3_10 = 2;
    } else {
        var_r3_10 = 0;
        if ((s32) temp_r1_10 < (s32) temp_r0_12) {
            var_r3_10 = 1;
        }
    }
    sub_0805FB7C(6, 0x10, (s16) sp4[3], var_r3_10);
    temp_r1_11 = (s16) sp4[2];
    temp_r0_13 = *(s16 *)(arg0+0x3C);
    if ((s32) temp_r1_11 > (s32) temp_r0_13) {
        var_r3_11 = 2;
    } else {
        var_r3_11 = 0;
        if ((s32) temp_r1_11 < (s32) temp_r0_13) {
            var_r3_11 = 1;
        }
    }
    sub_0805FB7C(0xF, 0x10, (s16) sp4[2], var_r3_11);
    temp_r1_12 = (s16) sp4[1];
    temp_r0_14 = *(s16 *)(arg0+0x3A);
    if ((s32) temp_r1_12 > (s32) temp_r0_14) {
        var_r3_12 = 2;
    } else {
        var_r3_12 = 0;
        if ((s32) temp_r1_12 < (s32) temp_r0_14) {
            var_r3_12 = 1;
        }
    }
    sub_0805FB7C(0xF, 0xF, (s16) sp4[1], var_r3_12);
}
extern s32 decimalDivisors8518[] asm("gUnk_084EBD5C");
extern s32 sub_08000498(s32 *, s32);
extern s32 sub_0801A638(u8 *);
extern void sub_0801A3D0(u8 *, u32, u32);
/* [DrawEncodedTextWithUnsignedNumber] r0 x, r1 y, r2 encoded source and r3 number; x/y/number truncated to
 * u16. Fifth incoming stack word bit0 selects horizontal centering. Skips two source bytes and expands
 * each0xF7 token into decimal digits0x41+digit using six divisors100000..1, suppressing leading zeros except
 * final digit; copies other bytes until0xFD. Builds local32-byte text, u16 length with no bounds validation,
 * terminates0xFD and draws via0x0801A3D0 at u16(x-(width>>1)) when centered, else x. No text-capacity check or
 * bounded search for a missing source terminator; not ASCII formatting. */
void sub_08081518(u32 arg0, u32 arg1, u8 *arg2, u32 arg3, volatile s32 arg4)
{
    struct {
        u8 text[0x20];
        s32 number;
        u32 y;
        /* Preserve the two caller-clobbered pointers in the original spill slots. */
        u8 *volatile source;
        s32 *volatile num;
    } frame;
    u32 savedX = (u16)arg0;
    register u32 savedNumber asm("r9");
    register u32 length asm("r8");
    u8 *source;
    s32 *num;
    u32 token;
    u8 *out;
    u16 digit;
    register s32 *divisor asm("r6");
    u32 started;
    u16 offset;
    
    frame.y = (u16)arg1;
    savedNumber = (u16)arg3;
    source = arg2 + 2;
    length = 0;
    goto checkToken;
processToken:
    if (token == 0xF7) {
        register u32 numberCopy asm("r1") = savedNumber;
        asm("" : "+r"(numberCopy));
        frame.number = numberCopy;
        divisor = decimalDivisors8518;
        out = frame.text + length;
        started = 0;
        digit = 0;
        num = &frame.number;
        source++;
        do {
            u32 value;
            s32 denominator = *divisor;
            s32 *callNum = num;
            asm("" : "+r"(denominator), "+r"(callNum));
            frame.source = source;
            frame.num = num;
            value = sub_08000498(callNum, denominator) + 0x41;
            *out = value;
            source = frame.source;
            num = frame.num;
            asm("" : "+r"(divisor), "+r"(out));
            if (started || (u8)value != 0x41 || digit == 5) {
                out++;
                started = 1;
                length = (u16)(length + 1);
            }
            {
                u32 nextDigit = digit + 1;
                digit = (u16)nextDigit;
            }
            divisor++;
        } while (digit <= 5);
    } else {
        u32 oldLength = length;
        length = (u16)(oldLength + 1);
        frame.text[oldLength] = token;
        source++;
    }
checkToken:
    token = *source;
    if (token != 0xFD)
        goto processToken;
    {
        register u8 *end asm("r0") = frame.text;
        register u32 terminator asm("r1");
        
        end += length;
        
        terminator = 0xFD;
        *end = terminator;
    }
    {
        u32 mask = 1;
        register u32 flags asm("r2");
        
        flags = arg4;
        flags &= mask;
        if (flags)
            offset = -((u32)sub_0801A638(frame.text) >> 1);
        else
            offset = 0;
    }
    {
        /* A byte offset keeps agbcc's base/offset operand order; never dereferenced. */
        register u8 *xCopy asm("r4") = (u8 *)savedX;
        u32 drawX;
        u8 *drawText;
        asm("" : "+r"(xCopy));
        drawX = (u16)(u32)(xCopy + offset);
        drawText = frame.text;
        asm("" : "+r"(drawText) : "r"(drawX));
        sub_0801A3D0(drawText, drawX, frame.y);
    }
}
extern u8 text85[] asm("gUnk_03000128");
extern u8 table85[] asm("gUnk_08479140");
extern u32 divisors85[] asm("gUnk_084EBD5C");
/* Original 08082832/08082910 advances each detail record by four bytes. */
struct DetailEntry815F4 { u16 kind, value; };
/* These callers pass sub_0801DE60() in r2. */
u16 local815F4_sub_0801E378(s32, u16, u8) asm("sub_0801E378");
u16 local815F4_sub_0801E3D8(s32, u16, u8) asm("sub_0801E3D8");
/* Expanded twelve times: each block-local v_ gets its own frame slot (0x20C..0x238 in code order).
   res85 is one function-scope pointer shared by every resource lookup, so global-alloc keeps
   the ROM's `adds r2, r0, #0` copy after each sub_08007290 call. d_ is taken after the value, so a
   constant DST is rematerialised (or loop-hoisted) like the ROM text85 loads; FMT1 also returns
   P = &d_[LEN - 1] (ROM computes LEN - 1 before adding the base). */
#define FMT815F4(LEN, DST, ID, VALUE)                                  \
    {                                                                  \
        u8 *s_;                                                        \
        u32 val_;                                                      \
        u32 v_;                                                        \
        u8 *d_;                                                        \
        res85 = (u8 *)sub_08007290(ID);                                \
        val_ = (VALUE);                                                \
        d_ = (DST);                                                    \
        s_ = res85 + 2;                                                \
        LEN = 0;                                                       \
        for (; *s_ != 0xFD; s_++) {                                    \
            if (*s_ == 0xF7) {                                         \
                u32 *div_;                                             \
                u8 *p_;                                                \
                u32 st_;                                               \
                u16 i_;                                                \
                v_ = val_;                                             \
                div_ = divisors85;                                     \
                p_ = &d_[LEN];                                         \
                st_ = 0;                                               \
                for (i_ = 0; i_ <= 5; i_++, div_++) {                  \
                    *p_ = sub_08000498(&v_, *div_) + 0x41;             \
                    if (st_ || *p_ != 0x41 || i_ == 5) {               \
                        p_++;                                          \
                        st_ = 1;                                       \
                        LEN++;                                         \
                    }                                                  \
                }                                                      \
            } else {                                                   \
                d_[LEN++] = *s_;                                       \
            }                                                          \
        }                                                              \
        d_[LEN] = 0xFD;                                                \
    }
#define FMT1_815F4(LEN, DST, ID, VALUE, P)                             \
    {                                                                  \
        u8 *s_;                                                        \
        u32 val_;                                                      \
        u32 v_;                                                        \
        u8 *d_;                                                        \
        res85 = (u8 *)sub_08007290(ID);                                \
        val_ = (VALUE);                                                \
        d_ = (DST);                                                    \
        s_ = res85 + 2;                                                \
        LEN = 0;                                                       \
        for (; *s_ != 0xFD; s_++) {                                    \
            if (*s_ == 0xF7) {                                         \
                u32 *div_;                                             \
                u8 *p_;                                                \
                u32 st_;                                               \
                u16 i_;                                                \
                v_ = val_;                                             \
                div_ = divisors85;                                     \
                p_ = &d_[LEN];                                         \
                st_ = 0;                                               \
                for (i_ = 0; i_ <= 5; i_++, div_++) {                  \
                    *p_ = sub_08000498(&v_, *div_) + 0x41;             \
                    if (st_ || *p_ != 0x41 || i_ == 5) {               \
                        p_++;                                          \
                        st_ = 1;                                       \
                        LEN++;                                         \
                    }                                                  \
                }                                                      \
            } else {                                                   \
                d_[LEN++] = *s_;                                       \
            }                                                          \
        }                                                              \
        d_[LEN] = 0xFD;                                                \
        P = &d_[LEN - 1];                                              \
    }
/* Case 5's first template: same as FMT1, plus a FAKE keep-alive use of st_ (no code). The extra
   ref raises st_ above div_ in global-alloc priority, so st_ takes r6 and div_ r7 as in the ROM. */
#define FMT1C_815F4(LEN, DST, ID, VALUE, P)                            \
    {                                                                  \
        u8 *s_;                                                        \
        u32 val_;                                                      \
        u32 v_;                                                        \
        u8 *d_;                                                        \
        res85 = (u8 *)sub_08007290(ID);                                \
        val_ = (VALUE);                                                \
        d_ = (DST);                                                    \
        s_ = res85 + 2;                                                \
        LEN = 0;                                                       \
        for (; *s_ != 0xFD; s_++) {                                    \
            if (*s_ == 0xF7) {                                         \
                u32 *div_;                                             \
                u8 *p_;                                                \
                u32 st_;                                               \
                u16 i_;                                                \
                v_ = val_;                                             \
                div_ = divisors85;                                     \
                p_ = &d_[LEN];                                         \
                st_ = 0;                                               \
                for (i_ = 0; i_ <= 5; i_++, div_++) {                  \
                    *p_ = sub_08000498(&v_, *div_) + 0x41;             \
                    if (st_ || *p_ != 0x41 || i_ == 5) {               \
                        p_++;                                          \
                        st_ = 1;                                       \
                        asm("" : : "r"(st_));                          \
                        LEN++;                                         \
                    }                                                  \
                }                                                      \
            } else {                                                   \
                d_[LEN++] = *s_;                                       \
            }                                                          \
        }                                                              \
        d_[LEN] = 0xFD;                                                \
        P = &d_[LEN - 1];                                              \
    }
#define SPLIT815F4(ID)                                                 \
    {                                                                  \
        res85 = (u8 *)sub_08007290(ID);                                \
        var_r6 = res85 + 2;                                            \
        var_r8 = 0;                                                    \
        var_r7 = 0;                                                    \
        while (*var_r6 != 0xFD) {                                      \
            if (*var_r6 == 0xFF) {                                     \
                text85[var_r7 + var_r8 * 0x20] = 0xFD;                 \
                var_r8++;                                              \
                var_r7 = 0;                                            \
            } else {                                                   \
                text85[var_r7 + var_r8 * 0x20] = *var_r6;              \
                var_r7++;                                              \
            }                                                          \
            var_r6++;                                                  \
        }                                                              \
        text85[var_r7 + var_r8 * 0x20] = 0xFD;                         \
    }
/* [DrawItemMenuDetailedItemPanel] r0 item-record pointer. Always draws item label at(15,18) and icon
 * at(120,32) before type dispatch. Loads type-specific resources for kind1..10; unsupported kinds return after
 * initial label/icon. Builds centered multiline descriptions in shared text buffer0x03000128, expands0xF7
 * numeric tokens using six divisors100000..1, and computes signed-halfword/byte equipment values from record
 * fields and current saved skills/class. Kinds2..5 byte+8 nonzero suppress equipment detail mask; otherwise
 * computes skill-based bonus display without applying item. */
void sub_080815F4(void *arg0) {
    /* m2c register names are kept: one function-scope var_r8 (r8) serves the kind-1 length, the line
       splitter, the icon/detail loop counters and the digit-tail x; one var_r6 (r6) is the source
       pointer and every post-template pointer. The 0x0805FB7C/08065230 tails keep `x + 0xF` in a
       block-local (local-alloc'd, r4) as in the ROM. y85 also carries the 0x140000 OR constant so it
       is materialised in r1 (`orrs r0, r1`). */
    struct Icon815F4 {
        u32 field0, field4, field8, palette, resource, index, count;
        u8 data[16];
        s16 field2C, field2E, field30, field32;
    } icons[10];
    u8 *res85;
    void *sp23C;
    s32 sp240;
    s32 sp244;
    s32 sp248;
    s32 sp24C;
    struct DetailEntry815F4 *sp250;
    s32 sp254;
    u32 sp258;
    u32 sp25C;
    s32 var_r3_13;
    s32 var_r3_14;
    s32 var_r3_15;
    s32 *temp_r6;
    s32 *temp_r6_2;
    s32 temp_r0_20;
    s32 temp_r0_22;
    s32 temp_r0_24;
    s32 temp_r0_26;
    s32 temp_r0_27;
    s32 temp_r0_29;
    s32 temp_r0_2;
    s32 temp_r0_31;
    s32 temp_r2_25;
    s32 temp_r2_26;
    s32 temp_r4;
    s32 temp_r4_3;
    s32 temp_r4_4;
    s32 temp_r4_5;
    s32 temp_r4_8;
    s32 temp_r4_9;
    s32 var_r0;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r5;
    s32 var_r7_4;
    s32 var_r7_9;
    u32 var_r8;
    u16 temp_r0_17;
    u16 temp_r0_21;
    u16 temp_r0_23;
    u16 temp_r0_25;
    u16 temp_r0_28;
    u16 temp_r4_11;
    u16 var_r8_11;
    u16 var_r8_12;
    u16 var_r8_14;
    u16 var_r8_15;
    u16 var_r8_2;
    u16 var_r8_3;
    u16 var_r8_5;
    u16 var_r8_6;
    u16 var_r8_7;
    u16 var_r8_8;
    u16 var_sl;
    u32 temp_r0;
    u32 var_r4_16;
    u32 var_r7;
    u32 y85;
    u32 var_r9;
    u8 *temp_r4_12;
    u8 *temp_r5_10;
    u8 *temp_r5_11;
    u8 *temp_r5_8;
    u8 *var_r4;
    u8 *var_r6;
    u8 temp_r5;
    u8 temp_r5_3;
    u8 temp_r5_5;
    u8 temp_r5_6;
    u8 temp_r6_3;
    u8 temp_r6_4;
    u8 var_r1;
    void *temp_r5_9;
    sp23C = arg0;
    sub_0805FFBC(0xF, 0x12, sp23C, 0x80000000);
    sub_0805FC80(0x78, 0x20, sp23C, 8);
    temp_r0 = (*((u16 *)((u8 *)(sp23C) + (0)))) - 1;
    switch (temp_r0) {                              /* switch 1; irregular */
    case 0:                                         /* switch 1 */
        temp_r0_2 = sub_08007290((*((u16 *)((u8 *)(sp23C) + (2)))) | 0x100000);
        sp254 = 0;
        sp250 = temp_r0_2 + 0xA0;
        res85 = (u8 *)sub_08007290((*((u16 *)((u8 *)(temp_r0_2) + (0xAA)))) | 0x140000);
        var_r6 = res85 + 2;
        (*((u8 *)((u8 *)(text85) + (0)))) = sp254;
        (*((u8 *)((u8 *)(text85) + (0x20)))) = (u8) sp254;
        for (var_r7 = 0, var_r4 = text85, var_r5 = 0, var_r9 = 0xB0000; var_r7 <= 1;
             var_r4 += 0x20, var_r5 += 0x20, var_r9 += 0x20000, var_r7++) {
            var_r8 = 0;
            var_r1 = *var_r6;
            if (var_r1 != 0xFD) {
                do {
                    text85[var_r8 + var_r5] = var_r1;
                    /* FAKE: the ROM compares a copy (`adds r0, r1, #0; cmp r0, #255`) while the char
                       stays live in r1; the asm statements emit no code. */
                    var_r0 = var_r1;
                    asm("" : "+r"(var_r0));
                    if (var_r0 == 0xFF) {
                        
                        var_r6++;
                        break;
                    }
                    asm("" : : "r"(var_r1));
                    var_r8++;
                    var_r6++;
                    var_r1 = *var_r6;
                } while (var_r1 != 0xFD);
            }
            text85[var_r8 + var_r5] = 0xFD;
            if (var_r8 == 0)
                break;
            sub_0801A3D0(var_r4, (u16) (0xF - ((u32) sub_0801A638(var_r4) >> 1)), var_r9 >> 0x10);
            if (*var_r6 == 0xFD)
                break;
        }
        goto block_46;
    case 1:                                         /* switch 1 */
        temp_r0_20 = sub_08007290((*((u16 *)((u8 *)(sp23C) + (2)))) | 0xB0000);
        sp240 = temp_r0_20;
        var_sl = (*((u16 *)((u8 *)(temp_r0_20) + (0xC0))));
        sp254 = (s32) (*((u16 *)((u8 *)(temp_r0_20) + (0xAE))));
        temp_r0_21 = (*((u16 *)((u8 *)(sp23C) + (4))));
        if (temp_r0_21 != 0) {
            sp250 = sub_08007290((temp_r0_21 - 1) | 0x130000) + 0xA0;
        } else {
            sp250 = sp240 + 0xB0;
        }
        goto block_46;
    case 2:                                         /* switch 1 */
        temp_r0_22 = sub_08007290((*((u16 *)((u8 *)(sp23C) + (2)))) | 0xC0000);
        sp244 = temp_r0_22;
        var_sl = (*((u16 *)((u8 *)(temp_r0_22) + (0xB2))));
        sp254 = (s32) (*((u16 *)((u8 *)(temp_r0_22) + (0xA2))));
        temp_r0_23 = (*((u16 *)((u8 *)(sp23C) + (4))));
        if (temp_r0_23 != 0) {
            sp250 = sub_08007290((temp_r0_23 - 1) | 0x130000) + 0xA0;
        } else {
            sp250 = sp244 + 0xA4;
        }
        goto block_46;
    case 3:                                         /* switch 1 */
        temp_r0_24 = sub_08007290((*((u16 *)((u8 *)(sp23C) + (2)))) | 0xD0000);
        sp248 = temp_r0_24;
        var_sl = (*((u16 *)((u8 *)(temp_r0_24) + (0xB2))));
        sp254 = (s32) (*((u16 *)((u8 *)(temp_r0_24) + (0xA2))));
        temp_r0_25 = (*((u16 *)((u8 *)(sp23C) + (4))));
        if (temp_r0_25 != 0) {
            sp250 = sub_08007290((temp_r0_25 - 1) | 0x130000) + 0xA0;
        } else {
            sp250 = sp248 + 0xA4;
        }
        goto block_46;
    case 6:                                         /* switch 1 */
        temp_r0_26 = sub_08007290((*((u16 *)((u8 *)(sp23C) + (2)))) | 0x110000);
        sp254 = 0xFF;
        sp250 = NULL;
        res85 = (u8 *)sub_08007290((*((u16 *)((u8 *)(temp_r0_26) + (0xAA)))) | 0x140000);
        temp_r4_12 = res85 + 2;
        sub_0801A3D0(temp_r4_12, (u16) (0xF - ((u32) sub_0801A638(temp_r4_12) >> 1)), 7U);
        goto block_46;
    case 4:                                         /* switch 1 */
        temp_r0_27 = sub_08007290((*((u16 *)((u8 *)(sp23C) + (2)))) | 0xE0000);
        sp24C = temp_r0_27;
        var_sl = (*((u16 *)((u8 *)(temp_r0_27) + (0xB2))));
        sp254 = (s32) (*((u16 *)((u8 *)(temp_r0_27) + (0xA2))));
        temp_r0_28 = (*((u16 *)((u8 *)(sp23C) + (4))));
        if (temp_r0_28 != 0) {
            sp250 = sub_08007290((temp_r0_28 - 1) | 0x130000) + 0xA0;
        } else {
            sp250 = sp24C + 0xA4;
        }
        goto block_46;
    case 5:                                         /* switch 1 */
        var_r0_4 = sub_08007290((*((u16 *)((u8 *)(sp23C) + (2)))) | 0xF0000);
        sp254 = 0xFF;
        sp250 = var_r0_4 + 0xA0;
        goto block_46;
    case 8:                                         /* switch 1 */
        temp_r0_29 = sub_08007290((*((u16 *)((u8 *)(sp23C) + (2)))) | 0x150000);
        sp254 = 0;
        sp250 = NULL;
        SPLIT815F4((*((s32 *)((u8 *)(temp_r0_29) + (0xA4)))) | 0x140000);
        sub_0801A3D0(text85, (u16) (0xF - ((u32) sub_0801A638(text85) >> 1)), 9U);
        temp_r5_10 = text85 + 0x20;
        sub_0801A3D0(temp_r5_10, (u16) (0xF - ((u32) sub_0801A638(temp_r5_10) >> 1)), 0xBU);
        goto block_46;
    case 9:                                         /* switch 1 */
        sp254 = 0;
        sp250 = NULL;
        goto block_46;
    case 7:                                         /* switch 1 */
        temp_r0_31 = sub_08007290((*((u16 *)((u8 *)(sp23C) + (2)))) | 0x120000);
        sp254 = 0;
        sp250 = NULL;
        SPLIT815F4((*((u16 *)((u8 *)(temp_r0_31) + (0xA2)))) | 0x140000);
        sub_0801A3D0(text85, (u16) (0xF - ((u32) sub_0801A638(text85) >> 1)), 9U);
        temp_r5_11 = text85 + 0x20;
        sub_0801A3D0(temp_r5_11, (u16) (0xF - ((u32) sub_0801A638(temp_r5_11) >> 1)), 0xBU);
        goto block_46;
    default:
        return;
    }
block_46:
        switch (*((u16 *)((u8 *)(sp23C) + (0)))) {
        case 2:                                     /* switch 2 */
            if ((*((u8 *)((u8 *)(sp23C) + (8)))) != 0) {
                sp254 = 0;
                break;
            }
            switch (*(u8 *)(sp240 + 0x9B)) {
            default:
                        temp_r4_8 = gUnk_030034E0 + 0x30;
                        temp_r6_3 = (*((u8 *)((u8 *)(sp240) + (0x9C))));
                        sp258 = (u16) sub_0801B58C(sp240, temp_r4_8, temp_r6_3, sub_0801DE60());
                        sp258 = (u32) (u16) (sp258 - (*((u8 *)((u8 *)(sp240) + (0x9C)))));
                        if (!(0x8000 & sp258)) {
                        } else {
                            sp258 = 0;
                        }
                break;
            case 9:
                    temp_r4_9 = gUnk_030034E0 + 0x30;
                    temp_r6_4 = (*((u8 *)((u8 *)(sp240) + (0x9C))));
                    sp258 = (u16) sub_0801B58C(sp240, temp_r4_9, temp_r6_4, sub_0801DE60());
                    sp258 = (u32) (u16) (sp258 - (*((u8 *)((u8 *)(sp240) + (0x9C)))));
                    FMT1_815F4(var_r8_14, (text85), 0x140328, (*((u8 *)((u8 *)(sp240) + (0x9C)))) + (*((u8 *)((u8 *)(sp23C) + (6)))), var_r6);
                    (*((u8 *)((u8 *)(var_r6) + (0)))) = 0x51;
                    if (sp258 != 0) {
                        *++var_r6 = 0x51;
                        *++var_r6 = 0x51;
                    }
                    if ((*((u16 *)((u8 *)(sp240) + (0xAC)))) == 7) {
                        FMT815F4(var_r8_15, var_r6 + 1, ((*(u8 *)(sp240 + 0xA7) * 2) + 0x33A) | 0x140000, (s32) (*((u16 *)((u8 *)(sp240) + (0xAC)))));
                    } else {
                        FMT815F4(var_r8_15, var_r6 + 1, ((*(u8 *)(sp240 + 0xA7) * 2) + 0x339) | 0x140000, (s32) (*((u16 *)((u8 *)(sp240) + (0xAC)))));
                    }
                    sub_0801A3D0(text85, (u16) (0xF - ((u32) sub_0801A638(text85) >> 1)), 5U);
                    if (sp258 == 0) {
                    } else {
                        var_r8 = (var_r6 - text85) * 2;
                        if (((sp258 / 100U) << 0x10) == 0) {
                            if (((sp258 / 10U) << 0x10) == 0) {
                                var_r8 -= 1;
                                var_r7_4 = 1;
                            } else {
                                var_r7_4 = 2;
                            }
                        } else {
                            var_r8 += 1;
                            var_r7_4 = 3;
                        }
                        {
                            s32 w_;
                            var_r0 = sub_0801A638(text85);
                            w_ = var_r8 + 0xF;
                            sub_0805FB7C(w_ - ((u32) var_r0 >> 1), 6, sp258, 2);
                            temp_r6 = sub_080653CC();
                            sub_08065230(temp_r6, ((w_ - ((u32) sub_0801A638(text85) >> 1)) - var_r7_4) * 8, 0x38, 0x1AU, 0);
                            }
                    }
                goto icons;
            case 10:
                        SPLIT815F4(var_sl | 0x140000);
                        sub_0801A3D0(text85, (u16) (0xF - ((u32) sub_0801A638(text85) >> 1)), 7U);
                        temp_r5_8 = text85 + 0x20;
                        sub_0801A3D0(temp_r5_8, (u16) (0xF - ((u32) sub_0801A638(temp_r5_8) >> 1)), 9U);
                goto icons;
            }
                        FMT1_815F4(var_r8_11, (text85), 0x140328, (*((u8 *)((u8 *)(sp240) + (0x9C)))) + (*((u8 *)((u8 *)(sp23C) + (6)))), var_r6);
                        (*((u8 *)((u8 *)(var_r6) + (0)))) = 0x51;
                        if (sp258 != 0) {
                            *++var_r6 = 0x51;
                            *++var_r6 = 0x51;
                        }
                        if ((*((u16 *)((u8 *)(sp240) + (0xAC)))) == 7) {
                            FMT815F4(var_r8_12, var_r6 + 1, ((*(u8 *)(sp240 + 0x9B) * 2) + 0x32A) | 0x140000, (s32) (*((u16 *)((u8 *)(sp240) + (0xAC)))));
                        } else {
                            FMT815F4(var_r8_12, var_r6 + 1, ((*(u8 *)(sp240 + 0x9B) * 2) + 0x329) | 0x140000, (s32) (*((u16 *)((u8 *)(sp240) + (0xAC)))));
                        }
                        sub_0801A3D0(text85, (u16) (0xF - ((u32) sub_0801A638(text85) >> 1)), 5U);
                        if (sp258 == 0) {
                        } else {
                            var_r8 = var_r6 - text85;
                            if (((sp258 / 100U) << 0x10) == 0) {
                                if (((sp258 / 10U) << 0x10) == 0) {
                                    var_r8 -= 1;
                                    var_r7_4 = 1;
                                } else {
                                    var_r7_4 = 2;
                                }
                            } else {
                                var_r8 += 1;
                                var_r7_4 = 3;
                            }
                            {
                                s32 w_;
                                var_r0 = sub_0801A638(text85);
                                w_ = var_r8 + 0xF;
                                sub_0805FB7C(w_ - ((u32) var_r0 >> 1), 6, sp258, 2);
                                temp_r6 = sub_080653CC();
                                sub_08065230(temp_r6, ((w_ - ((u32) sub_0801A638(text85) >> 1)) - var_r7_4) * 8, 0x38, 0x1AU, 0);
                                }
                        }
            break;
        case 3:                                     /* switch 2 */
            if ((*((u8 *)((u8 *)(sp23C) + (8)))) != 0) {
                sp254 = 0;
            } else {
                temp_r4 = gUnk_030034E0 + 0x30;
                temp_r5 = (*((u8 *)((u8 *)(sp244) + (0x9B))));
                sp25C = (u32) local815F4_sub_0801E378(temp_r4, (u16) temp_r5, sub_0801DE60());
                sp25C = (u32) (u16) (sp25C - (*((u8 *)((u8 *)(sp244) + (0x9B)))));
                FMT1_815F4(var_r8_2, (text85), 0x140329, (*((u8 *)((u8 *)(sp244) + (0x9B)))) + (*((u8 *)((u8 *)(sp23C) + (6)))), var_r6);
                (*((u8 *)((u8 *)(var_r6) + (0)))) = 0x51;
                if (sp25C != 0) {
                    *++var_r6 = 0x51;
                    *++var_r6 = 0x51;
                }
                FMT815F4(var_r8_3, var_r6 + 1, 0x14032A, (s32) *(u8 *)(sp244 + 0xA0));
                sub_0801A3D0(text85, (u16) (0xF - ((u32) sub_0801A638(text85) >> 1)), 5U);
                if (sp25C == 0) {
                } else {
                    var_r8 = var_r6 - text85;
                    if (((sp25C / 100U) << 0x10) == 0) {
                        if (((sp25C / 10U) << 0x10) == 0) {
                            var_r8 -= 1;
                            var_r7_4 = 1;
                        } else {
                            var_r7_4 = 2;
                        }
                    } else {
                        var_r8 += 1;
                        var_r7_4 = 3;
                    }
                    {
                        s32 w_;
                        var_r0 = sub_0801A638(text85);
                        w_ = var_r8 + 0xF;
                        sub_0805FB7C(w_ - ((u32) var_r0 >> 1), 6, sp25C, 2);
                        temp_r6 = sub_080653CC();
                        sub_08065230(temp_r6, ((w_ - ((u32) sub_0801A638(text85) >> 1)) - var_r7_4) * 8, 0x38, 0x1AU, 0);
                        }
                }
            }
            break;
        case 4:                                     /* switch 2 */
            if ((*((u8 *)((u8 *)(sp23C) + (8)))) != 0) {
                sp254 = 0;
                break;
            }
            temp_r4_3 = gUnk_030034E0 + 0x30;
            temp_r5_3 = (*((u8 *)((u8 *)(sp248) + (0x9B))));
            sp25C = (u32) local815F4_sub_0801E378(temp_r4_3, (u16) temp_r5_3, sub_0801DE60());
            sp25C = (u32) (u16) (sp25C - (*((u8 *)((u8 *)(sp248) + (0x9B)))));
            FMT1_815F4(var_r8_5, (text85), 0x140329, (*((u8 *)((u8 *)(sp248) + (0x9B)))) + (*((u8 *)((u8 *)(sp23C) + (6)))), var_r6);
            (*((u8 *)((u8 *)(var_r6) + (0)))) = 0x51;
            if (sp25C != 0) {
                *++var_r6 = 0x51;
                *++var_r6 = 0x51;
            }
            FMT815F4(var_r8_6, var_r6 + 1, 0x14032A, (s32) *(u8 *)(sp248 + 0xA0));
            sub_0801A3D0(text85, (u16) (0xF - ((u32) sub_0801A638(text85) >> 1)), 5U);
            if (sp25C == 0) {
            } else {
                var_r8 = var_r6 - text85;
                if (((sp25C / 100U) << 0x10) == 0) {
                    if (((sp25C / 10U) << 0x10) == 0) {
                        var_r8 -= 1;
                        var_r7_4 = 1;
                    } else {
                        var_r7_4 = 2;
                    }
                } else {
                    var_r8 += 1;
                    var_r7_4 = 3;
                }
                {
                    s32 w_;
                    var_r0 = sub_0801A638(text85);
                    w_ = var_r8 + 0xF;
                    sub_0805FB7C(w_ - ((u32) var_r0 >> 1), 6, sp25C, 2);
                    temp_r6 = sub_080653CC();
                    sub_08065230(temp_r6, ((w_ - ((u32) sub_0801A638(text85) >> 1)) - var_r7_4) * 8, 0x38, 0x1AU, 0);
                    }
            }
            break;
        case 5:                                     /* switch 2 */
            if ((*((u8 *)((u8 *)(sp23C) + (8)))) != 0) {
                sp254 = 0;
                break;
            }
            if ((*((u8 *)((u8 *)(sp24C) + (0xA0)))) != 0) {
                temp_r4_4 = gUnk_030034E0 + 0x30;
                var_r6 = sp24C + 0x9B;
                temp_r5_5 = (*((u8 *)((u8 *)(sp24C) + (0x9B))));
                sp25C = local815F4_sub_0801E3D8(temp_r4_4, (u16) temp_r5_5, sub_0801DE60());
            } else {
                temp_r4_5 = gUnk_030034E0 + 0x30;
                var_r6 = sp24C + 0x9B;
                temp_r5_6 = (*((u8 *)((u8 *)(sp24C) + (0x9B))));
                sp25C = local815F4_sub_0801E378(temp_r4_5, (u16) temp_r5_6, sub_0801DE60());
            }
            sp25C = (u32) (u16) (sp25C - *var_r6);
            FMT1C_815F4(var_r8_7, (text85), 0x140329, *var_r6 + (*((u8 *)((u8 *)(sp23C) + (6)))), var_r6);
            (*((u8 *)((u8 *)(var_r6) + (0)))) = 0x51;
            if (sp25C != 0) {
                *++var_r6 = 0x51;
                *++var_r6 = 0x51;
            }
            FMT815F4(var_r8_8, var_r6 + 1, 0x14032A, (s32) *(u8 *)(sp24C + 0xA1));
            sub_0801A3D0(text85, (u16) (0xF - ((u32) sub_0801A638(text85) >> 1)), 5U);
            if (sp25C != 0) {
                var_r8 = var_r6 - text85;
                if (((sp25C / 100U) << 0x10) == 0) {
                    if (((sp25C / 10U) << 0x10) == 0) {
                        var_r8 -= 1;
                        var_r7_9 = 1;
                    } else {
                        var_r7_9 = 2;
                    }
                } else {
                    var_r8 += 1;
                    var_r7_9 = 3;
                }
                {
                    s32 w_;
                    var_r0 = sub_0801A638(text85);
                    w_ = var_r8 + 0xF;
                    sub_0805FB7C(w_ - ((u32) var_r0 >> 1), 6, sp25C, 2);
                    temp_r6_2 = sub_080653CC();
                    sub_08065230(temp_r6_2, ((w_ - ((u32) sub_0801A638(text85) >> 1)) - var_r7_9) * 8, 0x38, 0x1AU, 0);
                    }
            }
            break;
        }
icons:
        var_r7 = 0;
        for (var_r8 = 0; var_r8 <= 9; var_r8++) {
            if ((sp254 >> var_r8) & 1) {
                /* Set before &icons[] so loop.c hoists the table85 load into r6. */
                u8 *e_ = table85;
                temp_r5_9 = &icons[var_r7];
                sub_08065158(temp_r5_9, *(u32 *)(e_ + 0x58 * var_r8), 1, -1, 0);
                sub_08000AF0(var_r7 + 0x10, icons[var_r7].palette, 1U);
                (*((s8 *)((u8 *)(temp_r5_9) + (0x1C)))) = var_r7;
                var_r7 += 1;
            }
        }
        for (var_r8 = 0; var_r8 < var_r7; var_r8++) {
            sub_08065230(&icons[var_r8], 0x84 - var_r7 * 0xC + var_r8 * 0x18, 0x81, 0U, 0);
        }
        temp_r4_11 = (*((u16 *)((u8 *)(sp23C) + (0))));
        switch ((s32) temp_r4_11) {                 /* switch 3; irregular */
        case 8:
        case 9:
            return;
        case 1:                                     /* switch 3 */
            temp_r0_17 = (sp250->kind);
            if (temp_r0_17 == 0) {
                return;
            }
            temp_r2_25 = sub_08007290((temp_r0_17 + 0x314) | 0x140000);
            /* FAKE: keeps the ROM's `ldrh r0` + separate zero-extension into r3 (no code emitted). */
            var_r0_3 = sp250->value;
            asm("" : "+r"(var_r0_3));
            sub_08081518(0xF, 7U, temp_r2_25, (u16) var_r0_3, temp_r4_11);
            return;
        case 10:                                    /* switch 3 */
            sub_0805FFBC(0xF, 6, sp23C, 0x80000000);
            return;
        default:
            if (sp254 != 0) {
                var_r4_16 = 0;
                for (var_r8 = 0; var_r8 <= 2 && sp250 != NULL; var_r8++) {
                    if ((sp250[var_r8].kind != 0) && (sp250[var_r8].kind != 0x29)) {
                        var_r4_16 += 1;
                    }
                }
                for (var_r8 = 0; var_r8 <= 2 && sp250 != NULL; sp250++, var_r8++) {
                    if ((sp250->kind != 0) && (sp250->kind != 0x29)) {
                        if ((sp250->value) & 0x8000) {
                            var_r0_3 = ((sp250->kind) * 2) + 0x2C4;
                        } else {
                            var_r0_3 = ((sp250->kind) * 2) + 0x2C3;
                        }
                        y85 = 0x140000;
                        var_r0_3 |= y85;
                        temp_r2_26 = sub_08007290(var_r0_3);
                        switch (var_r4_16) {        /* switch 4; irregular */
                        case 1:                     /* switch 4 */
                            var_r3_13 = (s16) (sp250->value);
                            if (var_r3_13 < 0) {
                                var_r3_13 = 0 - var_r3_13;
                            }
                            sub_08081518(0xF, 9U, temp_r2_26, (u16) var_r3_13, var_r4_16);
                            break;
                        case 2:                     /* switch 4 */
                            y85 = (u16) (var_r8 * 2 + 8);
                            var_r3_14 = (s16) (sp250->value);
                            if (var_r3_14 < 0) {
                                var_r3_14 = 0 - var_r3_14;
                            }
                            sub_08081518(0xF, y85, temp_r2_26, (u16) var_r3_14, 1);
                            break;
                        case 3:                     /* switch 4 */
                            y85 = (u16) (var_r8 * 2 + 7);
                            var_r3_15 = (s16) (sp250->value);
                            if (var_r3_15 < 0) {
                                var_r3_15 = 0 - var_r3_15;
                            }
                            sub_08081518(0xF, y85, temp_r2_26, (u16) var_r3_15, 1);
                            break;
                        }
                    }
                }
            } else {
                res85 = (u8 *)sub_08007290(0x140365);
                temp_r4_12 = res85 + 2;
                sub_0801A3D0(temp_r4_12, (u16) (0xF - ((u32) sub_0801A638(temp_r4_12) >> 1)), 9U);
            }
            break;
        }
}
struct Icon82960 { u16 unk0; s16 unk2; u32 zero; u8 flag; u8 pad[7]; };
struct Stat82960 { volatile u16 unk0; u16 unk2; };
struct Manager82960 { u8 pad[0x74]; struct { s32 y; s32 pad; } entries[6]; };
struct Record82960 { u16 names[5][31]; u16 items[6]; u16 pad; struct Stat82960 stats[3]; };
/* [DrawLocalizedEquipmentSetSummary] r0 record pointer; null returns with no drawing. Draws title
 * resource0x1403EC at row3, localized record name selected by global0x03003470 (31 halfwords per language),
 * truncating each character to byte, ending at low-byte zero or after31 characters then0xFD. Draws six
 * available equipment references at record+0x136, omitting high-bit0x8000 entries; slot-to-item-kind
 * mapping2,4,3,5,6,7, centered icon row with manager animation offsets. Scans three4-byte modifiers at+0x144,
 * excluding type0/41, selects positive/negative text resource from signed value bit15, draws absolute u16
 * magnitude via0x08081518 with layout based on total valid modifiers. */
void sub_08082960(struct Record82960 *arg0) {
    s32 var_r4;
    u32 var_r5;
    u32 var_r6;
    u32 first_byte;
    u32 stat_y;
    s32 icon_x;
    struct Icon82960 sp4;
    u8 sp14[40];
    s16 var_r0;
    s32 var_r3;
    s32 var_r3_2;
    s32 var_r3_3;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 var_r0_2;
    u32 work1;

    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r0_3;
    u16 temp_r0_4;
    u8 *var_r2;

    if (arg0 == 0) {
        return;
    }
    temp_r2_2 = sub_08007290(0x1403EC);
    var_r4 = temp_r2_2 + 2;
    sub_0801A3D0(((u8 *)var_r4), (u16) (0xF - ((u32) sub_0801A638(((u8 *)var_r4)) >> 1)), 3);
    var_r2 = sp14;
    var_r5 = 0;
    temp_r0 = arg0->names[gUnk_03003470][0];
    *var_r2 = temp_r0;
    first_byte = (u32)temp_r0 << 24;
    
    var_r4 = (s32)var_r2;
    if (first_byte != 0) {
        do {
            var_r5++;
            var_r2++;
            if (var_r5 > 30) break;
            temp_r0_2 = arg0->names[gUnk_03003470][var_r5];
            *var_r2 = temp_r0_2;
        } while (*var_r2 != 0);
    }
    *var_r2 = 0xFD;
    sub_0801A3D0(((u8 *)var_r4), (u16) (0xF - ((u32) sub_0801A638(((u8 *)var_r4)) >> 1)), 0x12);
    var_r4 = 0;
    var_r5 = 0;
    var_r3 = 0x8000;
    var_r2 = (u8 *)arg0->items;
    do {
        work1 = *(u16 *)var_r2;
        var_r0_2 = var_r3 & work1;
        asm("" : "+r"(work1), "+r"(var_r0_2));
        if (!var_r0_2) {
            var_r4 += 1;
        }
        var_r2 += 2;
        var_r5 += 1;
    } while (var_r5 <= 5U);
    sp4.zero = 0;
    sp4.flag = 0;
    var_r6 = 0;
    var_r5 = 0;
    do {
        temp_r2 = var_r5 * 2;
        if (!(0x8000 & arg0->items[var_r5])) {
            switch (var_r5) {
            case 0: sp4.unk0 = 2; break;
            case 2: sp4.unk0 = 3; break;
            case 1: sp4.unk0 = 4; break;
            case 3: sp4.unk0 = 5; break;
            case 4: sp4.unk0 = 6; break;
            case 5: sp4.unk0 = 7; break;
            }
            sp4.unk2 = (u16) arg0->items[var_r5];
            icon_x = (var_r6 * 0x10) + 0x80;
            sub_0805FC80(icon_x - (var_r4 * 8), 0x38 - ((struct Manager82960 *)gUnk_03006440)->entries[var_r5].y, &sp4, 0);
            var_r6 += 1;
        }
        var_r5 += 1;
    } while (var_r5 <= 5U);
    var_r4 = (s32)arg0->stats;
    var_r6 = 0;
    var_r5 = 0;
    if (((struct Stat82960 *)var_r4) != NULL) {
        work1 = (u32)var_r4;
loop_24:
        temp_r0_3 = *(u16 *)work1;
        if ((temp_r0_3 != 0) && (temp_r0_3 != 0x29)) {
            var_r6 += 1;
        }
        work1 += 4;
        var_r5 += 1;
        if ((var_r5 <= 2U) && (((struct Stat82960 *)var_r4) != NULL)) {
            goto loop_24;
        }
        var_r5 = 0;
        if (((struct Stat82960 *)var_r4) != NULL) {
do {
loop_30:
            temp_r0_4 = ((struct Stat82960 *)var_r4)->unk0;
            if ((temp_r0_4 != 0) && (temp_r0_4 != 0x29)) {
                var_r0_2 = ((struct Stat82960 *)var_r4)->unk2;
                temp_r2_2 = 0x8000;
                work1 = temp_r2_2;
                asm("" : "+r"(temp_r2_2), "+&r"(work1));
                if (var_r0_2 & work1) {
                    var_r0_2 = ((struct Stat82960 *)var_r4)->unk0 * 2;
                    var_r3 = 0x2C4;
                    asm("" : "+r"(var_r3), "+r"(var_r0_2));
                    var_r0_2 += var_r3;
                } else {
                    var_r0_2 = ((struct Stat82960 *)var_r4)->unk0 * 2;
                    work1 = 0x2C3;

                    var_r0_2 += work1;
                }
                work1 = 0x140000;
                var_r0_2 |= work1;
                temp_r2_2 = sub_08007290(var_r0_2);
                switch (var_r6) {                 /* switch 2; irregular */
                case 1:                             /* switch 2 */
                    var_r3 = (s16) ((struct Stat82960 *)var_r4)->unk2;
                    if ((s32) var_r3 < 0) {
                        var_r3 = 0 - var_r3;
                    }
                    sub_08081518(0xF, 0xBU, temp_r2_2, (u16) var_r3, var_r6);
                    break;
                case 2:                             /* switch 2 */
                    stat_y = (u32) ((var_r5 << 0x11) + 0xA0000) >> 0x10;
                    var_r3_2 = (s16) ((struct Stat82960 *)var_r4)->unk2;
                    if ((s32) var_r3_2 < 0) {
                        var_r3_2 = 0 - var_r3_2;
                    }
                    sub_08081518(0xF, stat_y, temp_r2_2, (u16) var_r3_2, 1U);
                    break;
                case 3:                             /* switch 2 */
                    stat_y = (u32) ((var_r5 << 0x11) + 0x90000) >> 0x10;
                    var_r3_3 = (s16) ((struct Stat82960 *)var_r4)->unk2;
                    if ((s32) var_r3_3 < 0) {
                        var_r3_3 = 0 - var_r3_3;
                    }
                    sub_08081518(0xF, stat_y, temp_r2_2, (u16) var_r3_3, 1U);
                    break;
                }
            }
            } while (0);
    var_r4 += 4;
            var_r5 += 1;
            if ((var_r5 <= 2U) && (((struct Stat82960 *)var_r4) != NULL)) {
                goto loop_30;
            }
        }
    }
}





struct Record82BB0 { u16 w0, w2; s32 data[3]; };
struct ManagerRecords82BB0 { u8 pad[0x104]; struct Record82BB0 records[4]; };
union Config82BB0 { u32 word; u16 half[2]; };
struct Stage82BB0 { u8 pad[0x1FA]; u16 value; };
struct Keys82BB0 { u16 x0,x2,x4,x6,x8,xA,xC,xE; };
void sub_08082BB0_u32(u32 arg0) asm("sub_08082BB0");
/* [TaskItemCollectionInteractionMenu] Full-word r0 selects interaction variant:7/8/9 map manager modes4/5/6;
 * other values mode3. Initializes shared manager, localized graphics, player/inventory state, collection
 * records at+0x104, currency totals and VCOUNT callbacks, then starts item-menu subtask. Main loop while
 * manager+0x24 nonzero and no link error runs interaction state machine0x0807C29C unless manager flag2, draws
 * current/held items or detailed record view, refreshes signed stat preview and inventory contents, with
 * variant-specific collection background updates. */
void sub_08082BB0_u32(u32 arg0) {
    struct PlayerWords82BB0 { u8 pad[0x8C]; u32 w8C, w90; u8 tail[0x14C - 0x94]; };
    extern struct PlayerWords82BB0 players82BB0[] asm("gUnk_03003CE0");
    extern u32 sub_08001108_word82BB0(u32) asm("sub_08001108");
    struct Index82BB0 { u8 pad[0x14A]; u16 value; };
    extern struct Index82BB0 *index82BB0 asm("gUnk_03005CF4");
    extern u16 table82BB0Stage[] asm("gUnk_084EBD38");
    extern u16 table82BB0Text[] asm("gUnk_084ECB98");
    extern struct Keys82BB0 keys82BB0 asm("gUnk_03001250");
    u8 scratch82BB0[60];
    extern struct Stage82BB0 stage82BB0 asm("gUnk_03001F40");
    struct ManagerView82BB0;
    struct BankView82BB0;
    struct BankView82BB0 **mode_slot82BB0;
    s32 mode_index82BB0, mode_offset82BB0;
    extern struct ManagerView82BB0 *manager82BB0 asm("gUnk_03006440");
    extern struct BankView82BB0 *bank82BB0 asm("gUnk_030034E0");
    u8 *setup82BB0;
    u8 *bank_setup82BB0;
    u8 *postsetup82BB0;
    struct Refresh82BB0 { u8 pad0[4]; s32 w4; u8 pad8[0x60]; u16 w68, w6A; };
    struct Refresh82BB0 *refresh82BB0;
    u8 *confirm82BB0;
    s32 init_result82BB0;
    u32 *row82BB0;
    u32 *rowzero82BB0;
    s32 *init_words;
    s32 *common_words82BB0;
    u16 *init_halves;
    union Config82BB0 sp40;
    struct Player *sp44;
    u32 sp48;
    s32 sp4C;
    s32 sp50;
    u32 sp54;
    s32 temp_r4;
    s32 temp_r0_13;
    s32 temp_r0_15;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_5;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r5;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r0_6;
    s32 var_r0_7;
    s32 var_r0_8;
    s32 var_r1;
    s32 var_r1_2;
    s32 var_r5;
    s32 var_r9;
    s32 first_flags82BB0;
    s32 resource_word82BB0;
    void *fade_sprite82BB0;
    s32 fade_x82BB0;
    s32 fade_y82BB0;
    u16 temp_r0_22;
    s32 temp_r1_3;
    u16 temp_r1_4;
    u16 var_sl;
    u32 temp_r0;
    u32 temp_r0_14;
    u32 temp_r4_4;
    u32 var_r6;
    u32 var_r8;
    u8 *temp_r4_2;
    u8 *temp_r4_3;
    u8 temp_r3;
    void *temp_r0_10;
    void *temp_r0_11;
    void *temp_r0_12;
    void *temp_r0_16;
    void *temp_r0_17;
    void *temp_r0_18;
    void *temp_r0_19;
    void *temp_r0_20;
    void *temp_r0_21;
    void *temp_r0_23;
    void *temp_r0_24;
    void *temp_r0_2;
    void *temp_r0_3;
    void *temp_r0_4;
    void *temp_r0_5;
    void *temp_r0_6;
    void *temp_r0_7;
    void *temp_r0_8;
    void *temp_r0_9;
    void *temp_r1_6;
    void *temp_r1_7;
    void *var_r2;
    void *var_r2_2;
    void *var_r2_3;

    /* Original r8 has no dominating initialization before its first flag-4 use. */
    
    sp44 = &gUnk_03003CE0[sub_080020F4()];
    sub_080009F8(0x1F00, 0, 1);
    keys82BB0.x2 = 0;
    keys82BB0.x0 = 0;
    keys82BB0.x6 = 0;
    keys82BB0.x4 = 0;
    keys82BB0.xA = 0;
    keys82BB0.x8 = 0;
    keys82BB0.xE = 0;
    keys82BB0.xC = 0;
    switch (arg0) {                                 /* switch 1; irregular */
    case 7:                                         /* switch 1 */
        (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x0)) = 4;
        temp_r0 = (*(u16 *)((u8 *)(((u8 *)bank82BB0)) + 0x6A)) - 1;
        switch (temp_r0) {
        case 0: sub_0800B650(0x4000001B, 0x1D, 0x06000000, 0U, 0xFU); break;
        case 1: sub_0800B650(0x4000001C, 0x1D, 0x06000000, 0U, 0xFU); break;
        case 2: sub_0800B650(0x4000001E, 0x1D, 0x06000000, 0U, 0xFU); break;
        case 3: sub_0800B650(0x40000021, 0x1D, 0x06000000, 0U, 0xFU); break;
        case 4: sub_0800B650(0x40000025, 0x1D, 0x06000000, 0U, 0xFU); break;
        }
        sub_0800B7DC(0x2B, 0x1A, 0x06000000, 0U, 0xFU);
        sub_0800B7DC(0x40000005, 0x1B, 0x06000000, 0U, 0xFU);
        break;
    case 8:
        (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x0)) = 5;
        sub_0800B7DC(0x1A, 0x1A, 0x06000000, 0U, 0xFU);
        sub_0800B7DC(0x40000005, 0x1B, 0x06000000, 0U, 0xFU);
        break;
    case 9:
        (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x0)) = 6;
        sub_0800B7DC(0x2A, 0x1A, 0x06000000, 0U, 0xFU);
        sub_0800B7DC(0x40000005, 0x1B, 0x06000000, 0U, 0xFU);
        break;
    default:                                        /* switch 1 */
        (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x0)) = 3;
        sub_0800B7DC(0x11, 0x1A, 0x06000000, 0U, 0xFU);
        sub_0800B7DC(0x40000005, 0x1B, 0x06000000, 0U, 0xFU);
        sub_08000AF0(0xEU, sub_08007290(0x70003) + 0x1C0, 1U);
        break;
    }
    stage82BB0.value = table82BB0Stage[index82BB0->value];
    sub_0800B650(0x10, 0x1F, 0x06000000, 0U, 0xEU);
    switch (gUnk_03003470) {
    case 0: sub_08065158(((u8 *)manager82BB0) + 0x5B8, 0x50006, 0, -1, 0); break;
    case 1: sub_08065158(((u8 *)manager82BB0) + 0x5B8, 0x50007, 0, -1, 0); break;
    case 2: sub_08065158(((u8 *)manager82BB0) + 0x5B8, 0x50008, 0, -1, 0); break;
    case 3: sub_08065158(((u8 *)manager82BB0) + 0x5B8, 0x50009, 0, -1, 0); break;
    case 4: sub_08065158(((u8 *)manager82BB0) + 0x5B8, 0x5000A, 0, -1, 0); break;
    }
    sub_08065158(((u8 *)manager82BB0) + 0x5EC, 0x5007A, 0, -1, 0);
    sub_08000AF0(0x1EU, (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x5F8)), 1U);
    (*(u8 *)((u8 *)(((u8 *)manager82BB0)) + 0x608)) = 0xE;
    if (arg0 == 7) {
        sub_080009C0(0x1F00, 0, 1);
    } else {
        sub_080009C0(0x1D00, 0, 1);
    }
    sp40.word = (sp40.word & 0xFFFF0000) | 0x1D03;
    sub_08000AA8(1U, (u16 *) &sp40);
    sp40.half[0] = 0x9A01;
    sub_08000AA8(2U, (u16 *) &sp40);
    sp40.half[0] = 0x1F03;
    sub_08000AA8(3U, (u16 *) &sp40);
    sub_08060DB0(0);
    sp4C = (s32) (u8) sub_08001108_word82BB0(0x88U);
    sp48 = sub_0800115C((u32) sub_0808528C);
    sub_08000D8C();
    sub_08000C08(8, 2);
    if (sub_0800CB9C() != 0) {
        if ((sub_0800CF48() == 0) && (sub_0800D154() == 0)) {
            sub_08058688(0xD7);
        }
    } else {
        sub_08058688(0xD7);
    }
    setup82BB0 = (u8 *)manager82BB0;
    (*(s32 *)((u8 *)(setup82BB0) + 0x4)) = 0;
    (*(s32 *)((u8 *)(setup82BB0) + 0x8)) = 0;
    (*(s32 *)((u8 *)(setup82BB0) + 0x18)) = 0;
    (*(s32 *)((u8 *)(setup82BB0) + 0x1C)) = 0x16;
    (*(s32 *)((u8 *)(setup82BB0) + 0x20)) = 0;
    (*(s32 *)((u8 *)(setup82BB0) + 0x24)) = 1;
    (*(s32 *)((u8 *)(setup82BB0) + 0x28)) = 0;
    init_words = (s32 *)(setup82BB0 + 0xD8);
    *init_words = 0;
    asm("" : "+r"(init_words));
    init_words++;
    *init_words = 0;
    asm("" : "+r"(init_words));
    init_words++;
    *init_words = 0x58;
    asm("" : "+r"(init_words));
    init_words++;
    *init_words = 0x20;
    asm("" : "+r"(init_words));
    init_words++;
    *init_words = 0x58;
    asm("" : "+r"(init_words));
    init_words++;
    *init_words = 0x20;
    asm("" : "+r"(init_words));
    init_words++;
    *init_words = 0;
    asm("" : "+r"(init_words));
    init_words++;
    *(u16 *)init_words = 0;
    (*(s32 *)((u8 *)(setup82BB0) + 0x2C)) = 0;
    (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x34)) = sub_0805D3D4();
    init_result82BB0 = sub_0805D404();
    postsetup82BB0 = (u8 *)manager82BB0;
    (*(s32 *)((u8 *)(postsetup82BB0) + 0x3C)) = init_result82BB0;
    (*(s32 *)((u8 *)(postsetup82BB0) + 0x38)) = 0;
    (*(s32 *)((u8 *)(postsetup82BB0) + 0x40)) = 0;
    (*(s32 *)((u8 *)(postsetup82BB0) + 0x44)) = 0;
    bank_setup82BB0 = (u8 *)bank82BB0;
    (*(s32 *)((u8 *)(postsetup82BB0) + 0x48)) = (s32) (*(u16 *)((u8 *)(bank_setup82BB0) + 0x6A));
    (*(s32 *)((u8 *)(postsetup82BB0) + 0x54)) = 0;
    (*(s32 *)((u8 *)(postsetup82BB0) + 0x5C)) = 0;
    sp50 = 0;
    var_r9 = 0;
    (*(u16 *)((u8 *)(postsetup82BB0) + 0x6A)) = 0x64U;
    var_sl = (*(u16 *)((u8 *)(bank_setup82BB0) + 0x68));
    init_halves = (u16 *)(postsetup82BB0 + 0x4C);
    *init_halves++ = 0;
    *init_halves++ = 0;
    *init_halves++ = 0;
    *init_halves = 0;
    (*(u16 *)((u8 *)(postsetup82BB0) + 0x68)) = 5U;
    (*(u32 *)((u8 *)(postsetup82BB0) + 0x6C)) = 3;
    var_r6 = 0;
    sp54 = arg0 - 1;
    do {
        row82BB0 = (u32 *)manager82BB0;
        temp_r2 = var_r6 * 8;
        rowzero82BB0 = (u32 *)((u8 *)row82BB0 + 0x74);
        
        *(u32 *)((u8 *)rowzero82BB0 + temp_r2) = 0;
        row82BB0 = (u32 *)((u8 *)row82BB0 + 0x78);
        
        row82BB0 = (u32 *)((u8 *)row82BB0 + temp_r2);
        *row82BB0 = var_r6 % 5U;
        var_r6 += 1;
    } while (var_r6 <= 5U);
    switch (gUnk_03003470) {
    case 0: sub_08065158((u8 *)manager82BB0 + 0xA4, 0x50002, 0, 0x80000000, 0); break;
    case 1: sub_08065158((u8 *)manager82BB0 + 0xA4, 0x5015B, 0, 0x80000000, 0); break;
    case 2: sub_08065158((u8 *)manager82BB0 + 0xA4, 0x5015C, 0, 0x80000000, 0); break;
    case 3: sub_08065158((u8 *)manager82BB0 + 0xA4, 0x5015D, 0, 0x80000000, 0); break;
    case 4: sub_08065158((u8 *)manager82BB0 + 0xA4, 0x5015E, 0, 0x80000000, 0); break;
    }
    switch (sp54) {                                 /* switch 5; irregular */
    case 0:                                         /* switch 5 */
        if (sub_0800CE30() != 0) {
            var_r0_5 = ((u8 *)bank82BB0) + 0xB50;
        } else {
            var_r0_5 = ((u8 *)bank82BB0) + 0x910;
        }
        goto block_60;
    case 1:                                         /* switch 5 */
        sub_0805CB04(2, ((u8 *)manager82BB0) + 0x104);
        setup82BB0 = (u8 *)manager82BB0;
        
        goto block_61;
    case 2:                                         /* switch 5 */
        sub_0805CB04(3, ((u8 *)manager82BB0) + 0x104);
        setup82BB0 = (u8 *)manager82BB0;
        asm("" : "+r"(setup82BB0) : "i"(3));
        goto block_61;
    case 3:                                         /* switch 5 */
        sub_0805CB04(4, ((u8 *)manager82BB0) + 0x104);
        setup82BB0 = (u8 *)manager82BB0;
        asm("" : "+r"(setup82BB0) : "i"(4));
        goto block_61;
    case 4:                                         /* switch 5 */
        if (sub_0800CE30() != 0) {
            var_r0_5 = ((u8 *)bank82BB0) + 0x9D0;
        } else {
            var_r0_5 = ((u8 *)bank82BB0) + 0x790;
        }
        goto block_60;
    case 5:                                         /* switch 5 */
        if (sub_0800CE30() != 0) {
            var_r0_5 = ((u8 *)bank82BB0) + 0xA90;
        } else {
            var_r0_5 = ((u8 *)bank82BB0) + 0x850;
        }
block_60:
        sub_080852CC(var_r0_5);
        setup82BB0 = (u8 *)manager82BB0;
block_61:
        *(s32 *)(setup82BB0 + 0x18) = 0xB;
        common_words82BB0 = (s32 *)(setup82BB0 + 0xE0);
        temp_r2 = 0xB8;
        *common_words82BB0 = temp_r2;
        asm("" : "+r"(common_words82BB0));
        common_words82BB0++;
        temp_r1 = 0x20;
        *common_words82BB0 = temp_r1;
        asm("" : "+r"(common_words82BB0));
        common_words82BB0++;
        *common_words82BB0 = temp_r2;
        asm("" : "+r"(common_words82BB0));
        common_words82BB0++;
        asm("" : "+r"(common_words82BB0));
        *common_words82BB0 = temp_r1;
        break;
    case 6:                                         /* switch 5 */
        mode_slot82BB0 = &bank82BB0;
        mode_index82BB0 = *(s32 *)((u8 *)manager82BB0 + 0x44);
        mode_offset82BB0 = mode_index82BB0 * 0xF0;
        
        mode_offset82BB0 += 0x2E0;
        
        { s32 slot82BB0 = (s32)*mode_slot82BB0; register s32 sum82BB0 asm("r0") = slot82BB0; sum82BB0 = slot82BB0 + mode_offset82BB0; sub_080852CC(sum82BB0); }
        break;
    case 8:                                         /* switch 5 */
        var_r6 = 0;
        do {
            ((struct ManagerRecords82BB0 *)manager82BB0)->records[var_r6].w0 = 0;
            var_r6 += 1;
        } while (var_r6 <= 2U);
        ((struct ManagerRecords82BB0 *)manager82BB0)->records[var_r6].w0 = 0;
        break;
    }
    sub_0808536C();
    sub_080853DC(arg0);
    sub_080003F0();
    sub_0801AB50(6);
    while (((*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x24)) != 0) && (sub_080021A8() == 0)) {
        first_flags82BB0 = *(s32 *)((u8 *)manager82BB0 + 0x28);
        temp_r4 = 2;
        if (!(first_flags82BB0 & temp_r4)) {
            sub_0807C29C();
        }
        temp_r1 = (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x28));
        if (!(temp_r1 & 1)) {
            temp_r4 &= temp_r1;
            if (temp_r4 != 0) {

            } else {
                keys82BB0.xA = temp_r4;
                if ((*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x1C)) == 0x16) {
                    temp_r1_2 = (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x18));
                    if ((u32) (temp_r1_2 - 0x11) <= 2U) {

                    } else {
                        if (((*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x0)) != 5) || (temp_r1_2 == 7)) {
                            sub_08065230(((u8 *)manager82BB0) + 0x5B8, (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0xE0)), (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0xE4)), 0xBU, (s32) temp_r4);
                        } else {
                            temp_r0_12 = (*(u8 * *)((u8 *)(((u8 *)manager82BB0)) + 0xF0));
                            temp_r1_3 = (*(u16 *)((u8 *)(temp_r0_12) + 0x0));
                            if (((s32) temp_r1_3 <= 5) && ((s32) temp_r1_3 >= temp_r4 + 2)) {
                                temp_r3 = (*(u8 *)((u8 *)(temp_r0_12) + 0x8));
                                if (temp_r3 != 0) {
                                    sub_08065264(((u8 *)manager82BB0) + 0x5B8, (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0xE0)), (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0xE4)), 9, (s32) temp_r4);
                                } else {
                                    sub_08065230(((u8 *)manager82BB0) + 0x5B8, (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0xE0)), (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0xE4)), 9U, (s32) temp_r3);
                                }
                            } else {
                                sub_08065230(((u8 *)manager82BB0) + 0x5B8, (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0xE0)), (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0xE4)), 9U, 0);
                            }
                        }
                        temp_r0_13 = (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x18));
                        if (temp_r0_13 != 7) {
                            if ((u32) (temp_r0_13 - 0xE) > 1U) {
                                sub_0805FFBC(0xF, 0x12, (*(u8 * *)((u8 *)(((u8 *)manager82BB0)) + 0xF0)), 0x80000000);
                            }
                        } else {
                            resource_word82BB0 = sub_08007290(table82BB0Text[*(s32 *)((u8 *)manager82BB0 + 4)] | 0x140000);
                            temp_r4_2 = (u8 *)(resource_word82BB0 + 2);
                            
                            sub_0801A3D0(temp_r4_2, (u16) (0xF - ((u32) sub_0801A638(temp_r4_2) >> 1)), 0x12);
                        }
                    }
                } else {
                    sub_08065230(((u8 *)manager82BB0) + 0x5B8, (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0xE0)), (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0xE4)) - 4, 0xBU, 1);
                    sub_0805FC80((*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0xE0)), (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0xE4)) - 4, ((u8 *)manager82BB0) + 0xF4, 8);
                    if ((*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x18)) != 0x11) {
                        sub_0805FFBC(0xF, 0x12, ((u8 *)manager82BB0) + 0xF4, 0x80000000);
                    }
                }
            }
            if ((((*(u16 *)((u8 *)(((u8 *)manager82BB0)) + 0x6A)) != (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x4))) || (var_sl != (*(u16 *)((u8 *)(((u8 *)bank82BB0)) + 0x68)))) && ((*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x18)) != 0xE)) {
                if ((u32) ((*(u16 *)((u8 *)manager82BB0 + 0x68))++) > 5U) {
                    sub_080811E0(sp44);
                    refresh82BB0 = (struct Refresh82BB0 *)manager82BB0;
                    refresh82BB0->w68 = 0U;
                    refresh82BB0->w6A = (u16) refresh82BB0->w4;
                    var_sl = (*(u16 *)((u8 *)(((u8 *)bank82BB0)) + 0x68));
                }
            }
            sub_08080A78();
            if ((*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x2C)) != 0) {
                sub_0801A664(2, 0x12);
                (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x2C)) = 0;
            }
        } else {
            confirm82BB0 = (u8 *)manager82BB0;
            (*(u16 *)((u8 *)(confirm82BB0) + 0x6A)) = 0x64U;
            (*(s32 *)((u8 *)(confirm82BB0) + 0x2C)) = 1;
            sub_0801A664(2, 0x12);
            keys82BB0.xA = 0x100;
            if ((*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x18)) == 9) {
                sub_08082960((*(u8 * *)((u8 *)(((u8 *)manager82BB0)) + 0x5B4)));
            } else if ((*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x1C)) == 0x16) {
                sub_080815F4((*(u8 * *)((u8 *)(((u8 *)manager82BB0)) + 0xF0)));
            } else {
                sub_080815F4(((u8 *)manager82BB0) + 0xF4);
            }
        }
        if (((*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x0)) == 4) && ((sp50 != (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x44))) || (var_r9 != (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x48))))) {
            temp_r0_14 = (*(u16 *)((u8 *)(((u8 *)bank82BB0)) + 0x6A)) - 1;
            switch (temp_r0_14) {                   /* switch 6 */
            case 0:                                 /* switch 6 */
                var_r6 = 0x4000001B;
                break;
            case 1:                                 /* switch 6 */
                var_r6 = 0x4000001C;
                break;
            case 2:                                 /* switch 6 */
                var_r6 = 0x4000001E;
                break;
            case 3:                                 /* switch 6 */
                var_r6 = 0x40000021;
                break;
            case 4:                                 /* switch 6 */
                var_r6 = 0x40000025;
                break;
            }
            var_r6 += (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x44));
            sub_0800B974(var_r6, 0x1DU);
            sp50 = (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x44));
            var_r9 = (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x48));
        }
        temp_r1_5 = (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x28));
        temp_r5 = 1 & temp_r1_5;
        if ((temp_r5 == 0) && ((*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x18)) != 0x13)) {
            if (temp_r1_5 & 4) {
                var_r8 = var_r8 >> 1;
                fade_sprite82BB0 = (u8 *)manager82BB0 + 0x5EC;
                fade_x82BB0 = var_r8 + 0xD0;
                fade_y82BB0 = gUnk_080B9704[*(s32 *)((u8 *)manager82BB0 + 0x5C)];
                
                fade_y82BB0 = (fade_y82BB0 >> 5) + *(s32 *)((u8 *)manager82BB0 + 0x54) + 0x60;
                sub_08065230(fade_sprite82BB0, fade_x82BB0, fade_y82BB0, 2U, temp_r5);
                temp_r0_15 = (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x18));
                if (((temp_r0_15 == 0) || (temp_r0_15 == 0x11)) && (temp_r0_15 != 0x12)) {
                    resource_word82BB0 = sub_08007290(0x140185);
                    temp_r4_3 = (u8 *)(resource_word82BB0 + 2);
                    
                    sub_0801A3D0(temp_r4_3, (u16) (0xF - ((u32) sub_0801A638(temp_r4_3) >> 1)), 0x12);
                }
            } else {
                var_r8 = 0x40;
            }
        }
        sub_080003F0();
    }
    sub_0806617C();
    sub_080586B4(0);
    sub_0801ABE8(6);
    while (sub_0801AAE0() == 0) {
        sub_080003F0();
    }

    sub_08000E48();
    sub_0800115C(sp48);
    sub_08001108_word82BB0(sp4C);
    sub_080653D4(0);
    sub_08000C08(0x10, 8);
    sub_0801A664(2, 0x12);
    switch (sp54) {                                 /* switch 7; irregular */
    case 0:                                         /* switch 7 */
        if (sub_0800CE30() != 0) {
            var_r0_6 = ((u8 *)bank82BB0) + 0xB50;
        } else {
            var_r0_6 = ((u8 *)bank82BB0) + 0x910;
        }
        var_r6 = 9;
        do {
            temp_r0_16 = ((u8 *)manager82BB0) + (var_r6 * 0x10);
            temp_r0_17 = temp_r0_16 + 0x104;
            ((struct Record82BB0 *)var_r0_6)[var_r6] = *(struct Record82BB0 *)temp_r0_17;
            var_r6 += 1;
        } while (var_r6 <= 0xBU);
        break;
    case 4:                                         /* switch 7 */
        if (sub_0800CE30() != 0) {
            var_r0_7 = ((u8 *)bank82BB0) + 0x9D0;
        } else {
            var_r0_7 = ((u8 *)bank82BB0) + 0x790;
        }
        var_r6 = 9;
        do {
            temp_r0_18 = ((u8 *)manager82BB0) + (var_r6 * 0x10);
            temp_r0_19 = temp_r0_18 + 0x104;
            ((struct Record82BB0 *)var_r0_7)[var_r6] = *(struct Record82BB0 *)temp_r0_19;
            var_r6 += 1;
        } while (var_r6 <= 0xBU);
        break;
    case 5:                                         /* switch 7 */
        if (sub_0800CE30() != 0) {
            var_r0_8 = ((u8 *)bank82BB0) + 0xA90;
        } else {
            var_r0_8 = ((u8 *)bank82BB0) + 0x850;
        }
        var_r6 = 9;
        do {
            temp_r0_20 = ((u8 *)manager82BB0) + (var_r6 * 0x10);
            temp_r0_21 = temp_r0_20 + 0x104;
            ((struct Record82BB0 *)var_r0_8)[var_r6] = *(struct Record82BB0 *)temp_r0_21;
            var_r6 += 1;
        } while (var_r6 <= 0xBU);
        break;
    case 6:
        for (var_r6 = 0; var_r6 < (u32)(*(u16 *)((u8 *)bank82BB0 + 0x6A) * 0xF); var_r6++) {
            temp_r1_6 = (u8 *)bank82BB0;
            var_r8 = 0x2E0;
            temp_r2_2 = var_r6 * 0x10;
            temp_r1_7 = temp_r1_6 + temp_r2_2;
            asm("" : "+r"(temp_r1_7) : "r"(var_r8));
            temp_r0_24 = (u8 *)manager82BB0 + temp_r2_2;
            asm("" : "+r"(temp_r0_24) : "r"(temp_r1_7));
            *(struct Record82BB0 *)(temp_r1_7 + var_r8) = *(struct Record82BB0 *)(temp_r0_24 + 0x104);
        }
        break;
    case 8:                                         /* switch 7 */
        var_r6 = 0;
        do {
            if ((((struct ManagerRecords82BB0 *)manager82BB0)->records[var_r6].w0 != 0) && (sub_0805AB20(&((struct ManagerRecords82BB0 *)manager82BB0)->records[var_r6]) == 0)) {
                temp_r4_4 = players82BB0[sub_080020F4()].w8C;
                sub_08066490(temp_r4_4, players82BB0[sub_080020F4()].w90, &((struct ManagerRecords82BB0 *)manager82BB0)->records[var_r6]);
            }
            var_r6 += 1;
        } while (var_r6 <= 2U);
        if ((*(u16 *)((u8 *)(((u8 *)manager82BB0)) + 0x134)) != 0) {
            sub_0805AB20(((u8 *)manager82BB0) + 0x134);
        }
        break;
    }
    sub_08085398();
    sub_08000420(0x11201100);
}
/* [RunItemMenuMessageDialogue] Full-word r0 indexes sprite/message tables0x084ECBDC/0x084ECC04 without bounds
 * check. Initializes local descriptor, picks palette source variant for indices3/4/9, sets manager word+0x28
 * bit1. Expands message byte0xFC from save-state name stream at0x030034E0 into local32-byte buffer with u16
 * indices; no capacity checks. Slides descriptor to(240,136), reveals text progressively centered on row18,
 * then waits for input halfword0x03001324 bit0 while blinking0xA0 marker. On acknowledgement plays song15 and
 * slides away, yielding throughout. Suspend-request or link-error exits skip animation; all exits clear
 * manager bit1. Does not claim debounce, exact input-newness or explicit text erase. */
void sub_0808381C(u32 index)
{
    /* Empty constraints preserve the original register lifetimes and truncations. */
    u32 descriptorWords[13];
    u8 text[32];
    u8 liveText[32];
    volatile u32 visible;
    u8 *source;
    u8 *manager;
    u16 sourceOffset;
    u16 textLength;
    register u32 dictionaryOffset asm("ip");

    u32 countdown;
    s16 amount;
    u16 x;
    extern u16 keys8381C asm("gUnk_03001324");

    sub_08065158(((u8 *)descriptorWords), gUnk_084ECBDC[index], 0, -1, 0);
    if (index == 9 || index == 3 || index == 4) {
        sub_08000AF0(0x1E, (const void *)*(u32 *)(((u8 *)descriptorWords) + 0x0C), 1);
        ((u8 *)descriptorWords)[0x1C] = 0x0E;
    } else {
        sub_08000AF0(0x1E, (u8 *)*(u32 *)(((u8 *)descriptorWords) + 0x0C) + 0x1C0, 1);
    }

    source = (u8 *)sub_08007290(gUnk_084ECC04[index] | 0x140000);
    manager = (u8 *)gUnk_03006440;
    *(u32 *)(manager + 0x28) |= 2;

    countdown = 0x40;
    textLength = 0;
    dictionaryOffset = 0;
    sourceOffset = 0;
    if (source[2] != 0xFD) {
        do {
            if (*(u8 *)((u32)source + ({ s32 offset = sourceOffset + 2;  offset; })) == 0xFC) {
                u8 *destination;
                u8 *dictionary;
                u32 previous;
                destination = text + textLength++;
                dictionary = (u8 *)gUnk_030034E0;
                
                previous = dictionaryOffset;
                dictionaryOffset = (u16)(previous + 1);
                *destination = dictionary[previous];
                if (dictionary[dictionaryOffset] == 0xFD)
                    sourceOffset++;
            } else {
                text[textLength++] = *({ u8 *pointer = source + ({ s32 offset = sourceOffset++ + 2;  offset; });  pointer; });
            }
        } while (*(u8 *)((u32)source + ({ s32 offset = sourceOffset + 2;  offset; })) != 0xFD);
    }
    text[textLength] = 0xFD;

    if ((s16)countdown > 0) do {
        if (sub_0800CDF8() != 0 || sub_080021A8() != 0)
            goto done;
        if (countdown == 1)
            countdown = 0;
        {
            s32 scaled = countdown << 16;
            s32 initial = scaled >> 16;
            
            amount = initial - (scaled >> 17);
        }
        countdown = (u16)amount;
        sub_08065230(((u8 *)descriptorWords), amount + 0xF0, 0x88, 0, 0);
        sub_080003F0();
    } while (amount > 0);

    {
        register u32 i asm("r5");
        register u32 lastIndex asm("ip");
        u32 blink;
        for (i = 0; i <= (u32)sub_0801A638(text);) {
            if (sub_0800CDF8() != 0 || sub_080021A8() != 0)
                goto done;
            liveText[i] = text[i];
            {
                register u32 next asm("r1") = i + 1;
                liveText[next] = 0xFD;
                
                i = (u16)next;
            }
            sub_08065230(((u8 *)descriptorWords), 0xF0, 0x88, 0, 0);
            x = 0x0F - ((u32)sub_0801A638(text) >> 1);
            sub_0801A3D0(liveText, x, 0x12);
            sub_080003F0();
        }

        {
            register u32 previous asm("r0") = i - 1;
            
            lastIndex = (u16)previous;
        }
        blink = 0;
        if ((keys8381C & 1) == 0) {

            u8 *cursor;
            u8 *cursorEnd;
            {
                u8 *base = liveText;
                u32 previous;
                
                previous = lastIndex;
                cursor = base + previous;
                cursorEnd = base + (previous + 1);
            }

            for (;;) {
                if (sub_0800CDF8() != 0 || sub_080021A8() != 0)
                    goto done;
                {
                register u32 previousBlink asm("r1") = blink;
                u32 nextBlink = previousBlink + 1;
                
                blink = (u16)nextBlink;
                if (previousBlink <= 0x1D)
                    visible = ({ register u32 value asm("r1") = 1;  value; });
                else if (blink > 0x1D)
                    visible = ({ register u32 value asm("r0") = 0;  value; });
                }
                if (blink > 0x28)
                    blink = 0;
                if (({ register u32 value asm("r1") = visible; asm("" : "+r"(value) : "r"(cursor), "r"(cursorEnd) : "r4", "r8", "r10"); value; })) {
                    *cursor = 0xA0;
                    *cursorEnd = 0xFD;
                } else {
                    *cursor = 0xFD;
                }
                {
                register u8 *liveBase asm("r4") = liveText;
                
                sub_08065230(((u8 *)descriptorWords), 0xF0, 0x88, 0, 0);
                x = 0x0F - ((u32)sub_0801A638(text) >> 1);
                sub_0801A3D0(liveBase, x, 0x12);
                sub_080003F0();
                }
                if (keys8381C & 1)
                    break;
            }
        }

    }

    countdown = 0;
    sub_0805865C(0x0F);
    for (;;) {
        if (sub_0800CDF8() != 0 || sub_080021A8() != 0)
            goto done;
        if (countdown == 0x9F)
            countdown = 0xA0;
        {
            s32 initial = countdown << 16;
            initial >>= 16;
            
            amount = initial - ((initial - 0xA0) >> 1);
        }
        countdown = (u16)amount;
        sub_08065230(((u8 *)descriptorWords), amount + 0xF0, 0x88, 0, 0);
        sub_080003F0();
        if (amount > 0x9F)
            break;
    }
    sub_080003F0();
    sub_080003F0();

done:
    manager = (u8 *)gUnk_03006440;
    *(u32 *)(manager + 0x28) &= ~2u;
}
/* [RunItemMenuMessageWithVariantPanels] Full-word r0 message-table index. Chooses visual mode from
 * flag-query0x08057AE8(21) only when current area0, otherwise mode2. Mode0 initializes three descriptor
 * resources0x500CC/CB/CA, mode1 middleCB, mode2 rightCA; uses palette variants and eased panel slide-in/out,
 * setting manager+0x28 bit1 while active. Looks up message via0x084ECC04[index]|0x140000, skips2-byte header,
 * progressively copies into32-byte local text with u16 indices, draws centered row18, then waits
 * input0x03001324 bit0 with blinking0xA0 marker. A acknowledgement plays sound15; suspend request/link error
 * skips to cleanup, and all paths clear manager bit1. No binary choice result or item mutation here. */
void sub_08083AE8(u32 input)

{
    u32 param_1 = input;
    /* Preserve the original 208-byte frame, including its outgoing argument. */
    extern u32 gUnk_084ECC04[];
    extern u16 sub_08057AE8(s32);
    extern u16 keys83AE8 asm("gUnk_03001324");
  u8 frameStorage83AE8[204];
  register u8 *stack asm("sp");
  /* Empty constraints retain the original register and stack lifetimes. */
  s32 uVar1;
  u16 uVar2;
  u8 *puVar3;
  int iVar4;
  u32 uVar5;
  u32 uVar6;
  u32 uVar7;
  short sVar8;
  u32 uVar9;
  short sVar10;
  u16 uVar11;
  u32 uVar12;
  u32 unaff_r9;
  register u32 unaff_r10 asm("r10");
  u32 in_lr;

  
  if (gUnk_03003170.curLevel == 0) uVar1 = sub_08057AE8(0x15);
  else uVar1 = 2;
  switch ((s32)uVar1) {
  case 1:
    {
      u8 *panel = stack + 0x38;
      
      sub_08065158(panel, 0x500CB, 0, -1, 0);
      sub_08000AF0(0x15, *(u32 *)(panel + 0xC) + 0x1C0, 1);
      unaff_r9 = ({ register u32 value asm("r1") = 0x77; asm("" : "+r"(value)); value; });
      goto setCountdown;
    }
  case 2:
    {
      u8 *panel = stack + 0x6C;
      
      sub_08065158(panel, 0x500CA, 0, -1, 0);
      {
      u32 palette = *(u32 *)(panel + 0xC);
      
      sub_08000AF0(0x15, palette + ({ u32 offset = 0x1C0;  offset; }), 1);
      }
      unaff_r10 = ({ register u32 value asm("r1") = 0x77; asm("" : "+r"(value)); value; });
    }
setCountdown:
    *(u32 *)(stack + 0xC4) = ({ register u32 value asm("r2") = 0x77;  value; });
    break;
  case 0:
    {
      u8 *middle;
      u8 *right;
      sub_08065158(frameStorage83AE8, 0x500CC, 0, -1, 0);
      middle = stack + 0x38;
      
      sub_08065158(middle, 0x500CB, 0, -1, 0);
      right = stack + 0x6C;
      
      sub_08065158(right, 0x500CA, 0, -1, 0);
      sub_08000AF0(0x14, *(u32 *)(stack + 0x10) + 0x1C0, 1);
      sub_08000AF0(0x15, *(u32 *)(middle + 0xC) + 0x1C0, 1);
      sub_08000AF0(0x1E, *(u32 *)(right + 0xC) + 0x1C0, 1);
      *(u32 *)(stack + 0xC4) = ({ u32 value = 0x77;  value; });
      unaff_r9 = ({ register u32 value asm("r1") = 0xAE; asm("" : "+r"(value)); value; });
      unaff_r10 = ({ register u32 value asm("r2") = 0x40; asm("" : "+r"(value)); value; });
    }
    break;
  }
  (*(u8 *)((stack + 4) + 0x2A)) = 4;
  (*(u8 *)((stack + 4) + 0x5E)) = 5;
  (*(u32 *)((stack + 4) + 0xBC)) = sub_08007290(({ register u32 *table asm("r1") = gUnk_084ECC04; register u32 index asm("r2"); register u32 *entry asm("r0");  index = param_1; asm("" : "+r"(index)); entry = (u32 *)((index << 2) + (u32)table);  *entry; }) | 0x140000);
  *(u32 *)(*(int *)((u32)&gUnk_03006440) + 0x28) = *(u32 *)(*(int *)((u32)&gUnk_03006440) + 0x28) | 2;
  if (({ register u32 raw asm("r1") = *(u32 *)(stack + 0xC4); register s32 scaled asm("r0");  scaled = raw << 16;  scaled; }) > 0) {
    u8 *middle = stack + 0x38;
    u32 paletteOffset = 0x1C0;
    s32 shiftedCount;
    
    do {
      s32 zero;
      if (sub_0800CDF8() != 0) goto LAB_080841de;
      zero = sub_080021A8();
      
      if (zero != 0) goto LAB_080841de;
      if (({ register u32 raw asm("r1") = *(u32 *)(stack + 0xC4); register s32 scaled asm("r0");  scaled = raw << 16;  scaled >> 16; }) == 1) *(u32 *)(stack + 0xC4) = ({ register u32 value asm("r0") = 0;  value; });
      {
        register u32 raw asm("r1") = *(u32 *)(stack + 0xC4);
        s32 scaled;
        register s32 signedValue asm("r1");
        
        scaled = raw << 16;
        signedValue = scaled >> 16;
        
        signedValue = (u16)(signedValue - (scaled >> 17));
        
        *(u32 *)(stack + 0xC4) = signedValue;
      }
      if (({ register u32 raw asm("r1") = unaff_r9; register s32 scaled asm("r0");  scaled = raw << 16;  scaled >> 16; }) == 1) unaff_r9 = ({ register u32 value asm("r0") = 0;  value; });
      {
        u32 raw = unaff_r9;
        s32 scaled;
        register s32 signedValue asm("r1");
        
        scaled = raw << 16;
        signedValue = scaled >> 16;
        
        signedValue = (u16)(signedValue - (scaled >> 17));
        
        unaff_r9 = signedValue;
      }
      if (({ register u32 raw asm("r1") = unaff_r10; register s32 scaled asm("r0");  scaled = raw << 16;  scaled >> 16; }) == 1) unaff_r10 = ({ register u32 value asm("r0") = 0;  value; });
      {
        register u32 raw asm("r1") = unaff_r10;
        s32 scaled;
        register s32 signedValue asm("r1");
        
        scaled = raw << 16;
        signedValue = scaled >> 16;
        
        signedValue = (u16)(signedValue - (scaled >> 17));
        
        unaff_r10 = signedValue;
      }
      {
        register u8 *panel asm("r0");
        register s32 x asm("r1");
        if (uVar1 == 1) goto phase1Middle;
        if (uVar1 > 1) goto phase1Greater;
        if (uVar1 == 0) goto phase1All;
        shiftedCount = ({ register u32 value asm("r2") = *(u32 *)(stack + 0xC4);  value; }) << 16;
        goto phase1Yield;
phase1Greater:
        if (uVar1 == 2) goto phase1Right;
        goto phase1SingleEnd;
phase1Middle:
        x = ({ register u32 raw asm("r0") = unaff_r9; register s32 x asm("r1");  x = raw << 16;  x >>= 16; x + 0xB9; });
        *(u32 *)stack = zero;
        
        panel = middle;
        goto phase1Single;
phase1Right:
        x = ({ register u32 raw asm("r0") = unaff_r10; register s32 x asm("r1");  x = raw << 16;  x >>= 16; x + 0xB9; });
        *(u32 *)stack = zero;
        
        panel = stack + 0x6C;
phase1Single:
        sub_08065230(panel, x, 0x88, 0, *(u32 *)stack);
        {
          u32 palette = *(u32 *)(middle + 0xC);
          register u32 paletteOffset asm("r2");
          
          paletteOffset = 0x1C0;
          asm("" : "+r"(paletteOffset));
          sub_08000AF0(0x15, palette + paletteOffset, 1);
        }
phase1SingleEnd:
        shiftedCount = ({ u32 value = *(u32 *)(stack + 0xC4);  value; }) << 16;
        goto phase1Yield;
phase1All:
        {
          u8 *right;
          sub_08000AF0(0x14, *(u32 *)(stack + 0x10) + paletteOffset, 1);
          sub_08000AF0(0x15, *(u32 *)(middle + 0xC) + paletteOffset, 1);
          right = stack + 0x6C;
          
          sub_08000AF0(0x1E, *(u32 *)(right + 0xC) + paletteOffset, 1);
          sub_08065230(right, ({ register u32 raw asm("r2") = unaff_r10; s32 x; asm("" : "+r"(raw)); x = raw << 16;  x >>= 16; x + 0xF0; }), 0x88, 0, 0);
          sub_08065230(middle, ({ register u32 raw asm("r0") = unaff_r9; s32 x;  x = raw << 16;  x >>= 16; x + 0x82; }), 0x88, 0, 0);
          shiftedCount = ({ register u32 value asm("r1") = *(u32 *)(stack + 0xC4);  value; }) << 16;
          sub_08065230(frameStorage83AE8, (shiftedCount >> 16) + 0xB9, 0x88, 0, 0);
        }
      }
phase1Yield:
      sub_080003F0();
    } while (shiftedCount > 0);
  }
  {
    u32 revealIndex;
    u32 lastIndex;
    u32 blink;
    revealIndex = ({ register u32 value asm("r2") = 0; asm("" : "+r"(value)); value; });
    *(u32 *)(stack + 0xCC) = *(u32 *)(stack + 0xC0) + 2;
    while (revealIndex <= (u32)sub_0801A638(*(u8 **)(stack + 0xCC))) {
      s32 zero;
      if (sub_0800CDF8() != 0) goto LAB_080841de;
      zero = sub_080021A8();
      
      if (zero != 0) goto LAB_080841de;
      switch (uVar1) {
      case 1:
        {
          u8 *middle = stack + 0x38;
          
          sub_08065230(middle, 0xB9, 0x88, 0, zero);
          { u32 palette = *(u32 *)(middle + 0xC); register u32 offset asm("r2");  offset = 0x1C0; asm("" : "+r"(offset)); palette += offset; sub_08000AF0(0x15, palette, 1); }
        }
        break;
      case 2:
        sub_08065230(stack + 0x6C, 0xB9, 0x88, 0, zero);
        { u32 palette = *(u32 *)(stack + 0x44); u32 offset;  offset = 0x1C0;  palette += offset; sub_08000AF0(0x15, palette, 1); }
        break;
      case 0:
        {
          u8 *middle;
          u8 *right;
          register u32 paletteOffset asm("r4");
          u32 palette = *(u32 *)(stack + 0x10);
          
          paletteOffset = 0x1C0;
          
          sub_08000AF0(0x14, palette + paletteOffset, 1);
          middle = stack + 0x38;
          
          sub_08000AF0(0x15, *(u32 *)(middle + 0xC) + paletteOffset, 1);
          right = stack + 0x6C;
          
          sub_08000AF0(0x1E, *(u32 *)(right + 0xC) + paletteOffset, 1);
          sub_08065230(right, 0xF0, 0x88, 0, 0);
          sub_08065230(middle, 0x82, 0x88, 0, 0);
          sub_08065230(frameStorage83AE8, 0xB9, 0x88, 0, 0);
        }
        break;
      }
      {
        u8 *buffer = stack + 0xA0;
        register u32 old asm("r2");
        u8 *destination;
        u32 offset;
        register u8 *source asm("r2");
        register u8 *address asm("r0");
        u32 next;
        
        old = revealIndex;
        asm("" : "+r"(old));
        destination = buffer + old;
        
        offset = revealIndex + 2;
        
        source = *(u8 **)(stack + 0xC0);
        
        address = source + offset;
        
        *destination = *address;
        next = revealIndex + 1;
        buffer[next] = 0xFD;
        
        revealIndex = (u16)next;
        sub_0801A3D0(buffer, (u16)(0xF - ((u32)sub_0801A638(*(u8 **)(stack + 0xCC)) >> 1)), 0x12);
        sub_080003F0();
      }
    }
    {
      u32 previous = revealIndex - 1;
      
      lastIndex = (u16)previous;
    }
    blink = ({ register u32 value asm("r0") = 0; asm("" : "+r"(value)); value; });
    if ((keys83AE8 & 1) == 0) {
      u8 *buffer;
      u8 *middle;
      {
        register u8 *base asm("r1") = stack + 0xA0;
        
        buffer = base;
      }
      middle = stack + 0x38;
      
      do {
        if (sub_0800CDF8() != 0) goto LAB_080841de;
        if (({ s32 status = sub_080021A8();  status; }) != 0) goto LAB_080841de;
        {
          register u32 previous asm("r1") = blink;
          u32 next = previous + 1;
          
          blink = (u16)next;
          if (previous <= 0x1D) *(u32 *)(stack + 0xC8) = ({ register u32 value asm("r2") = 1;  value; });
          else if (({ u32 value = blink;  value; }) > 0x1D) *(u32 *)(stack + 0xC8) = ({ register u32 value asm("r1") = 0;  value; });
        }
        if (({ register u32 value asm("r2") = blink; asm("" : "+r"(value)); value; }) > 0x28) blink = ({ register u32 value asm("r0") = 0; asm("" : "+r"(value)); value; });
        if (({ register u32 value asm("r1") = *(u32 *)(stack + 0xC8);  value; })) {
          buffer[lastIndex] = 0xA0;
          {
            u32 next = lastIndex + 1;
            register u8 *end asm("r0");
            u32 terminator;
            
            end = buffer + next;
            
            terminator = 0xFD;
            
            *end = terminator;
          }
        } else buffer[lastIndex] = 0xFD;
        {
          register u8 *drawBuffer asm("r6") = frameStorage83AE8 + 0x9C;
          
          switch (uVar1) {
          case 1:
            sub_08065230(middle, 0xB9, 0x88, 0, 0);
            { u32 palette = *(u32 *)(middle + 0xC); register u32 offset asm("r2");  offset = 0x1C0; asm("" : "+r"(offset)); palette += offset; sub_08000AF0(0x15, palette, 1); }
            break;
          case 2:
            sub_08065230(frameStorage83AE8 + 0x68, 0xB9, 0x88, 0, 0);
            { u32 palette = *(u32 *)(middle + 0xC); u32 offset;  offset = 0x1C0;  palette += offset; sub_08000AF0(0x15, palette, 1); }
            break;
          case 0:
            {
              u8 *right;
              { u32 palette = *(u32 *)(stack + 0x10); register u32 offset asm("r2");  offset = 0x1C0; asm("" : "+r"(offset)); palette += offset; sub_08000AF0(0x14, palette, 1); }
              { u32 palette = *(u32 *)(middle + 0xC); u32 offset;  offset = 0x1C0; asm("" : "+r"(offset)); palette += offset; sub_08000AF0(0x15, palette, 1); }
              right = stack + 0x6C;
              
              { u32 palette = *(u32 *)(right + 0xC); register u32 offset asm("r2");  offset = 0x1C0; asm("" : "+r"(offset)); palette += offset; sub_08000AF0(0x1E, palette, 1); }
              sub_08065230(right, 0xF0, 0x88, 0, 0);
              sub_08065230(middle, 0x82, 0x88, 0, 0);
              sub_08065230(frameStorage83AE8, 0xB9, 0x88, 0, 0);
            }
            break;
          }
          sub_0801A3D0(drawBuffer, (u16)(0xF - ((u32)sub_0801A638(*(u8 **)(stack + 0xCC)) >> 1)), 0x12);
          sub_080003F0();
        }
      } while ((keys83AE8 & 1) == 0);
    }
  }
  {
    register u32 zero asm("r0") = 0;
    
    *(u32 *)(stack + 0xC4) = zero;
    unaff_r9 = zero;
    unaff_r10 = zero;
  }
  sub_0805865C(0xF);
  switch (uVar1) {
  case 1:
    {
      u8 *panel = stack + 0x38;
      s32 amount;
      
      do {
        s32 zero;
        if (sub_0800CDF8() != 0) goto LAB_080841de;
        zero = sub_080021A8();
        
        if (zero != 0) goto LAB_080841de;
        {
          u32 raw = unaff_r9;
          register s32 value asm("r0");
          s32 delta;
          
          value = raw << 16;
          value >>= 16;
          
          delta = value - 0x77;
          delta >>= 1;
          
          value = (u16)(value - delta);
          
          unaff_r9 = value;
        }

        {
          u32 palette = *(u32 *)(panel + 0xC);
          register u32 paletteOffset asm("r2");
          
          paletteOffset = 0x1C0;
          asm("" : "+r"(paletteOffset));
          sub_08000AF0(0x15, palette + paletteOffset, 1);
        }
        {
          register u32 raw asm("r0") = unaff_r9;
          
          amount = raw << 16;
          
          amount >>= 16;
        }
        sub_08065230(panel, amount + 0xB9, 0x88, 0, zero);
        sub_080003F0();
      } while (amount != 0x77);
    }
    break;
  case 2:
    {
      u8 *panel = stack + 0x6C;
      s32 amount;
      
      do {
        s32 zero;
        if (sub_0800CDF8() != 0) goto LAB_080841de;
        zero = sub_080021A8();
        
        if (zero != 0) goto LAB_080841de;
        {
          register u32 raw asm("r1") = unaff_r10;
          register s32 value asm("r0");
          s32 delta;
          
          value = raw << 16;
          value >>= 16;
          
          delta = value - 0x77;
          delta >>= 1;
          
          value = (u16)(value - delta);
          
          unaff_r10 = value;
        }

        {
          u32 palette = *(u32 *)(panel + 0xC);
          register u32 paletteOffset asm("r2");
          
          paletteOffset = 0x1C0;
          asm("" : "+r"(paletteOffset));
          sub_08000AF0(0x15, palette + paletteOffset, 1);
        }
        {
          register u32 raw asm("r0") = unaff_r10;
          
          amount = raw << 16;
          
          amount >>= 16;
        }
        sub_08065230(panel, amount + 0xB9, 0x88, 0, zero);
        sub_080003F0();
      } while (amount != 0x77);
    }
    break;
  case 0:
    for (;;) {
      register s32 zero asm("r8");
      s32 shiftedCount;
      s32 firstCount;
      s32 secondCount;
      s32 thirdCount;
      u8 *middle;
      u8 *right;
      if (sub_0800CDF8() != 0) goto LAB_080841de;
      {
        s32 status = sub_080021A8();
        zero = status;
        
        if (status != 0) goto LAB_080841de;
      }
      {
        register u32 raw asm("r1") = *(u32 *)(stack + 0xC4);
        s32 delta;
        
        shiftedCount = raw << 16;
        shiftedCount >>= 16;
        
        delta = shiftedCount - 0x77;
        delta >>= 1;
        
        shiftedCount -= delta;
        
        shiftedCount <<= 16;
        
      }
        {
          u32 raw = unaff_r9;
          register s32 value asm("r0");
          s32 delta;
          
          value = raw << 16;
          value >>= 16;
          
          delta = value - 0xAE;
          delta >>= 1;
          
          value = (u16)(value - delta);
          
          unaff_r9 = value;
        }
        {
          register u32 raw asm("r1") = unaff_r10;
          register s32 value asm("r0");
          s32 delta;
          asm("" : "+r"(raw));
          value = raw << 16;
          value >>= 16;
          
          delta = value - 0x40;
          delta >>= 1;
          
          value = (u16)(value - delta);
          
          unaff_r10 = value;
        }
      *(u32 *)(stack + 0xC4) = (u32)shiftedCount >> 16;
      shiftedCount >>= 16;
      {
        register s32 delta asm("r0") = shiftedCount - 0x77;
        if (delta < 0) delta = -delta;
        if (delta == 1) *(u32 *)(stack + 0xC4) = ({ register u32 value asm("r1") = 0x77;  value; });
      }
      {
        register u32 raw asm("r2") = unaff_r9;
        register s32 delta asm("r0");
        asm("" : "+r"(raw));
        delta = raw << 16;
        delta >>= 16;
        
        delta -= 0xAE;
        if (delta < 0) delta = -delta;
        if (delta == 1) unaff_r9 = ({ u32 value = 0xAE;  value; });
      }
      {
        register u32 raw asm("r1") = unaff_r10;
        register s32 delta asm("r0");
        
        delta = raw << 16;
        delta >>= 16;
        
        delta -= 0x40;
        if (delta < 0) delta = -delta;
        if (delta == 1) unaff_r10 = ({ register u32 value asm("r2") = 0x40; asm("" : "+r"(value)); value; });
      }
      {
        register u32 paletteOffset asm("r4");
        u32 palette = *(u32 *)(stack + 0x10);
        
        paletteOffset = 0x1C0;
        
        sub_08000AF0(0x14, palette + paletteOffset, 1);
        middle = stack + 0x38;
        
        sub_08000AF0(0x15, *(u32 *)(middle + 0xC) + paletteOffset, 1);
        right = stack + 0x6C;
        
        sub_08000AF0(0x1E, *(u32 *)(right + 0xC) + paletteOffset, 1);
      }
      {
        register u32 raw asm("r1") = unaff_r10;
        register s32 scaled asm("r0");
        
        scaled = raw << 16;
        
        thirdCount = scaled >> 16;
      }
      {
        s32 x = thirdCount + 0xF0;
        register u32 stackZero asm("r2");
        
        stackZero = zero;
        asm("" : "+r"(stackZero));
        sub_08065230(right, x, 0x88, 0, stackZero);
      }
      {
        register u32 raw asm("r1") = unaff_r9;
        register s32 scaled asm("r0");
        
        scaled = raw << 16;
        
        secondCount = scaled >> 16;
      }
      {
        s32 x = secondCount + 0x82;
        register u32 stackZero asm("r2");
        
        stackZero = zero;
        asm("" : "+r"(stackZero));
        sub_08065230(middle, x, 0x88, 0, stackZero);
      }
      {
        register u32 raw asm("r0") = *(u32 *)(stack + 0xC4);
        
        firstCount = raw << 16;
        firstCount >>= 16;
        
      }
      {
        s32 x = firstCount + 0xB9;
        register u32 stackZero asm("r2");
        
        stackZero = zero;
        asm("" : "+r"(stackZero));
        sub_08065230(frameStorage83AE8, x, 0x88, 0, stackZero);
      }
      sub_080003F0();
      if (firstCount == 0x77 && secondCount == 0xAE && thirdCount == 0x40) break;
    }
    break;
  }
  sub_080003F0();
  sub_080003F0();
LAB_080841de:
  *(u32 *)(*(int *)((u32)&gUnk_03006440) + 0x28) = *(u32 *)(*(int *)((u32)&gUnk_03006440) + 0x28) & 0xfffffffd;
  return;
}
/* [ClassifyThreeItemSubtypePattern] r0 points to three16-byte item records. Requires unsigned kind halfwords
 * at+0/+16/+32 all9 or returns0. Reads subtype halfwords+2/+18/+34 and returns a pure ordered-pattern
 * code:000=>1,222=>2,111=>3,
 * all-distinct0..2=>4;020/101/010/121/212/202=>5..10;002/110/001/112/221/220/200/011/100/211/122/022=>11..22;333=>23,444=>24.
 * Everything else returns0, including mixed3/4. No side effects, RNG or validation of pointed storage. Does
 * not guess material names for kind9 or subtype values. Complete original configured body audited against ROM;
 * copied verified-main ELF static equality, no local build or runtime test. */
u32 sub_08084200(const u8 *arg0)
{
    u16 b;
    u16 c;

    if (*(const u16 *)(arg0 + 0x00) != 9 ||
        *(const u16 *)(arg0 + 0x10) != 9 ||
        *(const u16 *)(arg0 + 0x20) != 9)
        return 0;


    if (*(const u16 *)(arg0 + 0x02) == 0 && *(const u16 *)(arg0 + 0x12) == 0 && *(const u16 *)(arg0 + 0x22) == 0) return 1;
    if (*(const u16 *)(arg0 + 0x02) == 2 && *(const u16 *)(arg0 + 0x12) == 2 && *(const u16 *)(arg0 + 0x22) == 2) return 2;
    if (*(const u16 *)(arg0 + 0x02) == 1 && *(const u16 *)(arg0 + 0x12) == 1 && *(const u16 *)(arg0 + 0x22) == 1) return 3;
    if ((u32)*(const u16 *)(arg0 + 0x02) <= 2 && (u32)(b = *(const u16 *)(arg0 + 0x12)) <= 2 && (u32)(c = *(const u16 *)(arg0 + 0x22)) <= 2 && *(const u16 *)(arg0 + 0x02) != b && *(const u16 *)(arg0 + 0x02) != c && b != c) return 4;
    if (*(const u16 *)(arg0 + 0x02) == 0 && *(const u16 *)(arg0 + 0x12) == 2 && *(const u16 *)(arg0 + 0x22) == 0) return 5;
    if (*(const u16 *)(arg0 + 0x02) == 1 && *(const u16 *)(arg0 + 0x12) == 0 && *(const u16 *)(arg0 + 0x22) == 1) return 6;
    if (*(const u16 *)(arg0 + 0x02) == 0 && *(const u16 *)(arg0 + 0x12) == 1 && *(const u16 *)(arg0 + 0x22) == 0) return 7;
    if (*(const u16 *)(arg0 + 0x02) == 1 && *(const u16 *)(arg0 + 0x12) == 2 && *(const u16 *)(arg0 + 0x22) == 1) return 8;
    {
        /* Keep the original halfword extensions across the shared tests. */
        u32 d;
        register u32 raw asm("r0");
        if (*(const u16 *)(arg0 + 0x02) == 2 &&
            ({
                raw = *(const u16 *)(arg0 + 0x12);
                asm("" : "+r"(raw));
                d = raw;
                
                d;
            }) == 1 && *(const u16 *)(arg0 + 0x22) == 2) return 9;
        if (*(const u16 *)(arg0 + 0x02) == 2 &&
            ({
                raw = d << 16;
                
                raw;
            }) == 0 && *(const u16 *)(arg0 + 0x22) == 2) return 10;
    }
    if (*(const u16 *)(arg0 + 0x02) == 0 && *(const u16 *)(arg0 + 0x12) == 0 && *(const u16 *)(arg0 + 0x22) == 2) return 11;
    if (*(const u16 *)(arg0 + 0x02) == 1 && *(const u16 *)(arg0 + 0x12) == 1 && *(const u16 *)(arg0 + 0x22) == 0) return 12;
    if (*(const u16 *)(arg0 + 0x02) == 0 && *(const u16 *)(arg0 + 0x12) == 0 && *(const u16 *)(arg0 + 0x22) == 1) return 13;
    if (*(const u16 *)(arg0 + 0x02) == 1 && *(const u16 *)(arg0 + 0x12) == 1 && *(const u16 *)(arg0 + 0x22) == 2) return 14;
    {
        /* Keep the original halfword extensions across the shared tests. */
        u32 d;
        register u32 raw asm("r0");
        if (*(const u16 *)(arg0 + 0x02) == 2 &&
            ({
                raw = *(const u16 *)(arg0 + 0x12);
                asm("" : "+r"(raw));
                d = raw;
                
                d;
            }) == 2 && *(const u16 *)(arg0 + 0x22) == 1) return 15;
        if (*(const u16 *)(arg0 + 0x02) == 2 &&
            ({
                raw = (u16)d;
                asm("" : "+r"(raw), "+r"(d));
                raw;
            }) == 2 && *(const u16 *)(arg0 + 0x22) == 0) return 16;
        if (*(const u16 *)(arg0 + 0x02) == 2 &&
            ({
                raw = d << 16;
                
                raw;
            }) == 0 && *(const u16 *)(arg0 + 0x22) == 0) return 17;
    }
    if (*(const u16 *)(arg0 + 0x02) == 0 && *(const u16 *)(arg0 + 0x12) == 1 && *(const u16 *)(arg0 + 0x22) == 1) return 18;
    if (*(const u16 *)(arg0 + 0x02) == 1 && *(const u16 *)(arg0 + 0x12) == 0 && *(const u16 *)(arg0 + 0x22) == 0) return 19;
    if (*(const u16 *)(arg0 + 0x02) == 2 && *(const u16 *)(arg0 + 0x12) == 1 && *(const u16 *)(arg0 + 0x22) == 1) return 20;
    if (*(const u16 *)(arg0 + 0x02) == 1 && *(const u16 *)(arg0 + 0x12) == 2 && *(const u16 *)(arg0 + 0x22) == 2) return 21;
    if (*(const u16 *)(arg0 + 0x02) == 0 && *(const u16 *)(arg0 + 0x12) == 2 && *(const u16 *)(arg0 + 0x22) == 2) return 22;
    if (*(const u16 *)(arg0 + 0x02) == 3 && *(const u16 *)(arg0 + 0x12) == 3 && *(const u16 *)(arg0 + 0x22) == 3) return 23;
    if (*(const u16 *)(arg0 + 0x02) == 4 && *(const u16 *)(arg0 + 0x12) == 4 && *(const u16 *)(arg0 + 0x22) == 4) return 24;
    return 0;
}
/* [SynthesizeRandomItemFromThreeInputs] r0 points to at least three16-byte item records PLUS metadata word
 * at+0x34; r1 points to16-byte output. Randomly permutes three inputs via rejection sampling. Classifies
 * original ordered triple through0x08084200; nonzero class and RNG low16<=saved-state word+0x6C can select
 * class/tier recipe tables, tier from summed unsigned values with boundaries100/300/500. Fallback uses first
 * randomized equipment record or random nonempty saved stock entries for kind9; empty stock can loop
 * indefinitely. Further randomized property/value inheritance uses other two records and compatibility flags,
 * with an inherited r9 path for unsupported kinds. */
void sub_0808441C(u16 *param_1, u32 *param_2)
{
    /* Combine three randomized records and update the shared success value. */
    extern const u32 table8441C_084EC1E0[] asm("gUnk_084EC1E0");
    extern const u32 table8441C_084EC288[] asm("gUnk_084EC288");
    extern const u32 table8441C_084EC330[] asm("gUnk_084EC330");
    extern const u32 table8441C_084EC3D8[] asm("gUnk_084EC3D8");
    extern const u32 table8441C_084EC480[] asm("gUnk_084EC480");
    extern const u32 table8441C_084EC4E0[] asm("gUnk_084EC4E0");
    extern const u32 table8441C_084EC540[] asm("gUnk_084EC540");
    extern const u32 table8441C_084EC5A0[] asm("gUnk_084EC5A0");
    extern const u32 table8441C_084EC600[] asm("gUnk_084EC600");
    extern const u32 table8441C_084EC660[] asm("gUnk_084EC660");
    extern const u32 table8441C_084EC6C0[] asm("gUnk_084EC6C0");
    extern const u32 table8441C_084EC6E4[] asm("gUnk_084EC6E4");
    extern const u32 table8441C_084EC708[] asm("gUnk_084EC708");
    extern const u32 table8441C_084EC72C[] asm("gUnk_084EC72C");
    extern const u32 table8441C_084EC750[] asm("gUnk_084EC750");
    extern const u32 table8441C_084EC774[] asm("gUnk_084EC774");
    extern const u32 table8441C_084EC798[] asm("gUnk_084EC798");
    extern const u32 table8441C_084EC7BC[] asm("gUnk_084EC7BC");
    extern const u32 table8441C_084EC7E0[] asm("gUnk_084EC7E0");
    extern const u32 table8441C_084EC804[] asm("gUnk_084EC804");
    extern const u32 table8441C_084EC828[] asm("gUnk_084EC828");
    extern const u32 table8441C_084EC84C[] asm("gUnk_084EC84C");
    extern const u32 table8441C_084EC870[] asm("gUnk_084EC870");
    extern const u32 table8441C_084EC8B0[] asm("gUnk_084EC8B0");
    extern const u32 table8441C_084EC8F0[] asm("gUnk_084EC8F0");
    extern const u32 table8441C_084EC920[] asm("gUnk_084EC920");
    extern const u32 table8441C_084EC950[] asm("gUnk_084EC950");
    extern const u32 table8441C_084EC9A0[] asm("gUnk_084EC9A0");
    extern const u32 table8441C_084EC9F0[] asm("gUnk_084EC9F0");
    extern const u32 table8441C_084ECA40[] asm("gUnk_084ECA40");
    extern const u32 table8441C_084ECA90[] asm("gUnk_084ECA90");
    extern const u32 table8441C_084ECAE0[] asm("gUnk_084ECAE0");
    extern const u32 table8441C_084ECB30[] asm("gUnk_084ECB30");
    extern const u32 table8441C_084ECB84[] asm("gUnk_084ECB84");
    extern u32 sub_0805AE94(const void *);
    extern void *copy8441C(void *, const void *, u32) asm("memcpy");
    extern u32 sub_08084200(const u8 *);
    struct Triple8441C { u32 a, b, c; };
    struct Record8441C { u16 type, subtype, value; u8 byte6, byte7; u32 word8, wordC; };
    /* Preserve the original frame, including partially initialized records. */
    u8 frameStorage8441C[128];
    register u8 *stack asm("sp");
    register struct Record8441C *result;
    struct Record8441C *second;
    register struct Record8441C *third asm("r8");
    u32 firstIndex;
    u32 secondIndex;
    register u32 thirdIndex asm("r6");
    register u32 tier asm("r6");
    u32 randomIndex;
    const u16 *entry;
    const u32 *tripleTable;
    s32 classification;
    u32 unaff_r9;
    
    *(u16 **)(stack + 0x5C) = param_1;
    *(u32 **)(stack + 0x60) = param_2;
    {
      register u32 zeroHalf asm("r4") = 0;
      struct Record8441C *initial = (struct Record8441C *)(stack + 0x30);
      u32 zeroByte = 0;
      
      initial->type = zeroHalf;
      initial->subtype = zeroHalf;
      initial->byte6 = zeroByte;
      initial->byte7 = zeroByte;
      initial->value = zeroHalf;
      firstIndex = 0;
      result = initial;
    }
    second = ({ struct Record8441C *p = (struct Record8441C *)(stack + 0x10);  p; });
    third = ({ register struct Record8441C *p asm("r1") = (struct Record8441C *)(stack + 0x20);  p; });
    {
      register u8 *temporary asm("r2") = stack;
      asm("" : "+r"(temporary));
      temporary += 0x40;
      *(u8 **)(stack + 0x78) = temporary;
    }
    {
      u8 *bytes = stack + 0x34;
      register u32 zero asm("r2") = 0;
      
      do { bytes[firstIndex] = zero; firstIndex++; } while (firstIndex <= 0xB);
    }
    firstIndex = (u32)sub_080008C8() % 3;
    {
      u32 offset = firstIndex << 4;
      register struct Record8441C *destination asm("r1");
      register struct Record8441C *input asm("r3");
      struct Record8441C *source;
      
      destination = (struct Record8441C *)stack;
      asm("" : "+r"(destination));
      input = *(struct Record8441C **)(stack + 0x5C);
      
      source = (struct Record8441C *)(offset + (u32)input);
      
      *destination = *source;
      input++;
      *(struct Record8441C **)(stack + 0x7C) = input;
    }
    {
      register u8 *next asm("r3") = *(u8 **)(stack + 0x5C);
      
      next += 0x20;
      *(u8 **)(stack + 0x74) = next;
    }
    do { secondIndex = (u32)sub_080008C8() % 3; } while (firstIndex == secondIndex);
    {
      u32 offset = secondIndex << 4;
      register struct Record8441C *destination asm("r1");
      register struct Record8441C *input asm("r6");
      struct Record8441C *source;
      
      destination = second;
      asm("" : "+r"(destination));
      input = *(struct Record8441C **)(stack + 0x5C);
      
      source = (struct Record8441C *)(offset + (u32)input);
      
      *destination = *source;

    }
    do { thirdIndex = (u32)sub_080008C8() % 3; } while (firstIndex == thirdIndex || secondIndex == thirdIndex);
    {
      u32 offset = thirdIndex << 4;
      register struct Record8441C *destination asm("r1");
      struct Record8441C *input;
      register struct Record8441C *source asm("r0");
      
      destination = third;
      asm("" : "+r"(destination));
      input = *(struct Record8441C **)(stack + 0x5C);
      
      source = (struct Record8441C *)(offset + (u32)input);
      asm("" : "+r"(source));
      *destination = *source;
      asm("" : : "r"(input));
    }
    classification = sub_08084200(*(u8 **)(stack + 0x5C));
    if (classification == 0) goto LAB_0808481c;
    if (((u32)sub_080008C8() & 0xFFFF) > *(u32 *)((u32)gUnk_030034E0 + 0x6C)) goto LAB_0808481c;
    {
      register struct Record8441C *input asm("r6") = *(struct Record8441C **)(stack + 0x5C);
      
      tier = (u32)input[0].value + (u32)input[1].value + (u32)input[2].value;
    }
    if (tier <= 99) goto lowTier8441C;
    if (tier - 100 <= 199) tier = 0;
    else {
      u32 range = tier - 300;
      tier = 2;
      if (range <= 199) tier = 1;
    }
    switch (classification) {
    case 1:
      randomIndex = (u32)sub_080008C8() % 14;
      { const u32 *table = table8441C_084EC1E0;
        u32 index = randomIndex << 2;
        u32 row = tier * 56;
        entry = (const u16 *)(index + row + (u32)table);
         }
      goto applyEntry8441C;
    case 2:
      randomIndex = (u32)sub_080008C8() % 14;
      { const u32 *table = table8441C_084EC288;
        u32 index = randomIndex << 2;
        u32 row = tier * 56;
        entry = (const u16 *)(index + row + (u32)table);
        asm("" : "+r"(entry) : "r"(row), "r"(randomIndex), "r"(table), "i"(2)); }
      goto applyEntry8441C;
    case 3:
      randomIndex = (u32)sub_080008C8() % 14;
      { const u32 *table = table8441C_084EC330;
        u32 index = randomIndex << 2;
        u32 row = tier * 56;
        entry = (const u16 *)(index + row + (u32)table);
        asm("" : "+r"(entry) : "r"(row), "r"(randomIndex), "r"(table), "i"(3)); }
      goto applyEntry8441C;
    case 4:
      randomIndex = (u32)sub_080008C8() % 14;
      { const u32 *table = table8441C_084EC3D8;
        u32 index = randomIndex << 2;
        u32 row = tier * 56;
        entry = (const u16 *)(index + row + (u32)table);
        asm("" : "+r"(entry) : "r"(row), "r"(randomIndex), "r"(table), "i"(4)); }
      goto applyEntry8441C;
    case 5:
      { register u32 index asm("r1") = (u32)sub_080008C8() & 7;
        const u32 *table = table8441C_084EC480;
        register u32 row asm("r0");
        index <<= 2;
        row = tier << 5;
        entry = (const u16 *)(index + row + (u32)table);
        asm("" : "+r"(entry) : "r"(row), "r"(table), "i"(5)); }
      goto applyEntry8441C;
    case 6:
      { register u32 index asm("r1") = (u32)sub_080008C8() & 7;
        const u32 *table = table8441C_084EC4E0;
        register u32 row asm("r0");
        index <<= 2;
        row = tier << 5;
        entry = (const u16 *)(index + row + (u32)table);
        asm("" : "+r"(entry) : "r"(row), "r"(table), "i"(6)); }
      goto applyEntry8441C;
    case 7:
      { register u32 index asm("r1") = (u32)sub_080008C8() & 7;
        const u32 *table = table8441C_084EC540;
        register u32 row asm("r0");
        index <<= 2;
        row = tier << 5;
        entry = (const u16 *)(index + row + (u32)table);
        asm("" : "+r"(entry) : "r"(row), "r"(table), "i"(7)); }
      goto applyEntry8441C;
    case 8:
      { register u32 index asm("r1") = (u32)sub_080008C8() & 7;
        const u32 *table = table8441C_084EC5A0;
        register u32 row asm("r0");
        index <<= 2;
        row = tier << 5;
        entry = (const u16 *)(index + row + (u32)table);
        asm("" : "+r"(entry) : "r"(row), "r"(table), "i"(8)); }
      goto applyEntry8441C;
    case 9:
      { register u32 index asm("r1") = (u32)sub_080008C8() & 7;
        const u32 *table = table8441C_084EC600;
        register u32 row asm("r0");
        index <<= 2;
        row = tier << 5;
        entry = (const u16 *)(index + row + (u32)table);
        asm("" : "+r"(entry) : "r"(row), "r"(table), "i"(9)); }
      goto applyEntry8441C;
    case 10:
      { register u32 index asm("r1") = (u32)sub_080008C8() & 7;
        const u32 *table = table8441C_084EC660;
        register u32 row asm("r0");
        index <<= 2;
        row = tier << 5;
        entry = (const u16 *)(index + row + (u32)table);
        asm("" : "+r"(entry) : "r"(row), "r"(table), "i"(10)); }
      goto applyEntry8441C;
    case 11:
      randomIndex = (u32)sub_080008C8() % 3;
      tripleTable = table8441C_084EC6C0;
      goto tripleEntry8441C;
    case 12:
      randomIndex = (u32)sub_080008C8() % 3;
      tripleTable = table8441C_084EC6E4;
      goto tripleEntry8441C;
    case 13:
      randomIndex = (u32)sub_080008C8() % 3;
      tripleTable = table8441C_084EC708;
      goto tripleEntry8441C;
    case 14:
      randomIndex = (u32)sub_080008C8() % 3;
      tripleTable = table8441C_084EC72C;
      goto tripleEntry8441C;
    case 15:
      randomIndex = (u32)sub_080008C8() % 3;
      tripleTable = table8441C_084EC750;
      goto tripleEntry8441C;
    case 16:
      randomIndex = (u32)sub_080008C8() % 3;
      tripleTable = table8441C_084EC774;
      goto tripleEntry8441C;
    case 17:
      randomIndex = (u32)sub_080008C8() % 3;
      tripleTable = table8441C_084EC798;
      goto tripleEntry8441C;
    case 18:
      randomIndex = (u32)sub_080008C8() % 3;
      tripleTable = table8441C_084EC7BC;
      goto tripleEntry8441C;
    case 19:
      randomIndex = (u32)sub_080008C8() % 3;
      tripleTable = table8441C_084EC7E0;
      goto tripleEntry8441C;
    case 20:
      randomIndex = (u32)sub_080008C8() % 3;
      tripleTable = table8441C_084EC804;
      goto tripleEntry8441C;
    case 21:
      randomIndex = (u32)sub_080008C8() % 3;
      tripleTable = table8441C_084EC828;
      goto tripleEntry8441C;
    case 22:
      randomIndex = (u32)sub_080008C8() % 3;
      tripleTable = table8441C_084EC84C;
tripleEntry8441C:
      { const u16 *p = (const u16 *)(((tier * 3 + randomIndex) << 2) + (u32)tripleTable);
         result->type = p[0]; result->subtype = p[1]; }
      goto finalize8441C;
    case 23:
      { register u32 index asm("r1") = (u32)sub_080008C8() & 3;
        const u32 *table = table8441C_084EC870;
        register u32 row asm("r0");
        index <<= 2;
        row = (tier + 1) << 4;
        entry = (const u16 *)(index + row + (u32)table);
        asm("" : "+r"(entry) : "r"(row), "r"(table), "i"(23)); }
      goto applyEntry8441C;
    case 24:
      { register u32 index asm("r1") = (u32)sub_080008C8() & 3;
        const u32 *table = table8441C_084EC8B0;
        register u32 row asm("r0");
        index <<= 2;
        row = (tier + 1) << 4;
        entry = (const u16 *)(index + row + (u32)table);
        asm("" : "+r"(entry) : "r"(row), "r"(table), "i"(24)); }
      goto applyEntry8441C;
    default: goto finalize8441C;
    }
lowTier8441C:
    if (classification == 23) goto low23;
    if (classification == 24) goto low24;
    goto LAB_0808481c;
low23:
    { u32 index = (u32)sub_080008C8() & 3;
      const u32 *table;
       table = table8441C_084EC870;
      entry = (const u16 *)((index << 2) + (u32)table); }
    goto applyEntry8441C;
low24:
    { u32 index = (u32)sub_080008C8() & 3;
      const u32 *table;
       table = table8441C_084EC8B0;
      entry = (const u16 *)((index << 2) + (u32)table); }
applyEntry8441C:
    result->type = entry[0];
    result->subtype = entry[1];
    goto finalize8441C;
LAB_0808481c:
    switch (((struct Record8441C *)stack)->type) {
    case 9:
      {
        s32 subtype = ((struct Record8441C *)stack)->subtype;
        if (subtype == 3) goto rareFirst8441C;
        if (subtype == 4) goto rareSecond8441C;
        if (((u32)sub_080008C8() & 1) == 0) goto inventorySecond8441C;
        goto inventoryFirst8441C;
rareFirst8441C:
        randomIndex = (u32)sub_080008C8();
        randomIndex &= subtype;
    {
      struct Triple8441C *temporary = (struct Triple8441C *)(stack + 0x4C);
      const u32 *table;
      const struct Triple8441C *source;
      table = table8441C_084EC8F0;
      { u32 offset = randomIndex * 12;
        struct Triple8441C *destination;
        destination = temporary;
        source = (const struct Triple8441C *)(offset + (u32)table);
        *destination = *source; }

      copy8441C(result, temporary, 16);
    }

        goto finalize8441C;
rareSecond8441C:
        randomIndex = (u32)sub_080008C8();
        { u32 mask = 3;  randomIndex &= mask; }
    {
      struct Triple8441C *temporary = (struct Triple8441C *)(stack + 0x4C);
      const u32 *table;
      const struct Triple8441C *source;
      table = table8441C_084EC920;
      { u32 offset = randomIndex * 12;
        struct Triple8441C *destination;
        destination = temporary;
        source = (const struct Triple8441C *)(offset + (u32)table);
        *destination = *source; }
      copy8441C(result, temporary, 16);
    }

        goto thirdValue8441C;
inventoryFirst8441C:
        do {
      randomIndex = (u32)sub_080008C8() % 12;
      
      {
        u8 *source = (u8 *)(u32)gUnk_030034E0;
        u32 byteOffset = randomIndex << 4;
        register struct Record8441C *destination asm("r1");
        register u32 baseOffset asm("r5");
        source += byteOffset;
        destination = result;
        baseOffset = 0x790;
        asm("" : "+r"(destination), "+r"(baseOffset));
        source += baseOffset;
        *destination = *(struct Record8441C *)source;
        asm("" : : "r"(baseOffset), "r"(subtype));
      }

        } while (result->type == 0);
        { u32 loaded = sub_08007290(result->subtype | 0xB0000);
          *(u32 *)(stack + 0x64) = loaded;
          if (*(u16 *)(loaded + 0xBC) != 0) goto finalize8441C; }
        if (*(u16 *)((u8 *)result + 6) != 0) goto finalize8441C;
        if (*(u16 *)(*(volatile u32 *)(stack + 0x64) + 0xB0) != 0) goto finalize8441C;
        goto secondAttribute8441C;
inventorySecond8441C:
        {
          struct Record8441C *inventoryResult = result;
          do {
      randomIndex = (u32)sub_080008C8() % 12;
      
      {
        u8 *source = (u8 *)(u32)gUnk_030034E0;
        u32 byteOffset = randomIndex << 4;
        register struct Record8441C *destination asm("r1");
        register u32 baseOffset asm("r5");
        source += byteOffset;
        destination = inventoryResult;
        baseOffset = 0x850;
        asm("" : "+r"(destination), "+r"(baseOffset));
        source += baseOffset;
        *destination = *(struct Record8441C *)source;
        asm("" : : "r"(baseOffset), "r"(inventoryResult));
      }

          } while (inventoryResult->type == 0);
        }
        if (result->type == 3) {
          *(u32 *)(stack + 0x68) = sub_08007290(result->subtype | 0xC0000);
        asm("" : : : "memory");
          if ((*(u32 *)((u8 *)result + 4) & 0xFFFFFF) != 0) goto finalize8441C;
          if (*(u16 *)(*(u32 *)(stack + 0x68) + 0xA4) != 0) goto finalize8441C;
        } else {
          if (result->type == 4) *(u32 *)(stack + 0x6C) = sub_08007290(result->subtype | 0xD0000);
          else *(u32 *)(stack + 0x70) = sub_08007290(result->subtype | 0xE0000);
          if ((*(u32 *)((u8 *)result + 4) & 0xFFFFFF) != 0) goto finalize8441C;
          if (*(u16 *)(*(u32 *)(stack + 0x6C) + 0xA4) != 0) goto finalize8441C;
        }
        goto thirdValue8441C;
      }
    case 2:
      { u32 hold2, hold3 asm("r3");
        *result = *(struct Record8441C *)stack;
         }
      goto secondAttribute8441C;
    case 3: case 4: case 5:
      { u32 hold5, hold6 asm("r6");
        *result = *(struct Record8441C *)stack;
         }
      goto thirdValue8441C;
    default: break;
    }
secondAttribute8441C:
    if (((u32)sub_080008C8() & 0xFFFF) <= *(u32 *)((u32)gUnk_030034E0 + 0x6C)) {
      register struct Record8441C *attributeRecord asm("r0") = second;
      s32 attributeType;
      attributeType = attributeRecord->type;
      switch (attributeType) {
      case 9:
        {
          s32 subtype = attributeRecord->subtype;
          switch (subtype) {
          case 0:
            randomIndex = (u32)sub_080008C8() % 3;
            
            unaff_r9 = ({ register u32 value asm("r6") = 1; asm("" : "+r"(value)); value; });
            if (randomIndex == 0) unaff_r9 = ({ register u32 value asm("r0") = 3; asm("" : "+r"(value)); value; });
            break;
          case 1:
            subtype &= sub_080008C8();
            unaff_r9 = ({ register u32 value asm("r1") = 4; asm("" : "+r"(value)); value; });
            if (subtype == 0) unaff_r9 = ({ register u32 value asm("r2") = 2; asm("" : "+r"(value)); value; });
            break;
          case 2:
            randomIndex = (u32)sub_080008C8() % 3;
            
            unaff_r9 = ({ register u32 value asm("r3") = 6; asm("" : "+r"(value)); value; });
            if (randomIndex == 0) unaff_r9 = ({ register u32 value asm("r4") = 5; asm("" : "+r"(value)); value; });
            break;
          default: unaff_r9 = ({ u32 value = 0;  value; }); break;
          }
        }
        break;
      case 2:
        unaff_r9 = ({ struct Record8441C *p = second; u32 value;  value = p->byte7;  value; });
        break;
      case 3: case 4: case 5: unaff_r9 = ({ u32 value = 0;  value; }); break;
      default: break;
      }
      switch (result->type) {
      case 3: case 4: case 5: result->byte7 = 0; break;
      default: { u32 attribute = unaff_r9;  result->byte7 = attribute; } break;
      }
    }
thirdValue8441C:
    {
      u32 chance;
      u32 tableValue;
      register u32 offset asm("r1");
      const u32 *table;
      {
        u32 random = (u32)sub_080008C8() & 0xFFFF;
        u32 limit;
        limit = *(u32 *)((u32)gUnk_030034E0 + 0x6C);
        chance = 0;
        if (random <= limit) chance = 1;
      }
      switch (result->type) {
      case 2: goto resultTwo8441C;
      case 3: case 4: case 5: break;
      default: goto finalize8441C;
      }
      { register struct Record8441C *p asm("r2") = third;
        switch ((s32)p->type) {
        case 2: case 3: case 4: case 5: goto permittedOther8441C;
        case 9: goto topRandomTrampoline;
        default: goto finalize8441C;
        }
      }
topRandomTrampoline:
      /* Keep the original conditional trampoline; this emits no instructions. */
      asm("" : : "X"(&&topRandomTrampoline));
      goto randomOther8441C;
resultTwo8441C:
      { u32 address;
      address = sub_08007290(result->subtype | 0xB0000);
      *(u32 *)(stack + 0x64) = address;
      if (*(u8 *)(address + 0x9B) != 9) goto resultTwoOrdinary8441C;
      { register struct Record8441C *p asm("r3") = third;
        switch ((s32)p->type) {
        case 2: case 3: case 4: case 5: goto permittedFour8441C;
        case 9: break;
        default: goto finalize8441C;
        }
      }
      }
randomSpecial8441C:
      randomIndex = sub_080008C8();
      { u32 mask = 3; randomIndex &= mask;  }
      if (!chance) goto randomSpecialNo;
      table = table8441C_084ECA90;
sharedOffset8441C:
      offset = randomIndex << 2;
      tableValue = ({ register struct Record8441C *p asm("r4") = third;  p->subtype; });
sharedTable8441C:
      tableValue <<= 4;
      offset += tableValue;
      offset += (u32)table;
      tableValue = *(u32 *)offset;
      goto setValue8441C;
randomSpecialNo:
      table = table8441C_084ECAE0;
      offset = randomIndex << 2;
      tableValue = ({ register struct Record8441C *p asm("r5") = third;  p->subtype; });
      goto sharedTable8441C;
permittedFour8441C:
      { u32 value;
      value = ({ register struct Record8441C *p asm("r6") = third;  p->value; });
      if (value == 0) { result->value = value; goto finalize8441C; }
      value = sub_08007290((value - 1) | 0x130000);
      { register u8 *duplicate asm("r1") = (u8 *)value;
        register u32 flags asm("r1");
        asm("" : : "r"(duplicate));
        value += 0xAC;
        flags = *(u16 *)value;
        value = 4; value &= flags;
        value = (u16)value;
 }
      if (value == 0) { result->value = value; goto finalize8441C; }
      value = ({ register struct Record8441C *p asm("r1") = third;  p->value; });
      { result->value = value; goto finalize8441C; }
      }
resultTwoOrdinary8441C:
      { register struct Record8441C *p asm("r2") = third;
        switch ((s32)p->type) {
        case 2: case 3: case 4: case 5: goto permittedEight8441C;
        case 9: break;
        default: goto finalize8441C;
        }
      }
randomOrdinary8441C:
      randomIndex = sub_080008C8();
      { u32 mask = 3; randomIndex &= mask;  }
      if (!chance) goto randomOrdinary8441Cno;
      table = table8441C_084EC950;
      offset = randomIndex << 2;
      tableValue = ({ register struct Record8441C *p asm("r3") = third; asm("" : "+r"(p)); p->subtype; });
      goto sharedTable8441C;
randomOrdinary8441Cno:
      table = table8441C_084EC9A0;
      goto sharedOffset8441C;
permittedEight8441C:
      { u32 value;
      value = ({ register struct Record8441C *p asm("r5") = third;  p->value; });
      if (value == 0) { result->value = value; goto finalize8441C; }
      value = sub_08007290((value - 1) | 0x130000);
      { register u8 *duplicate asm("r1") = (u8 *)value;
        register u32 flags asm("r1");
        asm("" : : "r"(duplicate));
        value += 0xAC;
        flags = *(u16 *)value;
        value = 8; value &= flags;
        value = (u16)value;
 }
      if (value == 0) { result->value = value; goto finalize8441C; }
      value = ({ register struct Record8441C *p asm("r6") = third;  p->value; });
      { result->value = value; goto finalize8441C; }
      }
randomOther8441C:
      randomIndex = sub_080008C8();
      { u32 mask = 3; randomIndex &= mask;  }
      if (!chance) goto randomOther8441Cno;
      table = table8441C_084EC9F0;
      offset = randomIndex << 2;
      tableValue = ({ register struct Record8441C *p asm("r3") = third;  p->subtype; });
      goto sharedTable8441C;
randomOther8441Cno:
      table = table8441C_084ECA40;
      goto sharedOffset8441C;
permittedOther8441C:
      { struct Record8441C *valueRecord = third;
        u8 *properties;
        u32 initial, type, flags, allowed;
        initial = valueRecord->value;
        if (initial == 0) { result->value = initial; goto finalize8441C; }
        { u32 argument = initial;
          u32 tag = 0x130000;
          asm("" : "+r"(argument), "+r"(tag));
          properties = (u8 *)sub_08007290(argument | tag); }
        type = (u16)(result->type - 3);
        if (type > 1) goto permittedOne8441C;
        { u8 *address = properties;
          u32 bits;
          u32 mask;
          address += 0xAC;
          bits = *(u16 *)address;
          mask = 2; mask &= bits;
          allowed = (u16)mask;
          if (allowed == 0) { result->value = allowed; goto finalize8441C; }
        }
        result->value = valueRecord->value;
        goto finalize8441C;
permittedOne8441C:
        { u8 *address = properties;
          u32 mask;
          address += 0xAC;
          flags = *(u16 *)address;
          mask = 1; mask &= flags;
          if (mask == 0) { result->value = mask; goto finalize8441C; }
        }
        { register struct Record8441C *last asm("r5") = third;
           result->value = last->value; }
        goto finalize8441C;
      }
setValue8441C:
      result->value = tableValue;
    }

finalize8441C:
    {
      u32 *stateAddress;
      u32 *weight;
      struct Record8441C *input;
      stateAddress = ({ register u32 *p asm("r6") = (u32 *)&gUnk_030034E0; asm("" : "+r"(p)); p; });
      weight = *(u32 *volatile *)(stack + 0x78);
      input = *(struct Record8441C *volatile *)(stack + 0x5C);
      do {
        u32 normalized;
        switch ((s32)input->type) {
        case 2: case 3: case 4: case 5: goto weightByte8441C;
        case 9: break;
        default: goto weightZero8441C;
        }
        switch (((struct Record8441C *)stack)->subtype) {
        case 0:
          normalized = input->value;
          *weight = normalized;
          normalized /= (u32)20;
          
          goto weightStore8441C;
        case 1:
          normalized = input->value;
          *weight = normalized;
          normalized = (normalized << 3) / 100;
          
          goto weightStore8441C;
        case 2:
          normalized = input->value;
          *weight = normalized;
          normalized /= (u32)10;
          
          goto weightStore8441C;
        default:
          normalized = input->value;
          *weight = normalized;
          normalized /= (u32)100;
          asm("" : "+r"(normalized) : "i"(100));
          goto weightStore8441C;
        }
weightByte8441C:
        normalized = input->byte6;
        goto weightStore8441C;
weightZero8441C:
        normalized = 0;
weightStore8441C:
        *weight = normalized;
        asm("" : "+r"(weight));
        weight++;
        input++;
      } while (weight <= *(u32 *volatile *)(stack + 0x78) + 2);
      {
        register u32 factor asm("r6") = *(u32 *)(*(volatile u32 *)(stack + 0x5C) + 0x34);
        u32 score;
        u32 sum;
        u32 *values;
        u32 multiplier;
        u32 *global;
        
        factor = factor / 10000 + 1;
        
        sum = *(u32 *)(stack + 0x40);
        
        values = *(u32 *volatile *)(stack + 0x78);
        
        sum += values[1];
        sum += values[2];
        sum += factor;
        global = stateAddress;
        
        multiplier = *(u32 *)(*global + 0x6C);
        asm("" : : "r"(values));
        sum *= multiplier;
        score = (sum >> 18) + 3;
        if (score > 19) score = 20;
        {
          u32 random = sub_080008C8();
          const u32 *weights;
          u32 range;
          register u32 roll asm("r6");
          register u32 index asm("r4");
          u32 value;
          const u32 *base;
          
          weights = ({ const u32 *p = table8441C_084ECB30;  p; });
          range = score << 2;
          range += (u32)weights;
          range = *(u32 *)range + 1;
          roll = random % range;
          index = 0;
          
          if (index >= score) goto afterWeight8441C;
          if (index > roll) goto scanWeight8441C;
          base = weights;
          value = *base;
          goto compareWeight8441C;
scanWeight8441C:
          base = table8441C_084ECB30;
          value = *(u32 *)((index << 2) + (u32)base);
          index++;
          if (index >= score) goto afterWeight8441C;
          if (value > roll) goto scanWeight8441C;
          value = *(u32 *)((index << 2) + (u32)base);
compareWeight8441C:
          if (roll >= value) goto scanWeight8441C;
          result->byte6 = index;
afterWeight8441C:
          { register u32 *metadata asm("r2") = *(u32 *volatile *)(stack + 0x5C);
             roll = metadata[13]; }
          roll += (u32)sub_080008C8() % 200000;
          index = 0;
          
          if (index > roll) goto scanBonus8441C;
          value = table8441C_084ECB84[0];
          if (roll < value) goto afterBonus8441C;
scanBonus8441C:
          base = table8441C_084ECB84;
          value = *(u32 *)((index << 2) + (u32)base);
          index++;
          if (index > 4) goto afterBonus8441C;
          if (value > roll) goto scanBonus8441C;
          value = *(u32 *)((index << 2) + (u32)base);
          if (roll >= value) goto scanBonus8441C;
          result->byte6 += index;
afterBonus8441C:
          ;
        }
      }
    }
    if (result->type == 2) {
      *(u32 *)(stack + 0x64) = sub_08007290(result->subtype | 0xB0000);
      if (*(u8 *)(*(u32 *)(stack + 0x64) + 0x9B) == 9) result->byte6 = 0;
    }
    if (result->byte6 > 19) result->byte6 = 20;
    switch (result->type) {
    case 2:
      randomIndex = 0;
      if (*(u16 *)(*(u32 *)(stack + 0x64) + 0xB0) != 0) goto clearByIndex8441C;
scanProperty2:
      randomIndex++;
      if (randomIndex > 2) goto copyOutput8441C;
      if (({ register u32 offset asm("r0") = randomIndex << 2; register u8 *properties asm("r3");  properties = *(u8 **)(stack + 0x64);  *(u16 *)(properties + offset + 0xB0); }) == 0) goto scanProperty2;
      goto clearByZero8441C;
    case 3:
      randomIndex = 0;
      if (*(u16 *)(*(u32 *)(stack + 0x68) + 0xA4) != 0) goto clearByIndex8441C;
scanProperty3:
      randomIndex++;
      if (randomIndex > 2) goto copyOutput8441C;
      if (({ register u32 offset asm("r0") = randomIndex << 2; register u8 *properties asm("r4");  properties = *(u8 **)(stack + 0x68);  *(u16 *)(properties + offset + 0xA4); }) == 0) goto scanProperty3;
      goto clearByZero8441C;
    case 4:
      randomIndex = 0;
      if (*(u16 *)(*(u32 *)(stack + 0x6C) + 0xA4) != 0) goto clearByIndex8441C;
scanProperty4:
      randomIndex++;
      if (randomIndex > 2) goto copyOutput8441C;
      if (({ register u32 offset asm("r0") = randomIndex << 2; register u8 *properties asm("r6");  properties = *(u8 **)(stack + 0x6C);  *(u16 *)(properties + offset + 0xA4); }) == 0) goto scanProperty4;
      goto clearByZero8441C;
    case 5:
      randomIndex = 0;
      if (*(u16 *)(*(u32 *)(stack + 0x70) + 0xA4) == 0) goto scanProperty5;
clearByIndex8441C:
      result->value = randomIndex;
      goto copyOutput8441C;

scanProperty5:
      randomIndex++;
      if (randomIndex > 2) goto copyOutput8441C;
      if (({ register u32 offset asm("r0") = randomIndex << 2; register u8 *properties asm("r1");  properties = *(u8 **)(stack + 0x70);  *(u16 *)(properties + offset + 0xA4); }) == 0) goto scanProperty5;
      goto clearByZero8441C;
clearByZero8441C:
      result->value = 0;
      goto copyOutput8441C;

    default: goto copyOutput8441C;
    }
copyOutput8441C:
    {
      register struct Record8441C *output asm("r1") = *(struct Record8441C **)(stack + 0x60);
      struct Record8441C *source;
      u32 hold5, hold6 asm("r6");
      asm("" : "+r"(output));
      source = result;
      asm("" : "+r"(source), "=r"(hold5), "=r"(hold6));
      *output = *source;
      
    }
    {
      register u32 firstPrice asm("r4") = sub_0805AE94(*(void **)(stack + 0x5C));
      u32 secondPrice;
      u32 thirdPrice;
      u32 outputPrice;
      u32 *globalAddress;
      u8 *state;
      
      secondPrice = sub_0805AE94(*(void **)(stack + 0x7C));
      asm("" : "+r"(secondPrice));
      thirdPrice = sub_0805AE94(*(void **)(stack + 0x74));
      asm("" : "+r"(thirdPrice));
      outputPrice = sub_0805AE94(*(void **)(stack + 0x60));
      
      { register u32 *p asm("r0") = (u32 *)&gUnk_030034E0;
        
        globalAddress = p;
        
        state = (u8 *)*p; }
      firstPrice += secondPrice;
      firstPrice += thirdPrice;
      { register u32 *input asm("r1") = *(u32 *volatile *)(stack + 0x5C);
        
        firstPrice += input[13]; }
      firstPrice = *(u32 *)(state + 0x6C) + firstPrice / 10;
      firstPrice -= outputPrice / 10;
      *(u32 *)(state + 0x6C) = firstPrice;
      if ((s32)firstPrice < 0) *(u32 *)(state + 0x6C) = 0;
      {
        register u32 *address asm("r2") = globalAddress;
        u8 *current;
        s32 value;
        register u32 maximum asm("r2");
        asm("" : "+r"(address));
        current = (u8 *)*address;
        value = *(s32 *)(current + 0x6C);
        maximum = 0xFFFF;
        
        if (value > (s32)maximum) *(u32 *)(current + 0x6C) = maximum;
      }
    }
}

/* [StartCharacterStatAndSkillMenuTask] No arguments or meaningful return. Retries exact allocation
 * of0x624=1572 bytes for shared manager0x03006440, yielding after failures, initializes first word0. Then
 * retries1024-byte task stack on fixed task0x03006450, sets top+1020, priority100, finalizer0x08085484 and
 * callback0x0807A5D4, scheduler argument0. No active-task or existing-manager protection; starts request and
 * does not wait for menu closure. Complete pinned matching source body and complete original configured range
 * inspected, including long-range continuations. Original range equals copied verified-main ELF; no local
 * build or runtime test. */
void sub_08084EAC(void)
{
    while ((gUnk_03006440 = sub_08001494(0x624)) == 0)
        sub_080003F0();
    *(u32 *)gUnk_03006440 = 0;
    while ((task84eac[8] = sub_08001494(0x400)) == 0)
        sub_080003F0();
    task84eac[4] = task84eac[8] + 0x3FC;
    task84eac[2] = 0x64;
    task84eac[9] = (u32)sub_08085484;
    task84eac[3] = (u32)sub_0807A5D4;
    sub_08000274((M2C_UNK *)task84eac, 0);
}
/* [StartInventoryMenuTask] Retries allocation of a 0x624-byte item-menu manager through global 03006440,
 * clears only its first word, then retries a 0x900-byte stack allocation. Initializes the existing
 * task-control record with stack top allocation +0x8FC, flags/state word +8 equal 0x64, finalizer 854A0 and
 * callback 7B7B4, then registers it through 00274 with argument zero. Failed allocations wait on scheduler
 * signal 1. It does not initialize every manager field, impose a retry bound or establish priority from the
 * task flag word. */
void sub_08084F24(void)
{
    while ((gUnk_03006440 = sub_08001494(0x624)) == 0)
        sub_080003F0();
    *(u32 *)gUnk_03006440 = 0;
    while ((task84f24[8] = sub_08001494(0x900)) == 0)
        sub_080003F0();
    task84f24[4] = task84f24[8] + 0x8FC;
    task84f24[2] = 0x64;
    task84f24[9] = (u32)sub_080854A0;
    task84f24[3] = (u32)sub_0807B7B4;
    sub_08000274((M2C_UNK *)task84f24, 0);
}
/* [StartItemCollectionInteractionMenuTask] Full-word r0 interaction variant forwarded unchanged.
 * Retries1572-byte manager allocation into0x03006440 and zeros its first word; retries2560-byte stack on fixed
 * task0x03006450. Sets stack top+2556, priority100, callback0x08082BB0 and finalizer0x08085518, then starts
 * task with variant argument. No existing-manager/task activity guard and no wait for menu completion;
 * allocation failures yield. Complete pinned matching source body and original configured range preserved for
 * independent static audit; original equals copied verified-main ELF, no local build or runtime test. */
void sub_08084F9C(u32 arg)
{
    while ((gUnk_03006440 = sub_08001494(0x624)) == 0)
        sub_080003F0();
    *(u32 *)gUnk_03006440 = 0;
    while ((task84f9c[8] = sub_08001494(0xA00)) == 0)
        sub_080003F0();
    task84f9c[4] = task84f9c[8] + 0x9FC;
    task84f9c[2] = 0x64;
    task84f9c[9] = (u32)sub_08085518;
    task84f9c[3] = (u32)sub_08082BB0;
    sub_08000274((M2C_UNK *)task84f9c, arg);
}
/* [DrawSkillProgressTileRun] r0 is an unbounded row index, r1 an unsigned count clamped to seven, and r2 a
 * tile variant. Writes count halfwords of ((u16)(variant+0x16B)|0xE000) at text-map +0x2C+(index+5)*64; queues
 * row index+5 only when count is nonzero. Does not clear remaining tiles. Original caller 0x0807B53E supplies
 * skill level+1 and variant 3; 0x0807B54E supplies progress and variant 0. No row validation. Complete
 * original configured body and literal use audited against EU ROM; copied verified-main ELF equality is static
 * corroboration, not a new build or runtime test. */
void sub_08085014(u32 index, u32 count, u32 value)
{
    u32 i;
    u16 encoded;
    u16 *dst;
    if (count > 7) count = 7;
    encoded = value + 0x16B;
    for (i=0; i<count; i++) {
        uiMap85014.data[index+5][i] = encoded | 0xE000;
    }
    if (count != 0) sub_0801A664(index+5,1);
}
/* [DrawAvailableSkillPointTiles] Unsigned r0 count <=9 writes that many 0xE16B halfwords at text-map +0xE8 and
 * queues row 3 only for nonzero count. Above nine writes 0xE16B/0xE16A then draws the count at (24,3).
 * Original caller 0x0807B4FC loads the points halfword from the same skill data whose per-skill level/progress
 * drives 0x08085014. No clearing of unused tiles. Complete original configured body and literal use audited
 * against EU ROM; copied verified-main ELF equality is static corroboration, not a new build or runtime test. */
void sub_08085064(u32 count)
{
    u32 i;
    if (count <= 9) {
        for (i=0; i<count; i++)
            map85064.tile[i] = 0xE16B;
        if (count) sub_0801A664(3,1);
    } else {
        map85064.tile[0] = 0xE16B;
        map85064.tile[1] = 0xE16A;
        sub_0805FB7C(0x18,3,count,0);
    }
}
extern u32 digits850C0[] asm("gUnk_084EBD5C");
/* [ExpandEncodedTextUnsignedNumberToken] r0 source, low 16 bits of r1 number, r2 destination. Skips two source
 * bytes; copies byte stream until 0xFD, replacing every 0xF7 with decimal digits encoded 0x41+digit. Reads six
 * 32-bit divisors 100000,10000,1000,100,10,1 at 0x084EBD5C and suppresses leading zero digits but retains
 * final zero. Output length wraps u16; appends 0xFD and returns dst+length-1, including dst-1 for empty text.
 * No destination-capacity check or bounded search for a missing source terminator; no claim of ASCII output.
 * Complete original configured body and literal use audited against EU ROM; copied verified-main ELF equality
 * is static corroboration, not a new build or runtime test. */
u8 *sub_080850C0(u8 *src, u16 value, u8 *dst)
{
    u16 n;
    u8 c;
    u8 *next;
    src += 2;
    n = 0;
    while ((c = *src) != 0xFD) {
        if (c == 0xF7) {
            s32 number = value;
            u32 *divisor = digits850C0;
            u8 *out = dst + n;
            u32 started = 0;
            u16 i = 0;
            next = src + 1;
            do {
                u32 ch = sub_08000498(&number, *divisor) + 0x41;
                *out = ch;
                if (started != 0 || (u8)ch != 0x41 || i == 5) {
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
    dst[n] = 0xFD;
    return dst + (n - 1);
}
/* [AllocateSkillMenuEffectTaskPool] No input or meaningful return. Repeatedly allocates 200 bytes, storing
 * pointer at item-menu manager +0x620 and yielding after failures. Initializes only word +8 in five 40-byte
 * task controls to zero; other bytes are not initialized. Caller 0x0807A832 performs menu setup; 0x08085218
 * consumes this exact pool for skill-increase effects. Complete original configured body and literal use
 * audited against EU ROM; copied verified-main ELF equality is static corroboration, not a new build or
 * runtime test. */
void sub_0808516C(void)
{
    u32 i;
    while ((*(u32 *)(gUnk_03006440 + 0x620) = sub_08001494(0xC8)) == 0)
        sub_080003F0();
    for (i = 0; i <= 4; i++)
        *(u32 *)(*(u32 *)(gUnk_03006440 + 0x620) + i * 0x28 + 8) = 0;
}
/* [WaitForSkillMenuEffectsAndFreeTaskPool] Captures the initial pool pointer at manager+0x620 and sequentially
 * polls activity for its five 40-byte controls, yielding while each is active. After waiting it reloads the
 * manager through global03006440, frees the current +0x620 field, reloads the manager again and stores the
 * final zero activity-query result there. The captured waited-on pool and later freed current pointer are not
 * assumed identical across yields. Does not request cancellation, free per-task stacks directly, or validate
 * manager/pool. Original menu task calls at 0x0807B740 on teardown. */
void sub_080851B8(void)
{
    u8 *entries = *(u8 **)(gUnk_03006440 + 0x620);
    u32 i;
    u32 result;
    for (i = 0; i <= 4; i++) {
        while ((result = sub_08000470((u32)(entries + i * 0x28))) != 0)
            sub_080003F0();
    }
    sub_08001538(*(s32 *)(gUnk_03006440 + 0x620));
    *(u32 *)(gUnk_03006440 + 0x620) = result;
}
/* [StartSkillIncreaseIndicatorTask] r0/r1 are full-word x/y forwarded as scheduler arguments. Scans five pool
 * controls, skipping active entries and any nonzero word +8. First eligible entry gets word+8=60 before
 * attempting a 1024-byte stack allocation. Allocation failure returns without restoring word+8; full pool also
 * returns. Success installs callback 0x08085534, stack top allocation+1020 and null finalizer then starts
 * task. Original caller 0x0807AE14 follows skill-level increment and point deduction, not arbitrary completion
 * signalling. Complete original configured body and literal use audited against EU ROM; copied verified-main
 * ELF equality is static corroboration, not a new build or runtime test. */
void sub_08085218(u32 arg0, u32 arg1)
{
    u8 *entry = *(u8 **)(gUnk_03006440 + 0x620);
    u32 i = 0;
    u32 memory;
    goto check;
    do {
next:
        i++;
        entry += 0x28;
check:
        if (i > 4) return;
        if (sub_08000470((u32)entry) != 0 || *(u32 *)(entry + 8) != 0)
            goto next;
        *(u32 *)(entry + 8) = 0x3C;
        memory = sub_08001494(0x400);
        *(u32 *)(entry + 0x20) = memory;
    } while (0);
    if (memory == 0) return;
    *(u32 *)(entry + 0xC) = (u32)sub_08085534;
    *(u32 *)(entry + 0x10) = memory + 0x3FC;
    *(u32 *)(entry + 0x24) = 0;
    sub_08000274_(entry,arg0,arg1);
}
/* [VCountApplyBg0FourPixelVerticalOffset] Writes halfword 4 directly to BG0VOFS hardware register 04000012,
 * sets the next VCount compare line to 159 and replaces the VCount callback with sibling 852AC. Does not
 * modify BG0 scroll shadow, enable the VCount interrupt, preserve an arbitrary prior scroll value or stop the
 * alternating callback chain. */
void sub_0808528C(void) {
    *(s16 *)0x04000012 = 4;
    sub_08001108(0x9F);
    sub_0800115C((s32) &sub_080852AC);
}
/* [VCountResetBg0VerticalOffset] Writes halfword zero directly to BG0VOFS hardware register 04000012, sets
 * next VCount compare line to 136 and installs sibling 8528C. It resets this hardware offset rather than
 * restoring an arbitrary saved value. The callback chain continues; this is not a function to disable the band
 * or the VCount interrupt. */
void sub_080852AC(void)
{
    *(u16 *)0x04000012 = 0;
    sub_08001108(0x88);
    sub_0800115C((s32)sub_0808528C);
}
/* [CopyItemMenuCollectionRecords] r0 source; manager pointer is read from 0x03006440. Copies complete 16-byte
 * records as four words into manager+0x104: 75 records when manager word zero equals 4, otherwise 12. Returns
 * void; no source-size, overlap or manager validation. Consumers include currency summation at 0x08085330 and
 * item menu initialization caller 0x08083182/0x080831C8. Does not infer shop versus stash from mode alone.
 * Complete original configured body and literal use audited against EU ROM; copied verified-main ELF equality
 * is static corroboration, not a new build or runtime test. */
void sub_080852CC(struct Entry852CC *src)
{
    u32 i;
    if (collection852CC->kind != 4) {
        for (i=0; i<=11; src++) {
            collection852CC->entries[i] = *src;
            i++;
        }
    } else {
        for (i=0; i<=0x4A; src++) {
            collection852CC->entries[i] = *src;
            i++;
        }
    }
}
/* [SumItemMenuStashOrStockCurrency] In item-menu mode 4, sums word +4 for kind-10 entries among exactly 75
 * records at manager +0x104, stride 16. Otherwise returns 5D404, the stash sum at character/inventory base
 * +0x2E0 through pointer global 030034E0. These are distinct from the menu manager through global 03006440.
 * This helper never adds the bag total; the separate 8543C query adds bag currency only in mode 4. Original
 * arithmetic returns the low 32-bit sum without saturation or capacity checks. */
u32 sub_08085330(void)
{
    u32 total = 0;
    u8 *base = (u8 *)gUnk_03006440;
    if (*(u32 *)base == 4) {
        u8 *entry;
        u32 i;
        i = 0; entry = base + 0x104;
        for (; i <= 0x4A; i++) {
            if (*(u16 *)entry == 0xA)
                total += *(u32 *)(entry + 4);
            entry += 0x10;
        }
    } else {
        total = sub_0805D404();
    }
    return total;
}
/* [AllocateItemMenuSubtaskControl] Retries a 0x28-byte allocation until nonnull, storing every attempt in the
 * word at item-menu manager +0x620 through pointer global 03006440. Each failed attempt waits for scheduler
 * signal 1 through 003F0. It allocates the child task-control record only: it does not clear the record,
 * allocate its execution stack, select a callback or register the task. There is no bounded retry count or
 * proved manager lifetime. */
void sub_0808536C(void)
{
    while ((M2C_FIELD(gUnk_03006440, s32 *, 0x620) = sub_08001494(0x28)) == 0)
        sub_080003F0();
}
/* [WaitForItemMenuSubtaskAndFreeControl] Captures the task-control pointer at item-menu manager +0x620 and
 * polls 00470 until it is absent from the scheduled-task list, yielding on scheduler signal 1 between nonzero
 * results. Then reloads the global manager and frees its current +0x620 pointer through 01538; reloads the
 * manager again and stores the zero query result at +0x620. The polled captured pointer and later freed
 * current field are not assumed identical across yields. It does not explicitly free the execution-stack field
 * or impose a timeout. */
void sub_08085398(void)
{
    u32 value = *(u32 *)(gUnk_03006440 + 0x620);
    u32 result;
    while ((result = sub_08000470(value)) != 0)
        sub_080003F0();
    sub_08001538(*(u32 *)(gUnk_03006440 + 0x620));
    *(u32 *)(gUnk_03006440 + 0x620) = result;
}
/* [StartItemMenuSubtask] Captures the task-control pointer at item-menu manager +0x620, retries allocation of
 * a 0x400-byte stack with signal-1 waits, and writes each attempt to that captured control +0x20. Sets task +8
 * to 0x50, callback +0xC to 83AE8 only when the complete argument equals 1 and otherwise to 8381C, stack top
 * +0x10 to allocation +0x3FC, and finalizer +0x24 to zero. Registers the control through 00274, forwarding the
 * complete argument. The flag word is not identified as priority, and non-1 arguments are not restricted to
 * zero. */
void sub_080853DC(u32 arg)
{
    u8 *base = *(u8 **)0x03006440;
    u8 *task = *(u8 **)(base + 0x620);
    u32 memory;
    memory = sub_08001494(0x400);
    *(u32 *)(task + 0x20) = memory;
    while (memory == 0) {
        sub_080003F0();
        memory = sub_08001494(0x400);
        *(u32 *)(task + 0x20) = memory;
    }
    *(u32 *)(task + 8) = 0x50;
    if (arg == 1) *(u32 *)(task + 0xC) = (u32)sub_08083AE8;
    else *(u32 *)(task + 0xC) = (u32)sub_0808381C;
    *(u32 *)(task + 0x10) = *(u32 *)(task + 0x20) + 0x3FC;
    *(u32 *)(task + 0x24) = 0;
    sub_08000274((M2C_UNK *)task, (s32)arg);
}
/* [ReadItemMenuCurrencyTotal] Reads the current item-menu manager word at +0. In mode 4, sums word +4 for
 * kind-10 records among exactly 75 entries at manager +0x104, stride 16, then adds the bag-currency result
 * from 5D3D4. In every other mode, returns 5D404 directly, which sums the 75-entry stash at base *(u8
 * **)0x030034E0 + 0x2E0. This is a mode-dependent currency total, not an unconditional bag-plus-stash sum. The
 * original performs low-32-bit word additions without saturation or capacity checks. */
u32 sub_0808543C(void)
{
    u8 *base = (u8 *)gUnk_03006440;
    u32 total;
    if (*(u32 *)base == 4) {
        u8 *entry;
        u32 i;
        u32 subtotal = 0;
        i = 0;
        entry = base + 0x104;
        for (; i <= 0x4A; i++) {
            if (*(u16 *)entry == 0xA)
                subtotal += *(u32 *)(entry + 4);
            entry += 0x10;
        }
        total = subtotal;
        total += sub_0805D3D4();
    } else {
        total = sub_0805D404();
    }
    return total;
}
/* [ClearAndFreeItemMenuManager] Unconditionally loads pointer global0x03006440, writes word0 at pointee+0,
 * frees pointee with0x08001538 and clears pointer global. Original instructions have no null check despite
 * empty conditional in source. Registered finalizer by0x08084EAC for shared manager menu task0x0807A5D4. No
 * pool wait, task cancellation or other field cleanup here. Complete original configured body and literals
 * audited against ROM; copied verified-main ELF static equality, no local build or runtime test. */
void sub_08085484(void)
{
  s32 p = gUnk_03006440;
  if (p)
  {
  }
  *((s32 *) p) = 0;
  sub_08001538(p);
  gUnk_03006440 = 0;
}
/* [FreeInventoryMenuManager] Loads pointer global0x03006440, calls heap free0x08001538, then clears global
 * pointer. Does not write pointee first or test null. Original0x08084F24 registers it as finalizer of
 * confirmed TaskInventoryMenu0x0807B7B4. Does not itself cancel tasks or free pool. Complete original
 * configured body and literals audited against ROM; copied verified-main ELF static equality, no local build
 * or runtime test. */
void sub_080854A0(void) {
    sub_08001538(gUnk_03006440);
    gUnk_03006440 = 0;
}
/* [ClearHeldItemMenuRecord] Fills the 16-byte held-item record at menu manager +0xF4 with zero using CpuSet
 * control 0x05000004, then reloads global 03006440 and writes word 22 at manager +0x1C and word zero at +0x20.
 * Matched inventory movement/sale helpers and original 7C29C item-validation paths identify these as the held
 * record and its source/index fields. It does not restore or transfer the item to another location, free the
 * manager or clear the separate +0x18 interaction state. No direct caller or runtime reachability is
 * established by this row. */
void sub_080854B8(void)
{
    u32 zero = 0;
    u8 *p;
    CpuSet(&zero, (void *)(gUnk_03006440 + 0xF4), 0x05000004);
    p = (u8 *)gUnk_03006440;
    *(u32 *)(p + 0x1C) = 0x16;
    *(u32 *)(p + 0x20) = 0;
}
/* [CountDecimalDigitsCappedAtSix] Unsigned full-word r0 value. Starts result6 and compares
 * thresholds100000,10000,1000,100,10,1 from word table0x084EBD4C offsets16..36. Decrements while
 * threshold>value, returning0 for zero,1..5 for1..99999, and6 for every value>=100000 including values with
 * more than six decimal digits. No mutation or division. This is a capped display-width helper, not a true
 * unbounded digit count. Complete original configured body and literals audited against ROM; copied
 * verified-main ELF static equality, no local build or runtime test. */
s32 sub_080854E8(u32 value)
{
    s32 result = 6;
    const u32 *p;
    u32 i = 4;
    if (gUnk_084EBD4C[4] > value) {
        p = &gUnk_084EBD4C[4];
        do {
            p++;
            i++;
            result--;
        } while (i <= 9 && *p > value);
    }
    return result;
}
/* [ClearAndFreeFullScreenItemMenuManager] Unconditionally loads shared item-menu pointer global0x03006440,
 * writes word0 at pointee+0, calls heap free0x08001538, then clears pointer global. No null check or
 * nested-pool cleanup. Original0x08084F9C registers as finalizer of full-screen item-menu callback0x08082BB0,
 * which selects manager modes3/4/5/6 from its incoming mode. Same operation sequence as0x08085484 but distinct
 * canonical entry and registration; raw bytes differ because the relative call to heap free has a different
 * displacement. No collection-only domain is established. Complete original configured body and literals
 * audited against ROM; copied verified-main ELF static equality, no local build or runtime test. */
void sub_08085518(void)
{
  s32 p = gUnk_03006440;
  {
    *((s32 *) p) = 0;
  }
  sub_08001538(p);
  gUnk_03006440 = 0;
}
extern u16 flags85534 asm("gUnk_03001308");
void sub_08065230(void *, s32, s32, u16, s32);
/* [TaskAnimateSkillIncreaseIndicator] Task receives full-word x/y in r0/r1, gets shared sprite context, starts
 * song 0x25, then performs exactly 30 iterations. Each clears halfword global 0x03001308 bits 0x30, decrements
 * y when global tick word &3 is zero, advances descriptor 14 with two u16 local animation counters, draws
 * descriptor 14 at x/y using first counter, and yields. Finally clears current task control word+8.
 * Coordinates and input-mask side effects are explicit; no claim of resource freeing or runtime visual
 * confirmation. Complete original configured body and literal use audited against EU ROM; copied verified-main
 * ELF equality is static corroboration, not a new build or runtime test. */
void sub_08085534(s32 arg0, s32 arg1)
{
    u16 a;
    u16 b;
    void *ctx;
    u16 i;
    ctx = sub_080653CC();
    sub_0805865C(0x25);
    a = 0;
    b = 0;
    i = 0x1D;
    do {
        flags85534 &= 0xFFCF;
        if ((gUnk_03002344 & 3) == 0) arg1--;
        sub_08065370(ctx, 0xE, (s32)&a, (s32)&b, 1);
        sub_08065230(ctx, arg0, arg1, 0xE, a);
        sub_080003F0();
        i--;
    } while (i != 0xFFFF);
    *(u32 *)(sub_0800048C() + 8) = 0;
}
struct Shop6478 {
    u32 running;
    s32 cat;
    s32 cursor;
    s32 shown;
    s32 index;
    u32 grid;
    u32 mode;
    u32 unk1C;
    u32 unk20;
    s16 x;
    s16 y;
    s16 tx;
    s16 ty;
    u8 sprite[0x34];
};
struct Save855D4 {
    u8 pad0[0x150];
    struct { u16 type; u16 id; u8 pad[0xC]; } slots[25];
    u8 pad2E0[0xC10 - 0x2E0];
    u8 counts[1];
};
struct Item855D4 {
    s16 unk0, unk2, unk4, unk6, unk8;
    u8 padA[6];
    s32 unk10;
    s16 unk14, unk16, unk18, unk1A, unk1C, unk1E;
    u8 pad20[2];
    u8 unk22;
    u8 pad23[0x45 - 0x23];
    s8 unk45;
    u8 pad46[0xD4 - 0x46];
    u16 unkD4;
    u16 unkD6;
};
struct Win855D4 {
    u8 pad0[0x8C];
    struct { u16 id; u8 pad[6]; u8 data[0x20]; } slots[8];
    s16 atk;
    s16 def;
    u8 pad1D0[0x204 - 0x1D0];
    u8 item[0xD8];
    u8 pad2DC[4];
};
struct Sprite855D4 { u8 pad0[0xC]; u32 unkC; u8 pad10[0xC]; u8 unk1C; u8 pad1D[0x34 - 0x1D]; };

extern struct Shop6478 *gShop855D4 asm("gUnk_03006478");
extern struct Save855D4 *gSave855D4 asm("gUnk_030034E0");
/* {id, cat} pairs as u16[2] rows: the ROM forms x * 4 + 2 before adding the table base. */
extern const u16 gTab855D4[][2] asm("gUnk_084ECC2C");
extern u16 gKeys855D4 asm("gUnk_03001324");
extern u16 gRep855D4 asm("gUnk_03001308");
extern u16 gKey130C855D4 asm("gUnk_0300130C");
extern u16 gBgOfs855D4[] asm("gUnk_03001250");
extern s32 gLang855D4 asm("gUnk_03003470");
extern const s16 gSin855D4[] asm("gUnk_080B9704");
extern const u8 gNoName855D4[] asm("gUnk_084ECE8E");
extern const struct Item855D4 gNoItem855D4 asm("gUnk_084ECEB0");
extern const struct Item855D4 gItemsA855D4[] asm("gUnk_0847AC64");
extern const struct Item855D4 gItemsB855D4[] asm("gUnk_0848529C");
extern const u32 gAnim855D4[][0x16] asm("gUnk_08479140");
extern const u16 gGridText855D4[] asm("gUnk_084ECE74");

extern void f855_009F8(s32, s32, s32) asm("sub_080009F8");
extern void f855_009C0(s32, s32, s32) asm("sub_080009C0");
extern void f855_00AA8(u16, u32 *) asm("sub_08000AA8");
extern void f855_0B650(s32, s32, s32, u16, u16) asm("sub_0800B650");
extern void f855_0B7DC(s32, s32, s32, u16, u16) asm("sub_0800B7DC");
extern void f855_0CF90(void) asm("sub_0800CF90");
extern void f855_1A664(s32, s32) asm("sub_0801A664");
extern s32 f855_003F0(void) asm("sub_080003F0");
extern void f855_65158(void *, u32, s32, s32, s32) asm("sub_08065158");
extern u32 f855_008C8(void) asm("sub_080008C8");
extern void f855_1AA34(s32) asm("sub_0801AA34");
extern void f855_1AA8C(s32) asm("sub_0801AA8C");
extern s32 f855_1AAE0(void) asm("sub_0801AAE0");
extern s32 f855_0CDF8(void) asm("sub_0800CDF8");
extern void f855_0CCB8(void) asm("sub_0800CCB8");
extern void f855_0CE54(void) asm("sub_0800CE54");
extern void f855_659F4(s32 *, s32, s32, s32) asm("sub_080659F4");
extern void f855_65230(void *, s32, s32, u16, s32) asm("sub_08065230");
extern void f855_5865C(s32) asm("sub_0805865C");
extern void f855_020F4(void) asm("sub_080020F4");
extern u8 *f855_07290(s32) asm("sub_08007290");
extern void f855_00AF0(u32, const void *, u32) asm("sub_08000AF0");
extern void f855_CpuSet(const void *, void *, u32) asm("CpuSet");
extern void f855_00C08(s16, s16) asm("sub_08000C08");
extern s32 f855_58DB0(void) asm("sub_08058DB0");
extern s32 f855_021A8(void) asm("sub_080021A8");
extern s32 f855_5AB20(void *) asm("sub_0805AB20");
extern s32 f855_0CE30(void) asm("sub_0800CE30");
extern void f855_1A3D0(const u8 *, u16, u16) asm("sub_0801A3D0");
extern void *f855_memcpy(void *, const void *, u32) asm("memcpy");
extern void f855_1C8F0(struct Win855D4 *) asm("sub_0801C8F0");
extern void f855_5FB7C(s32, s32, s32, s32) asm("sub_0805FB7C");
extern u32 f855_1A638(u8 *) asm("sub_0801A638");
extern void f855_659BC(void *, s32, s32, u16, s32, s32) asm("sub_080659BC");
extern void f855_1ABE8(s32) asm("sub_0801ABE8");
extern void f855_57624(u16) asm("sub_08057624");
extern void f855_0CFA4(void) asm("sub_0800CFA4");
extern void f855_00420(s32) asm("sub_08000420");

void sub_080855D4_v(void) asm("sub_080855D4");

/* [TaskMonsterCardCatalogAndBagTransfer] No meaningful arguments or return. Before menu, scans25 bag records
 * at saved-character+0x150 and deposits kind8 records into byte counts at+0xC10 by item-id when existing
 * count<=98, increments to at most99, clears only kind/id halfwords of deposited bag records. Deposits occur
 * before cancellation and are not rolled back. Animates deposited records, then browses category
 * table0x084ECC2C with end-category100, localized resource0x120000 names/details and per-id owned counts.
 * Modes0 category list,1 detail,3 detail-field grid; grid13 A constructs kind8/id record and attempts
 * TryAddItemToBag, decrements collection count only on success. No spending currency or purchase logic. */
void sub_080855D4_v(void)
{
    u8 name[0x20];
    u8 desc[5][0x20];
    u8 pad_c8[8];
    struct Win855D4 winBuf;
    struct Sprite855D4 spriteB;
    u8 spriteA[0x34];
    struct { u16 type; u16 id; u8 pad[0xC]; } use;
    struct { s32 x; s32 y; } pts[25];
    s32 speed[25];
    s32 pos[25];
    u8 state[25];
    u16 zero;
    union { struct { u32 cnt:16; u32 spare:16; } bits; u16 half; u32 word; } bg;
    s32 ox;
    s32 oy;
    u32 count;
    u32 last;
    u8 *text;
    struct Win855D4 *win;
    const u8 *s;
    u8 *data;
    u8 *pal;
    u32 n;
    u32 i;
    u32 j;
    u8 c;

    f855_009F8(0x200, 0, 1);
    f855_009C0(0x1D00, 0, 1);
    bg.bits.cnt = 0x1E00;
    f855_00AA8(3, &bg.word);
    gBgOfs855D4[1] = 0;
    gBgOfs855D4[0] = 0;
    gBgOfs855D4[3] = 0;
    gBgOfs855D4[2] = 0;
    gBgOfs855D4[5] = 0;
    gBgOfs855D4[4] = 0;
    gBgOfs855D4[7] = 0;
    gBgOfs855D4[6] = 0;
    f855_0B650(0x47, 0x1E, 0x06000000, 0, 0xF);
    f855_0CF90();
    f855_1A664(0, 0x14);
    f855_003F0();
    f855_003F0();
    f855_1A664(0, 0x14);
    f855_003F0();

    n = 0;
    for (i = 0; i <= 0x18; i++) {
        if (gSave855D4->slots[i].type == 8) {
            if (gSave855D4->counts[gSave855D4->slots[i].id] <= 0x62) {
                gSave855D4->counts[gSave855D4->slots[i].id]++;
                gSave855D4->slots[i].type = 0;
                gSave855D4->slots[i].id = 0;
                n++;
            }
        }
    }
    f855_65158(spriteA, 0x500AF, 1, -1, 0);
    for (i = 0; i < n; i++) {
        j = f855_008C8() & 0xFF;
        pts[i].x = gSin855D4[j + 0x40] * 0xF0 + 0x78;
        pts[i].y = gSin855D4[j] * 0xF0 + 0x50;
        pos[i] = 0;
        speed[i] = (f855_008C8() & 0xF) + 8;
        state[i] = 0;
    }
    f855_1AA34(0x1E);
    while (f855_1AAE0() == 0) {
        if (f855_0CDF8() != 0)
        {
            f855_0CCB8();
            f855_0CE54();
            return;
        }
        f855_003F0();
    }
    while (!(gKeys855D4 & 1)) {
        if (f855_0CDF8() != 0)
        {
            f855_0CCB8();
            f855_0CE54();
            return;
        }
        for (i = 0; i < n; i++) {
            f855_659F4(&ox, pts[i].x, 0x7800, pos[i]);
            f855_659F4(&oy, pts[i].y, 0x5000, pos[i]);
            if (state[i] != 2)
                f855_65230(spriteA, ox >> 8, oy >> 8, 0, 0x1D);
            pos[i] += speed[i];
            if (pos[i] > 0x200 && state[i] == 0) {
                f855_5865C(0x60);
                state[i] = 1;
            }
            if (pos[i] > 0x3FF) {
                pos[i] = 0x400;
                speed[i] = 0;
                state[i] = 2;
            }
        }
        f855_003F0();
        if (gKeys855D4 & 2)
            goto exit;
    }
    f855_5865C(0x177);
    f855_1AA8C(0x3C);
    /* item is scoped to the shop loops: its later pseudo number puts the GCSE
       temps for item+0xD4/+0xD6 before the winBuf.def address (ROM slot order). */
    {
    const struct Item855D4 *item;

    win = &winBuf;
    while (f855_1AAE0() == 0) {
        for (i = 0; i < n; i++) {
            f855_659F4(&ox, pts[i].x, 0x7800, pos[i]);
            f855_659F4(&oy, pts[i].y, 0x5000, pos[i]);
            if (state[i] == 0)
                f855_65230(spriteA, ox >> 8, oy >> 8, 0, 0x1D);
            pos[i] += speed[i];
            if (pos[i] > 0x3FF) {
                pos[i] = 0x400;
                if (state[i] == 0) {
                    f855_5865C(0x60);
                    state[i] = 1;
                    speed[i] = 0;
                }
            }
        }
        f855_003F0();
    }
    f855_020F4();
    f855_0B7DC(0x2E, 0x1A, 0x06000000, 0, 1);
    f855_0B650(0x30, 0x1B, 0x06000000, 0, 1);
    f855_0B650(0x2F, 0x1E, 0x06000000, 0, 1);
    f855_0B650(0x31, 0x1F, 0x06000000, 0, 2);
    f855_0B650(0x49, 0x1D, 0x06000000, 0, 0xF);
    pal = f855_07290(0x70016);
    f855_00AF0(0xF, pal + 0x1E0, 1);
    switch (gLang855D4) {
    case 0:
        f855_65158(gShop855D4->sprite, 0x50006, 0, -1, 0);
        break;
    case 1:
        f855_65158(gShop855D4->sprite, 0x50007, 0, -1, 0);
        break;
    case 2:
        f855_65158(gShop855D4->sprite, 0x50008, 0, -1, 0);
        break;
    case 3:
        f855_65158(gShop855D4->sprite, 0x50009, 0, -1, 0);
        break;
    case 4:
        f855_65158(gShop855D4->sprite, 0x5000A, 0, -1, 0);
        break;
    }
    f855_009F8(0x200, 0, 1);
    f855_009C0(0x1F00, 0, 1);
    j = 0;
    bg.bits.cnt = 0x5A01;
    f855_00AA8(1, &bg.word);
    bg.bits.cnt = 0x5E01;
    f855_00AA8(2, &bg.word);
    bg.bits.cnt = 0x1D03;
    f855_00AA8(3, &bg.word);
    gShop855D4->mode = 0;
    gShop855D4->cat = 0;
    gShop855D4->cursor = 0;
    gShop855D4->index = 0;
    gShop855D4->running = 1;
    gShop855D4->grid = 0;
    for (; j <= 7; j++) {
        win->slots[j].id = 0xFFFF;
        zero = 0;
        f855_CpuSet(&zero, win->slots[j].data, 0x01000018);
    }
    for (count = 0; gTab855D4[count][1] != 0x64; count++)
        last = gTab855D4[count][1];
    f855_003F0();
    f855_1A664(0, 0x13);
    f855_003F0();
    f855_00C08(0xC, 2);
    f855_1AA34(0x14);

    while (gShop855D4->running != 0) {
        s32 r = f855_0CDF8();
        if (r != 0)
        {
            f855_0CCB8();
            f855_0CE54();
            return;
        }
        if (f855_1AAE0() == 0 || f855_58DB0() != 0) {
            gKeys855D4 = r;
            gRep855D4 = r;
            gKey130C855D4 = r;
        }
        if (f855_021A8() != 0)
            return;
        switch (gShop855D4->mode) {
        case 0:
            if (gRep855D4 & 0x80) {
                if (gTab855D4[gShop855D4->index + gShop855D4->cursor + 1][1] == gShop855D4->cat) {
                    gShop855D4->cursor++;
                    f855_5865C(0xE);
                }
            } else if (gRep855D4 & 0x40) {
                if (gShop855D4->cursor != 0) {
                    gShop855D4->cursor--;
                    f855_5865C(0xE);
                }
            } else if (gKeys855D4 & 0x100) {
                f855_5865C(0x177);
                if (++gShop855D4->cat > last)
                    gShop855D4->cat = 0;
                for (i = 0; gTab855D4[i][1] != gShop855D4->cat; i++)
                    ;
                gShop855D4->index = i;
                f855_1A664(0, 0x13);
                gShop855D4->cursor = 0;
            } else if (gKeys855D4 & 0x200) {
                f855_5865C(0x177);
                if (--gShop855D4->cat < 0)
                    gShop855D4->cat = last;
                for (i = 0; gTab855D4[i][1] != gShop855D4->cat; i++)
                    ;
                gShop855D4->index = i;
                f855_1A664(0, 0x13);
                gShop855D4->cursor = 0;
            } else if (gKeys855D4 & 1) {
                f855_5865C(0xF);
                gShop855D4->index += gShop855D4->cursor;
                gShop855D4->shown = gShop855D4->index + 1;
                gShop855D4->mode = 1;
                f855_1A664(0, 0x13);
            } else if (gKeys855D4 & 2) {
                f855_5865C(0x10);
                gShop855D4->running = 0;
            }
            break;
        case 1:
            if (gKeys855D4 & 1) {
                gShop855D4->mode = 3;
                f855_5865C(0xF);
            } else if (gKeys855D4 & 2) {
                for (i = 0; gTab855D4[i][1] != gShop855D4->cat; i++)
                    ;
                gShop855D4->index = i;
                gShop855D4->mode = 0;
                f855_1A664(0, 0x13);
                f855_5865C(0x10);
            } else if (gRep855D4 & 0x20) {
                if (--gShop855D4->index < 0)
                    gShop855D4->index = 0;
                f855_5865C(0x177);
            } else if (gRep855D4 & 0x10) {
                if (++gShop855D4->index >= count)
                    gShop855D4->index = count - 1;
                f855_5865C(0x177);
            } else if (gKeys855D4 & 0x177) {
                gShop855D4->index += 10;
                if (gShop855D4->index >= count)
                    gShop855D4->index = count - 1;
                f855_5865C(0x177);
            } else if (gKeys855D4 & 0x200) {
                gShop855D4->index -= 10;
                if (gShop855D4->index < 0)
                    gShop855D4->index = 0;
                f855_5865C(0x177);
            }
            break;
        case 3:
            if (gKeys855D4 & 1) {
                if (gShop855D4->grid == 0xD
                    && gSave855D4->counts[gTab855D4[gShop855D4->index][0]] != 0) {
                    use.type = 8;
                    use.id = gTab855D4[gShop855D4->index][0];
                    if (f855_5AB20(&use) != 0) {
                        s32 k;
                        gSave855D4->counts[gTab855D4[gShop855D4->index][0]]--;
                        k = gShop855D4->index;
                        gShop855D4->shown = k + 1;
                        if (gSave855D4->counts[gTab855D4[k][0]] == 0)
                            gShop855D4->mode = 1;
                        f855_5865C(0x26);
                    } else {
                        f855_5865C(0x61);
                    }
                }
            } else if (gKeys855D4 & 2) {
                gShop855D4->shown = gShop855D4->index + 1;
                gShop855D4->mode = 1;
                f855_5865C(0xE);
            } else if (gRep855D4 & 0x20) {
                gShop855D4->grid &= ~1;
                f855_5865C(0xE);
            } else if (gRep855D4 & 0x10) {
                gShop855D4->grid |= 1;
                f855_5865C(0xE);
            } else if (gRep855D4 & 0x40) {
                if (gShop855D4->grid > 1) {
                    gShop855D4->grid -= 2;
                    f855_5865C(0xE);
                }
            } else if (gRep855D4 & 0x80) {
                if (gShop855D4->grid <= 0xB) {
                    gShop855D4->grid += 2;
                    f855_5865C(0xE);
                }
            }
            break;
        }

        switch (gShop855D4->mode) {
        case 0:
            gBgOfs855D4[2] = 0;
            gBgOfs855D4[3] = 0;
            gBgOfs855D4[4] = 0;
            gBgOfs855D4[5] = 0;
            for (i = 0; gTab855D4[gShop855D4->index + i][1] == gShop855D4->cat; i++) {
                if (gSave855D4->counts[gTab855D4[gShop855D4->index + i][0]] != 0) {
                    data = f855_07290(gTab855D4[gShop855D4->index + i][0] | 0x120000);
                    f855_0CE30();
                    s = data + gLang855D4 * 0x1F;
                } else {
                    s = gNoName855D4;
                }
                j = 0;
                c = *s;
                while (c != 0) {
                    name[j] = c;
                    j++;
                    s++;
                    c = *s;
                }
                name[j] = 0xFD;
                f855_1A3D0(name, 5, i * 2 + 2);
            }
            gShop855D4->tx = 0x20;
            gShop855D4->ty = gShop855D4->cursor * 16 + 0x18;
            f855_65230(gShop855D4->sprite, gShop855D4->x, gShop855D4->y, 0x15, 0);
            gShop855D4->shown = 0x64;
            {
                s32 t = gShop855D4->cursor + 1;
                f855_5FB7C(0xE, 0x13, gShop855D4->index + t, 0);
            }
            f855_5FB7C(0x12, 0x13, count, 0);
            break;
        case 3:
            {
                u32 g = gShop855D4->grid;
                gShop855D4->tx = (g & 1) * 0x48 + 0x74;
                gShop855D4->ty = (g >> 1) * 8 + 0x24;
            }
        case 1:
            gBgOfs855D4[4] = 0x100;
            gBgOfs855D4[5] = 0;
            gBgOfs855D4[2] = 0x100;
            gBgOfs855D4[3] = 0;
            if (gShop855D4->shown != gShop855D4->index) {
                if (gSave855D4->counts[gTab855D4[gShop855D4->index][0]] != 0) {
                    data = f855_07290(gTab855D4[gShop855D4->index][0] | 0x120000);
                    if (f855_0CE30() != 0)
                        item = &gItemsB855D4[*(u16 *)(data + 0x9E)];
                    else
                        item = &gItemsA855D4[*(u16 *)(data + 0x9E)];
                    s = data + gLang855D4 * 0x1F;
                } else {
                    item = &gNoItem855D4;
                    s = gNoName855D4;
                }
                f855_memcpy(winBuf.item, item, 0xD8);
                j = 0;
                c = *s;
                while (c != 0) {
                    name[j] = c;
                    j++;
                    s++;
                    c = *s;
                }
                name[j] = 0xFD;
                data = f855_07290(gTab855D4[gShop855D4->index][0] | 0x120000);
                text = f855_07290(*(u16 *)(data + 0xA2) | 0x140000);
                s = text + 2;
                i = 0;
                j = 0;
                while (*s != 0xFD) {
                    if (*s == 0xFF) {
                        desc[i][j] = 0xFD;
                        i++;
                        j = 0;
                    } else {
                        desc[i][j] = *s;
                        j++;
                    }
                    s++;
                }
                desc[i][j] = 0xFD;
                f855_1C8F0(win);
                f855_5FB7C(0x14, 4, winBuf.atk, 0);
                f855_5FB7C(0x14, 5, winBuf.def, 0);
                f855_5FB7C(0x14, 6, item->unk8, 0);
                f855_5FB7C(0x14, 7, item->unk0, 0);
                f855_5FB7C(0x14, 8, item->unk2, 0);
                f855_5FB7C(0x14, 9, item->unk4, 0);
                f855_5FB7C(0x14, 0xA, item->unk6, 0);
                f855_5FB7C(0x1B, 4, item->unk14, 0);
                f855_5FB7C(0x1B, 5, item->unk16, 0);
                f855_5FB7C(0x1B, 6, item->unk18, 0);
                f855_5FB7C(0x1B, 7, item->unk1A, 0);
                f855_5FB7C(0x1B, 8, item->unk1C, 0);
                f855_5FB7C(0x1B, 9, item->unk1E, 0);
                gShop855D4->shown = gShop855D4->index;
                f855_65158(&spriteB, gAnim855D4[item->unkD4 + 0xA][0], 4, -1, 0);
                spriteB.unk1C = 4;
                f855_00AF0(0x14, (void *)(spriteB.unkC + (item->unkD6 << 5)), 1);
                f855_5FB7C(0xE, 0x13, gShop855D4->index + 1, 0);
                f855_5FB7C(0x12, 0x13, count, 0);
                f855_5FB7C(0x1B, 0xB, gSave855D4->counts[gTab855D4[gShop855D4->index][0]], 0);
            }
            f855_5FB7C(0x11, 0xC, item->unk6 * 3, 0);
            f855_5FB7C(0x11, 0xD, item->unk4 * 2, 0);
            f855_5FB7C(9, 0xD, item->unk10, 0);
            if (item->unk22 != 0) {
                switch (item->unk22) {
                case 1:
                    text = f855_07290(0x140541);
                    break;
                case 2:
                    text = f855_07290(0x140540);
                    break;
                }
                s = text + 2;
                if (gSave855D4->counts[gTab855D4[gShop855D4->index][0]] != 0)
                    f855_1A3D0(s, 0x12, 0xC);
            }
            f855_1A3D0(name, 0x10 - (f855_1A638(name) >> 1), 1);
            f855_659BC(gShop855D4->sprite, 0xBC, 0x55, 0x25, 0, 1);
            if (gShop855D4->mode == 3) {
                if (gShop855D4->grid == 0xD)
                    f855_65230(gShop855D4->sprite, gShop855D4->x, gShop855D4->y + 8, 0xB, 0);
                else
                    f855_65230(gShop855D4->sprite, gShop855D4->x, gShop855D4->y, 0xB, 0);
                if (gShop855D4->grid <= 0xC) {
                    f855_1A664(0xF, 4);
                    text = f855_07290(gGridText855D4[gShop855D4->grid] | 0x140000);
                    f855_1A3D0(text + 2, 1, 0xF);
                } else {
                    f855_1A664(0xF, 4);
                    text = f855_07290(0x140542);
                    s = text + 2;
                    i = 0;
                    j = 0;
                    while (*s != 0xFD) {
                        if (*s == 0xFF) {
                            desc[i][j] = 0xFD;
                            i++;
                            j = 0;
                        } else {
                            desc[i][j] = *s;
                            j++;
                        }
                        s++;
                    }
                    desc[i][j] = 0xFD;
                    f855_1A3D0(desc[0], 2, 0xF);
                    f855_1A3D0(desc[1], 2, 0x11);
                }
            } else if (gSave855D4->counts[gTab855D4[gShop855D4->index][0]] != 0) {
                f855_1A3D0(desc[0], 1, 0xF);
                f855_1A3D0(desc[1], 1, 0x11);
            } else {
                f855_1A664(0xF, 4);
            }
            {
                if (gSave855D4->counts[gTab855D4[gShop855D4->index][0]] != 0) {
                    switch (gTab855D4[gShop855D4->index][0]) {
                    case 0x75:
                    case 0x76:
                    case 0x77:
                        f855_659BC(&spriteB, 0x34, 0x48, 0, 0, 3);
                        break;
                    case 0x66:
                    case 0x67:
                    case 0x68:
                        f855_659BC(&spriteB, 0x34, 0x5C, 0, 0, 3);
                        break;
                    case 0x90:
                        f855_659BC(&spriteB, 0x34, 0x59, 0, 0, 3);
                        break;
                    case 0x84:
                    case 0x85:
                    case 0x86:
                        f855_659BC(&spriteB, 0x34, 0x56, 0, 0, 3);
                        break;
                    default:
                        switch (item->unk45) {
                        case 0:
                            f855_659BC(&spriteB, 0x34, 0x50, 0, 0, 3);
                            break;
                        case 1:
                            f855_659BC(&spriteB, 0x34, 0x56, 0, 0, 3);
                            break;
                        case 2:
                            f855_659BC(&spriteB, 0x34, 0x5C, 0, 0, 3);
                            break;
                        }
                        break;
                    }
                }
            }
            break;
        }
        gShop855D4->x += (gShop855D4->tx - gShop855D4->x) / 2;
        gShop855D4->y += (gShop855D4->ty - gShop855D4->y) / 2;
        f855_003F0();
    }
    }
exit:
    f855_1ABE8(6);
    while (f855_1AAE0() == 0)
        f855_003F0();
    f855_57624(0x1E);
    pal = f855_07290(0x70003);
    f855_00AF0(0xF, pal + 0x1E0, 1);
    f855_1A664(0, 0x14);
    f855_0CFA4();
    f855_00420(0x11201100);
}
/* [FreeMonsterCardCatalogManager] No arguments or meaningful return. Frees current pointer global0x03006478
 * then clears it; no null check, pointee-zeroing, nested cleanup or task cancellation.0x080867F8 registers it
 * as finalizer for catalog task0x080855D4. Does not restore graphics or reverse deposited/withdrawn records.
 * Complete pinned matching source body and complete original configured range inspected, including long-range
 * continuations. Original range equals copied verified-main ELF; no local build or runtime test. */
void sub_080867E0(void) {
    sub_08001538(gUnk_03006478);
    gUnk_03006478 = 0;
}
struct Task6450b { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern struct Task6450b gTask6450b asm("gUnk_03006450");
extern u32 gW03006478 asm("gUnk_03006478");
extern void sub_08000274_2(void *, u32) asm("sub_08000274");
extern void sub_080867E0();
/* [StartMonsterCardCatalogTask] No arguments or meaningful return. Repeatedly allocates96-byte manager into
 * global0x03006478, yielding on failure, then retries3072-byte stack for fixed task control0x03006450. Sets
 * top+3068, priority100, callback0x080855D4, finalizer0x080867E0, starts with argument0. Does not initialize
 * manager contents itself, check active task, protect previous manager, or wait for catalog closure. Complete
 * pinned matching source body and complete original configured range inspected, including long-range
 * continuations. Original range equals copied verified-main ELF; no local build or runtime test. */
void sub_080867F8(void)
{
    while ((gW03006478 = sub_08001494(0x60)) == 0)
        sub_080003F0();
    while ((gTask6450b.f20 = sub_08001494(0xC00)) == 0)
        sub_080003F0();
    gTask6450b.f10 = gTask6450b.f20 + 0xBFC;
    gTask6450b.f8 = 0x64;
    gTask6450b.f24 = (u32)sub_080867E0;
    gTask6450b.fC = (u32)sub_080855D4;
    sub_08000274_2(&gTask6450b, 0);
}
extern u16 keys86860 asm("gUnk_03001324");
extern void fade86860(u32, u32, u32, u16, u16, u32) asm("sub_0800903C");
extern void reset86860(u64) asm("sub_08000420");
extern void obj86860(void *, u32, u32, u32, u32) asm("sub_08065158");
extern void anim86860(void *, u32, u16 *, u16 *, u32) asm("sub_08065370");
void sub_08088A60(u32, u32);
void sub_080889D4(u32, u32);
void sub_08088A18(u32, u32, s32 *);
void sub_08058688(s32);
void sub_0801AA8C(u32);
void sub_0801AA34(u32);
void sub_080009F8(s32, s32, s32);

#define SKIP_KEYS() if ((keys86860 & 8) && gUnk_03002838 == 0) skip = 1
#define SKIP_KEYS2() if (sub_0801AAE0() != 0 && (keys86860 & 8) && gUnk_03002838 == 0) skip = 1

/* Intro sequence (logo, scrolling scenes, staff texts); any skip jumps to the common exit. */
/* [TaskPlayStoryIntroduction] Runs the story-introduction presentation: changes background assets, animates
 * sprites and scrolling, varies audio volumes and advances timed caption sections through 88A60/889D4. Caption
 * IDs span 0x45D..0x47A. The task uses scheduler waits and counters; no exact elapsed-video-frame duration is
 * asserted. */
void sub_08086860(void)
{
    u8 obj[0x34];
    vu32 zero1;
    u16 pos[2];
    vu32 zero2;
    union { u32 w; u16 h; } bg;
    s32 running;
    u32 skip;
    u16 a, b, c;
    s16 fa, fb;
    u32 i;
    u32 timer, state;
    u32 step;
    u16 val;
    s32 y, d;
    s32 q;
    void *buf;

    gUnk_03001250[1] = 0;
    gUnk_03001250[0] = 0;
    gUnk_03001250[3] = 0;
    gUnk_03001250[2] = 0;
    gUnk_03001250[5] = 0;
    gUnk_03001250[4] = 0;
    gUnk_03001250[7] = 0;
    gUnk_03001250[6] = 0;
    sub_0805F07C();
    skip = 0;
    a = 0;
    sub_080003F0();
    sub_0801A664(0, 0x13);
    sub_080003F0();
    sub_080009F8(0x600, 0, 1);
    sub_080009C0(0x1900, 0, 1);
    bg.w = (bg.w & 0xFFFF0000) | 0x9E03;
    sub_08000AA8(3, (u16 *)&bg);
    sub_0800B650(0x46, 0x1E, 0x06000000, 0, 0xF);
    buf = sub_08001494(0x800);
    zero1 = 0;
    CpuFastSet((void *)&zero1, buf, 0x01000200);
    sub_08001348(buf, (void *)0x0600F800, 0x800);
    sub_08057624(5);
    sub_08001538((s32)buf);
    gUnk_03001250[7] = 200;
    obj86860(obj, 0x5011F, 0, 2, 0);
    sub_0805865C(0x172);
    sub_0805865C(0x171);
    sub_0805865C(0x178);
    val = 4;
    a = 4;
    b = 4;
    i = 1;
    do {
        sub_08006B70(0, val);
        sub_08006B70(1, a);
        val += 8;
        if (val > 0xFF)
            val = 0x100;
        a += 2;
        if (a > 0x4F)
            a = 0x50;
        sub_080003F0();
    } while (i++ <= 0x3B);
    sub_0801AA34(0x78);
    i = 1;
    do {
        b += 2;
        if (b > 0xC7)
            b = 0xC8;
        sub_08006B70(2, b);
        sub_08065230(obj, 0x78, 0x78, 0, 0);
        sub_080003F0();
    } while (i++ <= 0x81);

    timer = 0;
    state = 0;
    val = 0;
    do {
        SKIP_KEYS();
        if (skip)
            goto end;
        if (sub_080021A8())
            goto end;
        switch (state) {
        case 0:
            if (timer++ > 0x1E) {
                sub_0805865C(0x173);
                val = 0x80;
                timer = 0;
                state = 1;
            }
            break;
        case 1:
            if (timer++ > 0x28) {
                sub_0805865C(0x173);
                val = 0xA0;
                timer = 0;
                state = 2;
            }
            break;
        case 2:
            if (timer++ > 0x32) {
                sub_0805865C(0x173);
                val = 0xC0;
                timer = 0;
                state = 3;
            }
            break;
        case 3:
            if (timer++ > 0x64) {
                sub_0805865C(0x173);
                val = 0xF0;
                timer = 0;
                state = 4;
            }
            break;
        case 4:
            if (timer++ > 0xA) {
                sub_0805865C(0x173);
                val = 0x80;
                timer = 0;
                state = 5;
            }
            break;
        }
        sub_08065230(obj, 0x78, 0x78, 0, 0);
        sub_08006B70(3, val);
        sub_080003F0();
    } while (state != 5);

    i = 1;
    do {
        sub_08065230(obj, 0x78, 0x78, 0, 0);
        sub_080003F0();
    } while (i++ <= 0x3B);

    timer = 0;
    state = 0;
    val = 0;
    do {
        SKIP_KEYS();
        if (skip)
            goto end;
        if (sub_080021A8())
            goto end;
        switch (state) {
        case 0:
            if (timer++ > 0x3C) {
                sub_0805865C(0x174);
                val = 0x80;
                timer = 0;
                state = 1;
            }
            break;
        case 1:
            if (timer++ > 0x3C) {
                sub_0805865C(0x174);
                val = 0xA0;
                timer = 0;
                state = 2;
            }
            break;
        case 2:
            if (timer++ > 0x50) {
                sub_0805865C(0x174);
                val = 0xFF;
                timer = 0;
                state = 3;
            }
            break;
        }
        sub_08065230(obj, 0x78, 0x78, 0, 0);
        sub_08006B70(3, val);
        sub_080003F0();
    } while (state != 3);

    y = -0x2800;
    for (;;) {
        SKIP_KEYS();
        if (skip)
            goto end;
        q = y / 5;
        if (q == 0) {
            y++;
            if (y <= 0)
                goto draw;
            goto dropped;
        }
        if (q < 0)
            q = -q;
        y += q;
        if (y > 0)
            goto dropped;
draw:
        sub_08065230(obj, 0x78, (y >> 8) + 0x28, 1, 0);
        sub_08065230(obj, 0x78, 0x78, 0, 0);
        sub_080003F0();
    }
dropped:

    y = 0;
    d = 0x200;
    sub_0805865C(0x175);
    do {
        SKIP_KEYS();
        if (skip)
            goto end;
        if (sub_080021A8())
            goto end;
        y -= d;
        d -= 2;
        if (d <= 0)
            d = 1;
        sub_08065230(obj, 0x78, (y >> 8) + 0x28, 1, 0);
        sub_08065230(obj, 0x78, (y >> 8) + 0x78, 0, 0);
        sub_080003F0();
    } while (y > -0x8C00);

    timer = 0;
    state = 0;
    val = 0;
    y = gUnk_03001250[7] << 8;
    a = 0xFF;
    b = 0x50;
    c = 0xC8;
    while (y != 0) {
        SKIP_KEYS();
        if (skip)
            goto end;
        switch (state) {
        case 0:
            if (timer++ > 0x32) {
                sub_0805865C(0x174);
                val = 0xFF;
                timer = 0;
                state = 1;
            }
            break;
        case 1:
            if (timer++ > 0x32) {
                sub_0805865C(0x174);
                val = 0xC0;
                timer = 0;
                state = 2;
            }
            break;
        case 2:
            if (timer++ > 0x28) {
                sub_0805865C(0x173);
                val = 0x80;
                timer = 0;
                state = 3;
            }
            break;
        case 3:
            if (timer++ > 0x28) {
                sub_0805865C(0x173);
                val = 0xA0;
                timer = 0;
                state = 4;
            }
            break;
        case 4:
            if (timer++ > 0x32) {
                sub_0805865C(0x173);
                val = 0xA0;
                timer = 0;
                state = 5;
            }
            break;
        case 5:
            if (timer++ > 0x5A) {
                sub_0805865C(0x176);
                val = 0xFF;
                timer = 0;
                state = 6;
            }
            break;
        case 6:
            if (timer++ > 0x5A) {
                sub_0805865C(0x177);
                timer = 0;
                state = 7;
            }
            break;
        }
        sub_08006B70(0, a);
        sub_08006B70(1, b);
        if (state != 7)
            sub_08006B70(2, c);
        if (a != 0x64)
            a--;
        if (b != 0xFF)
            b++;
        if (c != 0xA)
            c--;
        gUnk_03001250[7] = y >> 8;
        y -= 0x37;
        if (y < 0)
            y = 0;
        sub_08006B70(3, val);
        sub_080003F0();
    }

    sub_08057624(0x3C);
    sub_0805865C(0x177);
    sub_0801AA8C(0x1E);
    sub_08057624(0x3C);
    obj86860(obj, 0x5011E, 0, 2, 0);
    sub_0800B650(0x45, 0x1E, 0x06000000, 0, 0xF);
    sub_0801AA34(0x1E);
    i = 1;
    do {
        SKIP_KEYS2();
        if (skip)
            goto end;
        if (sub_080021A8())
            goto end;
        sub_08065230(obj, 0x81, 0x77, 0, 0);
        sub_080003F0();
    } while (i++ <= 0x3B);

    i = 0x12E;
    step = 0;
    sub_0805865C(0x179);
    b = 4;
    running = 0;
    do {
        SKIP_KEYS();
        if (skip)
            goto end;
        if (running)
            anim86860(obj, 0, &pos[0], &pos[1], 1);
        else
            pos[0] = 6;
        sub_08065230(obj, 0x81, 0x77, 0, pos[0]);
        if (i++ > 0x12E) {
            switch (step) {
            case 0:
                running = 1;
                sub_08088A60(0x45D, 0x12C);
                break;
            case 1:
                running = 1;
                sub_08088A60(0x45E, 0x12C);
                break;
            case 2:
                running = 1;
                sub_08088A60(0x45F, 0x12C);
                break;
            case 3:
                running = 0;
                sub_0801AA8C(0x1E);
                sub_080586D0(0xA);
                break;
            }
            step++;
            i = 0;
        }
        sub_08006B70(0, a);
        sub_08006B70(2, b);
        if (step != 0) {
            if (a != 4)
                a--;
            if (b != 0xFF)
                b++;
        }
        sub_080003F0();
    } while (step != 4);

    sub_08057624(0x1E);
    sub_0800B650(0x32, 0x1E, 0x06000000, 0, 0xE);
    sub_0800B650(0x33, 0x1F, 0x06000000, 0, 0xE);
    bg.h = 0x1F03;
    sub_08000AA8(3, (u16 *)&bg);
    sub_0801AA34(0x1E);
    i = 0x12E;
    step = 0;
    running = 1;
    a = 4;
    sub_08088A18(0, 0xF, &running);
    while (running) {
        if (i++ > 0x12E) {
            switch (step) {
            case 1:
                sub_080889D4(0x460, 0x12C);
                break;
            case 2:
                sub_080889D4(0x461, 0x12C);
                break;
            case 3:
                sub_080889D4(0x462, 0x12C);
                break;
            case 4:
                running = 0;
                break;
            }
            step++;
            i = 0;
        }
        sub_080003F0();
        SKIP_KEYS2();
        if (skip)
            goto end;
        if (sub_080021A8())
            goto end;
        if (step == 2 && i == 0)
            sub_08058688(0x188);
        if (step > 1) {
            sub_08006B70(0, a);
            a++;
            if (a > 0xFE)
                a = 0xFF;
        }
    }
    sub_0801AA8C(0x1E);
    while (sub_0801AAE0() == 0)
        sub_080003F0();

    sub_0800B650(0x3E, 0x1E, 0x06000000, 0, 0xF);
    bg.h = 0x1E03;
    sub_08000AA8(3, (u16 *)&bg);
    sub_0801AA34(0x1E);
    i = 0x12E;
    step = 0;
    running = 1;
    while (running) {
        if (i++ > 0x12E) {
            switch (step) {
            case 1:
                sub_080889D4(0x463, 0x12C);
                break;
            case 2:
                sub_080889D4(0x464, 0x12C);
                break;
            case 3:
                sub_080889D4(0x465, 0x12C);
                break;
            case 4:
                sub_080889D4(0x466, 0x12C);
                break;
            case 5:
                sub_080889D4(0x467, 0x12C);
                break;
            case 6:
                sub_080889D4(0x468, 0x12C);
                break;
            case 7:
                sub_080889D4(0x469, 0x12C);
                break;
            case 8:
                running = 0;
                break;
            }
            step++;
            i = 0;
        }
        sub_080003F0();
        SKIP_KEYS2();
        if (skip)
            goto end;
    }

    sub_0801AA8C(0x1E);
    sub_08057624(0x1E);
    sub_0800B650(0x41, 0x1E, 0x06000000, 0, 0xF);
    running = 1;
    sub_080008C8();
    step = 0;
    sub_0801AA34(0x1E);
    while (running) {
        if (timer++ > 0x12E) {
            switch (step) {
            case 0:
                sub_080889D4(0x46B, 0x12C);
                break;
            case 1:
                sub_080889D4(0x46C, 0x12C);
                break;
            case 2:
                sub_080889D4(0x46D, 0x12C);
                break;
            case 3:
                sub_080889D4(0x46E, 0x12C);
                break;
            case 4:
                running = 0;
                break;
            }
            step++;
            timer = 0;
        }
        sub_080003F0();
        SKIP_KEYS();
        if (skip)
            goto end;
        if (sub_080021A8())
            goto end;
    }

    sub_0801AA8C(0x1E);
    sub_08057624(0x1E);
    sub_0800B650(0x44, 0x1E, 0x06000000, 0, 0xF);
    running = 1;
    step = 0;
    sub_0801AA34(0x1E);
    while (running) {
        if (timer++ > 0x12E) {
            switch (step) {
            case 0:
                sub_080889D4(0x46F, 0x12C);
                break;
            case 1:
                sub_080889D4(0x470, 0x12C);
                break;
            case 2:
                sub_080889D4(0x471, 0x12C);
                break;
            case 3:
                running = 0;
                break;
            }
            step++;
            timer = 0;
        }
        sub_080003F0();
        SKIP_KEYS2();
        if (skip)
            goto end;
        if (sub_080021A8())
            goto end;
    }

    sub_0801AA8C(0x1E);
    sub_08057624(0x1E);
    sub_0800B650(0x3F, 0x1E, 0x06000000, 0, 0xF);
    running = 1;
    step = 0;
    sub_0801AA34(0x1E);
    while (running) {
        if (timer++ > 0x12E) {
            switch (step) {
            case 0:
                sub_080889D4(0x472, 0x12C);
                break;
            case 1:
                sub_080889D4(0x473, 0x12C);
                break;
            case 2:
                running = 0;
                break;
            }
            step++;
            timer = 0;
        }
        sub_080003F0();
        SKIP_KEYS2();
        if (skip)
            goto end;
        if (sub_080021A8())
            goto end;
    }

    sub_0801AA8C(0x1E);
    sub_08057624(0x1E);
    buf = sub_08001494(0x800);
    zero2 = 0;
    CpuFastSet((void *)&zero2, buf, 0x01000200);
    sub_08001348(buf, (void *)0x0600F000, 0x800);
    sub_08057624(5);
    sub_08001538((s32)buf);
    running = 1;
    step = 0;
    sub_0801AA34(0xA);
    while (running) {
        if (timer++ > 0x12E) {
            switch (step) {
            case 0:
                sub_080889D4(0x474, 0x12C);
                break;
            case 1:
                sub_080889D4(0x475, 0x12C);
                break;
            case 2:
                running = 0;
                break;
            }
            step++;
            timer = 0;
        }
        sub_080003F0();
        SKIP_KEYS2();
        if (skip)
            goto end;
        if (sub_080021A8())
            goto end;
    }

    sub_0801AA8C(0x1E);
    sub_08057624(0x1E);
    sub_0800B650(0x42, 0x1E, 0x06000000, 0, 0xF);
    running = 1;
    step = 0;
    sub_0801AA34(0x1E);
    while (running) {
        if (timer++ > 0x12E) {
            switch (step) {
            case 0:
                sub_080889D4(0x476, 0x12C);
                break;
            case 1:
                sub_080889D4(0x477, 0x12C);
                break;
            case 2:
                running = 0;
                break;
            }
            step++;
            timer = 0;
        }
        sub_080003F0();
        SKIP_KEYS2();
        if (skip)
            goto end;
        if (sub_080021A8())
            goto end;
    }

    sub_0801AA8C(0x1E);
    sub_08057624(0x1E);
    sub_080009C0(0x1D00, 0, 1);
    bg.h = 0x1E03;
    sub_08000AA8(2, (u16 *)&bg);
    bg.h = 0x1F03;
    sub_08000AA8(3, (u16 *)&bg);
    sub_0800B650(0x43, 0x1F, 0x06000000, 0, 0xF);
    sub_0800B650(0x3D, 0x1E, 0x06000000, 0, 0xF);
    running = 1;
    step = 0;
    sub_0801AA34(0x1E);
    fb = 0x10;
    fa = 0;
    while (running) {
        if (step > 2 && timer > 0x3C) {
            fade86860(4, 8, 1, fb, fa, 0);
            if (!(gUnk_03002344 & 7)) {
                if (--fb <= 0)
                    fb = 0;
                if (++fa > 15)
                    fa = 16;
            }
        }
        if (timer++ > 0x12E) {
            switch (step) {
            case 0:
                sub_080889D4(0x478, 0x12C);
                break;
            case 1:
                sub_080889D4(0x479, 0x12C);
                break;
            case 2:
                sub_080889D4(0x47A, 0x12C);
                break;
            case 3:
                break;
            case 4:
                running = 0;
                break;
            }
            step++;
            timer = 0;
        }
        sub_080003F0();
        SKIP_KEYS2();
        if (skip)
            goto end;
        if (sub_080021A8())
            goto end;
    }
    sub_080009F8(0x400, 0, 1);
end:
    running = 0;
    a = 0;
    sub_080586D0(0xA);
    sub_0801ABE8(6);
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_08057624(0x3C);
    sub_0800903C(0, 0, 0, 0, 0, 0);
    reset86860(0x25A112EBFULL);
}
struct Rgb087788 { u16 r:5, g:5, b:5, x:1; };
struct RgbWord087788 { u32 r:5, g:5, b:5, x:1; };
/* Fade a palette range toward grey level `fade & 0x1F` over `fade >> 16` frames. */
/* [TaskFadePaletteBanksTowardGray] r0 packs first palette-bank index in low16 and bank count in high16; r1
 * packs target gray component in low5 and duration in high16. Allocates count*32 snapshot bytes and copies
 * banks from 0x03001F40+first*32. For u16 frame 0 through duration-1, interpolates each RGB5 component from
 * snapshot toward gray using signed division by duration, preserving current destination bit15, queues palette
 * update and yields. Frees snapshot after loop; duration zero still snapshots/frees but does not divide. Does
 * not force final target on exit or check allocation/range. Source uses 32-bit component loads with 2-byte
 * source stride, which must not be silently recast as a proven safe halfword ABI. */
void sub_08087788(u32 palette, u32 fade)
{
    u16 entry = palette;
    u16 width = palette >> 16;
    u16 low = fade;
    u16 duration = fade >> 16;
    u16 target = low & 0x1F;
    u16 *buffer;
    u16 *dst;
    u16 *src;
    u16 frame;
    u32 i, count;

    buffer = sub_08001494(width << 5);
    CpuSet((u8 *)&gUnk_03001F40 + (entry << 5), buffer, (width << 3) | 0x04000000);
    count = width << 4;
    for (frame = 0; frame < duration;) {
        dst = (u16 *)((u8 *)&gUnk_03001F40 + (entry << 5));
        src = buffer;
        for (i = 0; i < count; i++, dst++, src++) {
            ((struct Rgb087788 *)dst)->r = ((struct RgbWord087788 *)src)->r + (s32)((target - ((struct RgbWord087788 *)src)->r) * frame) / duration;
            ((struct Rgb087788 *)dst)->g = ((struct RgbWord087788 *)src)->g + (s32)((target - ((struct RgbWord087788 *)src)->g) * frame) / duration;
            ((struct Rgb087788 *)dst)->b = ((struct RgbWord087788 *)src)->b + (s32)((target - ((struct RgbWord087788 *)src)->b) * frame) / duration;
        }
        frame++;
        sub_08000B38();
        sub_080003F0();
    }
    sub_08001538((u32)buffer);
}
/* [TaskModulatePaletteBanksWhileEnabled] r0 packs low16 first bank/high16 bank count; r1 points to a full-word
 * enable flag. Always allocates and snapshots count*32 bytes first. While pointed word is nonzero, scales each
 * saved RGB5 component by u16 factor/1024 (initial factor100), preserves current destination bit15, queues
 * palette update, yields, then updates factor using signed-halfword lookup table 0x080B9704 and
 * phase-dependent angle/base. Angle wraps to0 only above256; phase changes from global tick modulo3 and timers
 * from RNG modulo10/30. Frees snapshot when flag is zero, without restoring original palette. No allocation,
 * pointer or bank-range checks; no runtime flicker claim. */
void sub_080878AC(u32 arg0, s32 *state)
{
    u16 entry = (u16)arg0;
    u16 width = (u16)(arg0 >> 16);
    u16 *buffer;
    u32 i;
    u32 count;
    u16 factor;
    u16 angle;
    s32 timer;
    u32 phase;
    s32 base;

    buffer = (u16 *)sub_08001494(width << 5);
    CpuSet((u8 *)&gUnk_03001F40 + (entry << 5), buffer, (width << 3) | 0x04000000);
    count = width << 4;
    factor = 0x64;
    angle = 0;
    timer = 10;
    phase = 0;
    base = 0x3D0;
    if (*state != 0) do {
        u16 *dst = (u16 *)((u8 *)&gUnk_03001F40 + (entry << 5));
        u16 *src = buffer;
        for (i = 0; i < count; i++, dst++, src++) {
            ((struct Rgb087788 *)dst)->r = (factor * ((struct RgbWord087788 *)src)->r) >> 10;
            ((struct Rgb087788 *)dst)->g = (factor * ((struct RgbWord087788 *)src)->g) >> 10;
            ((struct Rgb087788 *)dst)->b = (factor * ((struct RgbWord087788 *)src)->b) >> 10;
        }
        sub_08000B38();
        sub_080003F0();
        factor = (u16)(base +
                       ((u32)((s32)gUnk_080B9704[angle] * (0x400 - base)) >> 8));
        switch (phase) {
        case 0:
            angle += 0x30;
            base = 0x3D0;
            break;
        case 1:
            angle += 0x10;
            base = 0x3C8;
            break;
        case 2:
            angle += 4;
            base = 0x380;
            break;
        }
        if (angle > 0x100)
            angle = 0;
        if (--timer == -1) {
            phase = gUnk_03002344 % 3;
            switch (phase) {
            case 0:
                timer = sub_080008C8() % 10;
                break;
            case 1:
                timer = sub_080008C8() % 10;
                break;
            case 2:
                timer = sub_080008C8() % 30;
                break;
            }
        }
    } while (*state != 0);
    sub_08001538((s32)buffer);
}
extern void text087A5C(u8 *, u32, u32) asm("sub_0801A3D0");
extern void close087A5C(u32, u32) asm("sub_0801A664");
extern void fade087A5C(u32, u32, u32, u16, u16, u32) asm("sub_0800903C");
/* Show a centred multi-line message (party names expanded) while fading it in. */
/* [TaskDisplayCenteredSceneMessage] r0 message id is ORed with0x140000 for resource lookup; low16 r1 is
 * iteration limit, high16 layout mode. Initializes eight32-byte lines to0xFD, skips resource header2,
 * handles0xFF newline and0xFE newline plus2 skipped payload bytes, and expands0xF6/F4/F3/F2 from player-name
 * buffers at player-base+2/+0x14E/+0x29A/+0x3E6. Name reads use current output column as index, not separate
 * token-local index. No line/column/resource bounds validation. Each iteration updates blend shadow with
 * coefficients initially0/16, approaching16/0 except tick multiples16; mode0 centers nonempty first4 lines on
 * rows12,14,16,18; mode1 first2 on16,18; mode2 all8 on2..16. Other modes draw no text. */
void sub_08087A5C(u32 msg, u32 arg1)
{
    u8 lines[8][32];
    s16 a;
    s16 b;
    u32 mode;
    u32 row, col;
    u8 *s;
    u8 *d;
    u8 *name;
    u8 *base;
    u8 *name0;
    u32 c;
    register u32 code asm("r0");
    u32 w;

    for (row = 0; row <= 7; row++)
        for (col = 0; col <= 0x1F; col++)
            lines[row][col] = 0xFD;
    s = (u8 *)sub_08007290(msg | 0x140000) + 2;
    row = 0;
    col = 0;
    if (*s != 0xFD) {
        base = (u8 *)gUnk_03003CE0;
        do {
            c = *s;
            code = c;
            if (code == 0xFF) {
                lines[0][col + row * 32] = 0xFD;
                row++;
                col = 0;
            } else if (code == 0xFE) {
                lines[0][col + row * 32] = 0xFD;
                row++;
                col = 0;
                s += 2;
            } else if (code == 0xF6) {
                d = &lines[0][col + row * 32];
                name0 = (u8 *)&gUnk_03003CE0[0] + 2;
                if ((*d = name0[col]) != 0 && *d != 0xFD) {
                    col++;
                    s--;
                }
            } else if (code == 0xF4) {
                d = &lines[0][col + row * 32];
                name = base + 0x14E;
                if ((*d = *(u8 *)(col + (u32)name)) != 0 && *d != 0xFD) {
                    col++;
                    s--;
                }
            } else if (code == 0xF3) {
                d = &lines[0][col + row * 32];
                name = base + 0x29A;
                if ((*d = *(u8 *)(col + (u32)name)) != 0 && *d != 0xFD) {
                    col++;
                    s--;
                }
            } else if (code == 0xF2) {
                d = &lines[0][col + row * 32];
                name = base + 0x3E6;
                if ((*d = *(u8 *)(col + (u32)name)) != 0 && *d != 0xFD) {
                    col++;
                    s--;
                }
            } else {
                lines[0][col + row * 32] = c;
                col++;
            }
            s++;
        } while (*s != 0xFD);
    }
    lines[row][col] = 0xFD;
    mode = arg1 >> 16;
    arg1 &= 0xFFFF;
    a = 0;
    b = 16;
    while (--arg1 != -1) {
        fade087A5C(1, 0x3F, 1, a, b, 0);
        if (gUnk_03002344 & 0xF) {
            if ((s16)++a > 15)
                a = 16;
            if ((s16)--b <= 0)
                b = 0;
        }
        switch (mode) {
        case 0:
            for (row = 0; row <= 3; row++) {
                w = sub_0801A638(lines[row]);
                if (w != 0)
                    text087A5C(lines[row], (u16)(15 - (w >> 1)), (u16)(row * 2 + 12));
            }
            break;
        case 1:
            text087A5C(lines[0], (u16)(15 - ((u32)sub_0801A638(lines[0]) >> 1)), 16);
            text087A5C(lines[1], (u16)(15 - ((u32)sub_0801A638(lines[1]) >> 1)), 18);
            break;
        case 2:
            for (row = 0; row <= 7; row++)
                text087A5C(lines[row], (u16)(15 - ((u32)sub_0801A638(lines[row]) >> 1)), (u16)(row * 2 + 2));
            break;
        }
        if (sub_080021A8() != 0 || sub_0801AAF8() != 0)
            break;
        sub_080003F0();
    }
    close087A5C(0, 0x14);
}
