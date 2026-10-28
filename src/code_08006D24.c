#include "global.h"

void sub_08006D5C_(u16 n) __asm__("sub_08006D5C");

void sub_08006E84_(void) __asm__("sub_08006E84");

void sub_08006D24(u16 arg0) {
    u16 temp_r1;

    temp_r1 = arg0;
    if ((u32) temp_r1 <= 0x1ABU) {
        m4aSongNumStartOrChange(temp_r1);
    }
}
void sub_08006D40(u16 arg0) {
    u16 temp_r1;

    temp_r1 = arg0;
    if ((u32) temp_r1 <= 0x1ABU) {
        m4aSongNumStartOrContinue(temp_r1);
    }
}
void sub_08006D5C_(u16 n)
{
    if (n <= 0x1AB)
        m4aSongNumStop(n);
}
void sub_08006D78(u16 arg0) {
    u16 temp_r1;

    temp_r1 = arg0;
    if ((u32) temp_r1 <= 0x1ABU) {
        m4aSongNumContinue(temp_r1);
    }
}
void sub_08006D94(struct MusicPlayerInfo *mplayInfo, struct SongHeader *songHeader) {
    MPlayStart(mplayInfo, songHeader);
}
void sub_08006DA0(struct MusicPlayerInfo *mplayInfo) {
    m4aMPlayStop(mplayInfo);
}
void sub_08006DAC(void) {
    m4aMPlayAllStop();
}
void sub_08006DB8(void) {
    m4aMPlayAllContinue();
}
void sub_08006DC4(struct MusicPlayerInfo *mplayInfo, u16 speed) {
    m4aMPlayFadeOut(mplayInfo, speed);
}
void sub_08006DD4(struct MusicPlayerInfo *mplayInfo, u16 tempo) {
    m4aMPlayTempoControl(mplayInfo, tempo);
}
void sub_08006DE4(struct MusicPlayerInfo *mplayInfo, u16 trackBits, u16 volume) {
    m4aMPlayVolumeControl(mplayInfo, trackBits, volume);
}
void sub_08006DF8(struct MusicPlayerInfo *mplayInfo, u16 trackBits, s16 pitch) {
    m4aMPlayPitchControl(mplayInfo, trackBits, pitch);
}
void sub_08006E0C(struct MusicPlayerInfo *mplayInfo, u16 trackBits, s8 pan) {
    m4aMPlayPanpotControl(mplayInfo, trackBits, pan);
}
void sub_08006E20(struct MusicPlayerInfo *mplayInfo, u16 trackBits, u8 modDepth) {
    m4aMPlayModDepthSet(mplayInfo, trackBits, modDepth);
}
void sub_08006E34(struct MusicPlayerInfo *mplayInfo, u16 trackBits, u8 lfoSpeed) {
    m4aMPlayLFOSpeedSet(mplayInfo, trackBits, lfoSpeed);
}
void sub_08006E48(struct MusicPlayerInfo *mplayInfo) {
    m4aMPlayImmInit(mplayInfo);
}
void sub_08006E54(void) {

}
void sub_08006E58(void) {
    m4aSongNumStart(0x62);
}
void sub_08006E64(u8 v)
{
    gUnk_030028AC = v;
    if (v == 0)
        m4aMPlayStop(&gUnk_030075C0
                     );
}
void sub_08006E84_(void)
{
    u8 *p = sub_08001494(
        0x400);
    gUnk_03002880.fC = sub_08006BC0;
    gUnk_03002880.f10 = p + 0x3FC;
    gUnk_03002880.f20 = p;
    gUnk_03002880.f8 = 1000;
    gUnk_03002880.f18 = 0;
    gUnk_03002880.f0 = 0;
    gUnk_03002880.f24 = sub_08006BE8;
    sub_08000274((void *)&gUnk_03002880,
                 0);
}
void sub_08006EC8(u16 s)
{
    m4aMPlayFadeOut((struct MusicPlayerInfo *)&gUnk_030075C0,
                    s);
}
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_08006EE0);
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_08007164);
s32 sub_08007280(M2C_UNK arg0) {
    return sub_08006EE0(arg0, &gUnk_08E3FB54);
}
s32 sub_08007290(s32 arg0) {
    return sub_08006EE0(arg0, &gUnk_08518938);
}
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_080072A0);
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_08007434);
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_080076C4);
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_08007870);
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_08007974);
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_08007AA4);
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_08007CF0);
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_08007F0C);
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_080081D4);
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_08008500);
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_080087AC);
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_080089DC);
void sub_08008C10(void) {
    sub_08008C1C();
}
extern u32 gW8C1C_28B4 asm("gUnk_030028B4");
extern u32 gW8C1C_28B8 asm("gUnk_030028B8");
extern u32 gW8C1C_28C8 asm("gUnk_030028C8");
extern u32 gW8C1C_28B0 asm("gUnk_030028B0");
extern u32 gW8C1C_28C0 asm("gUnk_030028C0");
extern u32 gW8C1C_28C4 asm("gUnk_030028C4");
struct DispCnt8C1C { u32 mode:3; u32 rest:29; };
extern struct DispCnt8C1C gW8C1C_128C asm("gUnk_0300129C");
extern u32 gW8C1C_28BC asm("gUnk_030028BC");
void sub_08008C1C_v(void) asm("sub_08008C1C");
void sub_08008C1C_v(void)
{
    gW8C1C_28B4 = 0;
    gW8C1C_28B8 = 0;
    gW8C1C_28C8 = 0;
    gW8C1C_28B0 = 0;
    gW8C1C_28C0 = 0;
    gW8C1C_28C4 = 0;
    switch (gW8C1C_128C.mode) {
    case 0:
        gW8C1C_28BC = 0x06010000;
        break;
    case 1:
        gW8C1C_28BC = 0x06010000;
        break;
    case 2:
        gW8C1C_28BC = 0x06010000;
        break;
    case 3:
    case 4:
    case 5:
        gW8C1C_28BC = 0x06014000;
        break;
    }
}
u32 sub_08008CC4(u32 arg0, u16 *arg1, u16 *arg2, u8 *arg3, u32 arg4)
{
    u16 idx = arg0;
    u8 *entry;
    u8 *sub;
    u32 ret;

    if (*(u16 *)(arg3 + 2) < idx)
        return 0;

    entry = arg3 + *(u32 *)(arg3 + 8);
    entry += idx * 12;

    if (*(u16 *)(entry + 4) <= *arg1)
        *arg1 = 0;

    sub = entry + *(u32 *)(entry + 8);
    sub += *arg1 * 4;

    ret = 0;

    if (*(u16 *)(sub + 2) <= *arg2) {
        *arg1 = *arg1 + 1;
        *arg2 = 0;
        if (*(u16 *)(entry + 4) <= *arg1) {
            if (arg4 != 0) {
                *arg1 = 0;
            } else {
                *arg2 = *(u16 *)(sub + 2) + 1;
                *arg1 = *(u16 *)(entry + 4) - 1;
                ret = 1;
            }
        }
    } else {
        *arg2 = *arg2 + 1;
    }
    return ret;
}
#ifdef NONMATCHING
s32 sub_08008D38(u16 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4)
{
    u16 *state = (u16 *)arg1;
    u16 *step = (u16 *)arg2;
    u8 *data = (u8 *)arg3;
    u8 *entry;
    u8 *sub;
    u16 index = arg0;
    u16 count;
    u32 result = 0;

    count = *(u16 *)(data + 2);
    if (count < index)
        return 0;

    entry = data + *(u32 *)(data + 8) + index * 12;
    if (*state & 0x8000)
        *state = *(u16 *)(entry + 4) - 1;

    sub = entry + *(u32 *)(entry + 8) + *state * 4;
    if (*step & 0x8000) {
        *state -= 1;
        *step = *(u16 *)(sub + 2) - 1;
        if (*state & 0x8000) {
            if (arg4 != 0) {
                *state = *(u16 *)(entry + 4) - 1;
            } else {
                *step = 0;
                *state = 0;
                result = 1;
            }
        }
    } else {
        *step -= 1;
    }
    return result;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_08008D38);
#endif
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_08008DB8);
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_08008E74);
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_08008F2C);
void sub_08009014(void) {
    void *var_r4;

    var_r4 = gUnk_030028C0;
    if (var_r4 != NULL) {
        do {
            sub_08007AA4(var_r4);
            var_r4 = M2C_FIELD(var_r4, void **, 4);
        } while (var_r4 != NULL);
    }
}
s32 sub_08009034(void *arg0) {
    return M2C_FIELD(arg0, u16 *, 2) - 1;
}
void sub_0800903C(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5)
{
    u16 a = arg0;
    u16 b = arg1;
    u16 c = arg2;
    u16 d = arg3;
    u16 e = arg4;
    u16 f = arg5;

    gUnk_03001250[0x40 / 2] = a | (c << 6) | (b << 8);
    gUnk_03001250[0x42 / 2] = d | (e << 8);
    gUnk_03001250[0x44 / 2] = f;
}
void sub_0800907C(s32 arg0) {
    gUnk_030028BC = arg0;
}
