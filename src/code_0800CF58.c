#include "global.h"
extern void sub_08014E68();
extern void sub_08000274_2(void *, u32) asm("sub_08000274");
struct Task28 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern struct Task28 gTasks03003C40[] asm("gUnk_03003C40");

void sub_0800CF58(void) {
    gUnk_03003478 |= 0x10000;
}
void sub_0800CF6C(void) {
    gUnk_03003478 &= 0xFFFEFFFF;
}
s32 sub_0800CF80(void) {
    return ((u32) gUnk_03003478 >> 0x10) & 1;
}
void sub_0800CF90(void) {
    gUnk_03003478 |= 0x20000;
}
s32 sub_0800CFA4(void) {
    gUnk_03003478 &= 0xFFFDFFFF;
    return (s32) &gUnk_03003478;
}
s32 sub_0800CFB8(void) {
    return ((u32) gUnk_03003478 >> 0x11) & 1;
}
void sub_0800CFC8(void) {
    gUnk_03003478 |= 0x40000;
}
void sub_0800CFDC(void) {
    gUnk_03003478 &= 0xFFFBFFFF;
}
s32 sub_0800CFF0(void) {
    return ((u32) gUnk_03003478 >> 0x12) & 1;
}
void sub_0800D000(void) {
    gUnk_03003478 |= 0x400000;
}
void sub_0800D014(void) {
    gUnk_03003478 &= 0xFFBFFFFF;
}
s32 sub_0800D028(void) {
    return ((u32) gUnk_03003478 >> 0x16) & 1;
}
void sub_0800D038(void) {
    gUnk_03003478 |= 0x800000;
}
void sub_0800D04C(void) {
    gUnk_03003478 &= 0xFF7FFFFF;
}
s32 sub_0800D060(void) {
    return ((u32) gUnk_03003478 >> 0x17) & 1;
}
void sub_0800D070(void) {
    gUnk_03003478 |= 0x01000000;
}
void sub_0800D084(void) {
    gUnk_03003478 &= 0xFEFFFFFF;
}
s32 sub_0800D098(void) {
    return ((u32) gUnk_03003478 >> 0x18) & 1;
}
void sub_0800D0A8(void) {
    gUnk_03003480[3] = (s32) sub_0800BEC0;
    while (1) {
        gUnk_03003480[8] = (s32) sub_08001494(0x800);
        if (gUnk_03003480[8] != 0) {
            break;
        }
        sub_080003F0();
    }
    gUnk_03003480[4] = gUnk_03003480[8] + 0x7FC;
    gUnk_03003480[2] = 0x64;
    gUnk_03003480[9] = 0;
    sub_08000274(gUnk_03003480, 0);
}
void sub_0800D0F4(void) {
    gUnk_03003478 |= 0x800;
}
void sub_0800D108(void) {
    gUnk_03003478 &= 0xFFFFF7FF;
}
s32 sub_0800D11C(void) {
    return ((u32) gUnk_03003478 >> 0xB) & 1;
}
void sub_0800D12C(void) {
    gUnk_03003478 |= 0x100000;
}
void sub_0800D140(void) {
    gUnk_03003478 &= 0xFFEFFFFF;
}
s32 sub_0800D154(void) {
    return ((u32) gUnk_03003478 >> 0x14) & 1;
}
void sub_0800D164(void) {
    while (1) {
        while (sub_08056E90() == 0 && ((u32) gUnk_03003478 >> 5) & 1) {
            sub_080003F0();
        }
        if (((u32) gUnk_03003478 >> 5) & 1) {
            sub_08057328(0, sub_080277E0);
        }
        while (sub_08056E90() != 0) {
            sub_080003F0();
        }
    }
}
s32 sub_0800D1B0(void) {
    s32 r4;
    s32 idx;
    u8 *pl;
    idx = sub_080020F4();
    pl = (u8 *) gUnk_03003CE0 + idx * 0x14C;
    r4 = 0;
    if (pl[0x68] == 0 || (*(u32 *) (pl + 0x30) & 0x400) || *(u16 *) (pl + 0x20) == 0xC || sub_08058DB0() || sub_0800D11C() || sub_0800CCCC() || sub_0800CDF8()) {
        r4 = 1;
    }
    if (sub_0800CF80() != 0 && sub_08056E50() != 0) {
        r4 = 1;
    }
    switch (gUnk_03003170.curLevel - 2) {
    case 0:
        if (gUnk_03003170.f90 == 7) r4 = 1;
        break;
    case 3:
        if (gUnk_03003170.f90 == 0 || gUnk_03003170.f90 == 0xA) r4 = 1;
        break;
    case 6:
        if (gUnk_03003170.f90 == 0x11) r4 = 1;
        break;
    case 17:
        if (gUnk_03003170.f90 == 2) r4 = 1;
        break;
    case 19:
        if (gUnk_03003170.f90 == 2 || gUnk_03003170.f90 == 4) r4 = 1;
        break;
    case 9:
        if (gUnk_03003170.f90 != 0) break;
    case 10:
    case 12:
        r4 = 1;
        break;
    }
    if (sub_0800CDC0() != 0 && sub_08019C3C() == 0) {
        r4 = 1;
    }
    return r4;
}
void sub_0800D2F4(void) {
    s32 r;
    s32 p;
    r = ((s32 (*)(void)) sub_0801DE60)();
    if (r == 2) {
        goto block_a;
    }
    if (r > 2) {
        goto block_x;
    }
    if (r == 0) {
        goto block_a;
    }
    return;
block_x:
    if (r == 3) {
        goto block_c;
    }
    if (r != 5) {
        return;
    }
block_a:
    p = gUnk_030034E0;
    if (*(u16 *) (p + 0x50) != 0) {
        u16 v = sub_0801E0AC(p + 0x30, 7);
        sub_08067FE0(7, v);
    }
    return;
block_c:
    p = gUnk_030034E0;
    if (*(u16 *) (p + 0x4C) != 0) {
        u16 v = sub_0801E0AC(p + 0x30, 6);
        sub_08067FE0(6, v);
    }
}
#ifdef NONMATCHING
static inline u16 D368_Level(u8 *p) {
    s32 i;
    s32 h = (s8)p[0x6C] * 5;
    for (i = 7; i >= 0; i--) {
        u16 t = gUnk_0847ACE8[i] + h * 2;
        if ((s16)t < 0)
            t = 0;
        if (*(s16 *)(p + 0xC2) >= (s16)t)
            return i;
    }
    return 0;
}
static inline u16 D368_Level2(u8 *p) {
    s32 i;
    s32 h = (s8)p[0x6C] * 5;
    for (i = 7; i >= 0; i--) {
        u16 t = gUnk_0847ACE8[i] + h * 2;
        if ((s16)t < 0)
            t = 0;
        if (*(s16 *)(p + 0xC2) >= (s16)t)
            return i;
    }
    return 0;
}
/* Complete control-flow draft; matching and type audit remain in progress. */
void sub_0800D368(void *arg0) {
    struct PairD36867 { s32 x,y; };
    void *state5Destination67;
    void *retryRecord630, *retryRecord631;
    struct AnimD368 { s32 f0,f4,f8; void *fC; s32 f10,f14,f18; u8 f1C,f1D; u16 f1E; s32 f20,f24,f28,f2C,f30; };
    extern M2C_UNK d368_sub_0800035C() asm("sub_0800035C");
    extern s16 d368_sub_0800086C() asm("sub_0800086C");
    extern M2C_UNK d368_sub_08007870(s32, s32, u32, u32, s32, s32, s32, s32) asm("sub_08007870");
    extern M2C_UNK d368_sub_0800AD04(void *, void *, s32) asm("sub_0800AD04");
    extern M2C_UNK d368_sub_0800BC08(u32, u32, s32 *, s16 *, s32, s32) asm("sub_0800BC08");
    extern M2C_UNK d368_sub_080137A0(u32) asm("sub_080137A0");
    extern M2C_UNK d368_sub_08013CEC(void *) asm("sub_08013CEC");
    extern void d368_sub_08014D60() asm("sub_08014D60");
    extern M2C_UNK d368_sub_0801500C(u16) asm("sub_0801500C");
    extern void d368_sub_080151E0() asm("sub_080151E0");
    extern void d368_sub_0801551C() asm("sub_0801551C");
    extern M2C_UNK d368_sub_08015820(u16) asm("sub_08015820");
    extern M2C_UNK d368_sub_08015B20(u16) asm("sub_08015B20");
    extern M2C_UNK d368_sub_0801A664(s32, s32) asm("sub_0801A664");
    extern u32 d368_sub_0801D34C() asm("sub_0801D34C");
    extern M2C_UNK d368_sub_0801FDD0(void *) asm("sub_0801FDD0");
    extern u8 d368_sub_08057B64(s32) asm("sub_08057B64");
    extern s16 d368_sub_08058688(s32) asm("sub_08058688");
    extern M2C_UNK d368_sub_08058B08(s32, s32) asm("sub_08058B08");
    extern s32 d368_sub_0805BD5C(void *, s32) asm("sub_0805BD5C");
    extern M2C_UNK d368_sub_0805D094() asm("sub_0805D094");
    extern M2C_UNK d368_sub_0805D0E8() asm("sub_0805D0E8");
    extern M2C_UNK d368_sub_0805D13C() asm("sub_0805D13C");
    extern M2C_UNK d368_sub_0805D190() asm("sub_0805D190");
    extern M2C_UNK d368_sub_0805D1E0() asm("sub_0805D1E0");
    extern s32 d368_sub_0805D37C(s32, s32, u32) asm("sub_0805D37C");
    extern M2C_UNK d368_sub_0805D6B8(u16, u32, u32) asm("sub_0805D6B8");
    extern M2C_UNK d368_sub_0805EE6C(s32) asm("sub_0805EE6C");
    extern M2C_UNK d368_sub_0805FAC0(s32, s32, s32, s32) asm("sub_0805FAC0");
    extern M2C_UNK d368_sub_0805FFBC(s32, s32, s32, s32) asm("sub_0805FFBC");
    extern M2C_UNK d368_sub_08060DB0(s32) asm("sub_08060DB0");
    extern M2C_UNK d368_sub_08061688(s32) asm("sub_08061688");
    extern M2C_UNK d368_sub_08065158(struct AnimD368 *, s32, s32, s32, s32) asm("sub_08065158");
    extern s32 *d368_sub_080653CC() asm("sub_080653CC");
    extern M2C_UNK d368_sub_08065654() asm("sub_08065654");
    extern M2C_UNK d368_sub_080657C4(u16, s32) asm("sub_080657C4");
    extern M2C_UNK d368_sub_08065838(u16, s32) asm("sub_08065838");
    extern s32 d368_sub_08065974() asm("sub_08065974");
    extern M2C_UNK d368_sub_08065A90(s32, s32) asm("sub_08065A90");
    extern M2C_UNK d368_sub_08065DAC() asm("sub_08065DAC");
    extern M2C_UNK d368_sub_080660EC(s32 *) asm("sub_080660EC");
    extern M2C_UNK d368_sub_0806617C() asm("sub_0806617C");
    extern M2C_UNK d368_sub_08066220() asm("sub_08066220");
    extern M2C_UNK d368_sub_08067B50() asm("sub_08067B50");
    extern M2C_UNK d368_sub_08067F94(u32, u32, s32) asm("sub_08067F94");
    extern M2C_UNK d368_sub_080680F8(s32) asm("sub_080680F8");
    extern M2C_UNK d368_sub_08069224(s32, u16, void *) asm("sub_08069224");
    extern M2C_UNK d368_sub_0807386C(u16, u32, u32, s32, s32) asm("sub_0807386C");
    extern M2C_UNK d368_sub_08075494(u16) asm("sub_08075494");
    extern M2C_UNK d368_sub_080756EC(u16) asm("sub_080756EC");
    extern M2C_UNK d368_sub_080760E8(u16, u32, u32, u32) asm("sub_080760E8");
    extern M2C_UNK d368_sub_08076A88(u16, u32, u32, u32) asm("sub_08076A88");
    extern M2C_UNK d368_sub_08077444(u16, u32, u32, u32, s32) asm("sub_08077444");
    extern M2C_UNK d368_sub_0807A064(u16) asm("sub_0807A064");
    extern u16 d368_gUnk_0300130C asm("gUnk_0300130C");
    extern u16 d368_gUnk_03001324 asm("gUnk_03001324");
    extern u16 d368_gUnk_03001328 asm("gUnk_03001328");
    extern M2C_UNK d368_gUnk_03001F40 asm("gUnk_03001F40");
    extern s32 d368_gUnk_03002344 asm("gUnk_03002344");
    extern M2C_UNK d368_gUnk_03003170 asm("gUnk_03003170");
    extern u8 d368_gUnk_030034D8 asm("gUnk_030034D8");
    extern void *d368_gUnk_030034E0 asm("gUnk_030034E0");
    extern u16 d368_gUnk_03003CE0 asm("gUnk_03003CE0");
    extern M2C_UNK d368_gUnk_03003E28 asm("gUnk_03003E28");
    extern s32 d368_gUnk_030056F4 asm("gUnk_030056F4");
    extern s32 d368_gUnk_030056FC asm("gUnk_030056FC");
    extern void *d368_gUnk_03005CF4 asm("gUnk_03005CF4");
    extern u8 d368_gUnk_03006410 asm("gUnk_03006410");
    extern u8 d368_gUnk_03006430 asm("gUnk_03006430");
    extern void *d368_gUnk_03006440 asm("gUnk_03006440");
    extern M2C_UNK d368_gUnk_080B9704 asm("gUnk_080B9704");
    extern M2C_UNK d368_gUnk_084790B4 asm("gUnk_084790B4");
    extern M2C_UNK d368_gUnk_08479140 asm("gUnk_08479140");
    extern u32 animationRows338D368[][22] asm("gUnk_08479140");
    struct AnimRow343D368 { u32 first[11]; u32 second[11]; };
    extern struct AnimRow343D368 animationRows343D368[] asm("gUnk_08479140");
    extern u32 animRows3D368[][2][11] asm("gUnk_08479140");
    struct AnimSelD368 { u8 pad[6]; u8 lo:2, idx:4, sel:1, hi:1; };
    extern M2C_UNK d368_gUnk_0847ACE8 asm("gUnk_0847ACE8");
    extern M2C_UNK d368_gUnk_0847ACF8 asm("gUnk_0847ACF8");
    extern s32 d368_sub_080003F0() asm("sub_080003F0");
    extern void d368_sub_08000420() asm("sub_08000420");
    extern u32 d368_sub_080008C8() asm("sub_080008C8");
    extern void d368_sub_08000AF0(u32 palNum, const void *src, u32 numPals) asm("sub_08000AF0");
    extern s32 d368_sub_08001538() asm("sub_08001538");
    extern s32 d368_sub_080020F4() asm("sub_080020F4");
    extern u32 d368_sub_08002164() asm("sub_08002164");
    extern s32 d368_sub_08007290() asm("sub_08007290");
    extern u32 d368_sub_0800BA6C() asm("sub_0800BA6C");
    extern u32 d368_sub_0800BC44() asm("sub_0800BC44");
    extern u32 d368_sub_0800BCA0() asm("sub_0800BCA0");
    extern s32 d368_sub_0800CB78() asm("sub_0800CB78");
    extern s32 d368_sub_0800CB9C() asm("sub_0800CB9C");
    extern void d368_sub_0800CBBC() asm("sub_0800CBBC");
    extern s32 d368_sub_0800CBCC() asm("sub_0800CBCC");
    extern void d368_sub_0800CBEC() asm("sub_0800CBEC");
    extern s32 d368_sub_0800CC38() asm("sub_0800CC38");
    extern s32 d368_sub_0800CC98() asm("sub_0800CC98");
    extern s32 d368_sub_0800CCCC() asm("sub_0800CCCC");
    extern s32 d368_sub_0800CD34() asm("sub_0800CD34");
    extern s32 d368_sub_0800CD8C() asm("sub_0800CD8C");
    extern s32 d368_sub_0800CDC0() asm("sub_0800CDC0");
    extern s32 d368_sub_0800CDF8() asm("sub_0800CDF8");
    extern s32 d368_sub_0800CE68() asm("sub_0800CE68");
    extern s32 d368_sub_0800CF80() asm("sub_0800CF80");
    extern s32 d368_sub_0800CFF0() asm("sub_0800CFF0");
    extern s32 d368_sub_0800D098() asm("sub_0800D098");
    extern s32 d368_sub_0800D11C() asm("sub_0800D11C");
    extern s32 d368_sub_0800D1B0() asm("sub_0800D1B0");
    extern void d368_sub_0800D2F4() asm("sub_0800D2F4");
    extern void d368_sub_08013C3C() asm("sub_08013C3C");
    extern u16 d368_sub_08013E90() asm("sub_08013E90");
    extern void d368_sub_080140AC() asm("sub_080140AC");
    extern void d368_sub_08015E00() asm("sub_08015E00");
    extern s32 d368_sub_0801AAE0() asm("sub_0801AAE0");
    extern s32 d368_sub_0801AC78() asm("sub_0801AC78");
    extern s32 d368_sub_0801CCC8() asm("sub_0801CCC8");
    extern s32 d368_sub_0801DE60() asm("sub_0801DE60");
    extern void d368_sub_0801E024() asm("sub_0801E024");
    extern s32 d368_sub_0801E0AC() asm("sub_0801E0AC");
    extern s32 d368_sub_0801E164() asm("sub_0801E164");
    extern void d368_sub_0801E278() asm("sub_0801E278");
    extern s32 d368_sub_0801E538() asm("sub_0801E538");
    extern void d368_sub_0801F2CC() asm("sub_0801F2CC");
    extern void d368_sub_08021DC4() asm("sub_08021DC4");
    extern void d368_sub_08022180() asm("sub_08022180");
    extern void d368_sub_08022284() asm("sub_08022284");
    extern s32 d368_sub_08056E90() asm("sub_08056E90");
    extern void d368_sub_0805865C() asm("sub_0805865C");
    extern void d368_sub_0805867C() asm("sub_0805867C");
    extern s32 d368_sub_08058DB0() asm("sub_08058DB0");
    extern void d368_sub_0805AD78() asm("sub_0805AD78");
    extern s32 d368_sub_0805D548() asm("sub_0805D548");
    extern void d368_sub_0805D580() asm("sub_0805D580");
    extern u32 d368_sub_0805D5A0() asm("sub_0805D5A0");
    extern u32 d368_sub_0805DF38() asm("sub_0805DF38");
    extern s32 d368_sub_0805EEFC() asm("sub_0805EEFC");
    extern u32 d368_sub_0805EF14() asm("sub_0805EF14");
    extern void d368_sub_0805EF84() asm("sub_0805EF84");
    extern u32 d368_sub_0805EF90() asm("sub_0805EF90");
    extern u32 d368_sub_0805F184() asm("sub_0805F184");
    extern void d368_sub_08065230() asm("sub_08065230");
    extern s32 d368_sub_08065370() asm("sub_08065370");
    extern s32 d368_sub_0806569C() asm("sub_0806569C");
    extern void d368_sub_080659BC() asm("sub_080659BC");
    extern u32 d368_sub_08065D50() asm("sub_08065D50");
    extern u32 d368_sub_08066490() asm("sub_08066490");
    extern u32 d368_sub_080686F4() asm("sub_080686F4");
    extern void d368_sub_080688F8() asm("sub_080688F8");
    extern s32 d368_sub_0806898C() asm("sub_0806898C");
    extern s32 d368_sub_08079FD0(s32) asm("sub_08079FD0");
    extern u16 d368_sub_0807A028() asm("sub_0807A028");
    extern s32 d368_sub_08013BC0() asm("sub_08013BC0");
    extern void d368_sub_0801DD9C() asm("sub_0801DD9C");
    extern s32 d368_sub_0801DF8C() asm("sub_0801DF8C");
    extern u32 d368_sub_08067D74() asm("sub_08067D74");
    extern s32 d368_sub_08016C88() asm("sub_08016C88");
    extern u32 d368_sub_0801DEB8() asm("sub_0801DEB8");
    struct Copy36D368 { u32 words[9]; };
    union HistPtrD368 { u16 *ptr; u16 half[2]; };
    struct PlayerD368 { u16 f0; u8 f2; u8 pad3[9]; u16 fC; u8 padE[2]; u16 f10; u16 f12; u16 f14; u16 f16; u16 f18; u16 f1A; u16 f1C; u8 pad1E[2]; u16 f20; u16 f22; u16 f24; u16 f26; u16 f28; u8 pad2A[2]; u16 f2C; u16 f2E; u32 f30; u16 * f34; u16 f38; u8 pad3A[2]; s16 f3C; u8 pad3E[2]; s16 f40; u8 pad42[6]; s32 f48; u8 pad4C[18]; s16 f5E; u16 f60; u16 f62; u16 f64; u8 f66; u8 f67; u8 f68; u8 pad69[3]; u8 f6C; u8 pad6D[3]; u8 f70; u8 f71; u8 pad72[7]; u8 f79; u8 pad7A[14]; u32 f88; s32 f8C; s32 f90; s32 f94; u8 pad98[4]; s32 f9C; s32 fA0; s32 fA4; u8 padA8[4]; union HistPtrD368 fAC; u16 fB0; u16 fB2; u16 fB4; u16 fB6; u16 fB8; u16 fBA; u16 fBC; u16 fBE; u16 fC0; u16 fC2; u16 fC4; s16 fC6; u8 padC8[16]; s32 fD8; s32 fDC; s32 fE0; u8 padE4[44]; u32 f110; u16 f114; u8 pad116[8]; u16 f11E; u8 pad120[2]; u16 f122; s16 f124; u16 f126[5]; u16 f130; u16 f132; u16 f134; u16 f136; u8 pad138[4]; u16 * f13C; void * f140; void * f144; void * f148; };
    struct InvD368 { u8 pad0[0x54]; u16 f54; u16 f56[8]; };
    struct EffectD368 { s16 f0; u16 f2, f4, f6; u8 pad8[16]; s32 f18; u8 tail[12]; };
    struct PeerD368 { u8 f0; u8 pad1[0xB]; s16 fC; u8 padE[6]; s32 f14; s32 f18; u8 pad1C[0x2E]; u16 f4A; s32 f4C; u8 pad50[4]; s32 f54; u16 f58; u16 f5A; u8 pad5C[6]; s16 f62; u8 pad64[0x28]; struct EffectD368 effects[8]; u8 pad1CC[0x10]; u8 f1DC; u8 tail[0x2E0 - 0x1DD]; };
    extern struct PeerD368 *peersD368 asm("gUnk_030056F4");
    union RecordD368 { struct { u32 value:4; } w0_b0_n4; struct { u32 gap:4; u32 value:12; } w0_b4_n12; struct { u32 gap:16; u32 value:12; } w0_b16_n12; struct { u32 gap:28; u32 value:4; } w0_b28_n4; struct { u32 word0; u32 value:6; } w1_b0_n6; struct { u32 word0; u32 gap:6; u32 value:1; } w1_b6_n1; struct { u32 word0; u32 gap:6; u32 value:4; } w1_b6_n4; struct { u32 word0; u32 gap:6; u32 value:6; } w1_b6_n6; struct { u32 word0; u32 gap:6; u32 value:8; } w1_b6_n8; struct { u32 word0; u32 gap:10; u32 value:1; } w1_b10_n1; struct { u32 word0; u32 gap:11; u32 value:8; } w1_b11_n8; struct { u32 word0; u32 gap:12; u32 value:6; } w1_b12_n6; struct { u32 word0; u32 gap:14; u32 value:3; } w1_b14_n3; struct { u32 word0; u32 gap:17; u32 value:3; } w1_b17_n3; struct { u32 word0; u32 gap:18; u32 value:4; } w1_b18_n4; struct { u32 word0; u32 gap:19; u32 value:5; } w1_b19_n5; struct { u32 word0; u32 gap:20; u32 value:5; } w1_b20_n5; struct { u32 word0; u32 gap:22; u32 value:1; } w1_b22_n1; struct { u32 word0; u32 gap:23; u32 value:1; } w1_b23_n1; struct { u32 word0; u32 gap:25; u32 value:3; } w1_b25_n3; struct { u32 word0; u32 gap:28; u32 value:1; } w1_b28_n1; };
    struct AnimD368 sp10;
    struct AnimD368 sp44;
    struct AnimD368 sp78;
    struct AnimD368 spAC;
    u8 spE0[0x10];
    u8 *spE0Record;
    s16 coordF0;
    s16 coordF2;
    u16 coordF4;
    u16 coordF6;
    s16 coordF8;
    s16 coordFA;
    u16 coordFC;
    u16 coordFE;
    u64 historyPair;
    struct LRecD368 { u32 b0:8; u32 b1:8; u32 b2:8; u32 b3:8; u32 lo16:16; u32 hi16:16; } localRecord;
    u32 localDirectionD368;
    u32 angleWordD368;
    u32 localDamageD368;
    s32 stackArg0, stackArg1, stackArg2, stackArg3;
    union ColorUnion297D368 { u32 word; struct { unsigned red:5, green:5, blue:5, unused:17; } bits; } colorStorage294D368;
    u32 sp114;
    s32 sp118;
    s32 sp11C;
    s32 sp120;
    s32 sp124;                                      /* compiler-managed */
    u32 sp128;
    void *sp12C;
    s32 sp130;
    s32 sp134;
    s16 *thresholdStatD368;
    s32 thresholdBias0D368, thresholdBias1D368, thresholdBias3D368, thresholdBias4D368;
    s32 sp138;
    s32 sp13C;
    u32 sp140;
    u32 sp144;
    s32 sp148;                                      /* compiler-managed */
    s32 sp14C;
    u32 sp150;
    u32 sp154;
    u32 sp158;
    s32 sp15C;
    s32 sp160;
    u32 sp164;
    u32 sp168;
    u32 sp16C;
    s32 sp170;                                      /* compiler-managed */
    u32 sp174;
    s32 *sp178;
    s32 sp17C;
    void *sp180;
    s32 sp184;
    s32 sp188;
    s32 sp18C;
    s32 sp190;
    u16 sp194;
    s32 sp198;
    s32 regenerationBaseD368;
    s32 regenerationTermD368;
    s32 sp19C;
    s32 sp1A0;
    u32 sp1A4;
    s32 sp1A8;
    u32 propagationBitD368, propagationMaskD368;
    void *lookupStats;
    u32 recordCallValue1, recordCallValue2;
    s32 availableCount0, availableCount1;
    s16 *temp_r0;
    s16 *var_r1_16;
    u32 resourceLimitWord319D368;
    extern u8 byteTable6410D368[] asm("gUnk_03006410");
    extern u8 actorByteState315D368[] asm("gUnk_03006430");
    extern struct PlayerD368 effectOwnerTableD368[] asm("gUnk_03003CE0");
    extern u32 ownerWords366D368[][83] asm("gUnk_03003CE0");
    extern const u16 effectThresholdTableD368[] asm("gUnk_0847ACF8");
    extern const u8 directionTableD368[] asm("gUnk_084790B4");
    extern const s16 colorWaveTableD368[] asm("gUnk_080B9704");
    struct RenderColorEntryD368 { u8 reserved[0x1E]; u16 color; };
    extern struct RenderColorEntryD368 renderColorEntriesD368[] asm("gUnk_03001F40");
    struct PalBufD368 { u16 c[0x40][16]; };
    s32 temp_r0_52;
    s32 temp_r0_53;
    s32 temp_r0_54;
    s32 temp_r1_10;
    s32 temp_r1_9;
    s32 temp_r2_13;
    s32 temp_r3_3;
    s32 temp_r3_56;
    s32 temp_r3_57;
    s32 temp_r3_58;
    s32 temp_r3_59;
    s32 temp_r3_60;
    s32 temp_r3_62;
    s32 temp_r3_63;
    s32 temp_r3_6;
    s32 temp_r4_2;
    s32 temp_r4_39;
    s32 temp_r5_13;
    s32 var_r0_12;
    s32 var_r0_26;
    s32 var_r0_32;
    s32 var_r0_36;
    s32 var_r0_38;
    s32 var_r0_40;
    s32 var_r0_41;
    s32 var_r1_26;
    s32 var_r1_27;
    s32 renderMaskD368;
    s32 var_r1_28;
    s32 var_r2_16;
    s32 *temp_r1_4;
    s32 *temp_r2_2;
    s32 *temp_r3;
    s32 *var_r0;
    s32 *var_r1_14;
    s32 *var_r4_3;
    s32 temp_r0_100;
    s32 temp_r0_102;
    s32 temp_r0_104;
    s32 temp_r0_107;
    s32 temp_r0_109;
    s32 temp_r0_110;
    s32 temp_r0_112;
    s32 temp_r0_116;
    s32 temp_r0_117;
    s32 temp_r0_119;
    s32 temp_r0_12;
    s32 temp_r0_15;
    s32 temp_r0_160;
    s32 temp_r0_164;
    s32 temp_r0_165;
    s32 temp_r0_2;
    s32 temp_r0_30;
    s32 temp_r0_31;
    s32 temp_r0_34;
    s32 temp_r0_35;
    s32 temp_r0_36;
    s32 temp_r0_3;
    s32 temp_r0_40;
    s32 temp_r0_44;
    s32 temp_r0_48;
    s32 temp_r0_4;
    s32 temp_r0_56;
    s32 temp_r0_65;
    s32 temp_r0_66;
    s32 temp_r0_68;
    s32 temp_r0_69;
    s32 temp_r0_70;
    s32 temp_r0_71;
    s32 temp_r0_72;
    s32 temp_r0_73;
    s32 temp_r0_74;
    s32 temp_r0_75;
    s32 temp_r0_76;
    s32 temp_r0_79;
    s32 temp_r0_84;
    s32 temp_r0_85;
    s32 temp_r0_86;
    s32 temp_r0_88;
    s32 temp_r0_94;
    s32 temp_r0_95;
    s32 temp_r0_96;
    s32 temp_r0_97;
    s32 temp_r0_98;
    s32 temp_r1_19;
    s32 temp_r1_22;
    s32 temp_r1_26;
    s32 temp_r1_34;
    s32 temp_r1_35;
    s32 temp_r1_36;
    s32 temp_r1_37;
    s32 temp_r1_38;
    s32 temp_r1_39;
    s32 temp_r1_40;
    s32 temp_r1_56;
    s32 temp_r1_58;
    s32 temp_r1_59;
    s32 temp_r1_62;
    s32 temp_r3_61;
    s32 temp_r4_48;
    s32 temp_r4_4;
    s32 temp_r5_12;
    s32 temp_r5_2;
    s32 temp_r5_4;
    s32 temp_r8;
    s32 var_ip;
    s32 var_r0_10;
    s32 var_r0_13;
    s32 var_r0_14;
    s32 var_r0_15;
    s32 var_r0_18;
    s32 var_r0_19;
    s32 var_r0_20;
    s32 var_r0_21;
    s32 var_r0_22;
    s32 var_r0_23;
    s32 var_r0_24;
    s32 var_r0_25;
    s32 var_r0_27;
    s32 var_r0_28;
    s32 var_r0_2;
    s32 var_r0_30;
    s32 var_r0_35;
    s32 var_r0_39;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r0_6;
    s32 var_r0_7;
    s32 var_r0_8;
    s32 var_r1_10;
    s32 var_r1_12;
    s32 var_r1_17;
    s32 var_r1_19;
    s32 var_r1_25;
    s32 var_r1_6;
    s32 var_r1_8;
    s32 var_r1_9;
    s32 var_r4_11;
    s32 var_r5_7;
    s32 var_r5_8;
    s32 directionD36874;
    s32 var_r0_31;
    u16 *temp_r0_90;
    u16 *temp_r1;
    u16 *var_r2;
    u16 *var_r3_2;
    u16 *var_r3_3;
    u16 *var_r3_4;
    u16 *var_r3_5;
    struct EffectD368 *var_r6;
    s32 temp_r0_101;
    s32 temp_r0_103;
    s32 temp_r0_106;
    s32 temp_r0_108;
    s32 temp_r0_10;
    s32 temp_r0_118;
    s32 temp_r0_11;
    s32 temp_r0_125;
    s32 temp_r0_127;
    s32 temp_r0_131;
    s32 temp_r0_132;
    s32 temp_r0_133;
    s32 temp_r0_134;
    s32 temp_r0_135;
    s32 temp_r0_136;
    s32 temp_r0_137;
    s32 temp_r0_138;
    s32 temp_r0_139;
    s32 temp_r0_13;
    s32 temp_r0_140;
    s32 temp_r0_141;
    s32 temp_r0_143;
    s32 temp_r0_144;
    s32 temp_r0_145;
    s32 temp_r0_146;
    s32 temp_r0_148;
    s32 temp_r0_149;
    s32 temp_r0_150;
    s32 temp_r0_151;
    s32 temp_r0_152;
    s32 temp_r0_153;
    s32 temp_r0_155;
    s32 temp_r0_166;
    s32 temp_r0_16;
    s32 temp_r0_17;
    s32 temp_r0_20;
    s32 temp_r0_26;
    s32 temp_r0_27;
    u32 temp_r0_28;
    s32 temp_r0_29;
    u32 temp_r0_32;
    s32 temp_r0_33;
    u32 temp_r0_37;
    s32 temp_r0_38;
    s32 temp_r0_41;
    u32 temp_r0_42;
    u32 temp_r0_45;
    s32 temp_r0_46;
    s32 temp_r0_49;
    u32 temp_r0_50;
    u32 temp_r0_57;
    s32 temp_r0_58;
    s32 temp_r0_5;
    u32 temp_r0_61;
    s32 temp_r0_62;
    s32 temp_r0_77;
    s32 temp_r0_7;
    s32 temp_r0_80;
    s32 temp_r0_87;
    s32 temp_r0_8;
    s32 temp_r0_99;
    s32 temp_r0_9;
    s32 temp_r1_18;
    s32 temp_r1_21;
    s32 temp_r1_23;
    s32 temp_r1_24;
    s32 temp_r1_25;
    s32 temp_r1_27;
    s32 temp_r1_28;
    s32 temp_r1_29;
    s32 temp_r1_30;
    s32 temp_r1_31;
    u16 temp_r1_32;
    s32 temp_r1_33;
    s32 temp_r1_41;
    s32 temp_r1_51;
    s32 temp_r1_53;
    s32 temp_r1_8;
    u16 temp_r2_10;
    u16 temp_r2_11;
    s32 temp_r2_12;
    s32 temp_r2_14;
    s32 temp_r2_16;
    s32 temp_r2_18;
    s32 temp_r2_19;
    u16 temp_r2_7;
    u16 temp_r2_8;
    s32 temp_r2_9;
    s32 temp_r3_4;
    s32 temp_r3_5;
    s32 temp_r3_7;
    s32 temp_r3_8;
    s32 temp_r5;
    s32 temp_r5_11;
    u16 temp_r5_8;
    s32 var_r0_16;
    s32 var_r0_17;
    s32 var_r0_33;
    s32 var_r0_34;
    s32 var_r0_37;
    s32 var_r0_9;
    s32 var_r1_11;
    u32 var_r2_10;
    s32 var_r2_17;
    s32 var_r2_2;
    s32 var_r2_3;
    u16 var_r2_4;
    u16 var_r2_5;
    u16 var_r2_6;
    u16 var_r2_7;
    u16 var_r2_8;
    u16 var_r2_9;
    s32 var_r3_14;
    u32 var_r3_6;
    s32 var_r3_8;
    u32 *var_r3_13;
    u32 temp_r0_105;
    u32 temp_r0_113;
    u32 temp_r0_114;
    u32 temp_r0_115;
    u32 temp_r0_122;
    u32 temp_r0_123;
    u32 temp_r0_124;
    u32 temp_r0_126;
    u32 temp_r0_128;
    u32 temp_r0_129;
    u32 temp_r0_130;
    u32 temp_r0_142;
    u32 temp_r0_147;
    u32 temp_r0_154;
    u32 temp_r0_156;
    u32 temp_r0_157;
    u32 temp_r0_161;
    u32 temp_r0_162;
    u32 temp_r0_163;
    u32 temp_r0_167;
    u32 temp_r0_168;
    u32 temp_r0_169;
    u32 temp_r0_170;
    u32 temp_r0_18;
    u32 temp_r0_39;
    u32 temp_r0_43;
    u32 temp_r0_47;
    u32 temp_r0_51;
    u32 temp_r0_59;
    u32 temp_r0_60;
    u32 temp_r0_63;
    u32 temp_r0_64;
    u32 temp_r0_81;
    u32 temp_r0_82;
    u32 temp_r0_83;
    u32 temp_r0_89;
    u32 temp_r0_91;
    u32 temp_r0_92;
    u32 temp_r0_93;
    u32 temp_r1_2;
    u32 temp_r1_3;
    u32 temp_r1_42;
    u32 temp_r1_46;
    u32 temp_r1_50;
    u32 temp_r1_52;
    u32 temp_r1_57;
    u32 temp_r1_60;
    u32 temp_r1_61;
    u32 temp_r1_6;
    u32 temp_r1_7;
    u32 temp_r2;
    u32 temp_r2_3;
    u32 temp_r2_48;
    u32 temp_r2_4;
    u32 temp_r2_5;
    u32 temp_r2_61;
    u32 temp_r2_6;
    u32 temp_r3_2;
    u32 temp_r4;
    u32 temp_r4_37;
    u32 temp_r4_38;
    u32 temp_r4_3;
    u32 var_r1_18;
    u32 var_r1_20;
    u32 var_r1_21;
    u32 var_r1_22;
    u32 var_r2_12;
    u32 var_r2_13;
    u32 var_r2_14;
    u32 var_r3_11;
    u32 var_r3_12;
    u32 var_r4_10;
    u32 var_r5;
    u32 var_r6_8;
    s32 temp_r0_111;
    s32 temp_r0_14;
    s32 temp_r0_55;
    s32 temp_r0_67;
    s32 temp_r0_6;
    s32 temp_r1_44;
    s32 temp_r1_47;
    u32 temp_r1_54;
    s32 temp_r2_15;
    s32 temp_r2_17;
    s32 temp_r2_60;
    s32 var_r1_13;
    s32 var_r1_15;
    s32 var_r2_11;
    u32 var_r2_15;
    s32 var_r3_10;
    s32 var_r3_9;
    void **var_r5_10;
    void **var_r5_9;
    register void *temp_r0_120 asm("r8");
    void *temp_r0_158;
    void *temp_r0_159;
    void *temp_r0_22;
    void *temp_r0_23;
    void *temp_r0_24;
    void *temp_r0_25;
    void *temp_r1_13;
    void *temp_r1_14;
    void *temp_r1_15;
    void *temp_r1_16;
    void *temp_r1_45;
    void *temp_r1_48;
    void *temp_r1_55;
    void *temp_r2_20;
    void *temp_r2_21;
    void *temp_r2_22;
    void *temp_r2_23;
    void *temp_r2_24;
    void *temp_r2_25;
    void *temp_r2_26;
    void *temp_r2_27;
    void *temp_r2_28;
    void *temp_r2_29;
    void *temp_r2_30;
    void *temp_r2_31;
    void *temp_r2_32;
    void *temp_r2_33;
    void *temp_r2_34;
    void *temp_r2_35;
    void *temp_r2_36;
    void *temp_r2_37;
    void *temp_r2_38;
    void *temp_r2_39;
    void *temp_r2_40;
    void *temp_r2_41;
    void *temp_r2_42;
    void *temp_r2_43;
    void *temp_r2_44;
    void *temp_r2_45;
    void *temp_r2_46;
    void *temp_r2_47;
    void *temp_r2_49;
    void *temp_r2_50;
    void *temp_r2_51;
    void *temp_r2_52;
    void *temp_r2_53;
    void *temp_r2_54;
    void *temp_r2_55;
    void *temp_r2_56;
    void *temp_r2_57;
    void *temp_r2_58;
    void *temp_r2_59;
    void *temp_r2_63;
    void *temp_r3_10;
    void *temp_r3_11;
    void *temp_r3_12;
    void *temp_r3_13;
    void *temp_r3_14;
    void *temp_r3_15;
    void *temp_r3_16;
    void *temp_r3_17;
    void *temp_r3_18;
    void *temp_r3_19;
    void *temp_r3_20;
    void *temp_r3_21;
    void *temp_r3_22;
    void *temp_r3_23;
    void *temp_r3_24;
    void *temp_r3_25;
    void *temp_r3_26;
    void *temp_r3_27;
    void *temp_r3_28;
    void *temp_r3_29;
    void *temp_r3_30;
    void *temp_r3_31;
    void *temp_r3_32;
    void *temp_r3_33;
    void *temp_r3_34;
    void *temp_r3_35;
    void *temp_r3_36;
    void *temp_r3_37;
    void *temp_r3_38;
    void *temp_r3_39;
    void *temp_r3_40;
    void *temp_r3_41;
    void *temp_r3_42;
    void *temp_r3_43;
    void *temp_r3_44;
    void *temp_r3_45;
    void *temp_r3_46;
    void *temp_r3_47;
    void *temp_r3_48;
    void *temp_r3_49;
    void *temp_r3_50;
    void *temp_r3_51;
    void *temp_r3_52;
    void *temp_r3_53;
    void *temp_r3_54;
    void *temp_r3_55;
    void *temp_r3_9;
    void *temp_r4_13;
    void *temp_r4_14;
    void *temp_r4_15;
    void *temp_r4_16;
    void *temp_r4_17;
    void *temp_r4_18;
    void *temp_r4_19;
    void *temp_r4_20;
    void *temp_r4_21;
    void *temp_r4_22;
    void *temp_r4_23;
    void *temp_r4_24;
    void *temp_r4_25;
    void *temp_r4_26;
    void *temp_r4_27;
    void *temp_r4_28;
    void *temp_r4_29;
    void *temp_r4_30;
    void *temp_r4_31;
    void *temp_r4_32;
    void *temp_r4_33;
    void *temp_r4_34;
    void *temp_r4_35;
    void *temp_r4_36;
    void *temp_r4_40;
    void *temp_r4_41;
    void *temp_r4_42;
    void *temp_r4_43;
    void *temp_r4_44;
    void *temp_r4_45;
    void *temp_r4_46;
    void *temp_r5_10;
    void *temp_r5_9;
    void *var_r1_24;
    void *var_r1_29;
    void *var_r3_7;
    void *var_r5_6;

    d368_sub_08065158(&sp44, 0x5008C, 0, -1, (0));
    sp44.f1C = 7;
    sp44.f1D = 8;
    d368_sub_08065158(&spAC, 0x5008B, 0, -1, (0));
    spAC.f1C = 7;
    spAC.f1D = 8;
    coordFA = 0;
    coordF8 = 0;
    d368_sub_08065158(&sp78, 0x50010, 0, -1, (0));
    sp178 = d368_sub_080653CC();
    d368_sub_0807A064(((struct PlayerD368 *)arg0)->f0);
    ((struct PlayerD368 *)arg0)->fB4 = 0U;
    temp_r0 = (arg0 + 0xB4) - 2;
    *temp_r0 = 0;
    *(temp_r0 - 0x1) = 0;
    ((struct PlayerD368 *)arg0)->fB8 = 0xFFFFU;
    ((struct PlayerD368 *)arg0)->fD8 = 0;
    ((struct PlayerD368 *)arg0)->f122 = -1U;
    ((struct PlayerD368 *)arg0)->f68 = 1U;
    sp118 = 0;
    sp130 = 0;
    sp120 = 3;
    sp144 = 0x64;
    sp14C = 0;
    coordFE = 0;
    coordFC = sp118;
    sp138 = 0;
    sp18C = 1;
    sp198 = 0;
    sp15C = 0;
    sp1A0 = 0;
    sp19C = 0;
    sp150 = 0;
    sp1A4 = 0;
    sp148 = 0;
    sp16C = 0x64;
    sp168 = (u32) M2C_FIELD(&((struct PlayerD368 *)arg0)->f1C, u8 *, 0);
    sp194 = 0xFFFF;
    sp170 = 0;
    sp12C = ((struct PlayerD368 *)arg0)->f140;
    sp180 = ((struct PlayerD368 *)arg0)->f148;
    if (((struct PlayerD368 *)arg0)->f20 != 0xD) {
        d368_sub_0801E024(arg0);
        d368_sub_0801DD9C();
    }
    ((struct PlayerD368 *)arg0)->fC4 = (u16) ((struct PlayerD368 *)arg0)->f62;
    ((struct PlayerD368 *)arg0)->fC2 = (u16) ((struct PlayerD368 *)arg0)->f60;
    ((struct PlayerD368 *)arg0)->fDC = (s32) ((u32) ((struct PlayerD368 *)arg0)->f0 << 0x18);
    sp128 = 0;
    do {
        ((u32 *)(arg0 + 0xE4))[sp128] = 0;
        temp_r2 = sp128 + 1;
        sp128 = temp_r2;
    } while (temp_r2 <= 4U);
    ((struct PlayerD368 *)arg0)->f114 = 0U;
    if (((struct PlayerD368 *)arg0)->f20 != 0xD) {
        d368_sub_08060DB0(1);
        d368_sub_08061688(1);
        d368_sub_08015E00(arg0);
        ownerWords366D368[d368_sub_080020F4()][12] |= 1;
        ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 | 0x800);
        d368_sub_0800D2F4();
        d368_sub_08067B50();
        d368_sub_08065DAC();
        d368_sub_08065D50();
    }
    while ((((struct PlayerD368 *)arg0)->f2 == 0) || !(1 & M2C_FIELD(d368_gUnk_03005CF4, u16 *, 4))) {
        d368_sub_080003F0();
    }
    d368_sub_08065838(((struct PlayerD368 *)arg0)->f0, 0x78);
    while (d368_sub_0800CB78() == 0) {
        while (d368_sub_0800CD34() != 0) {
            d368_sub_080003F0();
        }
        if (sp168 != sp16C) {
            sp168 = sp16C;
            sp128 = 1;
            do {
                struct HistD368 { u16 a; s16 b; } *h = (struct HistD368 *)((struct PlayerD368 *)arg0)->fAC.ptr;
                h[sp128].a = h[sp128 - 1].a;
                temp_r4 = sp128 + 1;
                sp128 = temp_r4;
            } while (temp_r4 <= 0x1FU);
            M2C_FIELD(((struct PlayerD368 *)arg0)->fAC.ptr, u16 *, 0) = (u16) ((u16) M2C_FIELD(sp180, u16 *, 0) >> 4);
            M2C_FIELD(((struct PlayerD368 *)arg0)->fAC.ptr, s16 *, 2) = (s16) ((u32) ((u32) M2C_FIELD(sp180, u16 *, 2) << 0x14) >> 0x14);
        }
        if (((struct PlayerD368 *)arg0)->f20 == 0xD) {

        } else {
            if (d368_sub_0805EF90() == 0) {
                ((struct PlayerD368 *)arg0)->f18 = 1U;
                ((struct PlayerD368 *)arg0)->f1A = 2U;
                sp174 = (u32) (u8) (sp174 + 1);
            } else {
                ((struct PlayerD368 *)arg0)->f18 = 0U;
                ((struct PlayerD368 *)arg0)->f1A = 0U;
                sp174 = 0;
            }
            if (d368_sub_0800CD8C() == 0) {
                d368_sub_0801DD9C();
            }
            if ((d368_sub_0800CC98() == 0) && (d368_sub_08058DB0() == 0)) {
                s16 *statLimitD368;
                d368_sub_08013C3C(arg0);
                temp_r1_2 = (sp144 << 0x10) + 0x10000;
                statLimitD368 = &((struct PlayerD368 *)arg0)->f5E;
                sp144 = temp_r1_2 >> 0x10;
                if ((s32) ((s32) temp_r1_2 >> 0x10) >= (s32) *statLimitD368) {
                    sp144 = (u32) (u16) *statLimitD368;
                }
                ((s32 *)&historyPair)[d368_gUnk_03002344 & 1] = d368_sub_0805D37C(((struct PlayerD368 *)arg0)->f8C, ((struct PlayerD368 *)arg0)->f90, (u32) ((u32) M2C_FIELD(sp180, u8 *, 4) << 0x1A) >> 0x1A);
                temp_r0_2 = M2C_FIELD((s32 *)&historyPair, s32 *, 0);
                if (temp_r0_2 != 0) {
                    sp184 = temp_r0_2;
                    sp188 = 0;
                } else {
                    temp_r0_3 = M2C_FIELD((s32 *)&historyPair, s32 *, 4);
                    if (temp_r0_3 != 0) {
                        sp184 = temp_r0_3;
                        sp188 = 0;
                    } else {
                        temp_r0_4 = sp188;
                        sp188 = temp_r0_4 + 1;
                        if (temp_r0_4 > 2) {
                            sp184 = 0;
                            sp188 = 0;
                        }
                    }
                }
                if (d368_sub_0801DF8C() != 0) {
                    sp184 = 0;
                }
                if ((gUnk_03003170.curLevel == 0xD) && (d368_gUnk_030056FC == 0)) {
                    sp184 = 0;
                }
                if (sp184 != 0) {
                    if ((d368_sub_0805F184() == 0) && (d368_sub_0806569C() == 0) && (d368_sub_0800CE68() == 0)) {
                        d368_sub_0805FFBC(0xF, 0x12, sp184 + 0x10, 0x80000000);
                        sp18C = 0;
                    }
                } else if (sp18C == 0) {
                    d368_sub_0801A664(0x12, 2);
                    sp18C = 1;
                }
            }
            temp_r1_3 = ((struct PlayerD368 *)arg0)->f30;
            temp_r5 = temp_r1_3 & 1;
            if (temp_r5 != 0) {
                ((struct PlayerD368 *)arg0)->f12 = 0U;
                ((struct PlayerD368 *)arg0)->f14 = 0U;
                ((struct PlayerD368 *)arg0)->f16 = 0U;
                *(((struct PlayerD368 *)arg0)->f136 + ((struct PlayerD368 *)arg0)->f13C) = 0xF0 & d368_gUnk_0300130C;
                ((struct PlayerD368 *)arg0)->f136 = (u16) ((s32) (((struct PlayerD368 *)arg0)->f136 + 1) % 5);
            } else if (temp_r1_3 & 4) {
                temp_r0_5 = d368_sub_08016C88(((struct PlayerD368 *)arg0)->f8C, ((struct PlayerD368 *)arg0)->f90, ((struct PlayerD368 *)arg0)->f9C, ((struct PlayerD368 *)arg0)->fA0, (8));
                ((struct PlayerD368 *)arg0)->f12 = temp_r0_5;
                ((struct PlayerD368 *)arg0)->f14 = temp_r5;
                if (((u32) temp_r0_5 << 0x10) == 0) {
                    ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 & ~0x24);
                    ownerWords366D368[d368_sub_080020F4()][12] |= 1;
                }
            } else {
                u16 *historyIndexD368, *historySlotD368, *historyArrayD368, *historyControllerD368;
                u16 **historyBaseD368;
                u32 historyPositionD368;
                historyIndexD368 = &((struct PlayerD368 *)arg0)->f136;
                historyPositionD368 = *historyIndexD368;
                historyBaseD368 = &((struct PlayerD368 *)arg0)->f13C;
                historyArrayD368 = *historyBaseD368;
                historySlotD368 = (u16 *) ((historyPositionD368 << 1) + (u32) historyArrayD368);
                temp_r4_2 = 0xF0 & d368_gUnk_0300130C;
                *historySlotD368 = temp_r4_2;
                ((struct PlayerD368 *)arg0)->f136 = (u16) ((s32) (*historyIndexD368 + 1) % 5);
                if (temp_r4_2 != 0) {
                    sp128 = 0;
                    historyControllerD368 = &d368_gUnk_0300130C;
                    var_r2 = ((struct PlayerD368 *)arg0)->f13C;
                    do {
                        *historyControllerD368 |= *var_r2;
                        var_r2 += 0x1;
                        temp_r4_3 = sp128 + 1;
                        sp128 = temp_r4_3;
                    } while (temp_r4_3 <= 4U);
                }
                var_r0_2 = d368_sub_0801AC78();
                if (var_r0_2 != 0) {
                    ((struct PlayerD368 *)arg0)->f12 = (u16) d368_gUnk_0300130C;
                    ((struct PlayerD368 *)arg0)->f14 = (u16) d368_gUnk_03001324;
                    var_r0_2 = (s32) d368_gUnk_03001328;
                } else {
                    ((struct PlayerD368 *)arg0)->f12 = (u16) var_r0_2;
                    ((struct PlayerD368 *)arg0)->f14 = (u16) var_r0_2;
                }
                ((struct PlayerD368 *)arg0)->f16 = (u16) var_r0_2;
            }
            temp_r2_3 = ((struct PlayerD368 *)arg0)->f30;
            if (0x10 & temp_r2_3) {
                ((struct PlayerD368 *)arg0)->f14 = (u16) (((struct PlayerD368 *)arg0)->f14 & ~(((struct PlayerD368 *)arg0)->f18 | 0xC));
                ((struct PlayerD368 *)arg0)->f30 = (u32) (temp_r2_3 & ~0x10);
            }
            temp_r2_4 = ((struct PlayerD368 *)arg0)->f30;
            if (0x10000 & temp_r2_4) {
                ((struct PlayerD368 *)arg0)->f14 = (u16) (((struct PlayerD368 *)arg0)->f14 & ~(((struct PlayerD368 *)arg0)->f1A | 0xC));
                ((struct PlayerD368 *)arg0)->f30 = (u32) (temp_r2_4 & 0xFFFEFFFF);
            }
            temp_r4_4 = ((struct PlayerD368 *)arg0)->f8C;
            temp_r5_2 = ((struct PlayerD368 *)arg0)->f90;
            temp_r0_6 = (u8) d368_sub_0800BCA0(temp_r4_4, temp_r5_2, d368_sub_0800CCCC());
            switch (temp_r0_6) {
            case 7:
                sp144 = 0;
                sp154 = 0;
                break;
            case 8:
                ((struct PlayerD368 *)arg0)->f14 = (u16) (0xFFF7 & ((struct PlayerD368 *)arg0)->f14);
                if (d368_sub_0800D098() != 0) {
                    ((struct PlayerD368 *)arg0)->f12 = (u16) (0xFF0F & ((struct PlayerD368 *)arg0)->f12);
                    d368_sub_08065230(sp178, 0x78, 0x3C, 0x21U, (0));
                }
                break;
            }
            if ((u32) (u16) (((struct PlayerD368 *)arg0)->f20 - 0xB) <= 1U) {

            } else if (d368_sub_0805EF90() != 0) {

            } else {
                if (0x200 & ((struct PlayerD368 *)arg0)->f14) {
                    if (d368_sub_0800CE68() != 0) {

                    } else if (d368_sub_08058DB0() != 0) {

                    } else if (((struct PlayerD368 *)arg0)->f30 & 0x2400) {

                    } else {
                        if ((d368_sub_0800CCCC() != 0) && (gUnk_03003170.f90 == 2)) {
                            sp128 = (u32) d368_sub_08057B64(3);
                        } else {
                            sp128 = 0;
                        }
                        if ((u32) (sp128 - 2) <= 8U) {

                        } else if ((gUnk_03003170.curLevel == 8) && (gUnk_03003170.f90 == 0x11)) {

                        } else {
                            d368_sub_08000420(0x18A92);
                        }
                    }
                } else if (d368_gUnk_03001324 & ((struct PlayerD368 *)arg0)->f18) {
                    temp_r3_2 = ((struct PlayerD368 *)arg0)->f30;
                    if (!(0x6001 & temp_r3_2)) {
                        if (d368_sub_0800CE68() != 0) {

                        } else if (d368_sub_0800CC98() != 0) {

                        } else if (((struct PlayerD368 *)arg0)->f20 == 0xC) {

                        } else if (sp184 == 0) {

                        } else if (d368_sub_080686F4(sp184) == 0) {
                            d368_sub_08065A90(0x3D5, 0x1E);
                        } else {
                            ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 | 0x4000);
                            temp_r1_8 = ~((struct PlayerD368 *)arg0)->f18;
                            ((struct PlayerD368 *)arg0)->f14 = (u16) (temp_r1_8 & ((struct PlayerD368 *)arg0)->f14);
                            ((struct PlayerD368 *)arg0)->f12 = (u16) (temp_r1_8 & ((struct PlayerD368 *)arg0)->f12);
                        }
                    } else if (!(0x2000 & temp_r3_2)) {

                    } else if ((gUnk_03003170.curLevel == 2) && (gUnk_03003170.f90 == 7)) {

                    } else if ((gUnk_03003170.curLevel == 5) && (gUnk_03003170.f90 == 0xA)) {

                    } else if ((gUnk_03003170.curLevel == 8) && (gUnk_03003170.f90 == 0x11)) {

                    } else if (gUnk_03003170.curLevel == 0xD) {

                    } else if ((gUnk_03003170.curLevel == 0x13) && (gUnk_03003170.f90 == 2)) {

                    } else if (gUnk_03003170.curLevel == 0x15) {
                        if (gUnk_03003170.f90 == 2) {

                        } else if (gUnk_03003170.f90 == 4) {

                        } else {
                            goto block_124;
                        }
                    } else {
block_124:
                        if (temp_r3_2 & 0x01800401) {

                        } else if (d368_sub_0800CF80() != 0) {

                        } else if (d368_sub_08058DB0() != 0) {

                        } else if (d368_sub_08056E90() != 0) {

                        } else if ((d368_sub_0800CB9C() != 0) && (d368_sub_0800CDC0() != 0)) {

                        } else {
                            temp_r0_12 = (s32) d368_sub_0805DF38(1, 0xE, 0x19, 2, (-2), (0x1404E1));
                            sp17C = temp_r0_12;
                            d368_sub_0805EF84(temp_r0_12, 1);
                            ((struct PlayerD368 *)arg0)->f20 = 0xCU;
                            ((struct PlayerD368 *)arg0)->f22 = 7U;
                        }
                    }
                } else {
                    if (0x100 & ((struct PlayerD368 *)arg0)->f14) {
                        if (((struct PlayerD368 *)arg0)->f20 == 0xC) {

                        } else if (d368_sub_0800CC98() != 0) {

                        } else if (d368_sub_08058DB0() != 0) {

                        } else if (d368_sub_0800CE68() != 0) {

                        } else if (((struct PlayerD368 *)arg0)->f30 & 0x2400) {

                        } else {
                            if ((d368_sub_0800CCCC() != 0) && (gUnk_03003170.f90 == 2)) {
                                sp128 = (u32) d368_sub_08057B64(3);
                            } else {
                                sp128 = 0;
                            }
                            if ((u32) (sp128 - 2) <= 8U) {

                            } else if ((gUnk_03003170.curLevel == 8) && (gUnk_03003170.f90 == 0x11)) {

                            } else {
                                d368_sub_08000420(0x18A93);
                            }
                        }
                    } else {
                        if (!(((struct PlayerD368 *)arg0)->f16 & ((struct PlayerD368 *)arg0)->f1A)) {
                            goto block_197;
                        }
                        if (gUnk_03003170.curLevel == 0xC) {
                            goto block_197;
                        }
                        if (gUnk_03003170.curLevel == 0xE) {
                            goto block_197;
                        }
                        if (((gUnk_03003170.curLevel != 0xB) || (gUnk_03003170.f90 != 0)) && (temp_r0_7 = ((struct PlayerD368 *)arg0)->f20, (temp_r0_7 != 3)) && (temp_r0_7 != 0xE) && (temp_r0_7 != 0xB) && (temp_r0_7 != 4) && (temp_r0_7 != 6) && (temp_r0_7 != 7) && (temp_r0_7 != 8) && (temp_r0_7 != 0xC) && (sp174 > 5U) && !(((struct PlayerD368 *)arg0)->f30 & 0x01802404)) {
                            if (d368_sub_08058DB0() != 0) {

                            } else if (d368_sub_0800CE68() != 0) {

                            } else if (d368_sub_0800CC98() != 0) {

                            } else if (((struct PlayerD368 *)arg0)->f20 == 0xC) {

                            } else if (((struct InvD368 *)sp12C)->f56[((struct InvD368 *)sp12C)->f54] == 0) {

                            } else if (sp194 != 0xFFFF) {

                            } else {
                                temp_r1 = (u16 *)d368_gUnk_030034E0;
                                temp_r0_8 = ((struct InvD368 *)temp_r1)->f54 * sizeof(u16);
                                temp_r1 = ((struct InvD368 *)temp_r1)->f56;
                                temp_r1 = (u16 *)((u32)temp_r1 + (u32)temp_r0_8);
                                temp_r0_8 = *temp_r1;
                                if (temp_r0_8 == 0) {

                                } else {
                                    var_r4_11 = d368_sub_0805D548(temp_r0_8 - 1);
                                    if (d368_sub_0801DE60() == 0) {
                                        var_r2_2 = d368_sub_0801E0AC(d368_gUnk_030034E0 + 0x30, 5);
                                    } else {
                                        var_r2_2 = 0;
                                    }
                                    if (var_r4_11 == -1) {

                                    } else if (d368_sub_0805BD5C(d368_gUnk_030034E0 + ((var_r4_11 * 0x10) + 0x150), var_r2_2) == 0) {

                                    } else {
                                        d368_sub_0805D580(var_r4_11);
                                    }
                                }
                            }
                        } else {
block_197:
                            if (8 & ((struct PlayerD368 *)arg0)->f14) {
                                if ((d368_sub_0800CCCC() != 0) && (gUnk_03003170.f90 == 2)) {
                                    sp128 = (u32) d368_sub_08057B64(3);
                                } else {
                                    sp128 = 0;
                                }
                                temp_r1_7 = ((struct PlayerD368 *)arg0)->f30;
                                if (0x01802404 & temp_r1_7) {

                                } else {
                                    temp_r0_10 = ((struct PlayerD368 *)arg0)->f20;
                                    if (temp_r0_10 == 0xC) {

                                    } else if (temp_r0_10 == 0xA) {

                                    } else if (temp_r0_10 == 0xB) {

                                    } else if (temp_r0_10 == 5) {

                                    } else if (temp_r0_10 == 3) {

                                    } else if (temp_r0_10 == 9) {

                                    } else if (temp_r0_10 == 4) {

                                    } else if (temp_r1_7 & 0x400000) {

                                    } else if (d368_sub_08058DB0() != 0) {

                                    } else if (d368_sub_0800CC98() != 0) {

                                    } else if (d368_sub_0801AAE0() == 0) {

                                    } else if (d368_sub_0800D11C() != 0) {

                                    } else if (d368_sub_0800CE68() != 0) {

                                    } else if (((struct PlayerD368 *)arg0)->f20 == 0xE) {

                                    } else if (d368_sub_0800BA6C() == 0) {

                                    } else if (sp174 <= 5U) {

                                    } else if (d368_sub_0801AAE0() == 0) {

                                    } else {
                                        temp_r0_11 = d368_sub_08065974();
                                        if (temp_r0_11 != 0) {

                                        } else if ((u32) (sp128 - 2) <= 8U) {

                                        } else {
                                            ownerWords366D368[d368_sub_080020F4()][12] |= 1;
                                            ((struct PlayerD368 *)arg0)->f14 = temp_r0_11;
                                            ((struct PlayerD368 *)arg0)->f12 = temp_r0_11;
                                            d368_sub_08065654();
                                        }
                                    }
                                }
                            } else {
                                if (4 & ((struct PlayerD368 *)arg0)->f14) {
                                    sp128 = 1;
                                    temp_r1_6 = gUnk_03003170.curLevel - 2;
                                    switch (temp_r1_6) { /* switch 1 */
                                    case 0:         /* switch 1 */
                                        if (gUnk_03003170.f90 == 7) {
                                            sp128 = 0;
                                        }
                                        break;
                                    case 1:         /* switch 1 */
                                        if (gUnk_03003170.f90 == 4) {
                                            sp128 = 0;
                                        }
                                        break;
                                    case 3:         /* switch 1 */
                                        if (gUnk_03003170.f90 == 0xA) {
                                            sp128 = 0;
                                        }
                                        break;
                                    case 12:        /* switch 1 */
                                        sp128 = 0;
                                        break;
                                    case 17:        /* switch 1 */
                                        if (gUnk_03003170.f90 == 2) {
                                            sp128 = 0;
                                        }
                                        break;
                                    default:        /* switch 1 */
                                        sp128 = 1;
                                        break;
                                    }
                                    if ((d368_sub_0800CF80() == 0) && (sp128 == 1) && (temp_r0_9 = ((struct PlayerD368 *)arg0)->f20, (temp_r0_9 != 4)) && (temp_r0_9 != 3) && (temp_r0_9 != 0xA) && (temp_r0_9 != 9) && (temp_r0_9 != 5) && (temp_r0_9 != 0xC) && (M2C_FIELD(d368_gUnk_030034E0, u8 *, 0x13A) != 0) && (d368_sub_0800CCCC() == 0) && (sp174 > 5U) && (d368_sub_0800CD8C() == 0)) {
                                        if ((((struct PlayerD368 *)arg0)->f20 != 0xE) && (var_r5 = ((struct PlayerD368 *)arg0)->f30 & 0x01803400, (var_r5 == 0)) && ((gUnk_03003170.curLevel != 0xB) || (gUnk_03003170.f90 != 0)) && ((lookupStats = (void *) d368_sub_08007290(M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x132) | 0x110000)), ((u32) ((struct PlayerD368 *)arg0)->fC6 >= (u32) (M2C_FIELD(lookupStats, s32 *, 0xA0) + (s8) ((struct PlayerD368 *)arg0)->f79))) && ((u32) ((struct PlayerD368 *)arg0)->f64 <= 9U)) {
                                            ((struct PlayerD368 *)arg0)->f68 = var_r5;
                                            ((struct PlayerD368 *)arg0)->f20 = 0xEU;
                                            ((struct PlayerD368 *)arg0)->fC6 = (s16) var_r5;
                                            d368_sub_0806617C();
                                        } else {
                                            d368_sub_0805865C(0x61);
                                        }
                                    } else {
                                        d368_sub_0805865C(0x61);
                                    }
                                }
                            }
                        }
                    }
                }
            }
            temp_r0_13 = ((struct PlayerD368 *)arg0)->f114 - 1;
            ((struct PlayerD368 *)arg0)->f114 = temp_r0_13;
            if ((s32) ((u32) temp_r0_13 << 0x10) <= 0) {
                ((struct PlayerD368 *)arg0)->f114 = 0U;
            }
            ((struct PlayerD368 *)arg0)->f122 = (u16) (((struct PlayerD368 *)arg0)->f122 + 1);
            if (d368_sub_0800CDF8() != 0) {

            } else if (((struct PlayerD368 *)arg0)->f30 & 0x2000) {

            } else {
                temp_r0_14 = d368_sub_0801DE60();
                switch (temp_r0_14) {
                case 1:
                case 4:
                case 6:
                    var_r2_3 = d368_sub_0801E0AC(d368_gUnk_030034E0 + 0x30, 7);
                    break;
                default:
                    var_r2_3 = 0;
                    break;
                }
                regenerationBaseD368 = ((struct PlayerD368 *)arg0)->f3C;
                regenerationTermD368 = 100 * (var_r2_3 + (s8) ((struct PlayerD368 *)arg0)->f70) + 200;
                var_r2_3 = 48000 / (regenerationBaseD368 + regenerationTermD368);
                temp_r0_15 = sp198;
                sp198 = (u32) temp_r0_15 + 1;
                if (var_r2_3 < temp_r0_15) {
                    sp198 = 0;
                    temp_r0_16 = ((struct PlayerD368 *)arg0)->fC2 + 0xA;
                    ((struct PlayerD368 *)arg0)->fC2 = temp_r0_16;
                    if ((s32) (s16) temp_r0_16 > (s32) (s16) ((struct PlayerD368 *)arg0)->f60) {
                        ((struct PlayerD368 *)arg0)->fC2 = ((struct PlayerD368 *)arg0)->f60;
                    }
                }
                var_r6 = (struct EffectD368 *)((struct PlayerD368 *)arg0)->f34;
                for (sp128 = 0; sp128 <= 7; sp128++, var_r6++) {
                    temp_r1_9 = var_r6->f0;
                    if ((s32) temp_r1_9 < 0 && temp_r1_9 != -2) {
                    } else if (var_r6->f2 <= 3U) {
                        switch (effectOwnerTableD368[temp_r0_17 = var_r6->f2].fC) {
                        case 2:
                            if (var_r6->f4 != 7) break;
                            if (effectOwnerTableD368[temp_r0_17].f30 & 0x2000) continue;
                            do {
                            if (d368_sub_0801DF8C() != 0) {
                            } else if (((struct PlayerD368 *)arg0)->f68 != effectOwnerTableD368[var_r6->f2].f68) {
                            } else {
                                temp_r2_5 = sp150;
                                sp150 = (u32) (u16) (temp_r2_5 + 1);
                                if (temp_r2_5 > (u32) effectThresholdTableD368[var_r6->f6]) {
                                    temp_r0_20 = ((struct PlayerD368 *)arg0)->fC4 + 1;
                                    ((struct PlayerD368 *)arg0)->fC4 = temp_r0_20;
                                    if ((s32) (s16) temp_r0_20 > (s32) (s16) ((struct PlayerD368 *)arg0)->f62) {
                                        ((struct PlayerD368 *)arg0)->fC4 = ((struct PlayerD368 *)arg0)->f62;
                                    }
                                    sp150 = 0;
                                }
                            }
                            } while (0);
                            break;
                        case 3:
                            if (var_r6->f4 != 6) break;
                            if (effectOwnerTableD368[temp_r0_17].f30 & 0x2000) continue;
                            if (d368_sub_0800CF80() == 0) {
                                var_r5 = 0;
                                do {
                                    propagationBitD368 = 1;
                                    propagationBitD368 <<= var_r5;
                                    propagationMaskD368 = d368_gUnk_030056FC;
                                    propagationMaskD368 &= propagationBitD368;
                                    if (propagationMaskD368) {
                                        struct EffectD368 *q = peersD368[var_r5].effects;
                                        var_r4_11 = 0;
                                        /* extra refs: global alloc must give found (r4) priority over var_r5 (r5) */
                                        asm("" : : "r"(var_r4_11));asm("" : : "r"(var_r4_11));
                                        for (sp128 = 0; sp128 <= 7; sp128++, q++) {
                                            if (q->f0 == -2 && q->f4 == 6 && q->f2 == ((struct PlayerD368 *)arg0)->f0) {
                                                var_r4_11 = 1;
                                                break;
                                            }
                                        }
                                        if (var_r4_11 == 0) {
                                            q = peersD368[var_r5].effects;
                                            for (sp128 = 0; sp128 <= 7; sp128++, q++) {
                                                if (q->f0 == -1) {
                                                    *q = *var_r6;
                                                    break;
                                                }
                                            }
                                        }
                                    }
                                    var_r5 += 1;
                                } while (var_r5 <= 4U);
                            }
                            break;
                        case 6:
                        case 8:
                            if (var_r6->f4 == 4 && (d368_sub_0800CCCC() != 0 || d368_sub_0801DF8C() != 0 || d368_sub_08056E90() != 0)) {
                                d368_sub_0805AD78(M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x68));
                                var_r6->f0 = 0;
                                ((struct PlayerD368 *)arg0)->f64 = (u16) ((struct PlayerD368 *)arg0)->fC;
                                d368_sub_0806617C();
                            }
                            break;
                        case 5:
                            if (var_r6->f4 != 7) break;
                            if (effectOwnerTableD368[temp_r0_17].f30 & 0x2000) continue;
                            do {
                            if (d368_sub_0801DF8C() != 0) {
                            } else if (((struct PlayerD368 *)arg0)->f68 != effectOwnerTableD368[var_r6->f2].f68) {
                            } else {
                                temp_r2_6 = sp150;
                                sp150 = (u32) (u16) (temp_r2_6 + 1);
                                if (temp_r2_6 > (u32) effectThresholdTableD368[var_r6->f6]) {
                                    temp_r0_26 = ((struct PlayerD368 *)arg0)->fC4 + 1;
                                    ((struct PlayerD368 *)arg0)->fC4 = temp_r0_26;
                                    if ((s32) (s16) temp_r0_26 > (s32) (s16) ((struct PlayerD368 *)arg0)->f62) {
                                        ((struct PlayerD368 *)arg0)->fC4 = ((struct PlayerD368 *)arg0)->f62;
                                    }
                                    sp150 = 0;
                                }
                            }
                            } while (0);
                            break;
                        }
                    } else {
                    temp_r0_18 = var_r6->f4 - 1;
                    if (temp_r0_18 > 6U) {

                    } else {
                        switch (temp_r0_18) {       /* switch 3 */
                        case 0:                     /* switch 3 */
                            if (var_r6->f0 != 0) {

                            } else {
                                M2C_FIELD(&((struct PlayerD368 *)arg0)->f88, u16 *, 2) = (u16) (M2C_FIELD(&((struct PlayerD368 *)arg0)->f88, u16 *, 2) + var_r6->f6);
                            }
                            break;
                        case 1:                     /* switch 3 */
                            if (0xF1 & ((struct PlayerD368 *)arg0)->f14) {
                                var_r6->f0 -= 6;
                                if ((s16) var_r6->f0 < 0) {
                                    var_r6->f0 = -1;
                                }
                            }
                            ((struct PlayerD368 *)arg0)->f14 = (u16) (0xFFFE & ((struct PlayerD368 *)arg0)->f14);
                            break;
                        case 3:                     /* switch 3 */
                            if (var_r6->f0 != 0) {

                            } else {
                                if (d368_sub_0801DF8C() == 0) {
                                    M2C_FIELD(&((struct PlayerD368 *)arg0)->f88, u16 *, 0) = (u16) (M2C_FIELD(&((struct PlayerD368 *)arg0)->f88, u16 *, 0) + var_r6->f6);
                                }
                            }
                            break;
                        case 5:                     /* switch 3 */
                            if ((((u32) ((s16) var_r6->f0 % 60) << 0x10) == 0) && (d368_sub_0800D1B0() == 0)) {
                                temp_r5_4 = (var_r6->f18 * 0xA) + 0x64;
                                M2C_FIELD(&((struct PlayerD368 *)arg0)->f88, u16 *, 0) = (u16) (M2C_FIELD(&((struct PlayerD368 *)arg0)->f88, u16 *, 0) + ((s32) (temp_r5_4 * var_r6->f6) / 100));
                                ((struct PlayerD368 *)arg0)->fE0 = 6;
                                d368_sub_08069224(6, (u16) ((s32) (temp_r5_4 * var_r6->f6) / 100), d368_gUnk_030034E0 + 0x24);
                            }
                            if (var_r6->f0 == 1) {
                                d368_sub_0805867C(0x73);
                                break;
                            }
                            break;
                        case 6:                     /* switch 3 */
                            if ((((u32) ((s16) var_r6->f0 % 60) << 0x10) == 0) && (d368_sub_0800D1B0() == 0)) {
                                temp_r5_4 = (var_r6->f18 * 0xA) + 0x64;
                                M2C_FIELD(&((struct PlayerD368 *)arg0)->f88, u16 *, 0) = (u16) (M2C_FIELD(&((struct PlayerD368 *)arg0)->f88, u16 *, 0) + ((s32) (temp_r5_4 * var_r6->f6) / 100));
                                ((struct PlayerD368 *)arg0)->fE0 = 6;
                                d368_sub_08069224(6, (u16) ((s32) (temp_r5_4 * var_r6->f6) / 100), d368_gUnk_030034E0 + 0x24);
                            }
                            if (var_r6->f0 == 1) {
                                d368_sub_0805867C(0x73);
                                break;
                            }
                            break;
                        }
                    }
                    }
                    if ((s32) var_r6->f0 >= 0) {
                        var_r6->f0 = (u16) var_r6->f0 - 1;
                    }
                }
            }
            if (((struct PlayerD368 *)arg0)->f30 & 0x800) {
                d368_sub_0806617C();
                d368_sub_08066220();
                ((struct PlayerD368 *)arg0)->f130 = 0U;
                ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 & 0xFFFFF7FF);
            }
        }
        temp_r0_27 = ((struct PlayerD368 *)arg0)->f20;
        if ((u32) temp_r0_27 > 0xEU) {

        } else {
            switch (temp_r0_27) {                   /* switch 4 */
            case 0:                                 /* switch 4 */
                directionD36874 = sp19C = 0;
                sp130 = 0;
                ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 & 0xFFDFFFFF);
                if (0xF0 & ((struct PlayerD368 *)arg0)->f12) {
                    directionD36874 = 5;
                }
                temp_r2_7 = ((struct PlayerD368 *)arg0)->f18;
                if (!(((struct PlayerD368 *)arg0)->f12 & temp_r2_7) || (temp_r2_7 &= ((struct PlayerD368 *)arg0)->f14, sp154 += 1, temp_r2_7 != 0)) {
                    sp154 = 0;
                }
                temp_r2_8 = ((struct PlayerD368 *)arg0)->f1A;
                if ((temp_r2_8 & ((struct PlayerD368 *)arg0)->f12) && !(temp_r2_8 & ((struct PlayerD368 *)arg0)->f14)) {
                    if (sp194 == 0xFFFF) {
                        sp158 += 1;
                    }
                } else {
                    sp158 = 0;
                    sp194 = 0xFFFF;
                }
                if (((struct PlayerD368 *)arg0)->f10 != 9) {
                    if (D368_Level(arg0) == 0) {
                        sp154 = 0;
                    }
                } else {
                    if ((u16) d368_sub_08079FD0(d368_sub_0801DEB8()) == 0) {
                        sp154 = 0;
                    }
                }
                if (((struct PlayerD368 *)arg0)->f30 & 0x01800000) {
                    sp144 = 0;
                    sp154 = 0;
                }
                if (((struct PlayerD368 *)arg0)->fC != ((struct PlayerD368 *)arg0)->f64) {
                    sp154 = 0;
                }
                if (((struct PlayerD368 *)arg0)->f10 == 0) {
                    sp144 = 0;
                }
                if ((d368_sub_0800CCCC() == 0) && (d368_sub_0801E538() != 0)) {
                    temp_r1_18 = ((struct PlayerD368 *)arg0)->f30 & 0x3400;
                    if ((temp_r1_18 == 0) && (sp154 > 0xAU)) {
                        ((struct PlayerD368 *)arg0)->f20 = 3U;
                        ((struct PlayerD368 *)arg0)->f26 = temp_r1_18;
                        ((struct PlayerD368 *)arg0)->f24 = temp_r1_18;
                        sp130 = 0;
                        sp134 = (s32) (u16) ((s32) (M2C_FIELD((void *) d368_sub_08007290(M2C_FIELD((d368_gUnk_030034E0 + (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x68) << 4)), u16 *, 0x72) | 0xB0000), u16 *, 0xAA) * (s8) ((struct PlayerD368 *)arg0)->f71) / 10);
                        ((struct PlayerD368 *)arg0)->fDC += 1;
                        goto state0TailD368;
                    }
                }
                if ((d368_sub_0800CCCC() == 0) && (var_r4_11 = ((struct PlayerD368 *)arg0)->f30 & 0x3400, (var_r4_11 == 0)) && (sp158 > 0x14U) && (temp_r1 = (u16 *)d368_gUnk_030034E0,
                     temp_r0_29 = ((struct InvD368 *)temp_r1)->f54 * sizeof(u16),
                     temp_r1 = ((struct InvD368 *)temp_r1)->f56,
                     temp_r1 = (u16 *)((u32)temp_r1 + (u32)temp_r0_29),
                     temp_r0_29 = *temp_r1,
                     (temp_r0_29 != 0)) && (temp_r2_9 = d368_sub_0805D548(temp_r0_29 - 1), temp_r2_9 != -1)) {
                    sp194 = (s32) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x54);
                    ((struct PlayerD368 *)arg0)->f20 = 6U;
                    ((struct PlayerD368 *)arg0)->f26 = var_r4_11;
                    ((struct PlayerD368 *)arg0)->f24 = var_r4_11;
                    sp130 = 0;
                    sp134 = 0x200;
                } else if (((struct PlayerD368 *)arg0)->f14 & ((struct PlayerD368 *)arg0)->f18) {
                    if (d368_sub_0800CCCC() == 0) {
                        temp_r2_9 = ((struct PlayerD368 *)arg0)->f30 & 0x01803400;
                        if ((temp_r2_9 == 0) && ((s32) ((struct PlayerD368 *)arg0)->f5E <= (s32) (s16) sp144)) {
                            ((struct PlayerD368 *)arg0)->f130 = temp_r2_9;
                            ((struct PlayerD368 *)arg0)->fDC += 1;
                            ((struct PlayerD368 *)arg0)->f20 = 2U;
                            ((struct PlayerD368 *)arg0)->fB2 = temp_r2_9;
                            sp144 = 0;
                        }
                    }
                } else if (directionD36874 != 0) {
                    ((struct PlayerD368 *)arg0)->f20 = 1U;
                } else {
                    if (((struct PlayerD368 *)arg0)->fD8 <= 0x17) {
                        ((struct PlayerD368 *)arg0)->fD8 -= 8;
                        if (((struct PlayerD368 *)arg0)->fD8 <= 0) {
                            ((struct PlayerD368 *)arg0)->fD8 = directionD36874;
                        }
                    } else {
                        ((struct PlayerD368 *)arg0)->fD8 -= ((struct PlayerD368 *)arg0)->fD8 >> 1;
                    }
                }
state0TailD368:
                temp_r0_31 = d368_sub_0800CCCC();
                if ((temp_r0_31 == 0) && (sp154 > 0x14U) && (((struct PlayerD368 *)arg0)->f10 == 0xA) && ((s32) (s16) ((struct PlayerD368 *)arg0)->fC2 > 0)) {
                    if (d368_sub_0801DF8C() == 0) {
                        ((struct PlayerD368 *)arg0)->f134 = 1;
                    } else {
                        ((struct PlayerD368 *)arg0)->f134 = (u16) temp_r0_31;
                    }
                } else {
                    ((struct PlayerD368 *)arg0)->f134 = 0;
                }
                break;
            case 1:                                 /* switch 4 */
                directionD36874 = 0;
                sp19C = 0;
                ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 & 0xFFDFFFFF);
                if (0x40 & ((struct PlayerD368 *)arg0)->f12) {
                    directionD36874 = 5;
                } else if (0x80 & ((struct PlayerD368 *)arg0)->f12) {
                    directionD36874 = 1;
                }
                if (0x20 & ((struct PlayerD368 *)arg0)->f12) {
                    if (directionD36874 == 5) {
                        directionD36874 = 4;
                    } else if (directionD36874 == 1) {
                        directionD36874 = 2;
                    } else {
                        directionD36874 = 3;
                    }
                } else if (0x10 & ((struct PlayerD368 *)arg0)->f12) {
                    if (directionD36874 == 5) {
                        directionD36874 = 6;
                    } else if (directionD36874 == 1) {
                        directionD36874 = 8;
                    } else {
                        directionD36874 = 7;
                    }
                }
                temp_r2_10 = ((struct PlayerD368 *)arg0)->f18;
                if (!(((struct PlayerD368 *)arg0)->f12 & temp_r2_10) || (temp_r2_10 &= ((struct PlayerD368 *)arg0)->f14, sp154 += 1, temp_r2_10 != 0)) {
                    sp154 = 0;
                }
                temp_r2_11 = ((struct PlayerD368 *)arg0)->f1A;
                if ((temp_r2_11 & ((struct PlayerD368 *)arg0)->f12) && !(temp_r2_11 & ((struct PlayerD368 *)arg0)->f14)) {
                    if (sp194 == 0xFFFF) {
                        sp158 += 1;
                    }
                } else {
                    sp158 = 0;
                    sp194 = 0xFFFF;
                }
                if (((struct PlayerD368 *)arg0)->f10 != 9) {
                    if (D368_Level(arg0) == 0) {
                        sp154 = 0;
                    }
                } else {
                    if ((u16) d368_sub_08079FD0(d368_sub_0801DEB8()) == 0) {
                        sp154 = 0;
                    }
                }
                if (((struct PlayerD368 *)arg0)->f30 & 0x01800000) {
                    sp144 = 0;
                    sp154 = 0;
                }
                if (((struct PlayerD368 *)arg0)->fC != ((struct PlayerD368 *)arg0)->f64) {
                    sp154 = 0;
                }
                if (((struct PlayerD368 *)arg0)->f10 == 0) {
                    sp144 = 0;
                }
                if ((d368_sub_0800CCCC() == 0) && (d368_sub_0801E538() != 0) && (temp_r1_21 = ((struct PlayerD368 *)arg0)->f30 & 0x3400, (temp_r1_21 == 0)) && (sp154 > 0xAU)) {
                    ((struct PlayerD368 *)arg0)->f20 = 3U;
                    ((struct PlayerD368 *)arg0)->f26 = temp_r1_21;
                    ((struct PlayerD368 *)arg0)->f24 = temp_r1_21;
                    sp130 = 0;
                    sp134 = (s32) (u16) ((s32) (M2C_FIELD((void *) d368_sub_08007290(M2C_FIELD((d368_gUnk_030034E0 + (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x68) << 4)), u16 *, 0x72) | 0xB0000), u16 *, 0xAA) * (s8) ((struct PlayerD368 *)arg0)->f71) / 10);
                    ((struct PlayerD368 *)arg0)->fDC += 1;
                } else if ((d368_sub_0800CCCC() == 0) && (var_r4_11 = ((struct PlayerD368 *)arg0)->f30 & 0x3400, (var_r4_11 == 0)) && (sp158 > 0x14U) && (temp_r1 = (u16 *)d368_gUnk_030034E0,
                     temp_r0_33 = ((struct InvD368 *)temp_r1)->f54 * sizeof(u16),
                     temp_r1 = ((struct InvD368 *)temp_r1)->f56,
                     temp_r1 = (u16 *)((u32)temp_r1 + (u32)temp_r0_33),
                     temp_r0_33 = *temp_r1,
                     (temp_r0_33 != 0)) && (temp_r2_12 = d368_sub_0805D548(temp_r0_33 - 1), temp_r2_12 != -1)) {
                    sp194 = (s32) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x54);
                    ((struct PlayerD368 *)arg0)->f20 = 6U;
                    ((struct PlayerD368 *)arg0)->f26 = var_r4_11;
                    ((struct PlayerD368 *)arg0)->f24 = var_r4_11;
                    sp130 = 0;
                    sp134 = 0x200;
                } else if (((struct PlayerD368 *)arg0)->f14 & ((struct PlayerD368 *)arg0)->f18) {
                    if (d368_sub_0800CCCC() == 0) {
                        temp_r2_12 = ((struct PlayerD368 *)arg0)->f30 & 0x3400;
                        if ((temp_r2_12 == 0) && ((s32) ((struct PlayerD368 *)arg0)->f5E <= (s32) (s16) sp144)) {
                            ((struct PlayerD368 *)arg0)->f130 = temp_r2_12;
                            ((struct PlayerD368 *)arg0)->fDC += 1;
                            ((struct PlayerD368 *)arg0)->f20 = 2U;
                            ((struct PlayerD368 *)arg0)->fB2 = temp_r2_12;
                            sp144 = 0;
                        }
                    }
                } else if (directionD36874 == 0) {
                    ((struct PlayerD368 *)arg0)->f20 = directionD36874;
                } else {
                    s16 *state2LimitD368;
                    s32 *state2CurrentD368;
                    ((struct PlayerD368 *)arg0)->f1C = (s16) (directionD36874 - 1);
                    state2LimitD368 = &((struct PlayerD368 *)arg0)->f40;
                    state2CurrentD368 = &((struct PlayerD368 *)arg0)->fD8;
                    temp_r3_3 = *state2LimitD368;
                    temp_r1_22 = *state2CurrentD368;
                    temp_r0_34 = (s32) (temp_r3_3 - temp_r1_22) >> 1;
                    var_r4_3 = state2CurrentD368;
                    if (temp_r0_34 > 0) {
                        var_r0_7 = temp_r1_22 + temp_r0_34;
                        *var_r4_3 = var_r0_7;
                    } else {
                        var_r0_7 = temp_r1_22 + 1;
                        *var_r4_3 = var_r0_7;
                    }
                    if ((s32) temp_r3_3 <= *state2CurrentD368) {
                        *state2CurrentD368 = (s32) temp_r3_3;
                    }
                }
                temp_r0_35 = d368_sub_0800CCCC();
                if ((temp_r0_35 == 0) && (sp154 > 0x14U) && (((struct PlayerD368 *)arg0)->f10 == 0xA) && ((s32) (s16) ((struct PlayerD368 *)arg0)->fC2 > 0)) {
                    if (d368_sub_0801DF8C() == 0) {
                        ((struct PlayerD368 *)arg0)->f134 = 1;
                        break;
                    }
                    ((struct PlayerD368 *)arg0)->f134 = (u16) temp_r0_35;
                } else {
                    ((struct PlayerD368 *)arg0)->f134 = 0;
                }
                break;
            case 3:                                 /* switch 4 */
                directionD36874 = 0;
                temp_r1_23 = ((struct PlayerD368 *)arg0)->f12;
                if (0x40 & temp_r1_23) {
                    directionD36874 = 5;
                } else if (0x80 & temp_r1_23) {
                    directionD36874 = 1;
                }
                if (0x20 & temp_r1_23) {
                    if (directionD36874 == 5) {
                        directionD36874 = 4;
                    } else if (directionD36874 == 1) {
                        directionD36874 = 2;
                    } else {
                        directionD36874 = 3;
                    }
                } else if (0x10 & temp_r1_23) {
                    if (directionD36874 == 5) {
                        directionD36874 = 6;
                    } else if (directionD36874 == 1) {
                        directionD36874 = 8;
                    } else {
                        directionD36874 = 7;
                    }
                }
                temp_r3_4 = ((struct PlayerD368 *)arg0)->f18 & temp_r1_23;
                if (temp_r3_4 == 0) {
                    if (((struct PlayerD368 *)arg0)->f26 == 0) {
                        goto state3ZeroStageD368;
                    } else {
                        ((struct PlayerD368 *)arg0)->f20 = 5U;
                        if (((struct PlayerD368 *)arg0)->f10 != 9) {
                            { u16 i26 = ((struct PlayerD368 *)arg0)->f26; temp_r0_42 = ((s8) ((struct PlayerD368 *)arg0)->f6C * 0xA) + gUnk_0847ACE8[i26]; }
                            var_r2_7 = temp_r0_42;
                            if ((s32) (temp_r0_42 << 0x10) < 0) {
                                var_r2_7 = 0;
                            }
                            temp_r1_24 = ((struct PlayerD368 *)arg0)->fC2 - (s16) var_r2_7;
                            ((struct PlayerD368 *)arg0)->fC2 = temp_r1_24;
                            if ((s32) ((u32) temp_r1_24 << 0x10) < 0) {
                                ((struct PlayerD368 *)arg0)->fC2 = temp_r3_4;
                            }
                        }
                        temp_r0_43 = (u32) d368_sub_0801DE60();
                        if (temp_r0_43 > 7U) {

                        } else {
                            switch (temp_r0_43) {   /* switch 5 */
                            case 0:                 /* switch 5 */
                                d368_sub_08014D60();
                                ((struct PlayerD368 *)arg0)->fDC += 1;
                                break;
                            case 3:                 /* switch 5 */
                                d368_sub_080151E0();
                                ((struct PlayerD368 *)arg0)->fDC += 1;
                                break;
                            case 2:                 /* switch 5 */
                                var_r4_11 = ((struct PlayerD368 *)arg0)->f10;
                                if (var_r4_11 == 9) {
                                    var_r0_12 = (s16) d368_sub_0806898C(d368_sub_0801DEB8(), ((struct PlayerD368 *)arg0)->f26);
                                    if (var_r0_12 != 0) {
                                        if ((d368_sub_0801DEB8() != 7) || (byteTable6410D368[((struct PlayerD368 *)arg0)->f0] == 0)) {
                                            ((struct PlayerD368 *)arg0)->f20 = var_r4_11;
                                            ((struct PlayerD368 *)arg0)->fDC += 1;
                                        } else {
                                            ((struct PlayerD368 *)arg0)->f26 = 0;
                                            ((struct PlayerD368 *)arg0)->f24 = 0;
                                            sp130 = 0;
                                            sp134 = 0;
                                            ((struct PlayerD368 *)arg0)->f20 = 0U;
                                        }
                                    } else {
                                        ((struct PlayerD368 *)arg0)->f26 = var_r0_12;
                                        ((struct PlayerD368 *)arg0)->f24 = var_r0_12;
                                        sp130 = 0;
                                        sp134 = 0;
                                        ((struct PlayerD368 *)arg0)->f20 = 0U;
                                    }
                                } else {
                                    ((struct PlayerD368 *)arg0)->fDC += 1;
                                    ((struct PlayerD368 *)arg0)->f20 = 5U;
                                }
                                break;
                            case 5:                 /* switch 5 */
                                ((struct PlayerD368 *)arg0)->f20 = 5U;
                                ((struct PlayerD368 *)arg0)->fDC += 1;
                                break;
                            case 1:                 /* switch 5 */
                            case 4:                 /* switch 5 */
                            case 6:                 /* switch 5 */
                                var_r4_11 = ((struct PlayerD368 *)arg0)->f10;
                                switch (var_r4_11) {
                                case 5:
                                    ((struct PlayerD368 *)arg0)->fDC += 1;
                                    ((struct PlayerD368 *)arg0)->f20 = var_r4_11;
                                    d368_sub_0801551C();
                                    break;
                                case 9:
                                    var_r0_12 = (s16) d368_sub_0806898C(d368_sub_0801DEB8(), ((struct PlayerD368 *)arg0)->f26);
                                    if (var_r0_12 != 0) {
                                        if (d368_sub_0801DE60() == 6) {
                                            if ((d368_sub_0801DEB8() != 0x11) || (actorByteState315D368[((struct PlayerD368 *)arg0)->f0] == 0)) {
                                                ((struct PlayerD368 *)arg0)->f20 = var_r4_11;
                                                ((struct PlayerD368 *)arg0)->fDC += 1;
                                            } else {
                                                var_r0_12 = 0;
                                                ((struct PlayerD368 *)arg0)->f26 = var_r0_12;
                                                ((struct PlayerD368 *)arg0)->f24 = var_r0_12;
                                                sp130 = 0;
                                                sp134 = 0;
                                                ((struct PlayerD368 *)arg0)->f20 = 0U;
                                            }
                                        } else {
                                            ((struct PlayerD368 *)arg0)->f20 = var_r4_11;
                                            ((struct PlayerD368 *)arg0)->fDC += 1;
                                        }
                                    } else {
                                        ((struct PlayerD368 *)arg0)->f26 = var_r0_12;
                                        ((struct PlayerD368 *)arg0)->f24 = var_r0_12;
                                        sp130 = 0;
                                        sp134 = 0;
                                        ((struct PlayerD368 *)arg0)->f20 = 0U;
                                    }
                                    break;
                                case 4:
                                    ((struct PlayerD368 *)arg0)->fDC += 1;
                                    ((struct PlayerD368 *)arg0)->f20 = 5U;
                                    d368_sub_0801551C();
                                    break;
                                }
                                break;
                            case 7:                 /* switch 5 */
                                var_r4_11 = ((struct PlayerD368 *)arg0)->f10;
                                if (var_r4_11 == 9) {
                                    var_r0_12 = (s16) d368_sub_0806898C(d368_sub_0801DEB8(), ((struct PlayerD368 *)arg0)->f26);
                                    if (var_r0_12 != 0) {
                                        ((struct PlayerD368 *)arg0)->f20 = var_r4_11;
                                        ((struct PlayerD368 *)arg0)->fDC += 1;
                                        if (d368_sub_0801DEB8() == 0x13) {
                                            sp170 = d368_sub_080008C8();
                                            sp170 &= 7;
                                        }
                                    } else {
                                        ((struct PlayerD368 *)arg0)->f26 = var_r0_12;
                                        ((struct PlayerD368 *)arg0)->f24 = var_r0_12;
                                        sp130 = 0;
                                        sp134 = 0;
                                        ((struct PlayerD368 *)arg0)->f20 = 0U;
                                    }
                                } else {
                                    ((struct PlayerD368 *)arg0)->fDC += 1;
                                    ((struct PlayerD368 *)arg0)->f20 = 5U;
                                }
                                break;
                            }
                        }
                        ((struct PlayerD368 *)arg0)->fB4 = 0U;
                        *(u16 *)((arg0 + 0xB4) - 2) = 0;
                        sp144 = 0;
                        break;
state3ZeroStageD368:
                        ((struct PlayerD368 *)arg0)->f24 = 0;
                        ((struct PlayerD368 *)arg0)->f26 = 0;
                        sp130 = 0;
                        sp134 = 0;
                        ((struct PlayerD368 *)arg0)->f20 = 0U;
                        ((struct PlayerD368 *)arg0)->f30 &= 0xFFDFFFFF;
                        goto block_1024;

                    }
                } else {
                    temp_r0_36 = d368_sub_0801E538();
                    if (temp_r0_36 == 0) {
                        ((struct PlayerD368 *)arg0)->f20 = (u16) temp_r0_36;
                        ((struct PlayerD368 *)arg0)->f24 = (u16) temp_r0_36;
                        ((struct PlayerD368 *)arg0)->f26 = (u16) temp_r0_36;
                    } else {
                        if (((struct PlayerD368 *)arg0)->f10 != 9) {
                            sp128 = d368_sub_0801D34C();
                            var_r5 = D368_Level2(arg0);
                            if (sp128 > (u32) var_r5) {
                                sp128 = (u32) var_r5;
                                if ((u32) var_r5 > (u32) ((struct PlayerD368 *)arg0)->f26) {
                                    sp128 = 0;
                                }
                            } else if (sp128 > (u32) ((struct PlayerD368 *)arg0)->f26) {
                                sp128 = 0;
                            }
                        } else {
                            sp128 = d368_sub_0801D34C();
                            var_r5 = (u16) d368_sub_08079FD0(d368_sub_0801DEB8()) - 1;
                            if (sp128 > (u32) var_r5) {
                                sp128 = (u32) var_r5;
                                if ((u32) var_r5 > (u32) ((struct PlayerD368 *)arg0)->f26) {
                                    sp128 = 0;
                                }
                            } else if (sp128 > (u32) ((struct PlayerD368 *)arg0)->f26) {
                                sp128 = 0;
                            }
                        }
                        if (sp128 == 0) {
                            sp130 = (s32) (u16) (sp130 + sp134);
                        } else {
                            ((struct PlayerD368 *)arg0)->f26 = (u16) sp128;
                            ((struct PlayerD368 *)arg0)->f24 = 0U;
                        }
                        if ((u32) sp130 > 0xFFU) {
                            temp_r0_38 = ((u32) sp130 >> 8) + ((struct PlayerD368 *)arg0)->f24;
                            ((struct PlayerD368 *)arg0)->f24 = temp_r0_38;
                            sp130 &= 0xFF;
                            if ((u32) (u16) temp_r0_38 > 0x10U) {
                                sp134 = (s32) (u16) (sp134 + 0x20);
                                ((struct PlayerD368 *)arg0)->f26 = (u16) (((struct PlayerD368 *)arg0)->f26 + 1);
                                ((struct PlayerD368 *)arg0)->f24 = 0U;
                                temp_r0_39 = ((struct PlayerD368 *)arg0)->f26 - 1;
                                switch (temp_r0_39) { /* switch 6 */
                                case 0:             /* switch 6 */
                                    d368_sub_0805865C(0x90);
                                    break;
                                case 1:             /* switch 6 */
                                    d368_sub_0805865C(0x96);
                                    break;
                                case 2:             /* switch 6 */
                                    d368_sub_0805865C(0x97);
                                    break;
                                case 3:             /* switch 6 */
                                    d368_sub_0805865C(0x98);
                                    break;
                                case 4:             /* switch 6 */
                                    d368_sub_0805865C(0x99);
                                    break;
                                case 5:             /* switch 6 */
                                    d368_sub_0805865C(0x9A);
                                    break;
                                case 6:             /* switch 6 */
                                    d368_sub_0805865C(0x9B);
                                    break;
                                }
                            }
                        }
                    }
                    if (directionD36874 != 0) {
                        var_r0_9 = 4;
block_627:
                        ((struct PlayerD368 *)arg0)->f20 = var_r0_9;
                    } else {
                        var_r1_6 = ((struct PlayerD368 *)arg0)->fD8;
                        if (var_r1_6 <= 0x17) {
                            temp_r0_40 = var_r1_6 - 8;
                            ((struct PlayerD368 *)arg0)->fD8 = temp_r0_40;
                            if (temp_r0_40 > 0) {

                            } else {
                                ((struct PlayerD368 *)arg0)->fD8 = directionD36874;
                            }
                        } else {
                            var_r0_10 = var_r1_6 - (var_r1_6 >> 1);
                            ((struct PlayerD368 *)arg0)->fD8 = var_r0_10;
                        }
                    }
                }
                break;
            case 4:                                 /* switch 4 */
                directionD36874 = 0;
                temp_r1_25 = ((struct PlayerD368 *)arg0)->f12;
                if (0x40 & temp_r1_25) {
                    directionD36874 = 5;
                } else if (0x80 & temp_r1_25) {
                    directionD36874 = 1;
                }
                if (0x20 & temp_r1_25) {
                    if (directionD36874 == 5) {
                        directionD36874 = 4;
                    } else if (directionD36874 == 1) {
                        directionD36874 = 2;
                    } else {
                        directionD36874 = 3;
                    }
                } else if (0x10 & temp_r1_25) {
                    if (directionD36874 == 5) {
                        directionD36874 = 6;
                    } else if (directionD36874 == 1) {
                        directionD36874 = 8;
                    } else {
                        directionD36874 = 7;
                    }
                }
                temp_r3_5 = ((struct PlayerD368 *)arg0)->f18 & temp_r1_25;
                if (temp_r3_5 == 0) {
                    if (((struct PlayerD368 *)arg0)->f26 == 0) {
                        goto state4ZeroStageD368;
                    }
                    if (((struct PlayerD368 *)arg0)->f10 != 9) {
                        { u16 i26 = ((struct PlayerD368 *)arg0)->f26; temp_r0_50 = ((s8) ((struct PlayerD368 *)arg0)->f6C * 0xA) + gUnk_0847ACE8[i26]; }
                        var_r2_9 = temp_r0_50;
                        if ((s32) (temp_r0_50 << 0x10) < 0) {
                            var_r2_9 = 0;
                        }
                        temp_r1_27 = ((struct PlayerD368 *)arg0)->fC2 - (s16) var_r2_9;
                        ((struct PlayerD368 *)arg0)->fC2 = temp_r1_27;
                        if ((s32) ((u32) temp_r1_27 << 0x10) < 0) {
                            ((struct PlayerD368 *)arg0)->fC2 = temp_r3_5;
                        }
                    }
                    temp_r0_51 = (u32) d368_sub_0801DE60();
                    if (temp_r0_51 > 7U) {

                    } else {
                        switch (temp_r0_51) {       /* switch 7 */
                        case 0:                     /* switch 7 */
                            ((struct PlayerD368 *)arg0)->fDC += 1;
                            ((struct PlayerD368 *)arg0)->f20 = 5U;
                            d368_sub_08014D60();
                            break;
                        case 2:                     /* switch 7 */
                            var_r4_11 = ((struct PlayerD368 *)arg0)->f10;
                            if (var_r4_11 == 9) {
                                temp_r0_52 = (s16) d368_sub_0806898C(d368_sub_0801DEB8(), ((struct PlayerD368 *)arg0)->f26);
                                if (temp_r0_52 != 0) {
                                    if ((d368_sub_0801DEB8() != 7) || (byteTable6410D368[((struct PlayerD368 *)arg0)->f0] == 0)) {
                                        ((struct PlayerD368 *)arg0)->f20 = var_r4_11;
                                        ((struct PlayerD368 *)arg0)->fDC += 1;
                                    } else {
                                        ((struct PlayerD368 *)arg0)->f26 = 0;
                                        ((struct PlayerD368 *)arg0)->f24 = 0;
                                        sp130 = 0;
                                        sp134 = 0;
                                        ((struct PlayerD368 *)arg0)->f20 = 0U;
                                    }
                                } else {
                                    ((struct PlayerD368 *)arg0)->f26 = temp_r0_52;
                                    ((struct PlayerD368 *)arg0)->f24 = temp_r0_52;
                                    sp130 = 0;
                                    sp134 = 0;
                                    ((struct PlayerD368 *)arg0)->f20 = 0U;
                                }
                            } else {
                                ((struct PlayerD368 *)arg0)->fDC += 1;
                                ((struct PlayerD368 *)arg0)->f20 = 5U;
                            }
                            break;
                        case 3:                     /* switch 7 */
                            ((struct PlayerD368 *)arg0)->fDC += 1;
                            ((struct PlayerD368 *)arg0)->f20 = 5U;
                            d368_sub_080151E0();
                            break;
                        case 5:                     /* switch 7 */
                            ((struct PlayerD368 *)arg0)->f20 = 5U;
                            ((struct PlayerD368 *)arg0)->fDC += 1;
                            break;
                        case 1:                     /* switch 7 */
                        case 4:                     /* switch 7 */
                        case 6:                     /* switch 7 */
                            var_r4_11 = ((struct PlayerD368 *)arg0)->f10;
                            switch (var_r4_11) {
                            case 5:
                                ((struct PlayerD368 *)arg0)->fDC += 1;
                                ((struct PlayerD368 *)arg0)->f20 = var_r4_11;
                                d368_sub_0801551C();
                                break;
                            case 9:
                                temp_r0_53 = (s16) d368_sub_0806898C(d368_sub_0801DEB8(), ((struct PlayerD368 *)arg0)->f26);
                                if (temp_r0_53 != 0) {
                                    if (d368_sub_0801DE60() == 6) {
                                        if ((d368_sub_0801DEB8() != 0x11) || (actorByteState315D368[((struct PlayerD368 *)arg0)->f0] == 0)) {
                                            ((struct PlayerD368 *)arg0)->f20 = var_r4_11;
                                            ((struct PlayerD368 *)arg0)->fDC += 1;
                                        } else {
                                            ((struct PlayerD368 *)arg0)->f26 = 0U;
                                            ((struct PlayerD368 *)arg0)->f24 = 0U;
                                            sp130 = 0;
                                            sp134 = 0;
                                            ((struct PlayerD368 *)arg0)->f20 = 0U;
                                        }
                                    } else {
                                        ((struct PlayerD368 *)arg0)->f20 = var_r4_11;
                                        ((struct PlayerD368 *)arg0)->fDC += 1;
                                    }
                                } else {
                                    ((struct PlayerD368 *)arg0)->f26 = (u16) temp_r0_53;
                                    ((struct PlayerD368 *)arg0)->f24 = (u16) temp_r0_53;
                                    sp130 = 0;
                                    sp134 = 0;
                                    ((struct PlayerD368 *)arg0)->f20 = 0U;
                                }
                                break;
                            case 4:
                                ((struct PlayerD368 *)arg0)->fDC += 1;
                                ((struct PlayerD368 *)arg0)->f20 = 5U;
                                d368_sub_0801551C();
                                break;
                            }
                            break;
                        case 7:                     /* switch 7 */
                            var_r4_11 = ((struct PlayerD368 *)arg0)->f10;
                            if (var_r4_11 == 9) {
                                temp_r0_54 = (s16) d368_sub_0806898C(d368_sub_0801DEB8(), ((struct PlayerD368 *)arg0)->f26);
                                if (temp_r0_54 != 0) {
                                    ((struct PlayerD368 *)arg0)->f20 = var_r4_11;
                                    ((struct PlayerD368 *)arg0)->fDC += 1;
                                } else {
                                    ((struct PlayerD368 *)arg0)->f26 = (u16) temp_r0_54;
                                    ((struct PlayerD368 *)arg0)->f24 = (u16) temp_r0_54;
                                    sp130 = 0;
                                    sp134 = 0;
                                    ((struct PlayerD368 *)arg0)->f20 = 0U;
                                }
                            } else {
                                ((struct PlayerD368 *)arg0)->fDC += 1;
                                ((struct PlayerD368 *)arg0)->f20 = 5U;
                            }
                            break;
                        }
                    }
                    ((struct PlayerD368 *)arg0)->fB4 = 0U;
                    *(u16 *)((arg0 + 0xB4) - 2) = 0;
                    sp144 = 0;
                    asm volatile(""); /* ROM keeps this tail separate */
                    break;
state4ZeroStageD368:
                        ((struct PlayerD368 *)arg0)->f26 = 0;
                        ((struct PlayerD368 *)arg0)->f24 = 0;
                        sp144 = 0;
                        sp130 = 0;
                        sp134 = 0;
                        ((struct PlayerD368 *)arg0)->f20 = 0U;
                        ((struct PlayerD368 *)arg0)->f30 &= 0xFFDFFFFF;
                        goto block_1024;

                } else {
                    if (directionD36874 == 0) {
                        var_r0_9 = 3;
                        goto block_627;
                    }
                    temp_r0_44 = d368_sub_0801E538();
                    if (temp_r0_44 == 0) {
                        ((struct PlayerD368 *)arg0)->f20 = (u16) temp_r0_44;
                        ((struct PlayerD368 *)arg0)->f24 = (u16) temp_r0_44;
                        ((struct PlayerD368 *)arg0)->f26 = (u16) temp_r0_44;
                    } else {
                        if (((struct PlayerD368 *)arg0)->f10 != 9) {
                            sp128 = d368_sub_0801D34C();
                            var_r0_13 = D368_Level2(arg0);
                            var_r5 = (u16) var_r0_13;
                            if (sp128 > (u32) var_r5) {
                                sp128 = (u32) var_r5;
                                if ((u32) var_r5 > (u32) ((struct PlayerD368 *)arg0)->f26) {
                                    sp128 = 0;
                                    goto block_719;
                                }
                                goto block_718;
                            }
                            if (sp128 > (u32) ((struct PlayerD368 *)arg0)->f26) {
                                sp128 = 0;
                                goto block_719;
                            }
                            goto block_718;
                        }
                        sp128 = d368_sub_0801D34C();
                        var_r5 = (u16) d368_sub_08079FD0(d368_sub_0801DEB8()) - 1;
                        if (sp128 > var_r5) {
                            sp128 = var_r5;
                            if (var_r5 > (u32) ((struct PlayerD368 *)arg0)->f26) {
                                sp128 = 0;
                                goto block_719;
                            }
                            goto block_718;
                        }
                        if (sp128 > (u32) ((struct PlayerD368 *)arg0)->f26) {
                            sp128 = 0;
                        }
block_718:
                        if (sp128 == 0) {
block_719:
                            sp130 = (s32) (u16) (sp130 + sp134);
                        } else {
                            ((struct PlayerD368 *)arg0)->f26 = (u16) sp128;
                            ((struct PlayerD368 *)arg0)->f24 = 0U;
                        }
                        if ((u32) sp130 > 0xFFU) {
                            temp_r0_46 = ((u32) sp130 >> 8) + ((struct PlayerD368 *)arg0)->f24;
                            ((struct PlayerD368 *)arg0)->f24 = temp_r0_46;
                            sp130 &= 0xFF;
                            if ((u32) (u16) temp_r0_46 > 0x10U) {
                                sp134 = (s32) (u16) (sp134 + 0x20);
                                ((struct PlayerD368 *)arg0)->f26 = (u16) (((struct PlayerD368 *)arg0)->f26 + 1);
                                ((struct PlayerD368 *)arg0)->f24 = 0U;
                                temp_r0_47 = ((struct PlayerD368 *)arg0)->f26 - 1;
                                switch (temp_r0_47) { /* switch 8 */
                                case 0:             /* switch 8 */
                                    d368_sub_0805865C(0x90);
                                    break;
                                case 1:             /* switch 8 */
                                    d368_sub_0805865C(0x96);
                                    break;
                                case 2:             /* switch 8 */
                                    d368_sub_0805865C(0x97);
                                    break;
                                case 3:             /* switch 8 */
                                    d368_sub_0805865C(0x98);
                                    break;
                                case 4:             /* switch 8 */
                                    d368_sub_0805865C(0x99);
                                    break;
                                case 5:             /* switch 8 */
                                    d368_sub_0805865C(0x9A);
                                    break;
                                case 6:             /* switch 8 */
                                    d368_sub_0805865C(0x9B);
                                    break;
                                }
                            }
                        }
                    }
                    {
                        s32 *state4CurrentD368;
                        ((struct PlayerD368 *)arg0)->f1C = directionD36874 - 1;
                        state4CurrentD368 = &((struct PlayerD368 *)arg0)->fD8;
                        temp_r2_13 = ((struct PlayerD368 *)arg0)->f40;
                        temp_r1_26 = *state4CurrentD368;
                        temp_r0_48 = (s32) (temp_r2_13 - temp_r1_26) >> 1;
                        if (temp_r0_48 > 0) {
                            var_r0_14 = temp_r1_26 + temp_r0_48;
                            ((struct PlayerD368 *)arg0)->fD8 = var_r0_14;
                        } else {
                            var_r0_14 = temp_r1_26 + 1;
                            ((struct PlayerD368 *)arg0)->fD8 = var_r0_14;
                        }
                        if ((s32) temp_r2_13 > *state4CurrentD368) {

                        } else {
                            *state4CurrentD368 = (s32) temp_r2_13;
                        }
                    }
                }
                break;
            case 5:                                 /* switch 4 */
                directionD36874 = 0;
                if (0x40 & ((struct PlayerD368 *)arg0)->f12) {
                    directionD36874 = 5;
                } else if (0x80 & ((struct PlayerD368 *)arg0)->f12) {
                    directionD36874 = 1;
                }
                if (0x20 & ((struct PlayerD368 *)arg0)->f12) {
                    if (directionD36874 == 5) {
                        directionD36874 = 4;
                    } else if (directionD36874 == 1) {
                        directionD36874 = 2;
                    } else {
                        directionD36874 = 3;
                    }
                } else if (0x10 & ((struct PlayerD368 *)arg0)->f12) {
                    if (directionD36874 == 5) {
                        directionD36874 = 6;
                    } else if (directionD36874 == 1) {
                        directionD36874 = 8;
                    } else {
                        directionD36874 = 7;
                    }
                }
                temp_r0_55 = d368_sub_0801DE60();
                switch (temp_r0_55) {
                case 0:
                    if (((struct PlayerD368 *)arg0)->f10 != 3) {
                        goto state5Zero66;
                    }
                    goto state5Move66;
                case 5:
                    if ((((struct PlayerD368 *)arg0)->f10 == 8) && (directionD36874 != 0)) {
                        ((struct PlayerD368 *)arg0)->f1C = (s16) (directionD36874 - 1);
                        state5Destination67 = arg0 + 0x94;
                        var_r5_6 = arg0 + 0x8C;
                        *(struct PairD36867 *)state5Destination67 = *(struct PairD36867 *)var_r5_6;
                        var_r3_6 = d368_sub_0800CCCC();
                        var_r3_6 <<= 16;
                        var_r3_6 >>= 16;
                        var_r0_15 = (s32) ((u32) (u16) ((struct PlayerD368 *)arg0)->f40 << 0x10) >> 0x11;
                        var_r2_10 = (u16) ((struct PlayerD368 *)arg0)->f1C;
                        goto state5Call66;
                    }
                    goto state5Zero66;
                case 7:
                    if (((struct PlayerD368 *)arg0)->f10 == 1) {
state5Move66:
                        if (directionD36874 != 0) {
                        state5Destination67 = arg0 + 0x94;
                        var_r5_6 = arg0 + 0x8C;
                        *(struct PairD36867 *)state5Destination67 = *(struct PairD36867 *)var_r5_6;
                        var_r3_6 = d368_sub_0800CCCC();
                        var_r3_6 <<= 16;
                        var_r3_6 >>= 16;
                        var_r0_15 = (s32) ((u32) (u16) ((struct PlayerD368 *)arg0)->f40 << 0x10) >> 0x11;
                            var_r2_10 = directionD36874 - 1;
                            var_r2_10 <<= 16;
                            var_r2_10 >>= 16;
                            goto state5Call66;
                        }
                    }
                    goto state5Zero66;
                default:
                    goto state5Decay66;
                }
state5Call66:
                d368_sub_08013E90(var_r0_15, var_r5_6, var_r2_10, var_r3_6, (((struct PlayerD368 *)arg0)->f30 & 0x20));
state5Zero66:
                ((struct PlayerD368 *)arg0)->fD8 = 0;
                goto state5Done66;
state5Decay66:
                var_r1_6 = ((struct PlayerD368 *)arg0)->fD8;
                if (var_r1_6 > 0x17) {
                    ((struct PlayerD368 *)arg0)->fD8 = var_r1_6 - (var_r1_6 >> 1);
                } else {
                    temp_r0_56 = var_r1_6 - 8;
                    ((struct PlayerD368 *)arg0)->fD8 = temp_r0_56;
                    if (temp_r0_56 <= 0) {
                        ((struct PlayerD368 *)arg0)->fD8 = 0;
                    }
                }
state5Done66:
                break;
            case 6:                                 /* switch 4 */
                sp158 = 0;
                directionD36874 = 0;
                if (0x40 & ((struct PlayerD368 *)arg0)->f12) {
                    directionD36874 = 5;
                } else if (0x80 & ((struct PlayerD368 *)arg0)->f12) {
                    directionD36874 = 1;
                }
                if (0x20 & ((struct PlayerD368 *)arg0)->f12) {
                    if (directionD36874 == 5) {
                        directionD36874 = 4;
                    } else if (directionD36874 == 1) {
                        directionD36874 = 2;
                    } else {
                        directionD36874 = 3;
                    }
                } else if (0x10 & ((struct PlayerD368 *)arg0)->f12) {
                    if (directionD36874 == 5) {
                        directionD36874 = 6;
                    } else if (directionD36874 == 1) {
                        directionD36874 = 8;
                    } else {
                        directionD36874 = 7;
                    }
                }
                if (d368_sub_0805D548(((struct InvD368 *)d368_gUnk_030034E0)->f56[((struct InvD368 *)d368_gUnk_030034E0)->f54] - 1) == -1) {
                    ((struct PlayerD368 *)arg0)->f24 = 0U;
                    ((struct PlayerD368 *)arg0)->f26 = 0U;
                    sp130 = 0;
                    sp134 = 0;
                    ((struct PlayerD368 *)arg0)->f20 = 0U;
                    sp190 = 0xFFFF;
                } else {
                    temp_r2_14 = ((struct PlayerD368 *)arg0)->f12 & ((struct PlayerD368 *)arg0)->f1A;
                    if (temp_r2_14 == 0) {
                        if ((((struct PlayerD368 *)arg0)->f26 != 0) && (sp194 == ((struct InvD368 *)d368_gUnk_030034E0)->f54)) {
                            sp190 = (s32) (u16) (((struct InvD368 *)d368_gUnk_030034E0)->f56[((struct InvD368 *)d368_gUnk_030034E0)->f54] - 1);
                            ((struct PlayerD368 *)arg0)->f20 = 8U;
                            ((struct PlayerD368 *)arg0)->fB4 = temp_r2_14;
                            *(u16 *)((arg0 + 0xB4) - 2) = temp_r2_14;
                            sp144 = 0;
                        } else {
                            sp190 = 0xFFFE;
                            ((struct PlayerD368 *)arg0)->f24 = 0U;
                            ((struct PlayerD368 *)arg0)->f26 = 0U;
                            sp130 = 0;
                            sp134 = 0;
                            ((struct PlayerD368 *)arg0)->f20 = 0U;
                        }
                    } else {
                        temp_r0_57 = sp130 + sp134;
                        temp_r5_8 = temp_r0_57;
                        sp130 = (s32) temp_r5_8;
                        if ((u32) temp_r5_8 <= 0xFFU) {

                        } else {
                            temp_r0_58 = ((u32) (temp_r0_57 << 0x10) >> 0x18) + ((struct PlayerD368 *)arg0)->f24;
                            ((struct PlayerD368 *)arg0)->f24 = temp_r0_58;
                            sp130 = temp_r5_8 & 0xFF;
                            if ((u32) (u16) temp_r0_58 > 0xFU) {
                                temp_r1_30 = ((struct PlayerD368 *)arg0)->f26 + 1;
                                ((struct PlayerD368 *)arg0)->f26 = temp_r1_30;
                                sp134 = (s32) (u16) (sp134 + 0x20);
                                temp_r2_15 = ((struct PlayerD368 *)arg0)->f67;
                                if (temp_r2_15 != 0) {
                                    if ((u32) (u16) temp_r1_30 > 0x10U) {
                                        var_r0_16 = 0x10;
                                        goto block_809;
                                    }
                                    ((struct PlayerD368 *)arg0)->f24 = 0U;
                                    temp_r0_59 = ((u32) ((u32) temp_r1_30 << 0x10) >> 0x11) - 1;
                                    switch (temp_r0_59) {
                                    case 0: goto shared9_0;
                                    case 1: goto shared9_1;
                                    case 2: goto shared9_2;
                                    case 3: goto shared9_3;
                                    case 4: goto shared9_4;
                                    case 5: goto shared9_5; /* switch 9 */
                                    case 6:         /* switch 9 */
                                        d368_sub_0805865C(0x9B);
                                        break;
                                    }
                                } else if ((u32) (u16) temp_r1_30 > 8U) {
                                    var_r0_16 = 8;
block_809:
                                    ((struct PlayerD368 *)arg0)->f26 = var_r0_16;
                                    ((struct PlayerD368 *)arg0)->f24 = 0x11U;
                                } else {
                                    ((struct PlayerD368 *)arg0)->f24 = (u16) temp_r2_15;
                                    temp_r0_60 = ((struct PlayerD368 *)arg0)->f26 - 1;
                                    switch (temp_r0_60) { /* switch 10 */
                                    case 0:         /* switch 10 */
                                    shared9_0:
                                        d368_sub_0805865C(0x90);
                                        break;
                                    case 1:         /* switch 10 */
                                    shared9_1:
                                        d368_sub_0805865C(0x96);
                                        break;
                                    case 2:         /* switch 10 */
                                    shared9_2:
                                        d368_sub_0805865C(0x97);
                                        break;
                                    case 3:         /* switch 10 */
                                    shared9_3:
                                        d368_sub_0805865C(0x98);
                                        break;
                                    case 4:         /* switch 10 */
                                    shared9_4:
                                        d368_sub_0805865C(0x99);
                                        break;
                                    case 5:         /* switch 10 */
                                    shared9_5:
                                        d368_sub_0805865C(0x9A);
                                        break;
                                    case 6:         /* switch 10 */
                                        d368_sub_0805865C(0x9B);
                                        break;
                                    }
                                }
                            }
                        }
                        if (directionD36874 != 0) {
                            var_r0_9 = 7;
                            goto block_627;
                        }
                        var_r1_6 = ((struct PlayerD368 *)arg0)->fD8;
                        if (var_r1_6 > 0x17) {
                            goto timerHighDecayD368;
                        } else {
                            temp_r0_40 = var_r1_6 - 8;
                            ((struct PlayerD368 *)arg0)->fD8 = temp_r0_40;
                            if (temp_r0_40 <= 0) {
                                ((struct PlayerD368 *)arg0)->fD8 = directionD36874;
                            }
                        }
                    }
                }
                break;
            case 7:                                 /* switch 4 */
                sp158 = 0;
                directionD36874 = 0;
                if (0x40 & ((struct PlayerD368 *)arg0)->f12) {
                    directionD36874 = 5;
                } else if (0x80 & ((struct PlayerD368 *)arg0)->f12) {
                    directionD36874 = 1;
                }
                if (0x20 & ((struct PlayerD368 *)arg0)->f12) {
                    if (directionD36874 == 5) {
                        directionD36874 = 4;
                    } else if (directionD36874 == 1) {
                        directionD36874 = 2;
                    } else {
                        directionD36874 = 3;
                    }
                } else if (0x10 & ((struct PlayerD368 *)arg0)->f12) {
                    if (directionD36874 == 5) {
                        directionD36874 = 6;
                    } else if (directionD36874 == 1) {
                        directionD36874 = 8;
                    } else {
                        directionD36874 = 7;
                    }
                }
                if (d368_sub_0805D548(((struct InvD368 *)d368_gUnk_030034E0)->f56[((struct InvD368 *)d368_gUnk_030034E0)->f54] - 1) == -1) {
                    ((struct PlayerD368 *)arg0)->f24 = 0U;
                    ((struct PlayerD368 *)arg0)->f26 = 0U;
                    sp130 = 0;
                    sp134 = 0;
                    ((struct PlayerD368 *)arg0)->f20 = 0U;
                } else {
                    temp_r2_16 = ((struct PlayerD368 *)arg0)->f12 & ((struct PlayerD368 *)arg0)->f1A;
                    if (temp_r2_16 == 0) {
                        if ((((struct PlayerD368 *)arg0)->f26 != 0) && (sp194 == ((struct InvD368 *)d368_gUnk_030034E0)->f54)) {
                            sp190 = (s32) (u16) (((struct InvD368 *)d368_gUnk_030034E0)->f56[((struct InvD368 *)d368_gUnk_030034E0)->f54] - 1);
                            ((struct PlayerD368 *)arg0)->f20 = 8U;
                            ((struct PlayerD368 *)arg0)->fB4 = temp_r2_16;
                            *(u16 *)((arg0 + 0xB4) - 2) = temp_r2_16;
                            sp144 = 0;
                            sp158 = 0;
                        } else {
                            sp194 = 0xFFFE;
                            ((struct PlayerD368 *)arg0)->f26 = 0U;
                            ((struct PlayerD368 *)arg0)->f24 = 0U;
                            sp144 = 0;
                            sp130 = 0;
                            sp134 = 0;
                            ((struct PlayerD368 *)arg0)->f20 = 0U;
                        }
                    } else {
                        if (directionD36874 == 0) {
                            var_r0_9 = 6;
                            goto block_627;
                        }
                        temp_r0_61 = sp130 + sp134;
                        temp_r1_32 = temp_r0_61;
                        sp130 = (s32) temp_r1_32;
                        if ((u32) temp_r1_32 <= 0xFFU) {

                        } else {
                            temp_r0_62 = ((u32) (temp_r0_61 << 0x10) >> 0x18) + ((struct PlayerD368 *)arg0)->f24;
                            ((struct PlayerD368 *)arg0)->f24 = temp_r0_62;
                            sp130 &= 0xFF;
                            if ((u32) (u16) temp_r0_62 > 0xFU) {
                                temp_r1_33 = ((struct PlayerD368 *)arg0)->f26 + 1;
                                ((struct PlayerD368 *)arg0)->f26 = temp_r1_33;
                                sp134 = (s32) (u16) (sp134 + 0x20);
                                temp_r2_17 = ((struct PlayerD368 *)arg0)->f67;
                                if (temp_r2_17 != 0) {
                                    if ((u32) (u16) temp_r1_33 > 0x10U) {
                                        var_r0_17 = 0x10;
                                        goto block_862;
                                    }
                                    ((struct PlayerD368 *)arg0)->f24 = 0U;
                                    temp_r0_63 = ((u32) ((u32) temp_r1_33 << 0x10) >> 0x11) - 1;
                                    switch (temp_r0_63) {
                                    case 0: goto shared11_0;
                                    case 1: goto shared11_1;
                                    case 2: goto shared11_2;
                                    case 3: goto shared11_3;
                                    case 4: goto shared11_4;
                                    case 5: goto shared11_5; /* switch 11 */
                                    case 6:         /* switch 11 */
                                        d368_sub_0805865C(0x9B);
                                        break;
                                    }
                                } else if ((u32) (u16) temp_r1_33 > 8U) {
                                    var_r0_17 = 8;
block_862:
                                    ((struct PlayerD368 *)arg0)->f26 = var_r0_17;
                                    ((struct PlayerD368 *)arg0)->f24 = 0x11U;
                                } else {
                                    ((struct PlayerD368 *)arg0)->f24 = (u16) temp_r2_17;
                                    temp_r0_64 = ((struct PlayerD368 *)arg0)->f26 - 1;
                                    switch (temp_r0_64) { /* switch 12 */
                                    case 0:         /* switch 12 */
                                    shared11_0:
                                        d368_sub_0805865C(0x90);
                                        break;
                                    case 1:         /* switch 12 */
                                    shared11_1:
                                        d368_sub_0805865C(0x96);
                                        break;
                                    case 2:         /* switch 12 */
                                    shared11_2:
                                        d368_sub_0805865C(0x97);
                                        break;
                                    case 3:         /* switch 12 */
                                    shared11_3:
                                        d368_sub_0805865C(0x98);
                                        break;
                                    case 4:         /* switch 12 */
                                    shared11_4:
                                        d368_sub_0805865C(0x99);
                                        break;
                                    case 5:         /* switch 12 */
                                    shared11_5:
                                        d368_sub_0805865C(0x9A);
                                        break;
                                    case 6:         /* switch 12 */
                                        d368_sub_0805865C(0x9B);
                                        break;
                                    }
                                }
                            }
                        }
                        {
                            s16 *state7LimitD368;
                            s32 *state7CurrentD368;
                            ((struct PlayerD368 *)arg0)->f1C = (s16) (directionD36874 - 1);
                            state7LimitD368 = &((struct PlayerD368 *)arg0)->f40;
                            state7CurrentD368 = &((struct PlayerD368 *)arg0)->fD8;
                            temp_r3_6 = *state7LimitD368;
                            temp_r1_34 = *state7CurrentD368;
                            temp_r0_65 = (s32) (temp_r3_6 - temp_r1_34) >> 1;
                            var_r4_3 = state7CurrentD368;
                            if (temp_r0_65 > 0) {
                                var_r0_18 = temp_r1_34 + temp_r0_65;
                                *var_r4_3 = var_r0_18;
                            } else {
                                var_r0_18 = temp_r1_34 + 1;
                                *var_r4_3 = var_r0_18;
                            }
                            if ((s32) temp_r3_6 > *state7CurrentD368) {

                            } else {
                                *state7CurrentD368 = (s32) temp_r3_6;
                            }
                        }
                    }
                }
                break;
            case 8:                                 /* switch 4 */
                temp_r1_35 = ((struct PlayerD368 *)arg0)->fD8;
                if (temp_r1_35 <= 0x17) {
                    temp_r0_66 = temp_r1_35 - 8;
                    ((struct PlayerD368 *)arg0)->fD8 = temp_r0_66;
                    if (temp_r0_66 <= 0) {
                        var_r0_19 = 0;
                        goto block_882;
                    }
                } else {
                    var_r0_19 = temp_r1_35 - (temp_r1_35 >> 1);
block_882:
                    ((struct PlayerD368 *)arg0)->fD8 = var_r0_19;
                }
                if (((struct PlayerD368 *)arg0)->fB0 != ((struct PlayerD368 *)arg0)->fB8) {

                } else if (((struct PlayerD368 *)arg0)->fB6 == 0) {

                } else {
                    ((struct PlayerD368 *)arg0)->f20 = 0U;
                    ((struct PlayerD368 *)arg0)->f24 = 0U;
                    ((struct PlayerD368 *)arg0)->f26 = 0U;
                    sp144 = 0;
                    sp190 = 0xFFFF;
                }
                break;
            case 2:                                 /* switch 4 */
                temp_r0_67 = d368_sub_0801DE60();
                switch (temp_r0_67) {
                default:
                    var_r1_8 = ((struct PlayerD368 *)arg0)->fD8;
                    if (var_r1_8 <= 0x17) {
                        temp_r0_68 = var_r1_8 - 8;
                        ((struct PlayerD368 *)arg0)->fD8 = temp_r0_68;
                        if (temp_r0_68 <= 0) {
                            ((struct PlayerD368 *)arg0)->fD8 = 0;
                        }
                    } else {
                        ((struct PlayerD368 *)arg0)->fD8 = var_r1_8 - (var_r1_8 >> 1);
                    }
                    break;
                case 3:
                    if (((struct PlayerD368 *)arg0)->f10 == 4) {
                        temp_r2_18 = ((struct PlayerD368 *)arg0)->fB2;
                        if (temp_r2_18 != 0) {
                            if (M2C_FIELD((arg0 + 0xB2), u16 *, 2) == 1) {
                                ((struct PlayerD368 *)arg0)->fD8 = 0x200;
                            }
                            var_r1_8 = ((struct PlayerD368 *)arg0)->fD8;
                            if (var_r1_8 <= 0x17) {
                                temp_r0_72 = var_r1_8 - 8;
                                ((struct PlayerD368 *)arg0)->fD8 = temp_r0_72;
                                if (temp_r0_72 <= 0) {
                                    ((struct PlayerD368 *)arg0)->fD8 = 0;
                                }
                            } else {
                                ((struct PlayerD368 *)arg0)->fD8 = var_r1_8 - (var_r1_8 >> 1);
                            }
                        } else {
                            var_r1_8 = ((struct PlayerD368 *)arg0)->fD8;
                            if (var_r1_8 <= 0x17) {
                                temp_r0_73 = var_r1_8 - 8;
                                ((struct PlayerD368 *)arg0)->fD8 = temp_r0_73;
                                if (temp_r0_73 <= 0) {
                                    ((struct PlayerD368 *)arg0)->fD8 = (s32) temp_r2_18;
                                }
                            } else {
                                ((struct PlayerD368 *)arg0)->fD8 = var_r1_8 - (var_r1_8 >> 1);
                            }
                        }
                    } else {
                        var_r1_8 = ((struct PlayerD368 *)arg0)->fD8;
                        if (var_r1_8 <= 0x17) {
                            temp_r0_74 = var_r1_8 - 8;
                            ((struct PlayerD368 *)arg0)->fD8 = temp_r0_74;
                            if (temp_r0_74 <= 0) {
                                ((struct PlayerD368 *)arg0)->fD8 = 0;
                            }
                        } else {
                            ((struct PlayerD368 *)arg0)->fD8 = var_r1_8 - (var_r1_8 >> 1);
                        }
                    }
                    break;
                case 4:
                    if (((struct PlayerD368 *)arg0)->f10 == 4) {
                        if ((u32) ((struct PlayerD368 *)arg0)->fB2 > 1U) {
                            if (((struct PlayerD368 *)arg0)->fB4 == 1) {
                                ((struct PlayerD368 *)arg0)->fD8 = 0x200;
                            }
                            var_r1_8 = ((struct PlayerD368 *)arg0)->fD8;
                            if (var_r1_8 <= 0x17) {
                                temp_r0_69 = var_r1_8 - 8;
                                ((struct PlayerD368 *)arg0)->fD8 = temp_r0_69;
                                if (temp_r0_69 <= 0) {
                                    ((struct PlayerD368 *)arg0)->fD8 = 0;
                                }
                            } else {
                                ((struct PlayerD368 *)arg0)->fD8 = var_r1_8 - (var_r1_8 >> 1);
                            }
                        } else {
                            var_r1_8 = ((struct PlayerD368 *)arg0)->fD8;
                            if (var_r1_8 <= 0x17) {
                                temp_r0_70 = var_r1_8 - 8;
                                ((struct PlayerD368 *)arg0)->fD8 = temp_r0_70;
                                if (temp_r0_70 <= 0) {
                                    ((struct PlayerD368 *)arg0)->fD8 = 0;
                                }
                            } else {
                                ((struct PlayerD368 *)arg0)->fD8 = var_r1_8 - (var_r1_8 >> 1);
                            }
                        }
                    } else {
                        var_r1_8 = ((struct PlayerD368 *)arg0)->fD8;
                        if (var_r1_8 <= 0x17) {
                            temp_r0_71 = var_r1_8 - 8;
                            ((struct PlayerD368 *)arg0)->fD8 = temp_r0_71;
                            if (temp_r0_71 <= 0) {
                                ((struct PlayerD368 *)arg0)->fD8 = 0;
                            }
                        } else {
                            ((struct PlayerD368 *)arg0)->fD8 = var_r1_8 - (var_r1_8 >> 1);
                        }
                    }
                    break;
                }
                if (((struct PlayerD368 *)arg0)->fB0 != ((struct PlayerD368 *)arg0)->fB8) {

                } else if (((struct PlayerD368 *)arg0)->fB6 == 0) {

                } else {
                    ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 & 0xFFDFFFFF);
                    ((struct PlayerD368 *)arg0)->f20 = 0U;
                    ((struct PlayerD368 *)arg0)->f24 = 0U;
                    ((struct PlayerD368 *)arg0)->f26 = 0U;
                    sp144 = 0;
                }
                break;
            case 9:                                 /* switch 4 */
                temp_r1_36 = ((struct PlayerD368 *)arg0)->fD8;
                if (temp_r1_36 <= 0x17) {
                    temp_r0_75 = temp_r1_36 - 8;
                    ((struct PlayerD368 *)arg0)->fD8 = temp_r0_75;
                    if (temp_r0_75 <= 0) {
                        var_r0_21 = 0;
                        goto block_930;
                    }
                } else {
                    var_r0_21 = temp_r1_36 - (temp_r1_36 >> 1);
block_930:
                    ((struct PlayerD368 *)arg0)->fD8 = var_r0_21;
                }
                if (((struct PlayerD368 *)arg0)->fB0 != ((struct PlayerD368 *)arg0)->fB8) {

                } else if (((struct PlayerD368 *)arg0)->fB6 == 0) {

                } else {
                    ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 & 0xFFDFFFFF);
                    ((struct PlayerD368 *)arg0)->f20 = 0U;
                    ((struct PlayerD368 *)arg0)->f24 = 0U;
                    ((struct PlayerD368 *)arg0)->f26 = 0U;
                    sp144 = 0;
                }
                break;
            case 10:                                /* switch 4 */
                temp_r1_37 = ((struct PlayerD368 *)arg0)->fD8;
                if (temp_r1_37 <= 0x17) {
                    temp_r0_76 = temp_r1_37 - 8;
                    ((struct PlayerD368 *)arg0)->fD8 = temp_r0_76;
                    if (temp_r0_76 <= 0) {
                        var_r0_22 = 0;
                        goto block_940;
                    }
                } else {
                    var_r0_22 = temp_r1_37 - (temp_r1_37 >> 1);
block_940:
                    ((struct PlayerD368 *)arg0)->fD8 = var_r0_22;
                }
                if (((struct PlayerD368 *)arg0)->fB0 != ((struct PlayerD368 *)arg0)->fB8) {

                } else if (((struct PlayerD368 *)arg0)->fB6 == 0) {

                } else {
                    sp194 = 0xFFFE;
                    temp_r0_77 = (u16) d368_sub_08013BC0(arg0);
                    if (temp_r0_77 != 0) {
                        ((struct PlayerD368 *)arg0)->fB8 = 0xFFFDU;
                        ((struct PlayerD368 *)arg0)->fB4 = 0U;
                        *(u16 *)((arg0 + 0xB4) - 2) = 0;
                        ((struct PlayerD368 *)arg0)->f20 = 0xBU;
                        ((struct PlayerD368 *)arg0)->f64 = (u16) ((struct PlayerD368 *)arg0)->fC;
                        if ((d368_sub_0800CCCC() == 0) && (d368_sub_0800CD34() == 0)) {
                            temp_r0_80 = ((struct PlayerD368 *)arg0)->fC;
                            if (temp_r0_80 == 8) {
                                d368_sub_0805865C(0x53);
                            } else {
                                d368_sub_0805865C(temp_r0_80 + 0x4D);
                            }
                        }
                        if (d368_sub_0800CB9C() != 0) {
                            d368_sub_08058B08(0x44, 0x12C);
                        } else {
                            d368_sub_08058688(0x44);
                        }
                        sp148 = 0;
                        if ((d368_sub_0800CF80() == 0) && (d368_sub_0800CDC0() == 0)) {
                            var_r5_7 = 0;
                            spE0Record = spE0;
                            do {
                            temp_r0_81 = d368_sub_080008C8() % 3U;
                            sp128 = temp_r0_81;
                            switch (temp_r0_81) {
                            case 0:
                                retryRecord630 = d368_gUnk_030034E0 + 0x100;
                                if (*(u16 *)retryRecord630 == 0) {
                                    sp128 = 3;
                                    var_r0_23 = 1;
                                    goto retry63_0_reject;
                                }
                                goto retry63_0_call;
                            case 1:
                                retryRecord630 = d368_gUnk_030034E0 + 0x110;
                                if (*(u16 *)retryRecord630 == 0) {
                                    sp128 = 3;
                                    var_r0_23 = 2;
                                    goto retry63_0_reject;
                                }
                                goto retry63_0_call;
                            case 2:
                                retryRecord630 = d368_gUnk_030034E0 + 0x120;
                                if (*(u16 *)retryRecord630 == 0) {
                                    goto retry63_0_thirdReject;
                                }
                                goto retry63_0_call;
                            default:
                                goto retry63_0_done;
                            }
retry63_0_call:
                            d368_sub_08066490(((struct PlayerD368 *)arg0)->f8C, ((struct PlayerD368 *)arg0)->f90, retryRecord630);
                            goto retry63_0_done;
retry63_0_thirdReject:
                            sp128 = 3;
                            var_r0_23 = 4;
retry63_0_reject:
                            var_r5_7 |= var_r0_23;
retry63_0_done:
                            ;
                            } while ((var_r5_7 != 7) && (sp128 == 3));
                            if (var_r5_7 != 7) {
                                d368_sub_080137A0(sp128);
                            }
                            d368_sub_0805D094();
                            d368_sub_0805D0E8();
                            d368_sub_0805D13C();
                            d368_sub_0805D190();
                            d368_sub_0805D1E0();
                            temp_r0_82 = d368_sub_0805D5A0();
                            M2C_FIELD(spE0Record, u32 *, 4) = temp_r0_82;
                            M2C_FIELD(spE0Record, s16 *, 0) = 0xA;
                            if (temp_r0_82 != 0) {
                                d368_sub_08066490(((struct PlayerD368 *)arg0)->f8C, ((struct PlayerD368 *)arg0)->f90, spE0Record);
                            }
                        }
                        d368_sub_0801E278(arg0, 6);
                        d368_sub_0801E278(arg0, 7);
                        d368_sub_0801E278(arg0, 3);
                        d368_sub_0801E278(arg0, 3);
                        d368_sub_0801E278(arg0, 5);
                        d368_sub_0805867C(0x183);
                        ((struct PlayerD368 *)arg0)->f68 = 0U;
                        d368_sub_0806617C();
                        d368_sub_08022284(((struct PlayerD368 *)arg0)->f0, ((struct PlayerD368 *)arg0)->fE0);
                        temp_r0_83 = ((struct PlayerD368 *)arg0)->fE0 - 1;
                        switch (temp_r0_83) {       /* switch 13 */
                        case 0:                     /* switch 13 */
                            if ((s32) (s16) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x24) > 0) {
                                M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x24) = (u16) (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x24) - 1);
                            }
                            break;
                        case 1:                     /* switch 13 */
                            if ((s32) (s16) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x26) > 0) {
                                M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x26) = (u16) (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x26) - 1);
                            }
                            break;
                        case 2:                     /* switch 13 */
                            if ((s32) (s16) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x28) > 0) {
                                M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x28) = (u16) (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x28) - 1);
                            }
                            break;
                        case 3:                     /* switch 13 */
                            if ((s32) (s16) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2A) > 0) {
                                M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2A) = (u16) (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2A) - 1);
                            }
                            break;
                        case 4:                     /* switch 13 */
                            if ((s32) (s16) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2C) > 0) {
                                M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2C) = (u16) (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2C) - 1);
                            }
                            break;
                        case 5:                     /* switch 13 */
                            if ((s32) (s16) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2E) > 0) {
                                M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2E) = (u16) (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2E) - 1);
                            }
                            break;
                        }
                        ((struct PlayerD368 *)arg0)->fE0 = 0;
                    } else {
                        ((struct PlayerD368 *)arg0)->f20 = temp_r0_77;
                        ((struct PlayerD368 *)arg0)->f114 = 0x14U;
                        var_r4_11 = d368_sub_0801DE60();
                        if ((var_r4_11 == 5) && !(((struct PlayerD368 *)arg0)->f30 & 0x20000) && (d368_sub_0801E0AC(d368_gUnk_030034E0 + 0x30, 5) != 0) && ((resourceLimitWord319D368 = (u32) ((struct PlayerD368 *)arg0)->f62 << 0x10, (s32) (s16) ((struct PlayerD368 *)arg0)->fC4 < ((s32) resourceLimitWord319D368 >> 0x11)))) {
                            temp_r0_79 = d368_sub_0801E164(arg0, 5);
                            if (temp_r0_79 != 0) {
                                M2C_FIELD(temp_r0_79, u16 *, 2) = (u16) ((struct PlayerD368 *)arg0)->f0;
                                M2C_FIELD(temp_r0_79, s16 *, 4) = (s16) var_r4_11;
                                M2C_FIELD(temp_r0_79, u16 *, 6) = d368_sub_0801E0AC(d368_gUnk_030034E0 + 0x30, 5);
                                M2C_FIELD(temp_r0_79, s16 *, 0) = 0x708;
                                ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 | 0x20000);
                                d368_sub_0805867C(0x16F);
                            }
                        }
                    }
                }
                ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 & 0xFFDFFFFF);
                sp144 = 0;
                ((struct PlayerD368 *)arg0)->f24 = 0U;
                ((struct PlayerD368 *)arg0)->f26 = (u16) sp144;
                sp130 = 0;
                sp134 = 0;
                break;
            case 11:                                /* switch 4 */
                temp_r1_38 = ((struct PlayerD368 *)arg0)->fD8;
                if (temp_r1_38 <= 0x17) {
                    temp_r0_84 = temp_r1_38 - 8;
                    ((struct PlayerD368 *)arg0)->fD8 = temp_r0_84;
                    if (temp_r0_84 <= 0) {
                        var_r0_24 = 0;
                        goto block_1002;
                    }
                } else {
                    var_r0_24 = temp_r1_38 - (temp_r1_38 >> 1);
block_1002:
                    ((struct PlayerD368 *)arg0)->fD8 = var_r0_24;
                }
                if ((((struct PlayerD368 *)arg0)->fB0 == ((struct PlayerD368 *)arg0)->fB8) && (((struct PlayerD368 *)arg0)->fB6 != 0)) {
                    temp_r1_39 = sp148;
                    sp148 = (u32) (((u32) temp_r1_39 << 0x10) + 0x10000) >> 0x10;
                    if ((s32) (s16) temp_r1_39 > 0x78) {
                        d368_sub_0805867C(0x73);
                        ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 | 0x2000);
                        temp_r0_85 = d368_sub_0800CB9C();
                        if (temp_r0_85 != 0) {
                            ((struct PlayerD368 *)arg0)->f20 = 0U;
                        } else {
                            ((struct PlayerD368 *)arg0)->f20 = 0xCU;
                            ((struct PlayerD368 *)arg0)->f22 = (u16) temp_r0_85;
                        }
                        d368_sub_08067D74();
                    }
                }
                ((struct PlayerD368 *)arg0)->f24 = 0U;
                ((struct PlayerD368 *)arg0)->f26 = 0U;
                sp130 = 0;
                sp134 = 0;
                ((struct PlayerD368 *)arg0)->f30 &= 0xFFDFFFFF;
                goto block_1024;
            case 12:                                /* switch 4 */
                temp_r1_40 = ((struct PlayerD368 *)arg0)->fD8;
                if (temp_r1_40 <= 0x17) {
                    temp_r0_86 = temp_r1_40 - 8;
                    ((struct PlayerD368 *)arg0)->fD8 = temp_r0_86;
                    if (temp_r0_86 <= 0) {
                        var_r0_25 = 0;
                        goto block_1015;
                    }
                } else {
                    var_r0_25 = temp_r1_40 - (temp_r1_40 >> 1);
block_1015:
                    ((struct PlayerD368 *)arg0)->fD8 = var_r0_25;
                }
                ((struct PlayerD368 *)arg0)->f24 = 0U;
                ((struct PlayerD368 *)arg0)->f26 = 0U;
                sp130 = 0;
                sp134 = 0;
                ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 & 0xFFDFFFFF);
                temp_r0_87 = ((struct PlayerD368 *)arg0)->f22;
                switch (temp_r0_87) {               /* switch 14 */
                case 0:                             /* switch 14 */
                    if (d368_sub_0800CC98() == 0) {
                        ((struct PlayerD368 *)arg0)->f22 = 1U;
                        ((struct PlayerD368 *)arg0)->f68 = 0U;
                    }
                    break;
                case 2:                             /* switch 14 */
                    if (d368_sub_0801AC78() != 0) {
                        ((struct PlayerD368 *)arg0)->f22 = 3U;
                    }
                    break;
                case 3:                             /* switch 14 */
                    var_r0_9 = 0;
                    goto block_627;
                case 4:                             /* switch 14 */
                    ((struct PlayerD368 *)arg0)->f30 &= -4;
block_1024:
                    break;
                case 7:                             /* switch 14 */
                    if (d368_sub_0805EEFC(sp17C) != 0) {
                        var_r0_9 = d368_sub_0805EF14(sp17C);
                        if (var_r0_9 == 0) {
                            goto block_627;
                        }
                        ((struct PlayerD368 *)arg0)->f20 = 0xCU;
                        ((struct PlayerD368 *)arg0)->f22 = 0U;
                    } else if ((d368_sub_08058DB0() != 0) || (d368_sub_0800D11C() != 0) || (((struct PlayerD368 *)arg0)->f30 & 0x400)) {
                        d368_sub_0805EF84(sp17C, 1);
                        d368_sub_0805EE6C(sp17C);
                    }
                    break;
                }
                break;
            case 14:                                /* switch 4 */
                var_r1_6 = ((struct PlayerD368 *)arg0)->fD8;
                if (var_r1_6 <= 0x17) {
                    temp_r0_88 = var_r1_6 - 8;
                    ((struct PlayerD368 *)arg0)->fD8 = temp_r0_88;
                    if (temp_r0_88 <= 0) {
                        ((struct PlayerD368 *)arg0)->fD8 = 0;
                    }
                } else {
timerHighDecayD368:
                    ((struct PlayerD368 *)arg0)->fD8 = var_r1_6 - (var_r1_6 >> 1);
                }
                break;
            }
        }
        if (((struct PlayerD368 *)arg0)->f20 == 0xD) {

        } else {
            if (((struct PlayerD368 *)arg0)->fD8 != 0) {
                {
                    struct PairD36867 *previousPairD368 = (struct PairD36867 *)(arg0 + 0x94);
                    temp_r5_9 = arg0 + 0x8C;
                    *previousPairD368 = *(struct PairD36867 *)temp_r5_9;
                }
                temp_r3_7 = (u16) d368_sub_0800CCCC();
                d368_sub_08013E90(((struct PlayerD368 *)arg0)->fD8, temp_r5_9, (u16) ((struct PlayerD368 *)arg0)->f1C, temp_r3_7, (((struct PlayerD368 *)arg0)->f30 & 0x20));
            }
            if (d368_sub_0800CD8C() == 0) {
                d368_sub_08013CEC(arg0);
            }
            d368_sub_080140AC(arg0);
            if (d368_sub_0800CC98() == 0) {
                d368_sub_0800AD04(arg0 + 0x8C, arg0 + 0x90, d368_sub_0800CCCC());
            }
            if ((sp13C == 0) && ((s32) ((struct PlayerD368 *)arg0)->f88 != 0)) {
                sp14C = 0x14;
                sp13C = (s32) (u16) (M2C_FIELD(&((struct PlayerD368 *)arg0)->f88, u16 *, 0) + M2C_FIELD(&((struct PlayerD368 *)arg0)->f88, u16 *, 2));
                sp140 = 0;
            }
            sp14C = (s32) (u16) (sp14C - 1);
            if (!(0x8000 & sp14C)) {
                if (sp13C == 0) {
                    sp14C = 0xFFFF;
                } else if (!(((struct PlayerD368 *)arg0)->f30 & 2)) {
                    coordF0 = (s16) (coordF0 - 8);
                    if (d368_sub_0800CC98() != 0) {
                        temp_r0_89 = M2C_FIELD(d368_gUnk_03006440, u32 *, 0);
                        switch (temp_r0_89) {
                        case 1:
                            d368_sub_0805FAC0(0x5C, (s16) sp140 + 0x48, sp13C, 1);
                            break;
                        case 2:
                        case 3:
                        case 4:
                        case 6:
                            d368_sub_0805FAC0(0x24, (s16) sp140 + 0x54, sp13C, 1);
                            break;
                        }
                    } else if (d368_sub_0800CD8C() == 0) {
                        d368_sub_0805FAC0(coordF0, coordF2 + (s16) sp140, sp13C, 1);
                    }
                    if (2 & sp14C) {
                        sp140 = (u32) ((sp140 << 0x10) + 0xFFFF0000) >> 0x10;
                    }
                }
            } else {
                sp13C = 0;
                sp14C = 0xFFFF;
            }
            if (((struct PlayerD368 *)arg0)->f20 == 0xA) {

            } else if (((u32) d368_sub_08013BC0(arg0) << 0x10) == 0) {

            } else {
                temp_r1_41 = ((struct PlayerD368 *)arg0)->f20;
                if (temp_r1_41 == 0xB) {

                } else {
                    temp_r2_19 = ((struct PlayerD368 *)arg0)->f30 & 0x2000;
                    if (temp_r2_19 != 0) {

                    } else if (temp_r1_41 == 0xC) {

                    } else {
                        ((struct PlayerD368 *)arg0)->fB8 = 0xFFFDU;
                        ((struct PlayerD368 *)arg0)->fB4 = temp_r2_19;
                        temp_r0_90 = (arg0 + 0xB4) - 2;
                        *temp_r0_90 = temp_r2_19;
                        temp_r1_41 = ((struct PlayerD368 *)arg0)->fC;
                        *(temp_r0_90 - 0x27) = temp_r1_41;
                        ((struct PlayerD368 *)arg0)->f20 = 0xBU;
                        if ((d368_sub_0800CCCC() == 0) && (d368_sub_0800CD34() == 0)) {
                            d368_sub_0805865C(((struct PlayerD368 *)arg0)->fC + 0x4D);
                        }
                        if (d368_sub_0800CB9C() != 0) {
                            d368_sub_08058B08(0x44, 0x12C);
                        } else {
                            d368_sub_08058688(0x44);
                        }
                        d368_sub_0801E278(arg0, 6);
                        d368_sub_0801E278(arg0, 7);
                        d368_sub_0801E278(arg0, 3);
                        d368_sub_0801E278(arg0, 3);
                        d368_sub_0801E278(arg0, 5);
                        d368_sub_0805867C(0x73);
                        ((struct PlayerD368 *)arg0)->fC4 = 0;
                        if ((d368_sub_0800CF80() == 0) && (d368_sub_0800CDC0() == 0)) {
                            var_r5_8 = 0;
                            spE0Record = spE0;
                            do {
                            temp_r0_91 = d368_sub_080008C8() % 3U;
                            sp128 = temp_r0_91;
                            switch (temp_r0_91) {
                            case 0:
                                retryRecord631 = d368_gUnk_030034E0 + 0x100;
                                if (*(u16 *)retryRecord631 != 4) {
                                    sp128 = 3;
                                    var_r0_27 = 1;
                                    goto retry63_1_reject;
                                }
                                goto retry63_1_call;
                            case 1:
                                retryRecord631 = d368_gUnk_030034E0 + 0x110;
                                if (*(u16 *)retryRecord631 != 3) {
                                    sp128 = 3;
                                    var_r0_27 = 2;
                                    goto retry63_1_reject;
                                }
                                goto retry63_1_call;
                            case 2:
                                retryRecord631 = d368_gUnk_030034E0 + 0x120;
                                if (*(u16 *)retryRecord631 != 5) {
                                    goto retry63_1_thirdReject;
                                }
                                goto retry63_1_call;
                            default:
                                goto retry63_1_done;
                            }
retry63_1_call:
                            d368_sub_08066490(((struct PlayerD368 *)arg0)->f8C, ((struct PlayerD368 *)arg0)->f90, retryRecord631);
                            goto retry63_1_done;
retry63_1_thirdReject:
                            sp128 = 3;
                            var_r0_27 = 4;
retry63_1_reject:
                            var_r5_8 |= var_r0_27;
retry63_1_done:
                            ;
                            } while ((var_r5_8 != 7) && (sp128 == 3));
                            if (var_r5_8 != 7) {
                                d368_sub_080137A0(sp128);
                            }
                            d368_sub_0805AD78(M2C_FIELD(sp12C, u16 *, 0x68));
                            d368_sub_0805D094();
                            d368_sub_0805D0E8();
                            d368_sub_0805D13C();
                            d368_sub_0805D190();
                            d368_sub_0805D1E0();
                            temp_r0_92 = d368_sub_0805D5A0();
                            M2C_FIELD(spE0Record, u32 *, 4) = temp_r0_92;
                            M2C_FIELD(spE0Record, s16 *, 0) = 0xA;
                            if (temp_r0_92 != 0) {
                                d368_sub_08066490(((struct PlayerD368 *)arg0)->f8C, ((struct PlayerD368 *)arg0)->f90, spE0Record);
                            }
                        }
                        ((struct PlayerD368 *)arg0)->f68 = 0U;
                        d368_sub_0806617C();
                        d368_sub_08022284(((struct PlayerD368 *)arg0)->f0, ((struct PlayerD368 *)arg0)->fE0);
                        temp_r0_93 = ((struct PlayerD368 *)arg0)->fE0 - 1;
                        switch (temp_r0_93) {       /* switch 15 */
                        case 0:                     /* switch 15 */
                            if ((s32) (s16) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x24) > 0) {
                                M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x24) = (u16) (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x24) - 1);
                            }
                            break;
                        case 1:                     /* switch 15 */
                            if ((s32) (s16) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x26) > 0) {
                                M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x26) = (u16) (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x26) - 1);
                            }
                            break;
                        case 2:                     /* switch 15 */
                            if ((s32) (s16) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x28) > 0) {
                                M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x28) = (u16) (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x28) - 1);
                            }
                            break;
                        case 3:                     /* switch 15 */
                            if ((s32) (s16) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2A) > 0) {
                                M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2A) = (u16) (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2A) - 1);
                            }
                            break;
                        case 4:                     /* switch 15 */
                            if ((s32) (s16) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2C) > 0) {
                                M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2C) = (u16) (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2C) - 1);
                            }
                            break;
                        case 5:                     /* switch 15 */
                            if ((s32) (s16) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2E) > 0) {
                                M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2E) = (u16) (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2E) - 1);
                            }
                            break;
                        }
                        ((struct PlayerD368 *)arg0)->fE0 = 0;
                    }
                }
            }
        }
        temp_r3_8 = ((struct PlayerD368 *)arg0)->f20;
        if ((u32) temp_r3_8 > 0xEU) {

        } else {
            switch (temp_r3_8) {                    /* switch 16 */
            case 0:                                 /* switch 16 */
            case 6:                                 /* switch 16 */
                temp_r2_20 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r2_20)->w0_b0_n4.value = temp_r3_8;
                temp_r4_13 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r4_13)->w0_b4_n12.value = (s32) ((struct PlayerD368 *)arg0)->f8C >> 8;
                temp_r4_14 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r4_14)->w0_b16_n12.value = (((struct PlayerD368 *)arg0)->f90) >> 8;
                temp_r2_21 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r2_21)->w0_b28_n4.value = (s16) ((struct PlayerD368 *)arg0)->f1C;
                temp_r4_15 = ((struct PlayerD368 *)arg0)->f144;
                temp_r0_94 = d368_sub_0800CCCC();
                ((union RecordD368 *)temp_r4_15)->w1_b0_n6.value = ((s32) ((0U - (u32) temp_r0_94) | (u32) temp_r0_94) >> 0x1F) & 0x20;
                temp_r3_9 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r3_9)->w1_b6_n4.value = ((struct PlayerD368 *)arg0)->f132;
                temp_r3_10 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r3_10)->w1_b10_n1.value = ((struct PlayerD368 *)arg0)->f134;
                temp_r3_11 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r3_11)->w1_b11_n8.value = ((struct PlayerD368 *)arg0)->f48;
                if (((struct PlayerD368 *)arg0)->f20 == 0) {
                    temp_r3_12 = ((struct PlayerD368 *)arg0)->f144;
                    ((union RecordD368 *)temp_r3_12)->w1_b28_n1.value = ((u32) ((struct PlayerD368 *)arg0)->f30 >> 0xA) & 1 & 1;
                } else {
                    temp_r2_22 = ((struct PlayerD368 *)arg0)->f144;
                    ((union RecordD368 *)temp_r2_22)->w1_b28_n1.value = ((u32) (0)) >> 4;
                }
                if (d368_sub_0800CD34() != 0) {

                } else if (((struct PlayerD368 *)arg0)->f30 & 0x80002) {

                } else if (d368_sub_0801DF8C() == 0) {
                    temp_r0_95 = d368_sub_0800CC98();
                    temp_r3_13 = ((struct PlayerD368 *)arg0)->f144;
                    ((union RecordD368 *)temp_r3_13)->w1_b19_n5.value = (u32) ((0U - (u32) temp_r0_95) | (u32) temp_r0_95) >> 0x1F;
                    if ((s32) (s16) ((struct PlayerD368 *)arg0)->fC2 < (s32) (s16) ((s16) ((struct PlayerD368 *)arg0)->f60 / 10)) {
                        temp_r2_23 = ((struct PlayerD368 *)arg0)->f144;
                        ((union RecordD368 *)temp_r2_23)->w1_b19_n5.value = ((u32) (0x18)) >> 3;
                    }
                    if ((s32) (s16) ((struct PlayerD368 *)arg0)->fC4 >= (s32) (s16) ((s16) ((struct PlayerD368 *)arg0)->f62 / 3)) {

                    } else {
                        u32 recordLow3Result126;
                        temp_r2_24 = ((struct PlayerD368 *)arg0)->f144;
                        recordLow3Result126 = 7U & M2C_FIELD(temp_r2_24, u8 *, 6);
                        asm("" : "+r"(recordLow3Result126));
                        M2C_FIELD(temp_r2_24, u8 *, 6) = (u8) (recordLow3Result126 | 0x10U);
                        break;
                    }
                } else if (8 & ((struct PlayerD368 *)arg0)->f14) {
                    temp_r2_24 = ((struct PlayerD368 *)arg0)->f144;
                    ((union RecordD368 *)temp_r2_24)->w1_b19_n5.value = 4;
                    break;
                } else {
                    temp_r2_24 = ((struct PlayerD368 *)arg0)->f144;
                    ((union RecordD368 *)temp_r2_24)->w1_b19_n5.value = ((u32) (0)) >> 3;
                    break;
                }
                break;
            case 1:                                 /* switch 16 */
            case 7:                                 /* switch 16 */
                temp_r2_25 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r2_25)->w0_b0_n4.value = temp_r3_8;
                temp_r4_16 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r4_16)->w0_b4_n12.value = (s32) ((struct PlayerD368 *)arg0)->f8C >> 8;
                temp_r4_17 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r4_17)->w0_b16_n12.value = (((struct PlayerD368 *)arg0)->f90) >> 8;
                temp_r2_26 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r2_26)->w0_b28_n4.value = (s16) ((struct PlayerD368 *)arg0)->f1C;
                temp_r4_18 = ((struct PlayerD368 *)arg0)->f144;
                temp_r0_96 = d368_sub_0800CCCC();
                ((union RecordD368 *)temp_r4_18)->w1_b0_n6.value = ((s32) ((0U - (u32) temp_r0_96) | (u32) temp_r0_96) >> 0x1F) & 0x20;
                temp_r3_14 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r3_14)->w1_b6_n4.value = ((struct PlayerD368 *)arg0)->f132;
                temp_r3_15 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r3_15)->w1_b10_n1.value = ((struct PlayerD368 *)arg0)->f134;
                temp_r3_16 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r3_16)->w1_b11_n8.value = ((struct PlayerD368 *)arg0)->f48;
                if ((d368_sub_0801DF8C() == 0) && (d368_sub_0800CD34() == 0) && !(((struct PlayerD368 *)arg0)->f30 & 0x80002)) {
                    temp_r2_27 = ((struct PlayerD368 *)arg0)->f144;
                    ((union RecordD368 *)temp_r2_27)->w1_b19_n5.value = ((u32) (0)) >> 3;
                    if ((s32) (s16) ((struct PlayerD368 *)arg0)->fC2 < (s32) (s16) ((s16) ((struct PlayerD368 *)arg0)->f60 / 10)) {
                        temp_r2_28 = ((struct PlayerD368 *)arg0)->f144;
                        ((union RecordD368 *)temp_r2_28)->w1_b19_n5.value = ((u32) (0x18)) >> 3;
                    }
                    if ((s32) (s16) ((struct PlayerD368 *)arg0)->fC4 >= (s32) (s16) ((s16) ((struct PlayerD368 *)arg0)->f62 / 3)) {

                    } else {
                        temp_r2_24 = ((struct PlayerD368 *)arg0)->f144;
                        ((union RecordD368 *)temp_r2_24)->w1_b19_n5.value = 2;
                        break;
                    }
                } else if (d368_sub_0801DF8C() == 0) {

                } else {
                    if (8 & ((struct PlayerD368 *)arg0)->f14) {
                        temp_r2_24 = ((struct PlayerD368 *)arg0)->f144;
                        var_r0_28 = 7 & M2C_FIELD(temp_r2_24, u8 *, 6);
                        var_r1_10 = 0x20;
                        M2C_FIELD(temp_r2_24, s8 *, 6) = (s8) (var_r0_28 | var_r1_10);
                        break;
                    }
                    temp_r2_24 = ((struct PlayerD368 *)arg0)->f144;
                    ((union RecordD368 *)temp_r2_24)->w1_b19_n5.value = ((u32) (0)) >> 3;
                    break;
                }
                break;
            case 3:                                 /* switch 16 */
                var_r5_9 = arg0 + 0x144;
                temp_r2_29 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r2_29)->w0_b0_n4.value = temp_r3_8;
                temp_r4_19 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r4_19)->w0_b4_n12.value = (s32) ((struct PlayerD368 *)arg0)->f8C >> 8;
                temp_r4_20 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r4_20)->w0_b16_n12.value = (((struct PlayerD368 *)arg0)->f90) >> 8;
                temp_r2_30 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r2_30)->w0_b28_n4.value = (s16) ((struct PlayerD368 *)arg0)->f1C;
                temp_r4_21 = ((struct PlayerD368 *)arg0)->f144;
                temp_r0_97 = d368_sub_0800CCCC();
                ((union RecordD368 *)temp_r4_21)->w1_b0_n6.value = ((s32) ((0U - (u32) temp_r0_97) | (u32) temp_r0_97) >> 0x1F) & 0x20;
                temp_r3_17 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r3_17)->w1_b6_n4.value = ((struct PlayerD368 *)arg0)->f132;
                temp_r3_18 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r3_18)->w1_b11_n8.value = ((struct PlayerD368 *)arg0)->f26;
                {
                    u32 recordQueryResult126;
                    recordQueryResult126 = d368_sub_0801DEB8();
                    temp_r3_19 = *var_r5_9;
                    recordQueryResult126 *= 8;
                    M2C_FIELD(temp_r3_19, u8 *, 6) = (u8) ((7 & M2C_FIELD(temp_r3_19, u8 *, 6)) | recordQueryResult126);
                }
                break;
            case 4:                                 /* switch 16 */
                var_r5_9 = arg0 + 0x144;
                temp_r2_31 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r2_31)->w0_b0_n4.value = temp_r3_8;
                temp_r4_22 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r4_22)->w0_b4_n12.value = (s32) ((struct PlayerD368 *)arg0)->f8C >> 8;
                temp_r4_23 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r4_23)->w0_b16_n12.value = (((struct PlayerD368 *)arg0)->f90) >> 8;
                temp_r2_32 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r2_32)->w0_b28_n4.value = (s16) ((struct PlayerD368 *)arg0)->f1C;
                temp_r4_24 = ((struct PlayerD368 *)arg0)->f144;
                temp_r0_98 = d368_sub_0800CCCC();
                ((union RecordD368 *)temp_r4_24)->w1_b0_n6.value = ((s32) ((0U - (u32) temp_r0_98) | (u32) temp_r0_98) >> 0x1F) & 0x20;
                temp_r3_20 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r3_20)->w1_b6_n4.value = ((struct PlayerD368 *)arg0)->f132;
                {
                    u32 recordQueryResult126;
                    recordQueryResult126 = d368_sub_0801DEB8();
                    temp_r3_19 = *var_r5_9;
                    recordQueryResult126 *= 8;
                    M2C_FIELD(temp_r3_19, u8 *, 6) = (u8) ((7 & M2C_FIELD(temp_r3_19, u8 *, 6)) | recordQueryResult126);
                }
                break;
            case 2:                                 /* switch 16 */
                d368_sub_0801FDD0(arg0);
                temp_r3_21 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r3_21)->w0_b0_n4.value = ((struct PlayerD368 *)arg0)->f20;
                temp_r4_25 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r4_25)->w0_b4_n12.value = (s32) ((struct PlayerD368 *)arg0)->f8C >> 8;
                temp_r4_26 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r4_26)->w0_b16_n12.value = (((struct PlayerD368 *)arg0)->f90) >> 8;
                temp_r2_33 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r2_33)->w0_b28_n4.value = (s16) ((struct PlayerD368 *)arg0)->f1C;
                temp_r3_22 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r3_22)->w1_b6_n4.value = ((struct PlayerD368 *)arg0)->f132;
                temp_r0_99 = ((struct PlayerD368 *)arg0)->f64;
                switch (temp_r0_99) {               /* switch 17 */
                case 0:                             /* switch 17 */
                    temp_r4_27 = ((struct PlayerD368 *)arg0)->f144;
                    temp_r0_100 = d368_sub_0800CCCC();
                    temp_r0_100 = ((s32) ((0U - (u32) temp_r0_100) | (u32) temp_r0_100) >> 0x1F) & 0x20;
                    ((union RecordD368 *)temp_r4_27)->w1_b0_n6.value = temp_r0_100;
                    break;
                case 1:                             /* switch 17 */
                    if (((struct PlayerD368 *)arg0)->f10 != 5) {

                    } else {
                        temp_r4_27 = ((struct PlayerD368 *)arg0)->f144;
                        temp_r0_100 = d368_sub_0800CCCC();
                        temp_r0_100 = ((s32) ((0U - (u32) temp_r0_100) | (u32) temp_r0_100) >> 0x1F) & 0x20;
                        ((union RecordD368 *)temp_r4_27)->w1_b0_n6.value = temp_r0_100;
                        break;
                    }
                    break;
                case 2:                             /* switch 17 */
                    temp_r0_101 = ((struct PlayerD368 *)arg0)->f10;
                    if ((temp_r0_101 != 3) && (temp_r0_101 != 7)) {

                    } else {
                        if (((struct PlayerD368 *)arg0)->f30 & 0x200000) {
                            temp_r3_23 = ((struct PlayerD368 *)arg0)->f144;
                            ((union RecordD368 *)temp_r3_23)->w1_b20_n5.value = ((struct PlayerD368 *)arg0)->f28;
                        } else {
                            temp_r2_34 = ((struct PlayerD368 *)arg0)->f144;
                            ((union RecordD368 *)temp_r2_34)->w1_b20_n5.value = ((u32) (0)) >> 4;
                        }
                        var_r5_10 = arg0 + 0x144;
                        temp_r2_35 = ((struct PlayerD368 *)arg0)->f144;
                        ((union RecordD368 *)temp_r2_35)->w1_b14_n3.value = ((u32) (0)) >> 14;
                        temp_r3_24 = ((struct PlayerD368 *)arg0)->f144;
                        ((union RecordD368 *)temp_r3_24)->w1_b17_n3.value = M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x3C);
                        temp_r4_27 = *var_r5_10;
                        temp_r0_102 = d368_sub_0800CCCC();
                        temp_r0_102 = ((s32) ((0U - (u32) temp_r0_102) | (u32) temp_r0_102) >> 0x1F) & 0x20;
                        ((union RecordD368 *)temp_r4_27)->w1_b0_n6.value = temp_r0_102;
                        {
                            u32 lookupResult126; /* full return register; the u16 truncation happens at the store, after the record load */
                            lookupResult126 = ((u32 (*)(s32))d368_sub_0807A028)(1);
                            var_r3_7 = *var_r5_10;
                            ((union RecordD368 *)var_r3_7)->w1_b6_n8.value = (u16)lookupResult126;
                        }
                        break;
                    }
                    break;
                case 3:                             /* switch 17 */
                    temp_r4_27 = ((struct PlayerD368 *)arg0)->f144;
                    temp_r0_100 = d368_sub_0800CCCC();
                    temp_r0_100 = ((s32) ((0U - (u32) temp_r0_100) | (u32) temp_r0_100) >> 0x1F) & 0x20;
                    ((union RecordD368 *)temp_r4_27)->w1_b0_n6.value = temp_r0_100;
                    break;
                case 4:                             /* switch 17 */
                    if (((struct PlayerD368 *)arg0)->f10 != 5) {

                    } else {
                        temp_r4_27 = ((struct PlayerD368 *)arg0)->f144;
                        temp_r0_100 = d368_sub_0800CCCC();
                        temp_r0_100 = ((s32) ((0U - (u32) temp_r0_100) | (u32) temp_r0_100) >> 0x1F) & 0x20;
                        ((union RecordD368 *)temp_r4_27)->w1_b0_n6.value = temp_r0_100;
                        break;
                    }
                    break;
                case 5:                             /* switch 17 */
                    temp_r4_27 = ((struct PlayerD368 *)arg0)->f144;
                    temp_r0_100 = d368_sub_0800CCCC();
                    temp_r0_100 = ((s32) ((0U - (u32) temp_r0_100) | (u32) temp_r0_100) >> 0x1F) & 0x20;
                    ((union RecordD368 *)temp_r4_27)->w1_b0_n6.value = temp_r0_100;
                    break;
                case 6:                             /* switch 17 */
                case 8:                             /* switch 17 */
                    if (((struct PlayerD368 *)arg0)->f10 != 5) {

                    } else {
                        temp_r4_27 = ((struct PlayerD368 *)arg0)->f144;
                        temp_r0_100 = d368_sub_0800CCCC();
                        temp_r0_100 = ((s32) ((0U - (u32) temp_r0_100) | (u32) temp_r0_100) >> 0x1F) & 0x20;
                        ((union RecordD368 *)temp_r4_27)->w1_b0_n6.value = temp_r0_100;
                        break;
                    }
                    break;
                case 7:                             /* switch 17 */
                    temp_r0_103 = ((struct PlayerD368 *)arg0)->f10;
                    if (temp_r0_103 != 1) {
                        if (temp_r0_103 != 8) {

                        } else {
                            if (((struct PlayerD368 *)arg0)->f30 & 0x200000) {
                                temp_r3_25 = ((struct PlayerD368 *)arg0)->f144;
                                ((union RecordD368 *)temp_r3_25)->w1_b20_n5.value = ((struct PlayerD368 *)arg0)->f28;
                            } else {
                                temp_r2_36 = ((struct PlayerD368 *)arg0)->f144;
                                ((union RecordD368 *)temp_r2_36)->w1_b20_n5.value = ((u32) (0)) >> 4;
                            }
                            temp_r2_37 = ((struct PlayerD368 *)arg0)->f144;
                            ((union RecordD368 *)temp_r2_37)->w1_b14_n3.value = ((u32) (0)) >> 14;
                            temp_r5_10 = ((struct PlayerD368 *)arg0)->f144;
                            temp_r0_104 = d368_sub_0800CCCC();
                            ((union RecordD368 *)temp_r5_10)->w1_b0_n6.value = ((s32) ((0U - (u32) temp_r0_104) | (u32) temp_r0_104) >> 0x1F) & 0x20;
                            {
                                u32 lookupResult126; /* full return register; the u16 truncation happens at the store, after the record load */
                                lookupResult126 = ((u32 (*)(s32))d368_sub_0807A028)(1);
                                var_r3_7 = ((struct PlayerD368 *)arg0)->f144;
                                ((union RecordD368 *)var_r3_7)->w1_b6_n8.value = (u16)lookupResult126;
                            }
                            break;
                        }
                    } else {
                        goto state17Case9D368;
                    }
                    break;
                case 9:                             /* switch 17 */
state17Case9D368:
                    temp_r4_27 = ((struct PlayerD368 *)arg0)->f144;
                    temp_r0_100 = d368_sub_0800CCCC();
                    temp_r0_100 = ((s32) ((0U - (u32) temp_r0_100) | (u32) temp_r0_100) >> 0x1F) & 0x20;
                    ((union RecordD368 *)temp_r4_27)->w1_b0_n6.value = temp_r0_100;
                    break;
                default:                            /* switch 17 */
                    temp_r4_27 = ((struct PlayerD368 *)arg0)->f144;
                    temp_r0_100 = d368_sub_0800CCCC();
                    temp_r0_100 = ((s32) ((0U - (u32) temp_r0_100) | (u32) temp_r0_100) >> 0x1F) & 0x20;
                    ((union RecordD368 *)temp_r4_27)->w1_b0_n6.value = temp_r0_100;
                    break;
                }
                break;
            case 5:                                 /* switch 16 */
                d368_sub_0801FDD0(arg0);
                temp_r3_26 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r3_26)->w0_b0_n4.value = ((struct PlayerD368 *)arg0)->f20;
                temp_r4_28 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r4_28)->w0_b4_n12.value = (s32) ((struct PlayerD368 *)arg0)->f8C >> 8;
                temp_r4_29 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r4_29)->w0_b16_n12.value = (((struct PlayerD368 *)arg0)->f90) >> 8;
                temp_r2_38 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r2_38)->w0_b28_n4.value = (s16) ((struct PlayerD368 *)arg0)->f1C;
                temp_r0_105 = (u32) d368_sub_0801DE60();
                if (temp_r0_105 > 7U) {

                } else {
                    switch (temp_r0_105) {          /* switch 18 */
                    case 0:                         /* switch 18 */
                        temp_r3_27 = ((struct PlayerD368 *)arg0)->f144;
                        ((union RecordD368 *)temp_r3_27)->w1_b14_n3.value = ((struct PlayerD368 *)arg0)->f26;
                        switch (((struct PlayerD368 *)arg0)->f10) {
                        case 1:
                            ((union RecordD368 *)((struct PlayerD368 *)arg0)->f144)->w1_b17_n3.value = M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x3C);
                            break;
                        case 2:
                            ((union RecordD368 *)((struct PlayerD368 *)arg0)->f144)->w1_b17_n3.value = M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x38);
                            break;
                        case 3:
                            ((union RecordD368 *)((struct PlayerD368 *)arg0)->f144)->w1_b17_n3.value = M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x34);
                            break;
                        }
                        temp_r4_27 = ((struct PlayerD368 *)arg0)->f144;
                        temp_r0_100 = d368_sub_0800CCCC();
                        temp_r0_100 = ((s32) ((0U - (u32) temp_r0_100) | (u32) temp_r0_100) >> 0x1F) & 0x20;
                        ((union RecordD368 *)temp_r4_27)->w1_b0_n6.value = temp_r0_100;
                        break;
                    case 5:                         /* switch 18 */
                        temp_r3_28 = ((struct PlayerD368 *)arg0)->f144;
                        ((union RecordD368 *)temp_r3_28)->w1_b14_n3.value = ((struct PlayerD368 *)arg0)->f26;
                        temp_r4_30 = ((struct PlayerD368 *)arg0)->f144;
                        temp_r0_107 = d368_sub_0800CCCC();
                        ((union RecordD368 *)temp_r4_30)->w1_b0_n6.value = ((s32) ((0U - (u32) temp_r0_107) | (u32) temp_r0_107) >> 0x1F) & 0x20;
                        switch (((struct PlayerD368 *)arg0)->f10) {
                        case 6:
                            ((union RecordD368 *)((struct PlayerD368 *)arg0)->f144)->w1_b17_n3.value = M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x34);
                            break;
                        case 8:
                            ((union RecordD368 *)((struct PlayerD368 *)arg0)->f144)->w1_b17_n3.value = M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x38);
                            break;
                        }
                        break;
                    case 3:                         /* switch 18 */
                        var_r5_10 = arg0 + 0x144;
                        temp_r3_29 = ((struct PlayerD368 *)arg0)->f144;
                        ((union RecordD368 *)temp_r3_29)->w1_b14_n3.value = ((struct PlayerD368 *)arg0)->f26;
                        temp_r3_30 = ((struct PlayerD368 *)arg0)->f144;
                        ((union RecordD368 *)temp_r3_30)->w1_b17_n3.value = M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x38);
                        temp_r4_27 = *var_r5_10;
                        temp_r0_102 = d368_sub_0800CCCC();
                        temp_r0_102 = ((s32) ((0U - (u32) temp_r0_102) | (u32) temp_r0_102) >> 0x1F) & 0x20;
                        ((union RecordD368 *)temp_r4_27)->w1_b0_n6.value = temp_r0_102;
                        {
                            u32 lookupResult126; /* full return register; the u16 truncation happens at the store, after the record load */
                            lookupResult126 = ((u32 (*)(s32))d368_sub_0807A028)(1);
                            var_r3_7 = *var_r5_10;
                            ((union RecordD368 *)var_r3_7)->w1_b6_n8.value = (u16)lookupResult126;
                        }
                        break;
                    case 2:                         /* switch 18 */
                        var_r5_10 = arg0 + 0x144;
                        temp_r3_31 = ((struct PlayerD368 *)arg0)->f144;
                        ((union RecordD368 *)temp_r3_31)->w1_b14_n3.value = ((struct PlayerD368 *)arg0)->f26;
                        temp_r3_32 = ((struct PlayerD368 *)arg0)->f144;
                        ((union RecordD368 *)temp_r3_32)->w1_b17_n3.value = M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x3C);
                        temp_r2_39 = ((struct PlayerD368 *)arg0)->f144;
                        ((union RecordD368 *)temp_r2_39)->w1_b20_n5.value = ((u32) (0)) >> 4;
                        temp_r4_27 = *var_r5_10;
                        temp_r0_102 = d368_sub_0800CCCC();
                        temp_r0_102 = ((s32) ((0U - (u32) temp_r0_102) | (u32) temp_r0_102) >> 0x1F) & 0x20;
                        ((union RecordD368 *)temp_r4_27)->w1_b0_n6.value = temp_r0_102;
                        {
                            u32 lookupResult126; /* full return register; the u16 truncation happens at the store, after the record load */
                            lookupResult126 = ((u32 (*)(s32))d368_sub_0807A028)(1);
                            var_r3_7 = *var_r5_10;
                            ((union RecordD368 *)var_r3_7)->w1_b6_n8.value = (u16)lookupResult126;
                        }
                        break;
                    case 1:                         /* switch 18 */
                        var_r5_10 = arg0 + 0x144;
                        temp_r3_33 = ((struct PlayerD368 *)arg0)->f144;
                        ((union RecordD368 *)temp_r3_33)->w1_b14_n3.value = ((struct PlayerD368 *)arg0)->f26;
                        temp_r3_34 = ((struct PlayerD368 *)arg0)->f144;
                        ((union RecordD368 *)temp_r3_34)->w1_b17_n3.value = M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x3C);
                        temp_r4_27 = *var_r5_10;
                        temp_r0_102 = d368_sub_0800CCCC();
                        temp_r0_102 = ((s32) ((0U - (u32) temp_r0_102) | (u32) temp_r0_102) >> 0x1F) & 0x20;
                        ((union RecordD368 *)temp_r4_27)->w1_b0_n6.value = temp_r0_102;
                        {
                            u32 lookupResult126; /* full return register; the u16 truncation happens at the store, after the record load */
                            lookupResult126 = ((u32 (*)(s32))d368_sub_0807A028)(1);
                            var_r3_7 = *var_r5_10;
                            ((union RecordD368 *)var_r3_7)->w1_b6_n8.value = (u16)lookupResult126;
                        }
                        break;
                    case 7:                         /* switch 18 */
                        temp_r3_35 = ((struct PlayerD368 *)arg0)->f144;
                        ((union RecordD368 *)temp_r3_35)->w1_b14_n3.value = ((struct PlayerD368 *)arg0)->f26;
                        if (((struct PlayerD368 *)arg0)->f10 == 1) {
                            temp_r3_36 = ((struct PlayerD368 *)arg0)->f144;
                            ((union RecordD368 *)temp_r3_36)->w1_b17_n3.value = M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x3C);
                        }
                        temp_r4_27 = ((struct PlayerD368 *)arg0)->f144;
                        temp_r0_100 = d368_sub_0800CCCC();
                        temp_r0_100 = ((s32) ((0U - (u32) temp_r0_100) | (u32) temp_r0_100) >> 0x1F) & 0x20;
                        ((union RecordD368 *)temp_r4_27)->w1_b0_n6.value = temp_r0_100;
                        break;
                    }
                }
                break;
            case 8:                                 /* switch 16 */
                temp_r2_40 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r2_40)->w0_b0_n4.value = temp_r3_8;
                temp_r4_31 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r4_31)->w0_b4_n12.value = (s32) ((struct PlayerD368 *)arg0)->f8C >> 8;
                temp_r4_32 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r4_32)->w0_b16_n12.value = (((struct PlayerD368 *)arg0)->f90) >> 8;
                temp_r2_41 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r2_41)->w0_b28_n4.value = (s16) ((struct PlayerD368 *)arg0)->f1C;
                temp_r4_33 = ((struct PlayerD368 *)arg0)->f144;
                temp_r0_109 = d368_sub_0800CCCC();
                ((union RecordD368 *)temp_r4_33)->w1_b0_n6.value = ((s32) ((0U - (u32) temp_r0_109) | (u32) temp_r0_109) >> 0x1F) & 0x20;
                temp_r3_37 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r3_37)->w1_b6_n8.value = sp190;
                temp_r3_38 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r3_38)->w1_b20_n5.value = ((struct PlayerD368 *)arg0)->f26;
                break;
            case 9:                                 /* switch 16 */
                var_r5_10 = arg0 + 0x144;
                temp_r2_42 = *var_r5_10;
                ((union RecordD368 *)temp_r2_42)->w0_b0_n4.value = temp_r3_8;
                temp_r4_34 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r4_34)->w0_b4_n12.value = (s32) ((struct PlayerD368 *)arg0)->f8C >> 8;
                temp_r4_35 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r4_35)->w0_b16_n12.value = (((struct PlayerD368 *)arg0)->f90) >> 8;
                temp_r2_43 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r2_43)->w0_b28_n4.value = (s16) ((struct PlayerD368 *)arg0)->f1C;
                if ((d368_sub_0801DE60() == 7) && (d368_sub_0801DEB8() == 0x13)) {
                    s32 recordByte7MaskD368 = -15;
                    asm("" : "+r"(recordByte7MaskD368));
                    temp_r2_42 = *var_r5_10;
                    M2C_FIELD(temp_r2_42, u8 *, 7) = (M2C_FIELD(temp_r2_42, u8 *, 7) & recordByte7MaskD368) | (sp170 << 1);
                } else {
                    temp_r2_42 = *var_r5_10;
                    ((union RecordD368 *)temp_r2_42)->w1_b25_n3.value = 0;
                }
                var_r5_10 = arg0 + 0x144;
                temp_r3_39 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r3_39)->w1_b14_n3.value = ((struct PlayerD368 *)arg0)->f26;
                recordCallValue1 = d368_sub_0801CCC8();
                temp_r3_40 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r3_40)->w1_b17_n3.value = recordCallValue1;
                recordCallValue2 = d368_sub_0801DEB8();
                temp_r3_41 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r3_41)->w1_b20_n5.value = recordCallValue2;
                temp_r4_27 = *var_r5_10;
                temp_r0_102 = d368_sub_0800CCCC();
                temp_r0_102 = ((s32) ((0U - (u32) temp_r0_102) | (u32) temp_r0_102) >> 0x1F) & 0x20;
                ((union RecordD368 *)temp_r4_27)->w1_b0_n6.value = temp_r0_102;
                {
                    u32 lookupResult126; /* full return register; the u16 truncation happens at the store, after the record load */
                    lookupResult126 = ((u32 (*)(s32))d368_sub_0807A028)(1);
                    var_r3_7 = *var_r5_10;
                    ((union RecordD368 *)var_r3_7)->w1_b6_n8.value = (u16)lookupResult126;
                }
                break;
            case 10:                                /* switch 16 */
                temp_r2_44 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r2_44)->w0_b0_n4.value = temp_r3_8;
                temp_r3_42 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r3_42)->w0_b4_n12.value = (s32) ((struct PlayerD368 *)arg0)->f8C >> 8;
                temp_r3_43 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r3_43)->w0_b16_n12.value = (((struct PlayerD368 *)arg0)->f90) >> 8;
                temp_r3_44 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r3_44)->w0_b28_n4.value = (s16) ((struct PlayerD368 *)arg0)->f1C;
                temp_r4_36 = ((struct PlayerD368 *)arg0)->f144;
                temp_r0_110 = d368_sub_0800CCCC();
                ((union RecordD368 *)temp_r4_36)->w1_b0_n6.value = ((s32) ((0U - (u32) temp_r0_110) | (u32) temp_r0_110) >> 0x1F) & 0x20;
                temp_r2_45 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r2_45)->w1_b6_n1.value = ((u32) (0)) >> 6;
                temp_r0_111 = d368_sub_0801DE60();
                switch (temp_r0_111) {
                case 3:
                    if (d368_sub_0800CDC0() != 0) {

                                        } else if (M2C_FIELD(sp12C, u16 *, 0x48) == 0) {

                                        } else if (sp19C != 0) {

                                        } else if ((d368_sub_0800CB9C() != 0) && (gUnk_03003170.curLevel == 0xB)) {

                                        } else {
                                            sp19C = 1;
                                            temp_r4_38 = d368_sub_080008C8() % 100U;
                                            if (temp_r4_38 >= (u32) ((d368_sub_0801E0AC(d368_gUnk_030034E0 + 0x30, 5) * 5) + 0xA)) {

                                            } else {
                                                if (((s32) ((s16) ((struct PlayerD368 *)arg0)->fC4 - M2C_FIELD(&((struct PlayerD368 *)arg0)->f88, u16 *, 0)) > 0) && (temp_r0_114 = ((struct PlayerD368 *)arg0)->f110, (temp_r0_114 != 0))) {
                                                    ((struct PlayerD368 *)arg0)->f110 = (u32) (temp_r0_114 - 1);
                                                    temp_r2_50 = ((struct PlayerD368 *)arg0)->f144;
                                                    M2C_FIELD(temp_r2_50, u8 *, 4) = (s8) ((u8) M2C_FIELD(temp_r2_50, u8 *, 4) | 0x40);
                                                    temp_r1_46 = ((struct PlayerD368 *)arg0)->f110;
                                                    if (temp_r1_46 > 3U) {
                                                        ((union RecordD368 *)((struct PlayerD368 *)arg0)->f144)->w0_b28_n4.value = (((struct PlayerD368 *)arg0)->f1C = directionTableD368[((struct PlayerD368 *)arg0)->f126[temp_r1_46 - 4]]);
                                                    } else {
                                                        ((union RecordD368 *)((struct PlayerD368 *)arg0)->f144)->w0_b28_n4.value = (s16) ((struct PlayerD368 *)arg0)->f1C;
                                                    }
                                                } else {
                                                    temp_r2_51 = ((struct PlayerD368 *)arg0)->f144;
                                                    ((union RecordD368 *)temp_r2_51)->w1_b6_n1.value = ((u32) (0)) >> 6;
                                                }
                                                var_r1_14 = arg0 + 0x110;
                                                goto block_1293;
                                            }
                                        }
                    break;
                case 5:
                    temp_r0_112 = d368_sub_0800CDC0();
                    sp1A8 = temp_r0_112;
                    if (temp_r0_112 != 0) {

                    } else if (M2C_FIELD(sp12C, u16 *, 0x44) == 0) {

                    } else if ((d368_sub_0800CB9C() != 0) && (gUnk_03003170.curLevel == 0xB)) {

                    } else if (sp19C != 0) {
                        if (((struct PlayerD368 *)arg0)->fB2 == 1) {
                        temp_r5_11 = ((struct PlayerD368 *)arg0)->fB4;
                        if (temp_r5_11 != 1) {

                        } else {
                            temp_r2_48 = ((struct PlayerD368 *)arg0)->f110;
                            if (temp_r2_48 > 3U) {
                            temp_r1_45 = &peersD368[temp_r2_48 - 4];
                            if (((struct PeerD368 *)temp_r1_45)->f1DC != 0) {
                                ((struct PeerD368 *)temp_r1_45)->fC = 0xA;
                                localRecord.lo16 = (s16) ((struct PlayerD368 *)arg0)->f38 * 4;
                                localRecord.b1 = 0;
                                localRecord.b2 = 0x20;
                                angleWordD368 = ((u32) ArcTan2((s16) ((s32) (((u32) ((struct PeerD368 *)temp_r1_45)->f14 - (u32) ((struct PlayerD368 *)arg0)->f8C) << 8) >> 0x10), (s16) ((s32) (((u32) ((struct PeerD368 *)temp_r1_45)->f18 - (u32) ((struct PlayerD368 *)arg0)->f90) << 8) >> 0x10)) << 0x10);
                                localRecord.b3 = directionTableD368[(angleWordD368 >> 0x1C)];
                                ((struct PeerD368 *)temp_r1_45)->f54 = (s32) ((struct PlayerD368 *)arg0)->fDC;
                                localRecord.b0 = ((struct PeerD368 *)temp_r1_45)->f0 + 4;
                                ((struct PeerD368 *)temp_r1_45)->f4A = (u16) (((struct PeerD368 *)temp_r1_45)->f4A + M2C_FIELD((s32 *)&localRecord, u16 *, 4));
                                ((struct PeerD368 *)temp_r1_45)->f4C = (s32) M2C_FIELD((s32 *)&localRecord, u16 *, 4);
                                ((struct PeerD368 *)temp_r1_45)->f62 = (s16) (u8) ((u32) M2C_FIELD((s32 *)&localRecord, s32 *, 0) >> 8);
                                ((struct PeerD368 *)temp_r1_45)->f58 = (u16) ((struct PlayerD368 *)arg0)->f0;
                                ((struct PeerD368 *)temp_r1_45)->f5A |= temp_r5_11 << ((struct PlayerD368 *)arg0)->f0;
                                d368_sub_0801F2CC(temp_r1_45, (s32 *)&localRecord);
                                d368_sub_080660EC((s32 *)&localRecord);
                            }
                            ((struct PlayerD368 *)arg0)->f110 = (u32) sp1A8;
                            } else {
                                temp_r1_45 = (0x14C * temp_r2_48) + (u8 *)&d368_gUnk_03003CE0;
                                temp_r1_44 = M2C_FIELD(temp_r1_45, u8 *, 0x68);
                                if ((temp_r1_44 != 0) && (temp_r1_44 == ((struct PlayerD368 *)arg0)->f68)) {
                                    ((struct LByteD368 { u8 b0, b1, b2, b3; u16 w; } *)&localRecord)->w = ((struct PlayerD368 *)arg0)->f38;
                                    ((struct LByteD368 *)&localRecord)->b1 = 0;
                                    ((struct LByteD368 *)&localRecord)->b2 = 0x20;
                                    temp_r2_49 = M2C_FIELD(temp_r1_45, void **, 0x148);
                                    angleWordD368 = ((u32) ArcTan2((s16) (((u16) M2C_FIELD(temp_r2_49, u16 *, 0) >> 4) - ((s32) ((struct PlayerD368 *)arg0)->f8C >> 8)), (s16) (((u32) ((u32) M2C_FIELD(temp_r2_49, u16 *, 2) << 0x14) >> 0x14) - ((s32) ((struct PlayerD368 *)arg0)->f90 >> 8))) << 0x10);
                                    ((struct LByteD368 *)&localRecord)->b3 = directionTableD368[(angleWordD368 >> 0x1C)];
                                    ((struct { u8 pad[0xF8]; u32 fF8[4]; } *)temp_r1_45)->fF8[((struct PlayerD368 *)arg0)->f0] = ((struct PlayerD368 *)arg0)->fDC;
                                    ((struct LByteD368 *)&localRecord)->b0 = M2C_FIELD(temp_r1_45, u16 *, 0);
                                    d368_sub_080660EC((s32 *)&localRecord);
                                }
                                var_r1_14 = arg0 + 0x110;
                                goto block_1293;
                            }

                        }

                        }
                    } else {
                        temp_r4_37 = d368_sub_080008C8() % 100U;
                        if (temp_r4_37 >= (u32) (d368_sub_0801E0AC(d368_gUnk_030034E0 + 0x30, 4) * 7)) {

                        } else if (((s32) ((s16) ((struct PlayerD368 *)arg0)->fC4 - M2C_FIELD(&((struct PlayerD368 *)arg0)->f88, u16 *, 0)) > 0) && (temp_r0_113 = ((struct PlayerD368 *)arg0)->f110, (temp_r0_113 != 0))) {
                            sp19C = 1;
                            ((struct PlayerD368 *)arg0)->f110 = (u32) (temp_r0_113 - 1);
                            temp_r2_46 = ((struct PlayerD368 *)arg0)->f144;
                            M2C_FIELD(temp_r2_46, u8 *, 4) = (s8) ((u8) M2C_FIELD(temp_r2_46, u8 *, 4) | 0x40);
                            temp_r1_42 = ((struct PlayerD368 *)arg0)->f110;
                            if (temp_r1_42 > 3U) {
                                ((union RecordD368 *)((struct PlayerD368 *)arg0)->f144)->w0_b28_n4.value = (((struct PlayerD368 *)arg0)->f1C = directionTableD368[((struct PlayerD368 *)arg0)->f126[temp_r1_42 - 4]]);
                            } else {
                                ((union RecordD368 *)((struct PlayerD368 *)arg0)->f144)->w0_b28_n4.value = (s16) ((struct PlayerD368 *)arg0)->f1C;
                            }
                        } else {
                            sp19C = 0;
                            temp_r2_47 = ((struct PlayerD368 *)arg0)->f144;
                            ((union RecordD368 *)temp_r2_47)->w1_b6_n1.value = ((u32) (0)) >> 6;
                        }
                    }
                    break;
                case 7:
                    if (d368_sub_0800CDC0() != 0) {

                                        } else if (M2C_FIELD(sp12C, u16 *, 0x4C) == 0) {

                                        } else if (sp19C != 0) {

                                        } else {
                                            sp19C = 1;
                                            temp_r4_39 = (s16) (d368_sub_0800086C() % 100);
                                            if ((s32) temp_r4_39 >= (s32) (d368_sub_0801E0AC(d368_gUnk_030034E0 + 0x30, 6) * 8)) {

                                            } else {
                                                if (((s32) ((s16) ((struct PlayerD368 *)arg0)->fC4 - M2C_FIELD(&((struct PlayerD368 *)arg0)->f88, u16 *, 0)) > 0) && (temp_r0_115 = ((struct PlayerD368 *)arg0)->f110, (temp_r0_115 != 0))) {
                                                    ((struct PlayerD368 *)arg0)->f110 = (u32) (temp_r0_115 - 1);
                                                    temp_r2_52 = ((struct PlayerD368 *)arg0)->f144;
                                                    M2C_FIELD(temp_r2_52, u8 *, 4) = (s8) ((u8) M2C_FIELD(temp_r2_52, u8 *, 4) | 0x40);
                                                    temp_r3_45 = ((struct PlayerD368 *)arg0)->f144;
                                                    temp_r1_47 = directionTableD368[((struct PlayerD368 *)arg0)->f126[((struct PlayerD368 *)arg0)->f110]];
                                                    ((struct PlayerD368 *)arg0)->f1C = (s16) temp_r1_47;
                                                    ((union RecordD368 *)temp_r3_45)->w0_b28_n4.value = temp_r1_47;
                                                } else {
                                                    temp_r2_53 = ((struct PlayerD368 *)arg0)->f144;
                                                    ((union RecordD368 *)temp_r2_53)->w1_b6_n1.value = ((u32) (0)) >> 6;
                                                }
                                                var_r1_14 = arg0 + 0x110;
                    block_1293:
                                                *var_r1_14 = 0;
                                            }
                                        }
                    break;
                }
                break;
            case 11:                                /* switch 16 */
                temp_r2_54 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r2_54)->w0_b0_n4.value = temp_r3_8;
                temp_r4_40 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r4_40)->w0_b4_n12.value = (s32) ((struct PlayerD368 *)arg0)->f8C >> 8;
                temp_r4_41 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r4_41)->w0_b16_n12.value = (((struct PlayerD368 *)arg0)->f90) >> 8;
                temp_r2_55 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r2_55)->w0_b28_n4.value = (s16) ((struct PlayerD368 *)arg0)->f1C;
                temp_r4_42 = ((struct PlayerD368 *)arg0)->f144;
                temp_r0_116 = d368_sub_0800CCCC();
                ((union RecordD368 *)temp_r4_42)->w1_b0_n6.value = ((s32) ((0U - (u32) temp_r0_116) | (u32) temp_r0_116) >> 0x1F) & 0x20;
                temp_r2_56 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r2_56)->w1_b6_n4.value = ((u32) (0)) >> 6;
                break;
            case 12:                                /* switch 16 */
                temp_r2_57 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r2_57)->w0_b0_n4.value = temp_r3_8;
                temp_r4_43 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r4_43)->w0_b4_n12.value = (s32) ((struct PlayerD368 *)arg0)->f8C >> 8;
                temp_r4_44 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r4_44)->w0_b16_n12.value = (((struct PlayerD368 *)arg0)->f90) >> 8;
                temp_r2_58 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r2_58)->w0_b28_n4.value = (s16) ((struct PlayerD368 *)arg0)->f1C;
                temp_r4_45 = ((struct PlayerD368 *)arg0)->f144;
                temp_r0_117 = d368_sub_0800CCCC();
                ((union RecordD368 *)temp_r4_45)->w1_b0_n6.value = ((s32) ((0U - (u32) temp_r0_117) | (u32) temp_r0_117) >> 0x1F) & 0x20;
                temp_r3_46 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r3_46)->w1_b6_n6.value = ((struct PlayerD368 *)arg0)->f22;
                temp_r0_118 = ((struct PlayerD368 *)arg0)->f22;
                if (temp_r0_118 == 1) {

                } else if (temp_r0_118 != 5) {

                } else {
                    temp_r3_47 = ((struct PlayerD368 *)arg0)->f144;
                    ((union RecordD368 *)temp_r3_47)->w1_b12_n6.value = ((struct PlayerD368 *)arg0)->fBA;
                    temp_r3_48 = ((struct PlayerD368 *)arg0)->f144;
                    ((union RecordD368 *)temp_r3_48)->w1_b18_n4.value = ((struct PlayerD368 *)arg0)->fBC;
                    temp_r3_49 = ((struct PlayerD368 *)arg0)->f144;
                    ((union RecordD368 *)temp_r3_49)->w1_b23_n1.value = ((struct PlayerD368 *)arg0)->fBE;
                    temp_r3_50 = ((struct PlayerD368 *)arg0)->f144;
                    ((union RecordD368 *)temp_r3_50)->w1_b22_n1.value = ((struct PlayerD368 *)arg0)->fC0;
                    ((struct PlayerD368 *)arg0)->f22 = 6U;
                }
                break;
            case 14:                                /* switch 16 */
                temp_r2_59 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r2_59)->w0_b0_n4.value = temp_r3_8;
                temp_r3_51 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r3_51)->w0_b4_n12.value = (s32) ((struct PlayerD368 *)arg0)->f8C >> 8;
                temp_r3_52 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r3_52)->w0_b16_n12.value = (((struct PlayerD368 *)arg0)->f90) >> 8;
                temp_r3_53 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r3_53)->w0_b28_n4.value = (s16) ((struct PlayerD368 *)arg0)->f1C;
                temp_r4_46 = ((struct PlayerD368 *)arg0)->f144;
                temp_r0_119 = d368_sub_0800CCCC();
                ((union RecordD368 *)temp_r4_46)->w1_b0_n6.value = ((s32) ((0U - (u32) temp_r0_119) | (u32) temp_r0_119) >> 0x1F) & 0x20;
                temp_r0_120 = (void *) d368_sub_08007290(M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x132) | 0x110000);
                asm("" : "+r"(temp_r0_120));
                temp_r3_54 = ((struct PlayerD368 *)arg0)->f144;
                ((union RecordD368 *)temp_r3_54)->w1_b11_n8.value = M2C_FIELD(temp_r0_120, u32 *, 0xA4) & 0xF;
                ((union RecordD368 *)((struct PlayerD368 *)arg0)->f144)->w1_b19_n5.value = (u32) M2C_FIELD(temp_r0_120, u32 *, 0xA4) >> 4;
                break;
            }
        }
        if (((struct PlayerD368 *)arg0)->f20 != 0xD) {
            temp_r3_55 = ((struct PlayerD368 *)arg0)->f144;
            ((union RecordD368 *)temp_r3_55)->w1_b0_n6.value |= gUnk_03003170.f90;
            if (d368_sub_0800CFF0() == 0) {
                temp_r2_61 = d368_sub_08002164();
                /* extra refs: the limit is allocated before var_r3_8 (limit r2, var_r3_8 r3) */
                asm("" : : "r"(temp_r2_61));asm("" : : "r"(temp_r2_61));
                var_ip = 0;
                var_r3_8 = ((struct PlayerD368 *)arg0)->f0;
                var_r5 = 0;
                for (sp128 = 0; sp128 < temp_r2_61; sp128++) {
                    if (((struct PlayerD368 *)arg0)->f68 == effectOwnerTableD368[sp128].f68) {
                        var_ip += 1;
                        temp_r1_48 = effectOwnerTableD368[sp128].f148;
                        temp_r0_122 = (u32) ((u32) M2C_FIELD(temp_r1_48, u8 *, 0) << 0x1C) >> 0x1C;
                        if ((s32) temp_r0_122 <= 1) {
                            if ((s32) temp_r0_122 >= 0) {
                                if ((s32) ((u32) M2C_FIELD(temp_r1_48, u8 *, 5) << 0x1D) < 0) {
                                    var_r5 += 1;
                                    if (effectOwnerTableD368[sp128].f0 < effectOwnerTableD368[var_r3_8].f0) {
                                        var_r3_8 = sp128;
                                    }
                                }
                            }
                        }
                    }
                }
                if ((var_r5 == var_ip) && (var_r3_8 == ((struct PlayerD368 *)arg0)->f0)) {
                    d368_sub_080680F8(1);
                }
            }
        }
        sp16C = ((union RecordD368 *)sp180)->w0_b28_n4.value;
        temp_r0_123 = ((union RecordD368 *)sp180)->w0_b0_n4.value;
        if (temp_r0_123 > 0xFU) {

        } else {
            switch (temp_r0_123) {                  /* switch 19 */
            case 0:                                 /* switch 19 */
                temp_r0_124 = (u8) M2C_FIELD(sp180, u8 *, 6) >> 3;
                if (temp_r0_124 == 1) {
                    ((struct PlayerD368 *)arg0)->f11E = 7U;
                } else if (temp_r0_124 == 2) {
                    if (((struct PlayerD368 *)arg0)->f20 == 0xD) {
                        ((struct PlayerD368 *)arg0)->f11E = 9U;
                    } else {
                        ((struct PlayerD368 *)arg0)->f11E = 0U;
                    }
                } else if (temp_r0_124 == 3) {
                    if (((struct PlayerD368 *)arg0)->f20 == 0xD) {
                        ((struct PlayerD368 *)arg0)->f11E = 0xAU;
                    } else {
                        ((struct PlayerD368 *)arg0)->f11E = 0U;
                    }
                } else if (temp_r0_124 == 4) {
                    ((struct PlayerD368 *)arg0)->f11E = 0x14U;
                } else {
                    switch (((struct PlayerD368 *)arg0)->f11E) {
                    case 7:
                    case 9:
                    case 10:
                        ((struct PlayerD368 *)arg0)->f11E = 0U;
                        break;
                    }
                }
                /* fallthrough */
            case 6:                                 /* switch 19 */
                d368_sub_08065158(&sp10, animationRows338D368[((struct PlayerD368 *)arg0)->f64][((struct PlayerD368 *)arg0)->f10], 0, -1, (0));
                sp114 = (u32) ((u32) M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C;
                temp_r1_50 = (u8) M2C_FIELD(sp180, u8 *, 3) >> 4;
                ((struct PlayerD368 *)arg0)->fB0 = (u16) temp_r1_50;
                M2C_FIELD((arg0 + 0xB0), s16 *, 8) = (s16) temp_r1_50;
                sp1A4 = (u32) ((u32) M2C_FIELD(sp180, u16 *, 4) << 0x16) >> 0x1C;
                sp124 = 1;
                temp_r0_126 = (u8) M2C_FIELD(sp180, u8 *, 6) >> 3;
                if (temp_r0_126 == 1) {
                    ((struct PlayerD368 *)arg0)->f11E = 7U;
                } else if (temp_r0_126 == 2) {
                    if (((struct PlayerD368 *)arg0)->f20 == 0xD) {
                        ((struct PlayerD368 *)arg0)->f11E = 9U;
                    } else {
                        ((struct PlayerD368 *)arg0)->f11E = 0U;
                    }
                } else if (temp_r0_126 == 3) {
                    if (((struct PlayerD368 *)arg0)->f20 == 0xD) {
                        ((struct PlayerD368 *)arg0)->f11E = 0xAU;
                    } else {
                        ((struct PlayerD368 *)arg0)->f11E = 0U;
                    }
                } else {
                    switch (((struct PlayerD368 *)arg0)->f11E) {
                    case 7:
                    case 9:
                    case 10:
                        ((struct PlayerD368 *)arg0)->f11E = 0U;
                        break;
                    }
                }
                break;
            case 3:                                 /* switch 19 */
                temp_r0_128 = ((struct PlayerD368 *)arg0)->fC - 1;
                switch (temp_r0_128) {              /* switch 20 */
                case 0:                             /* switch 20 */
                    if (((struct PlayerD368 *)arg0)->f10 == 9) {
                        var_r1_17 = 0x50029;
                    } else {
                        goto selectorLoad49;
                    }
                    goto selectorCall49;
                case 5:                             /* switch 20 */
                    if (((struct PlayerD368 *)arg0)->f10 == 9) {
                        var_r1_17 = 0x5001B;
                    } else {
                        goto selectorLoad49;
                    }
                    goto selectorCall49;
                case 1:                             /* switch 20 */
                    if (((struct PlayerD368 *)arg0)->f10 == 9) {
                        var_r1_17 = 0x5009D;
                    } else {
                        goto selectorLoad49;
                    }
                    goto selectorCall49;
                case 6:                             /* switch 20 */
                    temp_r1_51 = ((struct PlayerD368 *)arg0)->f10;
                    if (temp_r1_51 == 9) {
                        var_r1_17 = 0x5009C;
                    } else {
                        var_r1_17 = animationRows338D368[((struct PlayerD368 *)arg0)->f64][temp_r1_51];
                    }
                    goto selectorCall49;
                case 7:                             /* switch 20 */
                    if (((struct PlayerD368 *)arg0)->f10 == 9) {
                        var_r1_17 = 0x50088;
                    } else {
                        goto selectorLoad49;
                    }
                    goto selectorCall49;
                default:                            /* switch 20 */
                    goto selectorDefault49;
                }
selectorLoad49:
                var_r1_17 = animationRows338D368[((struct PlayerD368 *)arg0)->f64][((struct PlayerD368 *)arg0)->f10];
selectorCall49:
                d368_sub_08065158(&sp10, var_r1_17, 0, -1, (0));
                goto selectorDone49;
selectorDefault49:
                d368_sub_08065158(&sp10, animationRows338D368[((struct PlayerD368 *)arg0)->f64][((struct PlayerD368 *)arg0)->f10], 0, -1, (0));
selectorDone49:
                sp114 = (u32) ((u32) M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C;
                temp_r1_52 = (u8) M2C_FIELD(sp180, u8 *, 3) >> 4;
                ((struct PlayerD368 *)arg0)->fB0 = (u16) temp_r1_52;
                M2C_FIELD((arg0 + 0xB0), s16 *, 8) = (s16) temp_r1_52;
                sp1A4 = (u32) ((u32) M2C_FIELD(sp180, u16 *, 4) << 0x16) >> 0x1C;
                sp124 = 1;
                break;
            case 1:                                 /* switch 19 */
            case 4:                                 /* switch 19 */
            case 7:                                 /* switch 19 */
                d368_sub_08065158(&sp10, animationRows338D368[((struct PlayerD368 *)arg0)->f64][((struct PlayerD368 *)arg0)->f10], 0, -1, (0));
                sp114 = (u32) ((u32) M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C;
                temp_r1_53 = ((u8) M2C_FIELD(sp180, u8 *, 3) >> 4) + 8;
                ((struct PlayerD368 *)arg0)->fB0 = temp_r1_53;
                M2C_FIELD((arg0 + 0xB0), u16 *, 8) = temp_r1_53;
                sp124 = 1;
                sp1A4 = (u32) ((u32) M2C_FIELD(sp180, u16 *, 4) << 0x16) >> 0x1C;
                break;
            case 2:                                 /* switch 19 */
                if ((((struct PlayerD368 *)arg0)->fB0 == ((struct PlayerD368 *)arg0)->fB8) && (((u32) ((u32) M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C) == sp114)) {

                } else {
                    d368_sub_08065158(&sp10, animationRows343D368[((struct PlayerD368 *)arg0)->f64].second[((struct PlayerD368 *)arg0)->f10], 0, -1, (0));
                    ((struct PlayerD368 *)arg0)->fB4 = 0U;
                    *(u16 *)((arg0 + 0xB4) - 2) = 0;
                    sp114 = (u32) ((u32) M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C;
                    temp_r0_129 = (u8) M2C_FIELD(sp180, u8 *, 3) >> 4;
                    ((struct PlayerD368 *)arg0)->fB0 = (u16) temp_r0_129;
                    ((struct PlayerD368 *)arg0)->fB8 = (u16) temp_r0_129;
                    sp124 = 0;
                    if ((d368_sub_0800CCCC() == 0) && (d368_sub_0800CD34() == 0) && (((struct PlayerD368 *)arg0)->f20 != 0xD)) {
                        temp_r0_130 = ((struct PlayerD368 *)arg0)->f10 - 1;
                        switch (temp_r0_130) {      /* switch 21 */
                        case 1:                     /* switch 21 */
                            d368_sub_0805865C(0x14);
                            break;
                        case 2:                     /* switch 21 */
                            temp_r0_131 = ((struct PlayerD368 *)arg0)->fC;
                            switch (temp_r0_131) {
                            case 0:
                                d368_sub_0805865C(0x15);
                                break;
                            case 2:
                                d368_sub_0805865C(0x18);
                                break;
                            }
                            break;
                        case 0:                     /* switch 21 */
                        case 3:                     /* switch 21 */
                        case 4:                     /* switch 21 */
                        case 6:                     /* switch 21 */
                        case 8:                     /* switch 21 */
                            d368_sub_0805865C(0x13);
                            break;
                        case 7:                     /* switch 21 */
                            temp_r0_132 = ((struct PlayerD368 *)arg0)->fC;
                            if (temp_r0_132 != 5) {
                                if (temp_r0_132 == 7) {
                                    d368_sub_0805865C(0x1D);
                                }
                            } else {
                                d368_sub_0805865C(0x1C);
                            }
                            /* fallthrough */
                        case 5:                     /* switch 21 */
                            d368_sub_0805865C(0x1B);
                            break;
                        }
                    }
                    temp_r0_133 = ((struct PlayerD368 *)arg0)->f64;
                    if ((u32) temp_r0_133 > 9U) {

                    } else {
                        switch (temp_r0_133) {      /* switch 22 */
                        case 0:                     /* switch 22 */
                            sp1A4 = ((union RecordD368 *)sp180)->w1_b6_n4.value;
                            break;
                        case 1:                     /* switch 22 */
                            temp_r0_134 = ((struct PlayerD368 *)arg0)->f10;
                            if (temp_r0_134 == 5) {

                            } else if (temp_r0_134 != 9) {

                            } else {
                                d368_sub_08065158(&sp10, 0x5011A, 0, -1, (0));
                            }
                            goto record_nibble_result126;
                        case 2:                     /* switch 22 */
                            temp_r0_135 = ((struct PlayerD368 *)arg0)->f10;
                            switch (temp_r0_135) {
                            case 7:
                                if (((u32) ((u32) M2C_FIELD(sp180, u16 *, 6) << 0x17) >> 0x1B) != 0) {
                                    d368_sub_080760E8(((struct PlayerD368 *)arg0)->f0, (u32) ((u32) M2C_FIELD(sp180, u16 *, 4) << 0x12) >> 0x18, ((u32) ((u32) M2C_FIELD(sp180, u32 *, 4) << 0xF) >> 0x1D) | 0x8000, (u32) ((u32) M2C_FIELD(sp180, u8 *, 6) << 0x1C) >> 0x1D);
                                } else {
                                    d368_sub_080760E8(((struct PlayerD368 *)arg0)->f0, (u32) ((u32) M2C_FIELD(sp180, u16 *, 4) << 0x12) >> 0x18, (u32) ((u32) M2C_FIELD(sp180, u32 *, 4) << 0xF) >> 0x1D, (u32) ((u32) M2C_FIELD(sp180, u8 *, 6) << 0x1C) >> 0x1D);
                                }
                                break;
                            case 3:
                                        if (((u32) ((u32) M2C_FIELD(sp180, u16 *, 6) << 0x17) >> 0x1B) != 0) {
                                            d368_sub_08076A88(((struct PlayerD368 *)arg0)->f0, (u32) ((u32) M2C_FIELD(sp180, u16 *, 4) << 0x12) >> 0x18, ((u32) ((u32) M2C_FIELD(sp180, u32 *, 4) << 0xF) >> 0x1D) | 0x8000, (u32) ((u32) M2C_FIELD(sp180, u8 *, 6) << 0x1C) >> 0x1D);
                                        } else {
                                            d368_sub_08076A88(((struct PlayerD368 *)arg0)->f0, (u32) ((u32) M2C_FIELD(sp180, u16 *, 4) << 0x12) >> 0x18, (u32) ((u32) M2C_FIELD(sp180, u32 *, 4) << 0xF) >> 0x1D, (u32) ((u32) M2C_FIELD(sp180, u8 *, 6) << 0x1C) >> 0x1D);
                                        }
                                break;
                            case 9:
                                d368_sub_08065158(&sp10, 0x5011D, 0, -1, (0));
                                break;
                            }
                            break;
                        case 3:                     /* switch 22 */
                            sp1A4 = ((union RecordD368 *)sp180)->w1_b6_n4.value;
                            break;
                        case 4:                     /* switch 22 */
                            temp_r0_136 = ((struct PlayerD368 *)arg0)->f10;
                            if (temp_r0_136 != 5) {
                            if (temp_r0_136 == 9) {
                                d368_sub_08065158(&sp10, 0x500E9, 0, -1, (0));

                            }
                            }
                            sp1A4 = ((union RecordD368 *)sp180)->w1_b6_n4.value;
                            break;
                        case 5:                     /* switch 22 */
                            sp1A4 = ((union RecordD368 *)sp180)->w1_b6_n4.value;
                            break;
                        case 6:                     /* switch 22 */
                            temp_r0_137 = ((struct PlayerD368 *)arg0)->f10;
                            if (temp_r0_137 != 5) {
                            if (temp_r0_137 == 9) {
                                d368_sub_08065158(&sp10, 0x500F5, 0, -1, (0));

                            }
                            }
                            sp1A4 = ((union RecordD368 *)sp180)->w1_b6_n4.value;
                            break;
                        case 7:                     /* switch 22 */
                            switch (((struct PlayerD368 *)arg0)->f10) {
                            case 1:
                                sp1A4 = ((union RecordD368 *)sp180)->w1_b6_n4.value;
                                break;
                            case 8:
                                if (((u32) ((u32) M2C_FIELD(sp180, u16 *, 6) << 0x17) >> 0x1B) != 0) {
                                    d368_sub_08077444(((struct PlayerD368 *)arg0)->f0, (u32) ((u32) M2C_FIELD(sp180, u16 *, 4) << 0x12) >> 0x18, ((u32) ((u32) M2C_FIELD(sp180, u32 *, 4) << 0xF) >> 0x1D) | 0x8000, (u32) ((u32) M2C_FIELD(sp180, u8 *, 6) << 0x1C) >> 0x1D, 0);
                                } else {
                                    d368_sub_08077444(((struct PlayerD368 *)arg0)->f0, (u32) ((u32) M2C_FIELD(sp180, u16 *, 4) << 0x12) >> 0x18, (u32) ((u32) M2C_FIELD(sp180, u32 *, 4) << 0xF) >> 0x1D, (u32) ((u32) M2C_FIELD(sp180, u8 *, 6) << 0x1C) >> 0x1D, 0);
                                }
                                break;
                            case 9:
                                d368_sub_08065158(&sp10, 0x5012C, 0, -1, (0));
                                break;
                            }
                            break;
                        case 8:                     /* switch 22 */
                            temp_r0_139 = ((struct PlayerD368 *)arg0)->f10;
                            if (temp_r0_139 != 5) {
                            if (temp_r0_139 == 9) {
                                d368_sub_08065158(&sp10, 0x50128, 0, -1, (0));

                            }
                            }
                            sp1A4 = ((union RecordD368 *)sp180)->w1_b6_n4.value;
                            break;
                        case 9:                     /* switch 22 */
record_nibble_result126:
                            sp1A4 = ((union RecordD368 *)sp180)->w1_b6_n4.value;
                            break;
                        }
                    }
                }
                if (d368_sub_0800CCCC() != 0) {

                } else if (d368_sub_0800CD34() != 0) {

                } else if (((struct PlayerD368 *)arg0)->f20 == 0xD) {

                } else if (((struct PlayerD368 *)arg0)->f10 != 4) {

                } else {
                    if (((struct PlayerD368 *)arg0)->fC == 3) {
                        if (((struct PlayerD368 *)arg0)->fB2 != 1)
                            break;
                    } else if (((struct PlayerD368 *)arg0)->fB2 != 2) {
                        break;
                    }
                    if (((struct PlayerD368 *)arg0)->fB4 != 0) {

                    } else {
                        d368_sub_0805865C(0x19);
                    }
                }
                break;
            case 5:                                 /* switch 19 */
                if ((((struct PlayerD368 *)arg0)->fB0 == ((struct PlayerD368 *)arg0)->fB8) && (((u32) ((u32) M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C) == sp114)) {

                } else {
                    if ((((struct PlayerD368 *)arg0)->f20 != 0xD) && (d368_sub_0800CCCC() == 0) && (d368_sub_0800CD34() == 0)) {
                        d368_sub_0805865C(0x31);
                    }
                    d368_sub_08065158(&sp10, animationRows343D368[((struct PlayerD368 *)arg0)->f64].second[((struct PlayerD368 *)arg0)->f10], 0, -1, (0));
                    ((struct PlayerD368 *)arg0)->fB4 = 0U;
                    *(u16 *)((arg0 + 0xB4) - 2) = 0;
                    sp114 = (u32) ((u32) M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C;
                    ((struct PlayerD368 *)arg0)->fB0 = (u16) ((u8) M2C_FIELD(sp180, u8 *, 3) >> 4);
                    temp_r0_140 = ((struct PlayerD368 *)arg0)->fC;
                    if ((u32) temp_r0_140 > 8U) {

                    } else {
                        switch (temp_r0_140) {      /* switch 23 */
                        case 0:                     /* switch 23 */
                            switch (((struct PlayerD368 *)arg0)->f10) {
                            case 1:
                                switch (((u32) ((u32) M2C_FIELD(sp180, u32 *, 4) << 0xF) >> 0x1D)) {
                                case 1:
                                case 2:
                                    ((struct PlayerD368 *)arg0)->fB0 = ((struct PlayerD368 *)arg0)->fB0 + 8;
                                    break;
                                case 3:
                                case 4:
                                    ((struct PlayerD368 *)arg0)->fB0 = ((struct PlayerD368 *)arg0)->fB0 + 0x10;
                                    break;
                                case 5:
                                case 6:
                                case 7:
                                    ((struct PlayerD368 *)arg0)->fB0 = ((struct PlayerD368 *)arg0)->fB0 + 0x18;
                                    break;
                                }
                                break;
                            case 2:
                                ((struct PlayerD368 *)arg0)->fB0 = ((struct PlayerD368 *)arg0)->fB0 + 8;
                                break;
                            case 3:
                                ((struct PlayerD368 *)arg0)->fB0 = (((u32) ((u32) M2C_FIELD(sp180, u32 *, 4) << 0xF) >> 0x1D) * 8) + ((struct PlayerD368 *)arg0)->fB0;
                                break;
                            }
                            break;
                        case 2:                     /* switch 23 */
                            temp_r0_143 = ((struct PlayerD368 *)arg0)->f10;
                            if (temp_r0_143 != 3) {
                                if (temp_r0_143 == 7) {
                                    d368_sub_0801500C(((struct PlayerD368 *)arg0)->f0);
                                    var_r0_34 = (((u32) ((u32) M2C_FIELD(sp180, u32 *, 4) << 0xF) >> 0x1D) * 8) + ((struct PlayerD368 *)arg0)->fB0;
                                    ((struct PlayerD368 *)arg0)->fB0 = var_r0_34;
                                    goto animationClassDoneD368;
                                }
                            } else {
                                d368_sub_08076A88(((struct PlayerD368 *)arg0)->f0, (u32) ((u32) M2C_FIELD(sp180, u16 *, 4) << 0x12) >> 0x18, (u32) ((u32) M2C_FIELD(sp180, u32 *, 4) << 0xF) >> 0x1D, (u32) ((u32) M2C_FIELD(sp180, u8 *, 6) << 0x1C) >> 0x1D);
                                ((struct PlayerD368 *)arg0)->fB0 = ((struct PlayerD368 *)arg0)->fB0 + 8;
                                goto animationClassDoneD368;
                            }
                            break;
                        case 3:                     /* switch 23 */
                            temp_r0_144 = ((struct PlayerD368 *)arg0)->f10;
                            if (temp_r0_144 != 2) {
                                if (temp_r0_144 == 4) {
                                    ((struct PlayerD368 *)arg0)->fB0 = ((struct PlayerD368 *)arg0)->fB0 + 8;
                                    goto animationClassDoneD368;
                                }
                            } else {
                                ((struct PlayerD368 *)arg0)->fB0 = ((struct PlayerD368 *)arg0)->fB0 + 8;
                                goto animationClassDoneD368;
                            }
                            break;
                        case 5:                     /* switch 23 */
                            switch (((struct PlayerD368 *)arg0)->f10) {
                            case 6:
                                d368_sub_08015B20(((struct PlayerD368 *)arg0)->f0);
                                ((struct PlayerD368 *)arg0)->fB0 = ((struct PlayerD368 *)arg0)->fB0 + 8;
                                break;
                            case 8:
                                d368_sub_08015B20(((struct PlayerD368 *)arg0)->f0);
                                ((struct PlayerD368 *)arg0)->fB0 = ((struct PlayerD368 *)arg0)->fB0 + 8;
                                break;
                            }
                            break;
                        case 7:                     /* switch 23 */
                            switch (((struct PlayerD368 *)arg0)->f10) {
                            case 1:
                                d368_sub_08015820(((struct PlayerD368 *)arg0)->f0);
                                ((struct PlayerD368 *)arg0)->fB0 = ((struct PlayerD368 *)arg0)->fB0 + 8;
                                break;
                            case 8:
                                d368_sub_08015820(((struct PlayerD368 *)arg0)->f0);
                                ((struct PlayerD368 *)arg0)->fB0 = ((struct PlayerD368 *)arg0)->fB0 + 8;
                                break;
                            }
                            break;
                        case 4:                     /* switch 23 */
                            temp_r0_145 = ((struct PlayerD368 *)arg0)->f10;
                            if (temp_r0_145 == 4) {
                                ((struct PlayerD368 *)arg0)->fB0 = ((struct PlayerD368 *)arg0)->fB0 + 8;
                                goto animationClassDoneD368;
                            }
                            goto animationClassCompare126;
block_1503:
                            temp_r0_145 = ((struct PlayerD368 *)arg0)->f10;
animationClassCompare126:
                            if (temp_r0_145 == 5) {
                                ((struct PlayerD368 *)arg0)->fB0 = ((struct PlayerD368 *)arg0)->fB0 + 8;
                                goto animationClassDoneD368;
                            }
                            break;
                        case 1:                     /* switch 23 */
                        case 6:                     /* switch 23 */
                        case 8:                     /* switch 23 */
                            goto block_1503;
                        }
                    }
animationClassDoneD368:
                    ((struct PlayerD368 *)arg0)->fB8 = (u16) ((struct PlayerD368 *)arg0)->fB0;
                }
                sp124 = 0;
                break;
            case 8:                                 /* switch 19 */
                if ((((struct PlayerD368 *)arg0)->fB0 == ((struct PlayerD368 *)arg0)->fB8) && (((u32) ((u32) M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C) == sp114)) {

                } else {
                    d368_sub_08065158(&sp10, animationRows338D368[((struct PlayerD368 *)arg0)->f64][((struct PlayerD368 *)arg0)->f10], 0, -1, (0));
                    ((struct PlayerD368 *)arg0)->fB4 = 0U;
                    *(u16 *)((arg0 + 0xB4) - 2) = 0;
                    sp114 = (u32) ((u32) M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C;
                    temp_r0_147 = (u8) M2C_FIELD(sp180, u8 *, 3) >> 4;
                    ((struct PlayerD368 *)arg0)->fB0 = (u16) temp_r0_147;
                    ((struct PlayerD368 *)arg0)->fB8 = (u16) temp_r0_147;
                    sp124 = 0;
                    temp_r0_148 = ((struct PlayerD368 *)arg0)->f20;
                    if (temp_r0_148 == 0xD) {
                        d368_sub_0805D6B8(((struct PlayerD368 *)arg0)->f0, (u32) ((u32) M2C_FIELD(sp180, u16 *, 4) << 0x12) >> 0x18, M2C_FIELD(sp180, u8 *, 3) >> 4);
                        break;
                    }
                    if (temp_r0_148 != 8) {

                    } else {
                        sp190 = (s32) (u16) d368_sub_0805D548(((struct InvD368 *)d368_gUnk_030034E0)->f56[((struct InvD368 *)d368_gUnk_030034E0)->f54] - 1);
                        d368_sub_0805D580(sp190);
                        d368_sub_0805D6B8(((struct PlayerD368 *)arg0)->f0, (u32) ((u32) M2C_FIELD(sp180, u16 *, 4) << 0x12) >> 0x18, M2C_FIELD(sp180, u8 *, 3) >> 4);
                    }
                }
                break;
            case 9:                                 /* switch 19 */
                if ((((struct PlayerD368 *)arg0)->fB0 == ((struct PlayerD368 *)arg0)->fB8) && (((u32) ((u32) M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C) == sp114)) {

                } else {
                    d368_sub_08065158(&sp10, animationRows343D368[((struct PlayerD368 *)arg0)->f64].second[((struct PlayerD368 *)arg0)->f10], 0, -1, (0));
                    ((struct PlayerD368 *)arg0)->fB4 = 0U;
                    *(u16 *)((arg0 + 0xB4) - 2) = 0;
                    sp114 = (u32) ((u32) M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C;
                    temp_r0_149 = ((u8) M2C_FIELD(sp180, u8 *, 3) >> 4) + 8;
                    ((struct PlayerD368 *)arg0)->fB0 = temp_r0_149;
                    ((struct PlayerD368 *)arg0)->fB8 = temp_r0_149;
                    temp_r0_150 = ((struct PlayerD368 *)arg0)->f20;
                    if (temp_r0_150 == 0xD) {
                        d368_sub_0807386C(((struct PlayerD368 *)arg0)->f0, (u32) ((u32) M2C_FIELD(sp180, u16 *, 6) << 0x17) >> 0x1B, (u32) ((u32) M2C_FIELD(sp180, u16 *, 4) << 0x12) >> 0x18, ((u32) ((u32) M2C_FIELD(sp180, u32 *, 4) << 0xF) >> 0x1D) | (((u32) ((u32) M2C_FIELD(sp180, u8 *, 7) << 0x1C) >> 0x1D) << 0x10), ((u32) ((u32) M2C_FIELD(sp180, u8 *, 6) << 0x1C) >> 0x1D));
                    } else if (temp_r0_150 == 9) {
                        d368_sub_0807386C(((struct PlayerD368 *)arg0)->f0, (u32) ((u32) M2C_FIELD(sp180, u16 *, 6) << 0x17) >> 0x1B, (u32) ((u32) M2C_FIELD(sp180, u16 *, 4) << 0x12) >> 0x18, ((u32) ((u32) M2C_FIELD(sp180, u32 *, 4) << 0xF) >> 0x1D) | (((u32) ((u32) M2C_FIELD(sp180, u8 *, 7) << 0x1C) >> 0x1D) << 0x10), ((u32) ((u32) M2C_FIELD(sp180, u8 *, 6) << 0x1C) >> 0x1D));
                    }
                    sp124 = 0;
                }
                break;
            case 10:                                /* switch 19 */
                if ((((struct PlayerD368 *)arg0)->fB0 == ((struct PlayerD368 *)arg0)->fB8) && (((u32) ((u32) M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C) == sp114)) {

                } else {
                    d368_sub_08065158(&sp10, animationRows338D368[((struct PlayerD368 *)arg0)->f64][((struct PlayerD368 *)arg0)->f10], 0, -1, (0));
                    ((struct PlayerD368 *)arg0)->fB4 = 0U;
                    *(u16 *)((arg0 + 0xB4) - 2) = 0;
                    sp114 = (u32) ((u32) M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C;
                    temp_r0_151 = ((u8) M2C_FIELD(sp180, u8 *, 3) >> 4) + 0x10;
                    ((struct PlayerD368 *)arg0)->fB0 = temp_r0_151;
                    ((struct PlayerD368 *)arg0)->fB8 = temp_r0_151;
                    sp124 = 0;
                    temp_r0_152 = ((struct PlayerD368 *)arg0)->fC;
                    switch (temp_r0_152) {
                    case 3:
                        if ((s32) ((u32) M2C_FIELD(sp180, u8 *, 4) << 0x19) < 0) {
                            d368_sub_08075494(((struct PlayerD368 *)arg0)->f0);
                        }
                        break;
                    case 5:
                        if ((s32) ((u32) M2C_FIELD(sp180, u8 *, 4) << 0x19) < 0) {
                            temp_r0_153 = ((struct PlayerD368 *)arg0)->f10;
                                                    if (temp_r0_153 != 6) {
                                                        if ((s32) temp_r0_153 <= 6) {
                                                            if (temp_r0_153 != 0) {

                                                            } else {
                                                                goto block_1544;
                                                            }
                                                        } else if (temp_r0_153 == 8) {
                            block_1544:
                                                            d368_sub_08065158(&sp10, 0x500DA, 0, -1, (0));
                                                        }
                                                    } else {
                                                        d368_sub_08065158(&sp10, 0x500D9, 0, -1, (sp124));
                                                    }
                                                    temp_r0_154 = (u8) M2C_FIELD(sp180, u8 *, 3) >> 4;
                                                    ((struct PlayerD368 *)arg0)->fB0 = (u16) temp_r0_154;
                                                    ((struct PlayerD368 *)arg0)->fB8 = (u16) temp_r0_154;
                        }
                        break;
                    case 7:
                        if ((s32) ((u32) M2C_FIELD(sp180, u8 *, 4) << 0x19) < 0) {
                            d368_sub_080756EC(((struct PlayerD368 *)arg0)->f0);
                        }
                        break;
                    }
                }
                break;
            case 11:                                /* switch 19 */
                if ((((struct PlayerD368 *)arg0)->fB0 != ((struct PlayerD368 *)arg0)->fB8) || (((u32) ((u32) M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C) != sp114)) {
                    d368_sub_08065158(&sp10, animationRows338D368[((struct PlayerD368 *)arg0)->f64][((struct PlayerD368 *)arg0)->f10], 0, -1, (0));
                    ((struct PlayerD368 *)arg0)->fB4 = 0U;
                    *(u16 *)((arg0 + 0xB4) - 2) = 0;
                    sp114 = (u32) ((u32) M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C;
                    temp_r0_155 = ((u8) M2C_FIELD(sp180, u8 *, 3) >> 4) + 0x18;
                    ((struct PlayerD368 *)arg0)->fB0 = temp_r0_155;
                    ((struct PlayerD368 *)arg0)->fB8 = temp_r0_155;
                    ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 | 0x2000);
                }
                sp124 = 0;
                break;
            case 12:                                /* switch 19 */
                temp_r0_156 = ((u32) ((u32) M2C_FIELD(sp180, u16 *, 4) << 0x14) >> 0x1A) - 1;
                if (temp_r0_156 > 5U) {

                } else {
                    switch (temp_r0_156) {          /* switch 25 */
                    case 0:                         /* switch 25 */
                        temp_r0_157 = (u32) ((u32) M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C;
                        if (temp_r0_157 != sp114) {
                            sp114 = temp_r0_157;
                            if (d368_sub_0800CCCC() == 0) {
                                if (d368_sub_0800CF80() == 0) {
                                    *(u64 *)&((struct PlayerD368 *)arg0)->fA4 = *(u64 *)&((struct PlayerD368 *)arg0)->f8C;
                                    ((struct PlayerD368 *)arg0)->f2C = (u16) gUnk_03003170.f90;
                                    ((struct PlayerD368 *)arg0)->f2E = (u16) gUnk_03003170.curLevel;
                                }
                                if (((struct PlayerD368 *)arg0)->f30 & 0x2000) {
                                    ((struct PlayerD368 *)arg0)->fA4 = -1;
                                    M2C_FIELD((arg0 + 0xA4), s32 *, 4) = -1;
                                }
                            }
                            d368_sub_080657C4(((struct PlayerD368 *)arg0)->f0, 0);
                        }
                        if (d368_sub_0800CF80() == 0) {
                            ((struct PlayerD368 *)arg0)->f30 |= 3;
                        } else {
                            ((struct PlayerD368 *)arg0)->f30 |= 1;
                        }
                        break;
                    case 1:                         /* switch 25 */
                    case 2:                         /* switch 25 */
                        if (d368_sub_0800CCCC() != 0) {
                            ((struct PlayerD368 *)arg0)->f11E = 0U;
                            d368_sub_08065158(&sp10, animationRows338D368[((struct PlayerD368 *)arg0)->f64][((struct PlayerD368 *)arg0)->f10], 0, -1, (0));
                            ((struct PlayerD368 *)arg0)->fB0 = (u16) ((u8) M2C_FIELD(sp180, u8 *, 3) >> 4);
                            sp118 = 0;
                            sp120 = 3;
                        } else {
                            sp118 = 0xA000;
                            sp120 = 0;
                        }
                        sp11C = 0;
                        break;
                    case 3:                         /* switch 25 */
                        ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 & ~3);
                        break;
                    case 4:                         /* switch 25 */
                        d368_sub_08065158(&sp10, animRows3D368[((struct PlayerD368 *)arg0)->f64][((struct AnimSelD368 *)sp180)->sel][((struct AnimSelD368 *)sp180)->idx], 0, -1, (0));
                        ((struct PlayerD368 *)arg0)->fB0 = (u16) (((u8) M2C_FIELD(sp180, u8 *, 3) >> 4) + ((u32) ((u32) M2C_FIELD(sp180, u32 *, 4) << 0xE) >> 0x1A));
                        ((struct PlayerD368 *)arg0)->fB2 = 0;
                        ((struct PlayerD368 *)arg0)->fB4 = 0;
                        sp124 = (u8) M2C_FIELD(sp180, u8 *, 6) >> 7;
                        break;
                    case 5:                         /* switch 25 */
                        ((struct PlayerD368 *)arg0)->fB0 = (u16) (((union RecordD368 *)sp180)->w0_b28_n4.value + ((u32) ((u32) M2C_FIELD(sp180, u32 *, 4) << 0xE) >> 0x1A));
                        break;
                    }
                }
                break;
            case 14:                                /* switch 19 */
                if (((union RecordD368 *)sp180)->w0_b0_n4.value != sp114) {
                    d368_sub_08065158(&sp10, animationRows338D368[((struct PlayerD368 *)arg0)->f64][0], 0, -1, (0));
                    ((struct PlayerD368 *)arg0)->fB4 = 0U;
                    ((struct PlayerD368 *)arg0)->fB2 = 0;
                    ((struct PlayerD368 *)arg0)->fB6 = 0;
                    sp114 = (u32) ((u32) M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C;
                    ((struct PlayerD368 *)arg0)->fB0 = 0x20U;
                    ((struct PlayerD368 *)arg0)->fB8 = 0x20U;
                    sp124 = 0;
                    d368_sub_0800CBBC();
                    var_r4_11 = ((struct PlayerD368 *)arg0)->f0;
                    if (var_r4_11 == d368_sub_080020F4()) {
                        sp15C = d368_sub_0800CBCC();
                    }
                    if ((d368_sub_0800CCCC() == 0) && (d368_sub_0800CC98() == 0)) {
                        ((struct PlayerD368 *)arg0)->f124 = d368_sub_08058688(0x6B);
                    }
                }
                if (((struct PlayerD368 *)arg0)->fB0 != ((struct PlayerD368 *)arg0)->fB8) {

                } else if (((struct PlayerD368 *)arg0)->fB6 == 0) {

                } else if (d368_sub_0800CD8C() != 0) {

                } else if (sp15C == 1) {
                    lookupStats = (void *) d368_sub_08007290(M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x132) | 0x110000);
                    temp_r1_55 = ((struct PlayerD368 *)arg0)->f148;
                    if (((u8) M2C_FIELD(temp_r1_55, u8 *, 6) >> 3) == 6) {
                        var_r5 = 1;
                        var_r6_8 = 0;
                    } else {
                        var_r5 = 0;
                        var_r6_8 = (u32) (M2C_FIELD(temp_r1_55, s32 *, 4) << 0xD) >> 0x18;
                    }
                    asm("" : : "r"(var_r6_8));
                    var_r4_11 = 0;
                    for (sp128 = 0; sp128 < d368_sub_08002164(); sp128++) {
                        u8 *plD = (u8 *)&d368_gUnk_03003CE0; temp_r1_56 = 0x14C * sp128;
                        temp_r2_63 = *(void **)(temp_r1_56 + ((u8 *)&d368_gUnk_03003CE0 + 0x148));
                        if ((((u32) ((u32) M2C_FIELD(temp_r2_63, u8 *, 0) << 0x1C) >> 0x1C) == 0xE) && (*(u16 *)(temp_r1_56 + plD + 0xB6) != 0)) {
                            if (((u8) M2C_FIELD(temp_r2_63, u8 *, 6) >> 3) == 6) {
                                var_r4_11 += 1;
                                if (var_r5 != 0) {
                                    var_r6_8 += (u32) (M2C_FIELD(temp_r2_63, s32 *, 4) << 0xD) >> 0x18;
                                }
                            } else {
                                var_r4_11 += 1;
                            }
                        }
                    }
                    if (var_r4_11 == d368_sub_0800CBCC()) {
                        d368_sub_08067F94((u32) M2C_FIELD(lookupStats, u32 *, 0xA4) >> 4, var_r6_8, var_r4_11);
                        d368_sub_0800CBEC();
                    }
                }
                break;
            case 15:                                /* switch 19 */
                d368_sub_08065158(&sp10, animationRows338D368[((struct PlayerD368 *)arg0)->f64][0], 0, -1, (0));
                sp114 = (u32) ((u32) M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C;
                ((struct PlayerD368 *)arg0)->fB0 = 0x21U;
                M2C_FIELD((arg0 + 0xB0), s16 *, 8) = 0x21;
                sp124 = 1;
                break;
            }
        }
        if (((u32) ((u32) M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C) != 0xC) {
            temp_r5_12 = sp118 - sp11C;
            sp118 = temp_r5_12;
            sp11C += 0x20;
            if ((s32) (temp_r5_12 >> 8) <= 0) {
                sp11C = 0 - (0x200 >> sp120);
                sp120 += 1;
                sp118 = 0x200;
                ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 & ~0x40);
            }
            if (sp120 > 2) {
                sp120 = 3;
                sp118 = 0;
            }
        }
        d368_sub_0800BC08((u16) M2C_FIELD(sp180, u16 *, 0) >> 4, (u32) ((u32) M2C_FIELD(sp180, u16 *, 2) << 0x14) >> 0x14, &coordF0, &coordF2, (0x30), ((u32) ((u32) M2C_FIELD(sp180, u8 *, 4) << 0x1A) >> 0x1A));
        temp_r4_48 = ((struct PlayerD368 *)arg0)->f30 & 2;
        if (temp_r4_48 != 0) {

        } else {
            sp10.f1C = (s8) ((struct PlayerD368 *)arg0)->f0;
            if (!(0x200 & M2C_FIELD(d368_gUnk_03005CF4, u16 *, 4))) {
                ((struct PlayerD368 *)arg0)->fB6 = (u16) d368_sub_08065370(&sp10, ((struct PlayerD368 *)arg0)->fB0, arg0 + 0xB2, arg0 + 0xB4, (sp124));
            }
            if (((struct PlayerD368 *)arg0)->f20 != 0xD) {
                if (((struct PlayerD368 *)arg0)->f11E != 0) {
                    if (sp1A0 != 0) {
                        sp1A0 = 0;
                    }
                    if (d368_sub_08065370(&sp78, ((struct PlayerD368 *)arg0)->f11E, &coordF4, &coordF6, (temp_r4_48)) != 0) {
                        ((struct PlayerD368 *)arg0)->f11E = (u16) temp_r4_48;
                        coordF4 = (u16) temp_r4_48;
                        coordF6 = (s16) temp_r4_48;
                        sp1A0 = 1;
                    } else if ((d368_sub_0800CC98() == 0) && (d368_sub_0800CD8C() == 0)) {
                        d368_sub_08065230(&sp78.f0, coordF0, coordF2 - 0x2A, ((struct PlayerD368 *)arg0)->f11E, ((s32) coordF4));
                    }
                }
                if (d368_sub_0800CC98() == 0) {
                    sp160 = (s32) (u8) d368_sub_0800BC44((u16) M2C_FIELD(sp180, u16 *, 0) >> 4, (u32) ((u32) M2C_FIELD(sp180, u16 *, 2) << 0x14) >> 0x14, (u32) ((u32) M2C_FIELD(sp180, u8 *, 4) << 0x1A) >> 0x1F);
                    if (d368_sub_0800CC38() != 0) {
                        sp160 = (s32) d368_gUnk_030034D8;
                    }
                    temp_r1_60 = ((struct PlayerD368 *)arg0)->f30;
                    if (!(0x40000 & temp_r1_60)) {
                        if (!(0x80000 & temp_r1_60)) {
                            if (!(temp_r1_60 & 0x2000)) {
                                d368_sub_08007870(coordF0, coordF2 - (sp118 >> 8), ((struct PlayerD368 *)arg0)->fB0, ((struct PlayerD368 *)arg0)->fB2, sp160, (&sp10.f1C), (sp10.f8), (sp10.f0));
                            } else if (d368_gUnk_03002344 & 1) {
                                d368_sub_08007870(coordF0, coordF2 - (sp118 >> 8), ((struct PlayerD368 *)arg0)->fB0, ((struct PlayerD368 *)arg0)->fB2, sp160, (&sp10.f1C), (sp10.f8), (sp10.f0));
                            }
                        }
                    } else if (d368_gUnk_03002344 & 1) {
                        d368_sub_08007870(coordF0, coordF2 - (sp118 >> 8), ((struct PlayerD368 *)arg0)->fB0, ((struct PlayerD368 *)arg0)->fB2, sp160, (&sp10.f1C), (sp10.f8), (sp10.f0));
                    }
                } else {
                    temp_r0_162 = M2C_FIELD(d368_gUnk_03006440, u32 *, 0);
                    switch (temp_r0_162) {
                    case 1:
                        d368_sub_08007870(0x5C, 0x48, ((struct PlayerD368 *)arg0)->fB0, M2C_FIELD((arg0 + 0xB0), u16 *, 2), 3, &sp10.f1C, sp10.f8, sp10.f0);
                        break;
                    case 2:
                    case 3:
                    case 4:
                    case 6:
                        d368_sub_08007870(0x24, 0x54, ((struct PlayerD368 *)arg0)->fB0, M2C_FIELD((arg0 + 0xB0), u16 *, 2), 3, &sp10.f1C, sp10.f8, sp10.f0);
                        break;
                    }
                }
                if (((struct PlayerD368 *)arg0)->f30 & 0x2000) {
                    if (0x200 & M2C_FIELD(d368_gUnk_03005CF4, u16 *, 4)) {

                    } else {
                        d368_sub_08000AF0(((struct PlayerD368 *)arg0)->f0 + 0x10, sp10.fC + 0x1C0, 1);
                    }
                } else {
                    if (0x200 & M2C_FIELD(d368_gUnk_03005CF4, u16 *, 4)) {

                    } else {
                        if ((u32) ((struct PlayerD368 *)arg0)->f64 > 9U) {
                            sp128 = 0;
                        } else {
                            sp128 = sp1A4;
                        }
                        if (d368_sub_0800CC98() == 0) {
                            switch (sp128) {
                            case 12:
                                d368_sub_08000AF0(((struct PlayerD368 *)arg0)->f0 + 0x10, sp10.fC + 0x1E0, 1);
                                break;
                            case 13:
                                d368_sub_08000AF0(((struct PlayerD368 *)arg0)->f0 + 0x10, sp10.fC + 0x1A0, 1);
                                break;
                            case 10:
                                d368_sub_08000AF0(((struct PlayerD368 *)arg0)->f0 + 0x10, sp10.fC + 0x180, 1);
                                break;
                            default:
                                if (((struct PlayerD368 *)arg0)->f64 == 9) {
                                    d368_sub_08000AF0(((struct PlayerD368 *)arg0)->f0 + 0x10, sp10.fC, 1);
                                } else {
                                    d368_sub_08000AF0(((struct PlayerD368 *)arg0)->f0 + 0x10, sp10.fC + (((struct PlayerD368 *)arg0)->f66 << 5), 1);
                                }
                                break;
                            }
                        } else if (!(M2C_FIELD(d368_gUnk_03006440, s32 *, 0x28) & 1)) {
                            switch (sp128) {
                            case 12:
                                d368_sub_08000AF0(((struct PlayerD368 *)arg0)->f0 + 0x10, sp10.fC + 0x1E0, 1);
                                break;
                            case 13:
                                d368_sub_08000AF0(((struct PlayerD368 *)arg0)->f0 + 0x10, sp10.fC + 0x1A0, 1);
                                break;
                            case 10:
                                d368_sub_08000AF0(((struct PlayerD368 *)arg0)->f0 + 0x10, sp10.fC + 0x180, 1);
                                break;
                            default:
                                if (((struct PlayerD368 *)arg0)->f64 == 9) {
                                    d368_sub_08000AF0(((struct PlayerD368 *)arg0)->f0 + 0x10, sp10.fC, 1);
                                } else {
                                    d368_sub_08000AF0(((struct PlayerD368 *)arg0)->f0 + 0x10, sp10.fC + (((struct PlayerD368 *)arg0)->f66 << 5), 1);
                                }
                                break;
                            }
                        }
                    }
                    sp164 = (u32) (0x7F000000 & ((sp164 + 2) << 0x18)) >> 0x18;
                    { struct PalBufD368 *pal = (void *)&d368_gUnk_03001F40; pal->c[((struct PlayerD368 *)arg0)->f0 + 0x10][15] = 0; }
                    temp_r0_163 = sp128 - 1;
                    if (temp_r0_163 > 0xDU) {
                        goto block_1781;
                    }
                    switch (temp_r0_163) {          /* switch 26 */
                    case 0:                         /* switch 26 */ {
                        u32 colorRedD368, colorWordD368, colorGreenD368;
                        temp_r3_60 = colorWaveTableD368[sp164];
                        colorRedD368 = ((u32) temp_r3_60 << 0xC) >> 0x10;
                        colorRedD368 &= 0x1F;
                        colorWordD368 = (colorStorage294D368.word & ~0x1F) | colorRedD368;
                        temp_r0_164 = ((u32) (temp_r3_60 * 0x1F00) >> 0x10) & 0x1F;
                        colorGreenD368 = temp_r0_164 << 5;
                        colorWordD368 = (colorWordD368 & 0xFFFFFC1F) | colorGreenD368;
                        temp_r0_164 <<= 0xA;
                        colorStorage294D368.word = (colorWordD368 & 0xFFFF83FF) | temp_r0_164;
                        { struct PalBufD368 *pal = (void *)&d368_gUnk_03001F40; pal->c[((struct PlayerD368 *)arg0)->f0 + 0x10][15] = *(u16 *)&colorStorage294D368.word; }
                        break;
                    }
                    case 1:                         /* switch 26 */ {
                        u32 *var_r3_13; s32 var_r1_25;
                        temp_r5_13 = colorWaveTableD368[sp164];
                        temp_r3_61 = ((s32) (temp_r5_13 * 5) >> 8);
                        ((union ColorUnion297D368 *)&colorStorage294D368)->bits.red = temp_r3_61;
                        ((union ColorUnion297D368 *)&colorStorage294D368)->bits.green = temp_r3_61;
                        var_r1_25 = ((s32) (temp_r5_13 * 0x1F) >> 8);
                        var_r3_13 = &colorStorage294D368.word;
                        ((union ColorUnion297D368 *)var_r3_13)->bits.blue = var_r1_25;
                        { struct PalBufD368 *pal = (void *)&d368_gUnk_03001F40; pal->c[((struct PlayerD368 *)arg0)->f0 + 0x10][15] = *(u16 *)&colorStorage294D368.word; }
                        break;
                    }
                    case 2:                         /* switch 26 */ {
                        u32 *var_r3_13; s32 var_r1_25;
                        temp_r3_62 = colorWaveTableD368[sp164];
                        temp_r1_62 = ((s32) (temp_r3_62 * 0x1F) >> 8);
                        colorStorage294D368.bits.red = temp_r1_62;
                        colorStorage294D368.bits.green = temp_r1_62;
                        var_r1_25 = ((s32) (temp_r3_62 * 5) >> 7);
                        var_r3_13 = &colorStorage294D368.word;
                        ((union ColorUnion297D368 *)var_r3_13)->bits.blue = var_r1_25;
                        { struct PalBufD368 *pal = (void *)&d368_gUnk_03001F40; pal->c[((struct PlayerD368 *)arg0)->f0 + 0x10][15] = *(u16 *)&colorStorage294D368.word; }
                        break;
                    }
                    case 3:                         /* switch 26 */ {
                        u32 *var_r3_13; s32 var_r1_25;
                        var_r0_36 = colorWaveTableD368[sp164];
                        var_r1_25 = ((s32) (var_r0_36 * 0x1F) >> 8);
                        colorStorage294D368.bits.red = var_r1_25;
                        colorStorage294D368.bits.green = var_r1_25;
                        var_r3_13 = &colorStorage294D368.word;
                        ((union ColorUnion297D368 *)var_r3_13)->bits.blue = var_r1_25;
                        { struct PalBufD368 *pal = (void *)&d368_gUnk_03001F40; pal->c[((struct PlayerD368 *)arg0)->f0 + 0x10][15] = *(u16 *)&colorStorage294D368.word; }
                        break;
                    }
                    case 4:                         /* switch 26 */ {
                        u32 *var_r3_13; s32 var_r1_25;
                        temp_r3_63 = colorWaveTableD368[sp164];
                        colorStorage294D368.bits.red = ((s32) (0x16 * temp_r3_63) >> 8);
                        colorStorage294D368.bits.green = ((s32) (temp_r3_63 * 0x1F) >> 8);
                        var_r1_25 = ((s32) (temp_r3_63 * 5) >> 7);
                        var_r3_13 = &colorStorage294D368.word;
                        ((union ColorUnion297D368 *)var_r3_13)->bits.blue = var_r1_25;
                        { struct PalBufD368 *pal = (void *)&d368_gUnk_03001F40; pal->c[((struct PlayerD368 *)arg0)->f0 + 0x10][15] = *(u16 *)&colorStorage294D368.word; }
                        break;
                    }
                    case 5:                         /* switch 26 */ {
                        u32 *var_r3_13; s32 var_r1_25;
                        var_r0_36 = colorWaveTableD368[sp164];
                        var_r1_25 = ((s32) (var_r0_36 * 0x1F) >> 8);
                        colorStorage294D368.bits.red = var_r1_25;
                        colorStorage294D368.bits.green = var_r1_25;
                        var_r3_13 = &colorStorage294D368.word;
                        ((union ColorUnion297D368 *)var_r3_13)->bits.blue = var_r1_25;
                        { struct PalBufD368 *pal = (void *)&d368_gUnk_03001F40; pal->c[((struct PlayerD368 *)arg0)->f0 + 0x10][15] = *(u16 *)&colorStorage294D368.word; }
                        break;
                    }
                    case 12:                        /* switch 26 */
                        if (d368_sub_0800CC98() != 0) {

                        } else {
                            d368_sub_08065370(&sp44, 0xDU, (u16 *) &coordF8, &coordFA, (1));
                            if ((d368_gUnk_03002344 & 1) != (1 & ((struct PlayerD368 *)arg0)->f0)) {

                            } else {
                                var_r1_26 = coordF0;
                                var_r2_16 = coordF2;
                                var_r0_37 = (u16) coordF8;
                                goto block_1768;
                            }
                        }
                        break;
                    case 6:                         /* switch 26 */
                        if (d368_sub_0800CC98() != 0) {

                        } else {
                            renderMaskD368 = 1;
                            d368_sub_08065370(&sp44, 0xFU, (u16 *) &coordF8, &coordFA, (renderMaskD368));
                            if ((d368_gUnk_03002344 & renderMaskD368) != (1 & ((struct PlayerD368 *)arg0)->f0)) {

                            } else {
                                var_r1_27 = coordF0;
                                goto block_1771;
                            }
                        }
                        break;
                    case 8:                         /* switch 26 */
                        if (d368_sub_0800CC98() != 0) {
                            goto renderDoneD368;
                        }
                        goto shared27_8;
                    case 11:                        /* switch 26 */
                        temp_r0_165 = d368_sub_0800CC98();
                        if (temp_r0_165 != 0) {

                        } else {
                            if (d368_sub_08065370(&sp44, 0xCU, (u16 *) &coordF8, &coordFA, (temp_r0_165)) != 0) {

                            } else if ((d368_gUnk_03002344 & 1) != (1 & ((struct PlayerD368 *)arg0)->f0)) {

                            } else {
                                goto block_1776;
                            }
                        }
                        break;
                    case 10:                        /* switch 26 */
                        goto shared27_10;
                    case 13:                        /* switch 26 */
                        goto shared27_13;
                    case 7:                         /* switch 26 */
                    case 9:                         /* switch 26 */
                        goto block_1781;
                    }
                }
            } else {
                sp160 = (s32) (u8) d368_sub_0800BC44((u16) M2C_FIELD(sp180, u16 *, 0) >> 4, (u32) ((u32) M2C_FIELD(sp180, u16 *, 2) << 0x14) >> 0x14, (u32) ((u32) M2C_FIELD(sp180, u8 *, 4) << 0x1A) >> 0x1F);
                d368_sub_0800BC08((u16) M2C_FIELD(sp180, u16 *, 0) >> 4, (u32) ((u32) M2C_FIELD(sp180, u16 *, 2) << 0x14) >> 0x14, &coordF0, &coordF2, (0x30), ((u32) ((u32) M2C_FIELD(sp180, u8 *, 4) << 0x1A) >> 0x1A));
                if (((u32) ((u32) M2C_FIELD(sp180, u8 *, 4) << 0x1A) >> 0x1A) & 0x20) {
                    if (d368_sub_0800CCCC() != 0) {
                        if ((((u32) ((u32) M2C_FIELD(sp180, u8 *, 4) << 0x1A) >> 0x1A) & ~0x20) != gUnk_03003170.f90) {
                            sp128 = 0;
                            goto block_1714;
                        }
                        sp128 = 1;
                        goto block_1716;
                    }
                    sp128 = 0;
                } else {
                    temp_r0_160 = d368_sub_0800CCCC();
                    sp128 = 0;
                    if ((temp_r0_160 == 0) && ((((u32) ((u32) M2C_FIELD(sp180, u8 *, 4) << 0x1A) >> 0x1A) & ~0x20) == gUnk_03003170.f90)) {
                        sp128 = 1;
                    }
block_1714:
                    if (sp128 == 0) {

                    } else {
block_1716:
                        if (((struct PlayerD368 *)arg0)->f11E != 0) {
                            if (sp1A0 != 0) {
                                sp1A0 = 0;
                            }
                            if (d368_sub_08065370(&sp78, ((struct PlayerD368 *)arg0)->f11E, &coordF4, &coordF6, (0)) != 0) {
                                ((struct PlayerD368 *)arg0)->f11E = 0U;
                                coordF4 = 0;
                                coordF6 = 0;
                                sp1A0 = 1;
                            } else if ((d368_sub_0800CC98() == 0) && (d368_sub_0800CD8C() == 0)) {
                                d368_sub_08065230(&sp78.f0, coordF0, coordF2 - 0x2A, ((struct PlayerD368 *)arg0)->f11E, ((s32) coordF4));
                            }
                        }
                        if (d368_sub_0800CC38() != 0) {
                            sp160 = (s32) d368_gUnk_030034D8;
                        }
                        if (d368_sub_0800CC98() != 0) {

                        } else if (d368_sub_0800CD8C() != 0) {

                        } else {
                            temp_r1_57 = ((struct PlayerD368 *)arg0)->f30;
                            if (0x2000 & temp_r1_57) {
                                if (!(0x200 & M2C_FIELD(d368_gUnk_03005CF4, u16 *, 4))) {
                                    d368_sub_08000AF0(((struct PlayerD368 *)arg0)->f0 + 0x10, sp10.fC + 0x1C0, 1);
                                }
                                if (!(d368_gUnk_03002344 & 1)) {

                                } else {
                                    d368_sub_08007870(coordF0, coordF2 - (sp118 >> 8), ((struct PlayerD368 *)arg0)->fB0, ((struct PlayerD368 *)arg0)->fB2, (sp160), (&sp10.f1C), (sp10.f8), (sp10.f0));
                                }
                            } else {
                                if (!(temp_r1_57 & 0x80000)) {
                                    d368_sub_08007870(coordF0, coordF2 - (sp118 >> 8), ((struct PlayerD368 *)arg0)->fB0, ((struct PlayerD368 *)arg0)->fB2, (sp160), (&sp10.f1C), (sp10.f8), (sp10.f0));
                                    if (!(0x200 & M2C_FIELD(d368_gUnk_03005CF4, u16 *, 4))) {
                                        if ((u32) ((struct PlayerD368 *)arg0)->f64 > 9U) {
                                            sp128 = 0;
                                        } else {
                                            sp128 = sp1A4;
                                        }
                                        switch (sp128) {
                                        case 12:
                                            d368_sub_08000AF0(((struct PlayerD368 *)arg0)->f0 + 0x10, sp10.fC + 0x1E0, 1);
                                            break;
                                        case 13:
                                            d368_sub_08000AF0(((struct PlayerD368 *)arg0)->f0 + 0x10, sp10.fC + 0x1A0, 1);
                                            break;
                                        case 10:
                                            d368_sub_08000AF0(((struct PlayerD368 *)arg0)->f0 + 0x10, sp10.fC + 0x180, 1);
                                            break;
                                        default:
                                            if (((struct PlayerD368 *)arg0)->f64 == 9) {
                                                d368_sub_08000AF0(((struct PlayerD368 *)arg0)->f0 + 0x10, sp10.fC, 1);
                                            } else {
                                                d368_sub_08000AF0(((struct PlayerD368 *)arg0)->f0 + 0x10, sp10.fC + (((struct PlayerD368 *)arg0)->f66 << 5), 1);
                                            }
                                            break;
                                        }
                                    }
                                }
                                sp164 = (u32) (0x7F000000 & ((sp164 + 2) << 0x18)) >> 0x18;
                                { struct PalBufD368 *pal = (void *)&d368_gUnk_03001F40; pal->c[((struct PlayerD368 *)arg0)->f0 + 0x10][15] = 0; }
                                temp_r0_161 = sp128 - 1;
                                if (temp_r0_161 > 0xDU) {
                                    goto block_1781;
                                }
                                switch (temp_r0_161) {
                                case 0:             /* switch 27 */ {
                                    u32 *var_r3_13; s32 var_r1_25;
                                    temp_r3_56 = colorWaveTableD368[sp164];
                                    colorStorage294D368.bits.red = temp_r3_56 >> 4;
                                    var_r1_25 = ((s32) (temp_r3_56 * 0x1F) >> 8);
                                    colorStorage294D368.bits.green = var_r1_25;
                                    var_r3_13 = &colorStorage294D368.word;
                                    ((union ColorUnion297D368 *)var_r3_13)->bits.blue = var_r1_25;
                                    { struct PalBufD368 *pal = (void *)&d368_gUnk_03001F40; pal->c[((struct PlayerD368 *)arg0)->f0 + 0x10][15] = *(u16 *)&colorStorage294D368.word; }
                                    break;
                                }
                                case 1:             /* switch 27 */ {
                                    u32 *var_r3_13; s32 var_r1_25;
                                    temp_r3_57 = colorWaveTableD368[sp164];
                                    temp_r1_58 = ((s32) (temp_r3_57 * 5) >> 8);
                                    colorStorage294D368.bits.red = temp_r1_58;
                                    colorStorage294D368.bits.green = temp_r1_58;
                                    var_r1_25 = ((s32) (temp_r3_57 * 0x1F) >> 8);
                                    var_r3_13 = &colorStorage294D368.word;
                                    ((union ColorUnion297D368 *)var_r3_13)->bits.blue = var_r1_25;
                                    { struct PalBufD368 *pal = (void *)&d368_gUnk_03001F40; pal->c[((struct PlayerD368 *)arg0)->f0 + 0x10][15] = *(u16 *)&colorStorage294D368.word; }
                                    break;
                                }
                                case 2:             /* switch 27 */ {
                                    u32 *var_r3_13; s32 var_r1_25;
                                    temp_r3_58 = colorWaveTableD368[sp164];
                                    temp_r1_59 = ((s32) (temp_r3_58 * 0x1F) >> 8);
                                    colorStorage294D368.bits.red = temp_r1_59;
                                    colorStorage294D368.bits.green = temp_r1_59;
                                    var_r1_25 = ((s32) (temp_r3_58 * 5) >> 7);
                                    var_r3_13 = &colorStorage294D368.word;
                                    ((union ColorUnion297D368 *)var_r3_13)->bits.blue = var_r1_25;
                                    { struct PalBufD368 *pal = (void *)&d368_gUnk_03001F40; pal->c[((struct PlayerD368 *)arg0)->f0 + 0x10][15] = *(u16 *)&colorStorage294D368.word; }
                                    break;
                                }
                                case 3:             /* switch 27 */ {
                                    u32 *var_r3_13; s32 var_r1_25;
                                    var_r0_36 = colorWaveTableD368[sp164];
                                    var_r1_25 = ((s32) (var_r0_36 * 0x1F) >> 8);
                                    colorStorage294D368.bits.red = var_r1_25;
                                    colorStorage294D368.bits.green = var_r1_25;
                                    var_r3_13 = &colorStorage294D368.word;
                                    ((union ColorUnion297D368 *)var_r3_13)->bits.blue = var_r1_25;
                                    { struct PalBufD368 *pal = (void *)&d368_gUnk_03001F40; pal->c[((struct PlayerD368 *)arg0)->f0 + 0x10][15] = *(u16 *)&colorStorage294D368.word; }
                                    break;
                                }
                                case 4:             /* switch 27 */ {
                                    u32 *var_r3_13; s32 var_r1_25;
                                    temp_r3_59 = colorWaveTableD368[sp164];
                                    colorStorage294D368.bits.red = ((s32) (0x16 * temp_r3_59) >> 8);
                                    colorStorage294D368.bits.green = ((s32) (temp_r3_59 * 0x1F) >> 8);
                                    var_r1_25 = ((s32) (temp_r3_59 * 5) >> 7);
                                    var_r3_13 = &colorStorage294D368.word;
                                    ((union ColorUnion297D368 *)var_r3_13)->bits.blue = var_r1_25;
                                    { struct PalBufD368 *pal = (void *)&d368_gUnk_03001F40; pal->c[((struct PlayerD368 *)arg0)->f0 + 0x10][15] = *(u16 *)&colorStorage294D368.word; }
                                    break;
                                }
                                case 5:             /* switch 27 */ {
                                    u32 *var_r3_13; s32 var_r1_25;
                                    var_r0_36 = colorWaveTableD368[sp164];
                                    var_r1_25 = ((s32) (var_r0_36 * 0x1F) >> 8);
                                    colorStorage294D368.bits.red = var_r1_25;
                                    colorStorage294D368.bits.green = var_r1_25;
                                    var_r3_13 = &colorStorage294D368.word;
                                    ((union ColorUnion297D368 *)var_r3_13)->bits.blue = var_r1_25;
                                    { struct PalBufD368 *pal = (void *)&d368_gUnk_03001F40; pal->c[((struct PlayerD368 *)arg0)->f0 + 0x10][15] = *(u16 *)&colorStorage294D368.word; }
                                    break;
                                }
                                case 12:            /* switch 27 */
                                    d368_sub_08065370(&sp44, 0xDU, (u16 *) &coordF8, &coordFA, (1));
                                    if ((d368_gUnk_03002344 & 1) != (1 & ((struct PlayerD368 *)arg0)->f0)) {

                                    } else {
                                        var_r1_26 = coordF0;
                                        var_r2_16 = coordF2;
                                        var_r0_37 = (u16) coordF8;
block_1768:
                                d368_sub_08065230(&sp44.f0, var_r1_26, var_r2_16, 0xDU, ((s32) var_r0_37));
                                    }
                                    break;
                                case 6:             /* switch 27 */
                                    renderMaskD368 = 1;
                                    d368_sub_08065370(&sp44, 0xFU, (u16 *) &coordF8, &coordFA, (renderMaskD368));
                                    if (d368_gUnk_03002344 & renderMaskD368) {
                                        var_r1_27 = coordF0;
block_1771:
                                d368_sub_080659BC(&sp44, var_r1_27, coordF2, 0xF, ((s32) (u16) coordF8), (renderMaskD368));
                                    }
                                    break;
                                case 8:             /* switch 27 */
                        shared27_8:
                            d368_sub_08065370(&sp44, 0xAU, (u16 *) &coordF8, &coordFA, (1));
                            if ((d368_gUnk_03002344 & 1) == (1 & ((struct PlayerD368 *)arg0)->f0)) {
                                d368_sub_08065230(&sp44.f0, coordF0, coordF2, 0xAU, ((s32) (u16) coordF8));
                            }
                                    break;
                                case 11:            /* switch 27 */
                                    if ((d368_sub_08065370(&sp44, 0xCU, (u16 *) &coordF8, &coordFA, (0)) == 0) && (d368_gUnk_03002344 & 1)) {
block_1776:
                                d368_sub_08065230(&sp44.f0, coordF0, coordF2, 0xCU, ((s32) (u16) coordF8));
                                    }
                                    break;
                                case 10:             /* switch 27 */
                    shared27_10:
                        if (d368_sub_0800CC98() == 0) {
                            d368_sub_08022180(((struct PlayerD368 *)arg0)->f0);
                        }
                        break;
                                case 13:             /* switch 27 */
                    shared27_13:
                        if (d368_sub_0800CC98() == 0) {
                            d368_sub_08021DC4(((struct PlayerD368 *)arg0)->f0);
                        }
                        break;
                                case 7:             /* switch 27 */
                                case 9:             /* switch 27 */
block_1781:
                                    coordF8 = 0;
                                    coordFA = 0;
                                    break;
                                }
                            }
                        }
                    }
                }
            }
renderDoneD368:
            temp_r0_166 = ((struct PlayerD368 *)arg0)->fC;
            if (temp_r0_166 != 6) {
                if ((s32) temp_r0_166 <= 6) {
                    if (temp_r0_166 != 1) {

                    } else {
                        goto block_1788;
                    }
                } else if (temp_r0_166 != 8) {

                } else {
                    goto block_1788;
                }
            } else {
block_1788:
                if (((struct PlayerD368 *)arg0)->f10 != 9) {

                } else if ((u32) (((u32) ((u32) M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C) - 3) > 1U) {

                } else if ((s32) ((u32) ((u32) M2C_FIELD(sp180, u32 *, 4) << 0xD) >> 0x18) <= 0) {

                } else {
                    temp_r0_167 = ((u8) M2C_FIELD(sp180, u8 *, 6) >> 3) - 1;
                    switch (temp_r0_167) {          /* switch 28 */
                    case 0:                         /* switch 28 */
                    case 15:                        /* switch 28 */
                    case 18:                        /* switch 28 */
                    case 19:                        /* switch 28 */
                        sp138 = 0x16;
                        break;
                    case 12:                        /* switch 28 */
                    case 13:                        /* switch 28 */
                        sp138 = 0x1B;
                        break;
                    case 1:                         /* switch 28 */
                        var_r5 = 0x17;
                        sp138 = var_r5;
                        break;
                    case 6:                         /* switch 28 */
                        sp138 = 0x19;
                        break;
                    case 5:                         /* switch 28 */
                        sp138 = 0x1A;
                        break;
                    case 7:                         /* switch 28 */
                        sp138 = 0x1A;
                        break;
                    case 8:                         /* switch 28 */
                        sp138 = 0x1A;
                        break;
                    case 9:                         /* switch 28 */
                        sp138 = 0x1A;
                        break;
                    case 10:                        /* switch 28 */
                        sp138 = 0x1A;
                        break;
                    case 11:                        /* switch 28 */
                        var_r5 = 0x1A;
                        sp138 = var_r5;
                        break;
                    case 16:                        /* switch 28 */
                        sp138 = 0x1B;
                        break;
                    case 20:                        /* switch 28 */
                        sp138 = 0x19;
                        break;
                    case 2:                         /* switch 28 */
                        sp138 = 0x18;
                        break;
                    case 14:                        /* switch 28 */
                        sp138 = 0x1B;
                        break;
                    case 17:                        /* switch 28 */
                        sp138 = 0x1B;
                        break;
                    case 3:                         /* switch 28 */
                        sp138 = 0x19;
                        break;
                    case 4:                         /* switch 28 */
                        var_r5 = 0x16;
                        sp138 = var_r5;
                        break;
                    }
                    d368_sub_08065370(&sp44, sp138, &coordFC, &coordFE, (1));
                    if (d368_sub_0800CC98() != 0) {

                    } else if (d368_sub_0800CCCC() != 0) {

                    } else if (d368_sub_0800CD34() != 0) {

                    } else {
                        temp_r0_168 = (u8) M2C_FIELD(sp180, u8 *, 3) >> 4;
                        switch (temp_r0_168) {      /* switch 29 */
                        case 0:                     /* switch 29 */
                            coordF2 = (u16) coordF2 + 2;
                            break;
                        case 1:                     /* switch 29 */
                            coordF2 = (u16) coordF2 + 2;
                            coordF0 = (s16) ((u16) coordF0 - 2);
                            break;
                        case 2:                     /* switch 29 */
                            coordF0 = (s16) ((u16) coordF0 - 0xA);
                            coordF2 = (u16) coordF2 + 2;
                            break;
                        case 3:                     /* switch 29 */
                            coordF2 = (u16) coordF2 - 2;
                            coordF0 = (s16) ((u16) coordF0 - 2);
                            break;
                        case 4:                     /* switch 29 */
                            var_r0_40 = (u16) coordF2 - 0xA;
                            goto block_1830;
                        case 5:                     /* switch 29 */
                            coordF2 = (u16) coordF2 - 2;
                            coordF0 = (s16) ((u16) coordF0 + 2);
                            break;
                        case 6:                     /* switch 29 */
                            coordF0 = (s16) ((u16) coordF0 + 0xA);
                            coordF2 = (u16) coordF2 + 2;
                            break;
                        case 7:                     /* switch 29 */
                            coordF0 = (s16) ((u16) coordF0 + 2);
                            var_r0_40 = (u16) coordF2 + 2;
block_1830:
                            coordF2 = var_r0_40;
                            break;
                        }
                        if ((d368_gUnk_03002344 & 1) == (1 & ((struct PlayerD368 *)arg0)->f0)) {
                            d368_sub_08007870(coordF0, coordF2, sp138, coordFC, (sp160), (&sp44.f1C), (sp44.f8), (sp44.f0));
                        }
                        if ((coordFC == 0) && (coordFE == 1)) {
                            d368_sub_08000AF0(0x17, sp44.fC, 2);
                        }
                    }
                }
            }
            temp_r0_169 = (u32) ((u32) M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C;
            if ((s32) temp_r0_169 > 1) {

            } else if ((s32) temp_r0_169 < 0) {

            } else if ((s32) ((u32) M2C_FIELD(sp180, u8 *, 5) << 0x1D) >= 0) {

            } else if (d368_sub_0800CFF0() != 0) {

            } else {
                sp138 = 0x1A;
                d368_sub_08065370(&sp44, 0x1AU, &coordFC, &coordFE, (1));
                if (d368_sub_0800CC98() != 0) {

                } else if (d368_sub_0800CCCC() != 0) {

                } else if (d368_sub_0800CD34() != 0) {

                } else {
                    temp_r0_170 = (u8) M2C_FIELD(sp180, u8 *, 3) >> 4;
                    switch (temp_r0_170) {          /* switch 30 */
                    case 0:                         /* switch 30 */
                        coordF2 = (u16) coordF2 + 2;
                        break;
                    case 1:                         /* switch 30 */
                        coordF2 = (u16) coordF2 + 2;
                        coordF0 = (s16) ((u16) coordF0 - 2);
                        break;
                    case 2:                         /* switch 30 */
                        coordF0 = (s16) ((u16) coordF0 - 0xA);
                        coordF2 = (u16) coordF2 - 6;
                        break;
                    case 3:                         /* switch 30 */
                        coordF2 = (u16) coordF2 - 2;
                        coordF0 = (s16) ((u16) coordF0 - 2);
                        break;
                    case 4:                         /* switch 30 */
                        var_r0_41 = (u16) coordF2 - 0xA;
                            goto block_1860;
                    case 5:                         /* switch 30 */
                        coordF2 = (u16) coordF2 - 2;
                        coordF0 = (s16) ((u16) coordF0 + 2);
                        break;
                    case 6:                         /* switch 30 */
                        coordF0 = (s16) ((u16) coordF0 + 0xA);
                        coordF2 = (u16) coordF2 - 6;
                        break;
                    case 7:                         /* switch 30 */
                        coordF0 = (s16) ((u16) coordF0 + 2);
                        var_r0_41 = (u16) coordF2 + 2;
block_1860:
                            coordF2 = var_r0_41;
                            break;
                    }
                    if ((d368_gUnk_03002344 & 1) == (1 & ((struct PlayerD368 *)arg0)->f0)) {
                        d368_sub_08007870(coordF0, coordF2, sp138, coordFC, (sp160), (&sp44.f1C), (sp44.f8), (sp44.f0));
                    }
                    if ((coordFC == 0) && (coordFE == 1)) {
                        d368_sub_08000AF0(0x17, sp44.fC, 2);
                    }
                }
            }
        }
        d368_sub_080003F0();
    }
    d368_sub_080688F8(((struct PlayerD368 *)arg0)->f0);
    if (((struct PlayerD368 *)arg0)->f20 != 0xD) {
        d368_sub_08001538(((struct PlayerD368 *)arg0)->f34);
        ((struct PlayerD368 *)arg0)->f34 = NULL;
        d368_sub_08001538(((struct PlayerD368 *)arg0)->fAC.ptr);
    }
    d368_sub_08001538(((struct PlayerD368 *)arg0)->f13C);
    ((struct PlayerD368 *)arg0)->f13C = NULL;
    d368_sub_08000420(0x18A92);
    d368_sub_08000420(0x18A93);
    d368_sub_0800035C();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_0800D368);
#endif
/* Create the player entity for a link slot `id` (0..3). struct Player (0x14C bytes): +0 id, +0x20 state (0 local, 0xD remote),
 * +0x34 -> 8 x 0x28 byte slots, +0xAC -> 0x100 byte buffer, +0x13C/+0x140 -> local player template data,
 * +0x144 -> this slot's link SEND block (sub_08002118), +0x148 -> RECV block (sub_08002238).
 * The entity runs as task sub_0800D368 (per-player update), stack 0x680 (remote) or gUnk_03003590 (local). */
struct T6Template135C4 { u8 pad[10]; u16 fA, fC; };
extern struct T6Template135C4 *t6_template135 asm("gUnk_030034E0");
struct T6Slot135 { u16 f0; u8 pad[6]; u8 f8[0x20]; };
struct T6Player135 { u16 f0; u8 f2; u8 pad3[9]; u16 fC, fE; u8 pad10[0x10]; u16 f20; u8 pad22[0x12]; struct T6Slot135 *f34; u8 pad38[0x74]; void *fAC; u8 padB0[0x86]; u16 f136; u8 pad138[4]; void *f13C; void *f140; void *f144, *f148; };
extern struct T6Player135 t6_players135[] asm("gUnk_03003CE0");
struct T6Task135 { u32 f0, f4, f8; void (*fC)(void); u8 *f10; u32 f14, f18, f1C; void *f20; u32 f24; };
extern struct T6Task135 t6_tasks135[] asm("gUnk_030034F0");
extern u8 t6_stack135[] asm("gUnk_03003590");
extern void t6_update135(void) asm("sub_0800D368");
extern void t6_start135(void *, void *) asm("sub_08000274");
extern void *t6_send135(u32) asm("sub_08002118");
extern void t6_init135(struct T6Player135) asm("sub_0801E024");
extern void t6_cpuset(const void *, void *, u32) asm("CpuSet");
void sub_080135C4(u16 id) {
    vu16 zero;
    u8 *stack;
    u32 i;
    struct T6Player135 *pl;
    t6_players135[id].f144 = t6_send135(id);
    t6_players135[id].f148 = sub_08002238(id);
    pl = &t6_players135[id];
    pl->f0 = id;
    if (id != sub_080020F4()) {
        pl->f20 = 0xD;
        t6_tasks135[id].f8 = 0x32;
        stack = sub_08001494(0x680);
        t6_tasks135[id].f20 = stack;
        t6_players135[id].f13C = 0;
        pl->f2 = 0xFE;
    } else {
        t6_players135[id].f140 = t6_template135;
        pl->f20 = 0;
        t6_tasks135[id].f8 = 0x31;
        stack = t6_stack135;
        t6_tasks135[id].f20 = 0;
        t6_players135[id].f13C = sub_08001494(10);
        t6_cpuset(t6_template135, &t6_players135[id].f2, 10);
        pl->fC = t6_template135->fA;
        pl->fE = t6_template135->fC;
    }
    t6_players135[id].fAC = sub_08001494(0x100);
    t6_players135[id].f34 = sub_08001494(0x140);
    for (i = 0; i <= 7; i++) {
        t6_players135[id].f34[i].f0 = 0xFFFF;
        zero = 0;
        t6_cpuset((void *)&zero, t6_players135[id].f34[i].f8, 0x1000010);
    }
    t6_players135[id].f136 = 0;
    if (id == sub_080020F4())
        t6_init135(t6_players135[id]);
    t6_tasks135[id].fC = t6_update135;
    t6_tasks135[id].f10 = stack + 0x67C;
    t6_tasks135[id].f24 = 0;
    t6_start135(&t6_tasks135[id], &t6_players135[id]);
}
struct Team6State137A0 { u8 pad[0x100]; u16 a, b; u8 c[12]; u16 d, e; u8 f[12]; u16 g, h; u8 j[12]; };
extern struct Team6State137A0 *team6_state137A0 asm("gUnk_030034E0");
void sub_080137A0(u32 arg0) {
    u32 i;
    switch (arg0) {
    case 0:
        team6_state137A0->a = 0;
        team6_state137A0->b = 0;
        i = 0;
        do { team6_state137A0->c[i] = 0; i++; } while (i <= 11);
        break;
    case 1:
        team6_state137A0->d = 0;
        team6_state137A0->e = 0;
        i = 0;
        do { team6_state137A0->f[i] = 0; i++; } while (i <= 11);
        break;
    case 2:
        team6_state137A0->g = 0;
        team6_state137A0->h = 0;
        i = 0;
        do { team6_state137A0->j[i] = 0; i++; } while (i <= 11);
        break;
    }
}
struct Rec13850 { u16 a, b; u8 c[12]; };
struct State13850 {
    u8 b0[10];
    u16 wA;
    u16 wC;
    u16 padE;
    u16 w10, w12, w14, w16, w18, w1A;
    u8 pad1C[8];
    u8 o24[0xC];
    u16 w30;
    u16 pad32;
    struct { u16 a, b; } q34[8];
    u16 w54;
    u16 w56[9];
    u16 w68;
    u16 w6A;
    u32 l6C;
    struct Rec13850 r70[9];
    struct Rec13850 r5[5];
    struct Rec13850 r[25];
    struct Rec13850 s[75];
    u8 pad790[0xC10 - 0x790];
    u8 cC10[0x91];
};
struct Data13850 {
    u32 w0,w4,w8,wC,w10,w14,w18;
    u16 h1C,h1E;
    u8 pad20[0x18];
    u32 a38[10],a60[10],a88[10],aB0[10];
    u8 padD8[2];u16 hDA;
    u8 padDC[0x1C6-0xDC];
    u8 b1C6[10],b1D0[10];
};
struct P13850 {
    u16 h0; u8 p2[0x10]; u16 h12, h14; u8 p16[6]; u16 h1C; u8 p1E[2]; u16 h20, h22, h24; u8 p26[4]; u16 h2A;
    u8 p2C[4]; u32 l30; u8 p34[4]; u16 h38, h3A, h3C, h3E, h40; u8 p42[10]; u8 o4C[0xC];
    u16 h58, h5A; u8 p5C[4]; u16 h60, h62, h64; u8 b66; u8 p67[0x10]; u8 b77, b78; u8 p79[3];
    u8 o7C[0x10]; u32 l8C, l90; u8 p94[0xC2-0x94]; u16 hC2, hC4, hC6, hC8, hCA; u8 pCC[0xDC-0xCC];
    u32 lDC; u8 pE0[4]; u32 e4[5]; u32 f8[4]; u8 p108[0x116-0x108]; u16 h116; u8 p118[0x138-0x118];
    u32 l138; u8 p13C[4]; u32 l140; u32 l144; u8 p148[4];
};
extern struct P13850 pl13850[] asm("gUnk_03003CE0");
extern struct State13850 *st13850 asm("gUnk_030034E0");
extern struct Data13850 *dt13850 asm("gUnk_03004210");
void sub_08013850(void)
{
    struct State13850 *s;
    struct P13850 *p;
    u32 i, j, k;
    sub_08001538((s32)st13850);
    sub_08001538((s32)dt13850);
    st13850 = sub_08001494(0xCA4);
    dt13850 = sub_08001494(0x51C);
    s = st13850;
    for (i = 0; i < 4; i++) {
        p = &pl13850[i];
        p->h0 = 0;
        p->h12 = 0;
        p->h14 = 0;
        p->h1C = 0;
        p->h22 = 0;
        p->l30 = 0;
        p->h20 = 0;
        p->h24 = 0;
        p->h2A = 0;
        p->hC8 = 0;
        p->hCA = 0;
        p->h38 = 0;
        p->h3A = 0;
        p->h3C = 0;
        p->h3E = 0;
        p->h40 = 0;
        sub_0801E0BC(p->o4C, 0);
        p->h58 = 0;
        p->h5A = 0;
        p->h62 = 0;
        p->h60 = 0;
        p->b77 = 0;
        p->b78 = 0;
        p->h64 = 0;
        p->b66 = 0;
        sub_0801E0BC(p->o7C, 0);
        p->hC4 = 0;
        p->hC2 = 0;
        p->hC6 = 0;
        p->l8C = 0;
        p->l90 = 0;
        p->lDC = 0;
        p->h116 = 0;
        *(u16 *)((u8 *)p + 0x88) = 0;
        p->l140 = 0;
        p->l144 = 0;
        p->l138 = 0;
        for (j = 0; j < 5; j++)
            p->e4[j] = 0xFFFF;
        for (j = 0; j < 4; j++)
            p->f8[j] = 0xFFFF;
    }
    for (j = 0; j < 10; j++)
        s->b0[j] = 0;
    s->wA = 0;
    s->wC = 0;
    s->w10 = 0;
    s->w12 = 0;
    s->w14 = 0;
    s->w16 = 0;
    s->w18 = 0;
    s->w1A = 0;
    sub_0801E0BC(s->o24, 0);
    CpuFill16(0, dt13850, 0x51C);
    for (j = 0; j < 25; j++) {
        st13850->r[j].a = 0;
        st13850->r[j].b = 0;
        for (k = 0; k < 12; k++)
            st13850->r[j].c[k] = 0;
    }
    for (j = 0; j < 9; j++) {
        st13850->r70[j].a = 0;
        st13850->r70[j].b = 0;
        for (k = 0; k < 12; k++)
            st13850->r70[j].c[k] = 0;
    }
    st13850->r5[0].a = 0;
    st13850->r5[0].b = 0;
    st13850->r5[1].a = 0;
    st13850->r5[1].b = 0;
    st13850->r5[2].a = 0;
    st13850->r5[2].b = 0;
    st13850->r5[4].a = 0;
    st13850->r5[4].b = 0;
    st13850->r5[3].a = 0;
    st13850->r5[3].b = 0;
    for (j = 0; j < 75; j++) {
        st13850->s[j].a = 0;
        st13850->s[j].b = 0;
        for (k = 0; k < 12; k++)
            st13850->s[j].c[k] = 0;
    }
    for (j = 0; j < 0x91; j++)
        st13850->cC10[j] = 0;
    for (j = 0; j < 9; j++)
        st13850->w56[j] = 0;
    for (j = 0; j < 4; j++)
        sub_080137A0(j);
    s->w68 = 0;
    s->w54 = 0;
    s->w6A = 1;
    s->l6C = 20000;
    for (i = 0; i < 10; i++) {
        dt13850->b1C6[i] = 0;
        dt13850->a38[i] = 0x57E3F;
        dt13850->a60[i] = 99;
        dt13850->b1D0[i] = 0;
        dt13850->a88[i] = 0x57E3F;
        dt13850->aB0[i] = 99;
    }
    dt13850->w14 = 1;
    dt13850->w18 = 1;
    dt13850->h1C = 0;
    dt13850->h1E = 0;
    dt13850->w4 = 0;
    dt13850->wC = 0;
    dt13850->hDA = 0;
    dt13850->w8 = 0x401;
    dt13850->w10 = 0x401;
    dt13850->w0 = 1;
    s->w30 = 0;
    for (j = 0; j < 8; j++) {
        s->q34[j].b = 0;
        s->q34[j].a = 0;
    }
}
s32 sub_08013BC0(u8 *arg0) {
    u16 *p;
    u16 *q;
    u16 *s;
    s32 r;
    s32 m;
    r = sub_0800D1B0();
    if (r == 0) {
        p = (u16 *)(arg0 + 0xC4);
        q = (u16 *)(arg0 + 0x88);
        *p = *p - *q;
        s = (u16 *)(arg0 + 0x8A);
        *p = *p - *s;
        *q = r;
        *s = r;
        m = *(s16 *)p & 0x8000;
        if (m != 0 || *(s16 *)p == 0) {
            if ((*(u32 *)(arg0 + 0x30) & 0x100000) == 0) {
                *p = 0;
                return 1;
            }
            *p = 1;
            return 0;
        }
        *(u32 *)(arg0 + 0xE0) = m;
        return 0;
    } else {
        *(u16 *)(arg0 + 0x88) = 0;
        *(u16 *)(arg0 + 0x8A) = 0;
    }
    return 0;
}
void sub_08013C3C(u8 *arg0) {
    u8 *p = gUnk_030056F4;
    u16 i = 0;
    u32 one = 1;
    u32 lim = 0x800;
    u8 *base = arg0 + 0x126;
    do {
        if (((gUnk_03002344 & one) == (i & one)) && (gUnk_030056FC & (one << i))) {
            u16 a = ArcTan2((*(s32 *)(p + 0x14) - *(s32 *)(arg0 + 0x8C)) << 8 >> 16,
                            (*(s32 *)(p + 0x18) - *(s32 *)(arg0 + 0x90)) << 8 >> 16);
            if ((a & 0xFFF) > lim) {
                *(u16 *)(base + (i << 1)) = (a >> 12) + 1;
            } else {
                *(u16 *)(base + (i << 1)) = a >> 12;
            }
            *(u16 *)(base + (i << 1)) &= 0xF;
        }
        i++;
        p += 0x2E0;
    } while (i <= 4);
}
struct Box13CEC { u32 w:16; u32 h:16; };
extern s32 test13CEC(s32 *, s32 *, struct Box13CEC *, struct Box13CEC *) asm("sub_08021FE0");
extern s32 blk13CEC(s32 *) asm("sub_08057068");
void sub_08013CEC(u8 *arg0)
{
    struct Box13CEC size;
    struct Box13CEC box;
    s32 *pos;
    u8 *e;
    u32 i;
    u32 hit;
    s32 busy;
    *(u32 *)&size = 0x00100010;
    if (*(u32 *)(arg0 + 0x30) & 0x20)
        return;
    busy = sub_0800CCCC();
    pos = (s32 *)(arg0 + 0x8C);
    if (busy == 0 && !(*(u32 *)(arg0 + 0x30) & 0x40000)) {
        e = gUnk_030056F4;
        i = 0;
        do {
            if (!(*(u32 *)&gUnk_030056FC & (1 << i)))
                goto next;
            if ((u16)(*(u16 *)(e + 0xC) - 0xB) <= 1)
                goto next;
            box.w = e[0x22E];
            if (box.w == 0)
                goto next;
            box.h = e[0x22F];
            if (test13CEC(pos, (s32 *)(e + 0x14), &size, &box) == 0)
                goto next;
            hit = 0;
            switch (*(s16 *)(arg0 + 0x1C)) {
            case 0:
                if (*(s32 *)(arg0 + 0x90) < *(s32 *)(e + 0x18)) hit = 1;
                break;
            case 1:
                if (*(s32 *)(arg0 + 0x90) < *(s32 *)(e + 0x18) && *pos > *(s32 *)(e + 0x14)) hit = 1;
                break;
            case 2:
                if (*pos > *(s32 *)(e + 0x14)) hit = 1;
                break;
            case 3:
                if (*(s32 *)(arg0 + 0x90) > *(s32 *)(e + 0x18) && *pos > *(s32 *)(e + 0x14)) hit = 1;
                break;
            case 4:
                if (*(s32 *)(arg0 + 0x90) > *(s32 *)(e + 0x18)) hit = 1;
                break;
            case 5:
                if (*(s32 *)(arg0 + 0x90) > *(s32 *)(e + 0x18) && *pos < *(s32 *)(e + 0x14)) hit = 1;
                break;
            case 6:
                if (*pos < *(s32 *)(e + 0x14)) hit = 1;
                break;
            case 7:
                if (*(s32 *)(arg0 + 0x90) < *(s32 *)(e + 0x18) && *pos < *(s32 *)(e + 0x14)) hit = 1;
                break;
            }
            if (hit) {
                *pos = *(s32 *)(arg0 + 0x94);
                *(s32 *)(arg0 + 0x90) = *(s32 *)(arg0 + 0x98);
            }
        next:
            i = (u16)(i + 1);
            e += 0x2E0;
        } while (i <= 4);
    }
    if (blk13CEC(pos)) {
        *pos = *(s32 *)(arg0 + 0x94);
        *(s32 *)(arg0 + 0x90) = *(s32 *)(arg0 + 0x98);
    }
}
u16 sub_08013E90(s32 arg0, s32 *arg1, u16 arg2, s32 arg3, s32 arg4) {
    u32 flags;
    u16 dir;
    u16 r;
    s32 x;
    s32 y;
    dir = arg2;
    flags = (u16)arg3;
    if (sub_08056E50() == 0) {
        flags |= 2;
    }
    x = arg1[0];
    y = arg1[1];
    if (dir == 0 || dir == 4) {
        y += (arg0 * gUnk_080B9704[gUnk_0847AD0A[dir]]) / 304;
    } else {
        y += (arg0 * gUnk_080B9704[gUnk_0847AD0A[dir]]) / 256;
    }
    x += (arg0 * gUnk_080B9704[gUnk_0847AD0A[dir] + 0x40]) / 256;
    r = dir + 1;
    if (arg4 == 0) {
        r = sub_0800B118(dir, x, y, flags);
        if (r == 0) goto end;
    }
    if (r != 0) dir = r - 1;
    x = arg1[0];
    y = arg1[1];
    if (dir == 0 || dir == 4) {
        y += (arg0 * gUnk_080B9704[gUnk_0847AD0A[dir]]) / 304;
    } else {
        y += (arg0 * gUnk_080B9704[gUnk_0847AD0A[dir]]) / 256;
    }
    x += (arg0 * gUnk_080B9704[gUnk_0847AD0A[dir] + 0x40]) / 256;
    if (arg4 == 0) {
        r = sub_0800B118(dir, x, y, flags);
        if (r == 0) goto end;
    }
    if (r != 0) dir = r - 1;
    if (dir == 0 || dir == 4) {
        arg1[1] += (arg0 * gUnk_080B9704[gUnk_0847AD0A[dir]]) / 304;
    } else {
        arg1[1] += (arg0 * gUnk_080B9704[gUnk_0847AD0A[dir]]) / 256;
    }
    arg1[0] += (arg0 * gUnk_080B9704[gUnk_0847AD0A[dir] + 0x40]) / 256;
end:
    return dir;
}
void sub_080140AC(u8 *arg0) {
    u16 t;
    s32 v;
    s16 r;
    if ((*(u16 *)(arg0 + 0xC8)) != 0) {
        sub_08013E90((*(s16 *)(arg0 + 0xCC)), arg0 + 0x8C, (*(u16 *)(arg0 + 0xCA)), (u16)sub_0800CCCC(), 0);
        (*(u16 *)(arg0 + 0xC8))--;
    }
    if ((*(u16 *)(arg0 + 0xCE)) != 0) {
        sub_08013E90((*(s16 *)(arg0 + 0xD2)), arg0 + 0x8C, (*(u16 *)(arg0 + 0xD0)), (u16)sub_0800CCCC(), 0);
        v = (*(u16 *)(arg0 + 0xCE)) - 1;
        (*(u16 *)(arg0 + 0xCE)) = v;
        t = (u16)v;
        if (t == 0) {
            if ((*(s16 *)(arg0 + 0xD4)) != 0) {
                (*(u16 *)(arg0 + 0xCE)) = (*(s16 *)(arg0 + 0xD4)) / 2;
                if ((*(u16 *)(arg0 + 0xCE)) > 3) (*(u16 *)(arg0 + 0xCE)) = 4;
                (*(s16 *)(arg0 + 0xD4)) = t;
                r = 0x200;
                goto end;
            }
        } else if ((*(s16 *)(arg0 + 0xD4)) != 0) {
            return;
        }
        (*(s16 *)(arg0 + 0xD2)) = (u16)(*(s16 *)(arg0 + 0xD2)) << 16 >> 17;
        if ((*(s16 *)(arg0 + 0xD2)) <= 0x3F) {
            r = 0x40;
end:
            (*(s16 *)(arg0 + 0xD2)) = r;
        }
    }
}
struct Actor14170 {
    u8 pad0[0x10];
    u16 f10;
    u8 pad12[0xE];
    u16 f20;
    u8 pad22[0x2];
    u16 f24;
    u16 f26;
    u8 pad28[0x8];
    u32 f30;
    u8 pad34[0x2C];
    s16 f60;
    s16 f62;
    u8 pad64[0x3];
    u8 f67;
    u8 pad68[0x4];
    u8 f6C;
    u8 pad6D[0xC];
    s8 f79;
    u8 pad7A[0x12];
    s32 f8C;
    s32 f90;
    u8 pad94[0x2E];
    s16 fC2;
    s16 fC4;
    s16 fC6;
};
struct Tile14170 { u32 w[8]; };
struct Nib14170 { u32 val; u32 nib; u32 cnt; };
struct Rgb14170 { u32 r:5; u32 g:5; u32 b:5; u32 pad:17; };
extern void t071Init(void *,s32,s32,s32,s32) asm("sub_08065158");
extern void t071Coords(s32,s32,s16 *,s16 *,s32,void *) asm("sub_0800BC08");
extern s32 anim14170(void *, u16, u16 *, u16 *, s32) asm("sub_08065370");
extern void draw14170(void *, s32, s32, u16, s32) asm("sub_08065230");
extern void num14170(s32, s32, s16, s32) asm("sub_0805FB7C");
extern void fade14170(s32, s32) asm("sub_0801A664");
extern u32 lv14170(void) asm("sub_0801D34C");
extern u16 gPal14170[] asm("gUnk_03001F40");
extern u16 gBg14170[] asm("gUnk_03005740");
extern u8 *gSave14170 asm("gUnk_030034E0");

void hud14170(struct Actor14170 *arg0) asm("sub_08014170");
void hud14170(struct Actor14170 *arg0)
{
    u8 spr1[0x34];
    u8 spr2[0x34];
    u8 pad[8];
    struct Nib14170 a;
    struct Nib14170 b;
    struct Nib14170 c;
    s16 sx;
    s16 sy;
    u16 tile;
    u16 tmp;
    struct Rgb14170 color;
    struct Tile14170 *buf1;
    struct Tile14170 *buf2;
    struct Tile14170 *buf3;
    s32 pal;
    s32 gfx;
    u16 fade;
    u16 blink;
    u16 dhp, dmp, dx3;
    u16 mhp, mmp, mx3;

    u16 i;
    u16 lim;
    register u32 k asm("r1");
    register u32 loadedCapacity asm("r0");
    u16 j;
    u32 *stats;
    u32 max;
    s16 d;
    s16 cur;
    s32 hcur;
    register s32 v asm("r3");

    t071Init(spr1, 0x50061, 0, 0x80000000, 0);
    t071Init(spr2, 0x50060, 0, 0x80000000, 0);
    pal = sub_08007290(0x40000002);
    gfx = sub_08007290(gUnk_03003470 + 0x10010003);
    sub_080653CC();
    buf1 = sub_08001494(0xA0);
    buf2 = sub_08001494(0xA0);
    buf3 = sub_08001494(0x60);
    CpuFastSet((void *)(gfx + 0x60), buf1, 0x28);
    CpuFastSet((void *)(gfx + 0x160), buf2, 0x28);
    CpuFastSet((void *)(gfx + 0x260), buf3, 0x18);
    blink = 0;
    mhp = mmp = dhp = dmp = 0xFFFF;
    while (sub_0800CB78() == 0 && sub_0800CD00() == 0) {
        while ((sub_0800CD8C() != 0 || sub_0800CFB8() != 0) && sub_0800CB78() == 0 && sub_0800CD00() == 0) {
            mhp = mmp = dhp = dmp = 0xFFFF;
            sub_080003F0();
        }
        while (sub_0800CD34() != 0 || sub_0800CDF8() != 0) {
            mhp = mmp = dhp = dmp = 0xFFFF;
            fade14170(0, 2);
            sub_080003F0();
        }

        i = (s16)dhp != arg0->fC4;
        if ((s16)mhp != arg0->f62)
            i = 1;
        if (i) {
            u16 n;

            if (arg0->fC4 > arg0->f62) {
                arg0->fC4 = arg0->f62;
                dhp = arg0->fC4;
            }
            if ((s16)dhp > arg0->f62)
                dhp = arg0->f62;
            mhp = arg0->f62;
            d = dhp;
            if (d > 0) {
                u16 diff;
                s16 delta;
                s32 r;
                if (d < arg0->fC4) {
                    diff = arg0->fC4 - d;
                    if ((s16)diff > 1)
                        diff = (s16)diff / 2;
                    delta = diff;
                    r = d + delta;
                } else {
                    diff = d - arg0->fC4;
                    if ((s16)diff > 1)
                        diff = (s16)diff / 2;
                    delta = diff;
                    r = d - delta;
                }
                dhp = r;
            } else {
                dhp = arg0->fC4;
            }
            hcur = arg0->fC4;
            n = (s16)dhp * 40 / arg0->f62;
            if (hcur > 0 && n == 0)
                n = 1;
            /* The do/while(0) nesting raises the loop-depth weight of the
               hoisted bound copy so it is allocated before n (r2 vs r3). */
            do {
                for (i = 0; i < n >> 3; i++) {
                    buf1[i].w[2] = 0x44444444;
                    buf1[i].w[3] = 0x44444444;
                    buf1[i].w[4] = 0x44444444;
                    buf1[i].w[5] = 0x44444444;
                }
            } while (0);
            if (n & 7) {
                a.cnt = n & 7;
                a.nib = 4;
                b.nib = 0x33333330;
                a.val = 0;
                b.val = 0;
                c.val = 0;
                for (j = 0; j < a.cnt; j++) {
                    a.val |= a.nib << (j * 4);
                    b.val = b.nib << (j * 4);
                }
                buf1[i].w[2] = a.val | b.val;
                buf1[i].w[3] = a.val | b.val;
                buf1[i].w[4] = a.val | b.val;
                buf1[i].w[5] = a.val | b.val;
                i++;
            }
            for (; i <= 4; i++) {
                buf1[i].w[2] = 0x33333333;
                buf1[i].w[3] = 0x33333333;
                buf1[i].w[4] = 0x33333333;
                buf1[i].w[5] = 0x33333333;
            }
            sub_08001348(buf1, (void *)0x06008060, 0xA0);
        }

        i = (s16)dmp != arg0->fC2;
        if ((s16)mmp != arg0->f60)
            i = 1;
        if (i) {
            u16 n;

            if (arg0->fC2 > arg0->f60)
                arg0->fC2 = arg0->f60;
            cur = dmp = arg0->fC2;
            mmp = arg0->f60;
            hcur = cur;
            v = dmp;
            if (hcur <= 0)
                v = 0;
            n = v * 40 / arg0->f60;
            if (hcur > 0 && n == 0)
                n = 1;
            do {
                do {
                    for (i = 0; i < n >> 3; i++) {
                        buf2[i].w[2] = 0xAAAAAAAA;
                        buf2[i].w[3] = 0xAAAAAAAA;
                        buf2[i].w[4] = 0xAAAAAAAA;
                        buf2[i].w[5] = 0xAAAAAAAA;
                    }
                } while (0);
            } while (0);
            if (n & 7) {
                a.cnt = n & 7;
                a.nib = 0xA;
                b.nib = 0x33333330;
                a.val = 0;
                b.val = 0;
                for (j = 0; j < a.cnt; j++) {
                    a.val |= a.nib << (j * 4);
                    b.val = b.nib << (j * 4);
                }
                buf2[i].w[2] = a.val | b.val;
                buf2[i].w[3] = a.val | b.val;
                buf2[i].w[4] = a.val | b.val;
                buf2[i].w[5] = a.val | b.val;
                i++;
            }
            for (; i <= 4; i++) {
                buf2[i].w[2] = 0x33333333;
                buf2[i].w[3] = 0x33333333;
                buf2[i].w[4] = 0x33333333;
                buf2[i].w[5] = 0x33333333;
            }
            sub_08001348(buf2, (void *)0x06008160, 0xA0);
        }

        i = (s16)dx3 != arg0->fC6;
        stats = (u32 *)sub_08007290(*(u16 *)(gSave14170 + 0x132) | 0x110000);
        if ((s16)mx3 != stats[0xA0 / 4] + arg0->f79)
            i = 1;
        if (arg0->fC6 >= stats[0xA0 / 4] + arg0->f79) {
            fade -= 8;
            fade &= 0xFF;
            color.r = (u32)(fade * 0xF00) >> 16;
            color.g = (u32)(fade * 0x1F00) >> 16;
            color.b = 0;
            gPal14170[0xFF] = *(u16 *)&color;
            sub_08000B38();
        } else {
            color.r = 15;
            color.g = 31;
            color.b = 0;
            gPal14170[0xFF] = *(u16 *)&color;
        }
        if (i) {
            u16 n;

            {
                /* Reassigning p in the clamp block makes cse1 invalidate it
                   when it skips the block, so the reload after the join
                   computes a fresh address instead of reusing p. v keeps the
                   loaded value in r3. */
                s16 *p = &arg0->fC6;
                v = *p;
                if (v > stats[0xA0 / 4] + arg0->f79) {
                    p = &arg0->fC6;
                    *p = stats[0xA0 / 4] + arg0->f79;
                }
            }
            cur = dx3 = arg0->fC6;
            max = stats[0xA0 / 4]; max += arg0->f79; mx3 = max;
            v = dx3;
            if (cur <= 0)
                v = 0;
            n = v * 24 / max;
            if (cur > 0 && n == 0)
                n = 1;
            do {
                do {
                    for (i = 0; i < n >> 3; i++) {
                        buf3[i].w[2] = 0xFFFFFFFF;
                        buf3[i].w[3] = 0xFFFFFFFF;
                        buf3[i].w[4] = 0xFFFFFFFF;
                        buf3[i].w[5] = 0xFFFFFFFF;
                    }
                } while (0);
            } while (0);
            if (n & 7) {
                a.cnt = n & 7;
                a.nib = 0xF;
                b.nib = 0x33333330;
                a.val = 0;
                b.val = 0;
                for (j = 0; j < a.cnt; j++) {
                    a.val |= a.nib << (j * 4);
                    b.val = b.nib << (j * 4);
                }
                buf3[i].w[2] = a.val | b.val;
                buf3[i].w[3] = a.val | b.val;
                buf3[i].w[4] = a.val | b.val;
                buf3[i].w[5] = a.val | b.val;
                i++;
            }
            for (; i <= 2; i++) {
                buf3[i].w[2] = 0x33333333;
                buf3[i].w[3] = 0x33333333;
                buf3[i].w[4] = 0x33333333;
                buf3[i].w[5] = 0x33333333;
            }
        }
        sub_08001348(buf3, (void *)0x06008260, 0x60);

        if (sub_0800CC98() == 0) {
            if ((u16)(arg0->f20 - 3) <= 1) {
                t071Coords((arg0->f8C << 8) >> 16, (arg0->f90 << 8) >> 16, &sx, &sy, 0x30, 0);
                if (arg0->f10 != 9) {
                    i = lv14170();
                    {
                        s32 ret;
                        s32 b5 = (s8)arg0->f6C * 5;
                        /* hcur doubles as the level counter. Loading the table
                           base and b5 * 2 into locals inside the body lengthens
                           the doubled value's lifetime, so loop.c hoists it in
                           its first pass (lsls r6 before the table-pointer giv). */
                        for (hcur = 7; hcur >= 0; hcur--) {
                            u16 *tbl = gUnk_0847ACE8;
                            s32 bb = b5 * 2;
                            s32 t = tbl[hcur];
                            u16 threshold = bb + t;
                            if ((s16)threshold < 0)
                                threshold = 0;
                            if (arg0->fC2 >= (s16)threshold) {
                                ret = hcur;
                                goto found;
                            }
                        }
                        ret = 0;
                    found:
                        j = ret;
                    }
                    if (i > j) {
                        loadedCapacity = arg0->f26;
                        goto clampLevel14170;
                    }
                    loadedCapacity = arg0->f26;
                    goto checkCapacity14170;
                } else {
                    i = lv14170();
                    j = sub_08079FD0(sub_0801DEB8()) - 1;
                    if (i > j) {
                        loadedCapacity = arg0->f26;
                    clampLevel14170:
                        i = j;
                    checkCapacity14170:
                        /* Both lookup paths share the original capacity check. */
                        k = loadedCapacity;
                        if (i <= k)
                            goto validate14170;
                        goto inactive14170;
                    }
                    {
                        register u16 capacity asm("r0") = arg0->f26;
                        k = capacity;
                    }
                    if (i > k)
                        i = 0;
                }
            validate14170:
                if (i != 0) {
                    if (k <= 0xF && arg0->f20 != 5) {
                        anim14170(spr1, k + 6, &tile, &tmp, 1);
                        draw14170(spr1, sx, sy - 0x20, arg0->f26 + 6, tile);
                    }
                } else {
                inactive14170:
                    if (arg0->f20 != 5) {
                        draw14170(spr1, sx, sy - 0x20, arg0->f26 & 0xFFFF, arg0->f24 >> 1);
                    }
                }
            } else if ((u16)(arg0->f20 - 6) <= 1) {
                t071Coords((arg0->f8C << 8) >> 16, (arg0->f90 << 8) >> 16, &sx, &sy, 0x30, 0);
                if (arg0->f67 != 0) {
                    if (arg0->f26 > 0x10) {
                        anim14170(spr2, 7, &tile, &tmp, 1);
                        draw14170(spr2, sx, sy - 0x20, 7, tile);
                    } else {
                        draw14170(spr2, sx, sy - 0x20, 0, arg0->f26 >> 1);
                    }
                } else if (arg0->f26 > 7) {
                    if (arg0->f20 != 8) {
                        anim14170(spr2, 7, &tile, &tmp, 1);
                        draw14170(spr2, sx, sy - 0x20, 7, tile);
                    }
                } else if (arg0->f20 != 8) {
                    draw14170(spr2, sx, sy - 0x20, 0, arg0->f26);
                }
            }
        }

        if (!(arg0->f30 & 0x80)) {
            CpuFastSet((void *)(pal + 4), gBg14170, 0x20);
            if (sub_0800CC98() == 0) {
                if ((arg0->f30 & 8) && blink < 0x28) {
                    gBg14170[0x17] = 0xF017;
                    gBg14170[0x18] = 0xF018;
                    gBg14170[0x19] = 0xF019;
                    gBg14170[0x1A] = 0xF01A;
                } else {
                    gBg14170[0x1A] = 0;
                    gBg14170[0x19] = 0;
                    gBg14170[0x18] = 0;
                    gBg14170[0x17] = 0;
                }
                blink++;
                if (blink > 0x3C)
                    blink = 0;
            }
            fade14170(0, 2);
            num14170(6, 1, arg0->f62, 0);
            num14170(2, 1, arg0->fC4, 0);
            num14170(0xE, 1, arg0->f60 / 10, 0);
            if (arg0->fC2 != 0)
                num14170(0xA, 1, arg0->fC2 / 10, 0);
            else
                num14170(0xA, 1, 0, 0);
        }
        sub_080003F0();
    }
    sub_08001538((s32)buf1);
    sub_08001538((s32)buf2);
    sub_08001538((s32)buf3);
}
void sub_08014B28(void) {
    struct PlayerW12 *p;
    u16 id;
    u16 v;
    u32 *tbl;
    p = (struct PlayerW12 *)&gUnk_03003CE0[sub_080020F4()];
    id = p->w26;
    if (p->state != 0xD && sub_0800CCCC() == 0 && sub_0800CD34() == 0) {
        sub_0805865C(id + 0xF9);
    }
    if (p->wB6 == 0 && p->state == 5) {
        while (1) {
            p->pos94 = p->pos8C;
            p->w1C = sub_08013E90(gUnk_0847AD1C[id] + p->w40, (void *)&p->pos8C, p->w1C, (u16)sub_0800CCCC(), 0);
            sub_08013CEC((u8 *)p);
            sub_080003F0();
            if (!(p->wB6 == 0 && p->state == 5)) break;
        }
    }
    v = p->state;
    if (v != 0xE && v != 0xA && v != 0xB) {
        u32 f = p->flags & 0x2000;
        if (f == 0) p->state = f;
    }
    p->w24 = 0;
    p->w28 = p->w26;
    p->w26 = 0;
    p->w122 = 0;
}
void sub_08014C04(void) {
    struct PlayerW12 *p = (struct PlayerW12 *)&gUnk_03003CE0[sub_080020F4()];
    u16 r5 = p->w26;
    u32 r1;

    if (p->state != 0xD && sub_0800CCCC() == 0 && sub_0800CD34() == 0) {
        sub_0805865C(r5 + 0x100);
    }
    while (p->wB6 == 0 && p->state == 5) {
        sub_080003F0();
    }
    if (p->state != 0xE && p->state != 0xA && p->state != 0xB) {
        r1 = p->flags & 0x2000;
        if (r1 == 0) {
            p->state = r1;
        }
    }
    p->w24 = 0;
    p->w28 = p->w26;
    p->w26 = 0;
    p->w122 = 0;
}
extern u32 check14C(void) asm("sub_0801DE60");
void sub_08014C8C(void) {
    struct PlayerW12 *p = (struct PlayerW12 *)&gUnk_03003CE0[sub_080020F4()];
    u16 value = p->w26;
    u32 next;
    u16 step;

    if (sub_0800CCCC() == 0 && sub_0800CD34() == 0) {
        if (check14C() == 0) {
            sub_0805865C(value + 0x100);
        } else {
            sub_0805865C(value + 0xF9);
        }
    }
    next = 0x50;
    step = 1;
    while (p->wB6 == 0 && p->state == 5) {
        u16 *type = (u16 *)((u8 *)p + 0xB2);
        u32 *counter = (u32 *)((u8 *)p + 0xDC);
            if (next != *type && *type == step) {
                next = *type;
                (*counter)++;
                step = step + 3;
            }
            sub_080003F0();
            asm("" : : "r"(type));
    }
    if (p->state != 0xE && p->state != 0xA && p->state != 0xB &&
        (p->flags & 0x2000) == 0) {
        p->state = 0;
    }
    p->w24 = 0;
    p->w28 = p->w26;
    p->w26 = 0;
    p->w122 = 0;
}



struct PlrKind14 { u8 pad0[0x10]; u16 kind; u8 pad12[0x14C - 0x12]; };
extern struct PlrKind14 kinds14[] asm("gUnk_03003CE0");
extern struct Task tasks14[] asm("gUnk_03003C40");
void sub_08014D60(void)
{
    s32 index = sub_080020F4();
    s32 memory;
    if (sub_08000470((u32)&tasks14[index]) != 0) {
        if ((u16)(gUnk_03003CE0[index].state - 10) > 1 && (gUnk_03003CE0[index].flags & 0x2000) == 0)
            gUnk_03003CE0[index].state = 0;
        return;
    }
    switch (kinds14[index].kind) {
    case 1:
        tasks14[index].uC = sub_08014B28;
        break;
    case 3:
        tasks14[index].uC = sub_08014C8C;
        break;
    case 2:
        tasks14[index].uC = sub_08014C04;
        break;
    case 8:
        tasks14[index].uC = sub_08014C04;
        break;
    default:
        return;
    }
    tasks14[index].u8 = 0x34;
    while ((tasks14[index].u20 = memory = (s32)sub_08001494(0x400)) == 0)
        sub_080003F0();
    tasks14[index].u10 = memory + 0x3FC;
    tasks14[index].u24 = 0;
    sub_08000274(&tasks14[index]);
}
struct Info14 { u32 kind:4; u32 mid:24; u32 top:4; u32 lo:14; u32 level:3; u32 power:3; u32 hi:12; };
struct Plr14 {
    u16 id;
    u8 pad2[0x10];
    u16 keys;
    u8 pad14[8];
    s16 dir;
    u8 pad1E[2];
    u16 state;
    u8 pad22[2];
    s16 w24;
    u16 w26;
    u16 w28;
    u8 pad2A[6];
    u32 flags;
    u8 pad34[0xB0 - 0x34];
    u16 wB0;
    u16 wB2;
    u16 wB4;
    u16 wB6;
    u16 wB8;
    u8 padBA[0xDC - 0xBA];
    s32 counterDC;
    u8 padE0[0x122 - 0xE0];
    u16 w122;
    u8 pad124[0x144 - 0x124];
    struct Info14 *pos;
    struct Info14 *info;
};
extern struct Plr14 players14[] asm("gUnk_03003CE0");
extern void sub_080760E8();
void sub_08014E68(s32 index)
{
    struct Plr14 *p = &players14[index];
    struct Info14 *info;
    u32 level;
    u32 power;
    u32 count = p->w26;
    if (p->state != 0xD && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
        sub_0805865C(count + 0x107);
    info = p->info;
    count = info->level;
    level = count;
    power = info->power;
    count += 2;
    while (p->wB6 == 0 && p->info->kind == 5) {
        if (sub_080020F4() == index) {
            u32 dir = 0;
            if (p->keys & 0x40)
                dir = 5;
            else if (p->keys & 0x80)
                dir = 1;
            if (p->keys & 0x20) {
                if (dir == 5)
                    dir = 4;
                else if (dir == 1)
                    dir = 2;
                else
                    dir = 3;
            } else if (p->keys & 0x10) {
                if (dir == 5)
                    dir = 6;
                else if (dir == 1)
                    dir = 8;
                else
                    dir = 7;
            }
            if (dir != 0) {
                p->dir = dir - 1;
                p->pos->top = p->dir;
            }
        }
        if ((p->wB2 & 1) && p->wB4 == 2 && count != 0) {
            p->wB0 = p->info->top;
            p->wB0 += level * 8;
            p->wB8 = p->wB0;
            p->counterDC++;
            sub_080760E8(p->id, (u16)sub_0807A028(1), count, power);
            count--;
        }
        sub_080003F0();
    }
    if (sub_080020F4() == index && p->state != 0xE && p->state != 0xA && p->state != 0xB) {
        if ((p->flags & 0x2000) == 0)
            p->state = 0;
    }
    p->w24 = 0;
    p->w28 = p->w26;
    p->w26 = 0;
    p->w122 = 0;
}
void sub_0801500C(u32 idx)
{
    u32 mem;
    if (sub_08000470((u32)&gTasks03003C40[idx]) != 0)
        return;
    gTasks03003C40[idx].fC = (u32)sub_08014E68;
    gTasks03003C40[idx].f8 = 0x34;
    while ((gTasks03003C40[idx].f20 = mem = sub_08001494(0x400)) == 0)
        sub_080003F0();
    gTasks03003C40[idx].f10 = mem + 0x3FC;
    gTasks03003C40[idx].f24 = 0;
    sub_08000274_2(&gTasks03003C40[idx], idx);
}
void sub_08015090(void)
{
    struct PlayerW12 *p = (struct PlayerW12 *)&gUnk_03003CE0[sub_080020F4()];
    u16 index = p->w26;
    while (p->wB6 == 0 && p->state == 5) {
        u16 direction;
        p->pos94 = p->pos8C;
        direction = sub_0800CCCC();
        p->w1C = sub_08013E90((s32)(gUnk_0847AD1C[index] << 3) / 10 + p->w40,
                             (s32 *)&p->pos8C, p->w1C, direction, 0);
        sub_08013CEC((u8 *)p);
        sub_080003F0();
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
void sub_08015150(void)
{
    struct PlayerW12 *p = (struct PlayerW12 *)&gUnk_03003CE0[sub_080020F4()];
    while (p->wB6 == 0 && p->state == 5) {
        u32 *counter = (u32 *)((u8 *)p + 0xDC);
            u16 type = *(u16 *)((u8 *)p + 0xB2);
            if (type == 1 || type == 4 || type == 5) {
                if (*(u16 *)((u8 *)p + 0xB4) == 0)
                    (*counter)++;
            }
            sub_080003F0();

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



extern void sub_08015090(void);
extern void sub_08015150(void);
struct View151E {u8 pad0[16];u16 mode;u8 pad12[14];u16 state;u8 pad22[14];u32 flags;u8 pad34[0x118];};
extern struct View151E players151E[] asm("gUnk_03003CE0");
void sub_080151E0(void)
{
    u32 index = sub_080020F4();
    u32 mem;
    if (sub_08000470((u32)&gTasks03003C40[index]) != 0) {
        register struct View151E *base asm("r3") = players151E;
        u32 offset;
        struct View151E *p;
        asm("" : "+r"(base));
        offset = index * sizeof(*base);
        p = (struct View151E *)(offset + (u32)base);
        if ((u16)(p->state - 10) > 1) {
            register u32 *flags asm("r0") = &base->flags;
            u32 masked;
            asm("" : "+r"(flags));
            masked = *(u32 *)(offset + (u32)flags) & 0x2000;
            if (masked == 0)
                p->state = masked;
        }
    } else {
        switch (players151E[index].mode) {
        case 2:
            gTasks03003C40[index].fC = (u32)sub_08015090;
            break;
        case 4:
            gTasks03003C40[index].fC = (u32)sub_08015150;
            break;
        default:
            return;
        }
        gTasks03003C40[index].f8 = 0x34;
        while ((gTasks03003C40[index].f20 = mem = sub_08001494(0x400)) == 0)
            sub_080003F0();
        gTasks03003C40[index].f10 = mem + 0x3FC;
        gTasks03003C40[index].f24 = 0;
        sub_08000274(&gTasks03003C40[index]);
    }
}

void sub_080152CC(void)
{
    struct PlayerW12 *p = (struct PlayerW12 *)&gUnk_03003CE0[sub_080020F4()];
    u16 angle = p->w26 * 80 + 0x100;
    while (p->wB6 == 0 && p->state == 5) {
        u16 direction;
        p->pos94 = p->pos8C;
        direction = sub_0800CCCC();
        p->w1C = sub_08013E90((s16)angle,
                             (s32 *)&p->pos8C, p->w1C, direction, 0);
        sub_08013CEC((u8 *)p);
        {
            register u32 type asm("r0") = *(u16 *)((u8 *)p + 0xB2);
            switch (type) {
            case 1:
            case 3:
                asm("" : "+r"(type));
                if (type == 3 && *(u16 *)((u8 *)p + 0xB4) == 1)
                    (*(u32 *)((u8 *)p + 0xDC))++;
                break;
            }
        }
        sub_080003F0();
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
