#include "global.h"

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
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_08006D5C);
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
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_08006E64);
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_08006E84);
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_08006EC8);
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
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_08008C1C);
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_08008CC4);
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_08008D38);
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
void sub_0800903C(u16 a, u16 b, u16 c, u16 d, u16 e, u16 f)
{
    gUnk_03001250[0x40 / 2] = a | (c << 6) | (b << 8);
    gUnk_03001250[0x42 / 2] = d | (e << 8);
    gUnk_03001250[0x44 / 2] = f;
}
void sub_0800907C(s32 arg0) {
    gUnk_030028BC = arg0;
}
