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
/* Complete control-flow draft; matching and type audit remain in progress. */
void sub_0800D368(void *arg0) {
    struct AnimD368 { s32 f0,f4,f8; void *fC; s32 f10,f14,f18; u8 f1C,f1D; u16 f1E; s32 f20,f24,f28,f2C,f30; };
    extern M2C_UNK d368_sub_0800035C() asm("sub_0800035C");
    extern s16 d368_sub_0800086C() asm("sub_0800086C");
    extern M2C_UNK d368_sub_08007870(s32, s32, u32, u32, s32, s32, s32, s32) asm("sub_08007870");
    extern M2C_UNK d368_sub_0800AD04(void *, void *, s32) asm("sub_0800AD04");
    extern M2C_UNK d368_sub_0800BC08(u32, u32, s32 *, s16 *, s32, s32) asm("sub_0800BC08");
    extern M2C_UNK d368_sub_080137A0(u32) asm("sub_080137A0");
    extern M2C_UNK d368_sub_08013CEC(void *) asm("sub_08013CEC");
    extern M2C_UNK d368_sub_08014D60() asm("sub_08014D60");
    extern M2C_UNK d368_sub_0801500C(u16) asm("sub_0801500C");
    extern M2C_UNK d368_sub_080151E0() asm("sub_080151E0");
    extern M2C_UNK d368_sub_0801551C() asm("sub_0801551C");
    extern M2C_UNK d368_sub_08015820(u16) asm("sub_08015820");
    extern M2C_UNK d368_sub_08015B20(u16) asm("sub_08015B20");
    extern M2C_UNK d368_sub_0801A664(s32, s32) asm("sub_0801A664");
    extern u32 d368_sub_0801D34C() asm("sub_0801D34C");
    extern M2C_UNK d368_sub_0801FDD0(void *) asm("sub_0801FDD0");
    extern u8 d368_sub_08057B64(s32) asm("sub_08057B64");
    extern s16 d368_sub_08058688(s32) asm("sub_08058688");
    extern M2C_UNK d368_sub_08058B08(s32, s32) asm("sub_08058B08");
    extern s32 d368_sub_0805BD5C(void *, u16) asm("sub_0805BD5C");
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
    extern u16 d368_sub_08065974() asm("sub_08065974");
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
    extern M2C_UNK d368_gUnk_0847ACE8 asm("gUnk_0847ACE8");
    extern M2C_UNK d368_gUnk_0847ACF8 asm("gUnk_0847ACF8");
    extern s32 d368_sub_080003F0() asm("sub_080003F0");
    extern void d368_sub_08000420() asm("sub_08000420");
    extern u32 d368_sub_080008C8() asm("sub_080008C8");
    extern void d368_sub_08000AF0() asm("sub_08000AF0");
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
    extern u8 d368_sub_0801DE60() asm("sub_0801DE60");
    extern void d368_sub_0801E024() asm("sub_0801E024");
    extern u16 d368_sub_0801E0AC() asm("sub_0801E0AC");
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
    extern s32 d368_sub_08079FD0() asm("sub_08079FD0");
    extern u16 d368_sub_0807A028() asm("sub_0807A028");
    extern s32 d368_sub_08013BC0() asm("sub_08013BC0");
    extern void d368_sub_0801DD9C() asm("sub_0801DD9C");
    extern s32 d368_sub_0801DF8C() asm("sub_0801DF8C");
    extern u32 d368_sub_08067D74() asm("sub_08067D74");
    extern s32 d368_sub_08016C88() asm("sub_08016C88");
    extern u32 d368_sub_0801DEB8() asm("sub_0801DEB8");
    struct Copy40D368 { u32 words[10]; };
    struct PlayerD368 { u16 f0; u8 f2; u8 pad3[9]; u16 fC; u8 padE[2]; u16 f10; u16 f12; u16 f14; u16 f16; u16 f18; u16 f1A; s16 f1C; u8 pad1E[2]; u16 f20; u16 f22; u16 f24; u16 f26; u16 f28; u8 pad2A[2]; u16 f2C; u16 f2E; u32 f30; u16 * f34; u16 f38; u8 pad3A[2]; s16 f3C; u8 pad3E[2]; s16 f40; u8 pad42[6]; s32 f48; u8 pad4C[18]; s16 f5E; u16 f60; u16 f62; u16 f64; u8 f66; u8 f67; u8 f68; u8 pad69[3]; u8 f6C; u8 pad6D[3]; u8 f70; u8 f71; u8 pad72[7]; u8 f79; u8 pad7A[14]; s32 f88; s32 f8C; s32 f90; s32 f94; u8 pad98[4]; s32 f9C; s32 fA0; s32 fA4; u8 padA8[4]; u16 * fAC; u16 fB0; u16 fB2; u16 fB4; u16 fB6; u16 fB8; u16 fBA; u16 fBC; u16 fBE; u16 fC0; u16 fC2; u16 fC4; s16 fC6; u8 padC8[16]; s32 fD8; s32 fDC; s32 fE0; u8 padE4[44]; u32 f110; u16 f114; u8 pad116[8]; u16 f11E; u8 pad120[2]; u16 f122; s16 f124; u8 pad126[10]; u16 f130; u16 f132; u16 f134; u16 f136; u8 pad138[4]; u16 * f13C; void * f140; void * f144; void * f148; };
    union RecordD368 { struct { u32 value:4; } w0_b0_n4; struct { u32 gap:4; u32 value:12; } w0_b4_n12; struct { u32 gap:16; u32 value:12; } w0_b16_n12; struct { u32 gap:28; u32 value:4; } w0_b28_n4; struct { u32 word0; u32 value:6; } w1_b0_n6; struct { u32 word0; u32 gap:6; u32 value:1; } w1_b6_n1; struct { u32 word0; u32 gap:6; u32 value:4; } w1_b6_n4; struct { u32 word0; u32 gap:6; u32 value:6; } w1_b6_n6; struct { u32 word0; u32 gap:6; u32 value:8; } w1_b6_n8; struct { u32 word0; u32 gap:10; u32 value:1; } w1_b10_n1; struct { u32 word0; u32 gap:11; u32 value:8; } w1_b11_n8; struct { u32 word0; u32 gap:12; u32 value:6; } w1_b12_n6; struct { u32 word0; u32 gap:14; u32 value:3; } w1_b14_n3; struct { u32 word0; u32 gap:17; u32 value:3; } w1_b17_n3; struct { u32 word0; u32 gap:18; u32 value:4; } w1_b18_n4; struct { u32 word0; u32 gap:19; u32 value:5; } w1_b19_n5; struct { u32 word0; u32 gap:20; u32 value:5; } w1_b20_n5; struct { u32 word0; u32 gap:22; u32 value:1; } w1_b22_n1; struct { u32 word0; u32 gap:23; u32 value:1; } w1_b23_n1; struct { u32 word0; u32 gap:28; u32 value:1; } w1_b28_n1; };
    struct AnimD368 sp10;
    struct AnimD368 sp44;
    struct AnimD368 sp78;
    struct AnimD368 spAC;
    u8 spE0[0x10];
    s16 coordF0;
    s16 coordF2;
    u16 coordF4;
    u16 coordF6;
    s16 coordF8;
    s16 coordFA;
    u16 coordFC;
    u16 coordFE;
    u64 historyPair;
    u64 localRecord;
    s32 stackArg0, stackArg1, stackArg2, stackArg3;
    u32 sp110;
    u32 sp114;
    s32 sp118;
    s32 sp11C;
    s32 sp120;
    s32 sp124;                                      /* compiler-managed */
    u32 sp128;
    void *sp12C;
    s32 sp130;
    s32 sp134;
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
    s32 sp194;
    s32 sp198;
    s32 sp19C;
    s32 sp1A0;
    u32 sp1A4;
    s32 sp1A8;
    s32 sp1AC;
    u16 *sp1B0;
    u16 *sp1B4;
    u16 *sp1B8;
    u16 *sp1BC;
    s16 *sp1C0;
    s16 *sp1C4;
    s32 *sp1C8;
    u16 *sp1CC;
    s32 sp1D0;
    s32 sp1D4;
    s16 *temp_r0;
    s16 *var_r1_16;
    s16 *var_r1_4;
    s16 *var_r1_5;
    s16 *var_r9;
    s32 temp_r0_46;
    s32 temp_r0_47;
    s32 temp_r0_48;
    s32 temp_r1_16;
    s32 temp_r1_9;
    s32 temp_r2_13;
    s32 temp_r3_3;
    s32 temp_r3_56;
    s32 temp_r3_58;
    s32 temp_r3_59;
    s32 temp_r3_60;
    s32 temp_r3_61;
    s32 temp_r3_62;
    s32 temp_r3_63;
    s32 temp_r3_6;
    s32 temp_r4_2;
    s32 temp_r4_39;
    s32 temp_r5_13;
    s32 var_r0_26;
    s32 var_r0_32;
    s32 var_r0_35;
    s32 var_r0_37;
    s32 var_r0_40;
    s32 var_r0_41;
    s32 var_r0_8;
    s32 var_r0_9;
    s32 var_r1_24;
    s32 var_r1_27;
    s32 var_r1_28;
    s32 var_r2_17;
    s32 var_sl;
    s32 *temp_r1_4;
    s32 *temp_r2_2;
    s32 *temp_r3_2;
    s32 *var_r0;
    s32 *var_r0_3;
    s32 *var_r1_14;
    s32 *var_r1_3;
    s32 *var_r4_3;
    s32 *var_r4_6;
    s32 *var_r4_7;
    s32 *var_r4_8;
    s32 temp_r0_102;
    s32 temp_r0_105;
    s32 temp_r0_107;
    s32 temp_r0_108;
    s32 temp_r0_109;
    s32 temp_r0_110;
    s32 temp_r0_113;
    s32 temp_r0_116;
    s32 temp_r0_117;
    s32 temp_r0_119;
    s32 temp_r0_15;
    s32 temp_r0_162;
    s32 temp_r0_163;
    s32 temp_r0_164;
    s32 temp_r0_2;
    s32 temp_r0_30;
    s32 temp_r0_31;
    s32 temp_r0_34;
    s32 temp_r0_35;
    s32 temp_r0_39;
    s32 temp_r0_3;
    s32 temp_r0_49;
    s32 temp_r0_4;
    s32 temp_r0_53;
    s32 temp_r0_55;
    s32 temp_r0_60;
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
    s32 temp_r0_7;
    s32 temp_r0_83;
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
    s32 temp_r1_27;
    s32 temp_r1_34;
    s32 temp_r1_35;
    s32 temp_r1_36;
    s32 temp_r1_37;
    s32 temp_r1_38;
    s32 temp_r1_39;
    s32 temp_r1_40;
    s32 temp_r1_56;
    s32 temp_r1_59;
    s32 temp_r1_61;
    s32 temp_r1_62;
    s32 temp_r3_57;
    s32 temp_r4_48;
    s32 temp_r4_4;
    s32 temp_r4_5;
    s32 temp_r5_12;
    s32 temp_r5_2;
    s32 temp_r5_4;
    s32 temp_r5_5;
    s32 temp_r8;
    s32 var_ip;
    s32 var_r0_10;
    s32 var_r0_12;
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
    s32 var_r0_36;
    s32 var_r0_39;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r0_6;
    s32 var_r0_7;
    s32 var_r1_10;
    s32 var_r1_12;
    s32 var_r1_17;
    s32 var_r1_20;
    s32 var_r1_23;
    s32 var_r1_26;
    s32 var_r1_6;
    s32 var_r1_7;
    s32 var_r1_8;
    s32 var_r1_9;
    s32 var_r4;
    s32 var_r4_11;
    s32 var_r4_2;
    s32 var_r4_4;
    s32 var_r4_5;
    s32 var_r5_11;
    s32 var_r5_12;
    s32 var_r5_13;
    s32 var_r5_5;
    s32 var_r5_7;
    s32 var_r5_8;
    s32 var_r6_2;
    s32 var_r6_4;
    s32 var_r6_5;
    s32 var_r6_6;
    s32 var_r6_7;
    s32 var_r8;
    s32 var_r0_31;
    u16 *temp_r0_90;
    u16 *temp_r1;
    u16 *var_r2;
    u16 *var_r3;
    u16 *var_r3_2;
    u16 *var_r3_3;
    u16 *var_r3_4;
    u16 *var_r3_5;
    u16 *var_r4_9;
    u16 *var_r5_2;
    u16 *var_r5_3;
    u16 *var_r6;
    u16 *var_r9_2;
    s32 temp_r0_100;
    s32 temp_r0_101;
    s32 temp_r0_104;
    s32 temp_r0_106;
    s32 temp_r0_10;
    s32 temp_r0_118;
    s32 temp_r0_11;
    s32 temp_r0_125;
    s32 temp_r0_127;
    s32 temp_r0_12;
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
    s32 temp_r0_19;
    s32 temp_r0_25;
    s32 temp_r0_27;
    s32 temp_r0_28;
    s32 temp_r0_29;
    s32 temp_r0_32;
    s32 temp_r0_33;
    s32 temp_r0_36;
    s32 temp_r0_37;
    s32 temp_r0_40;
    u32 temp_r0_41;
    s32 temp_r0_43;
    s32 temp_r0_44;
    s32 temp_r0_50;
    u32 temp_r0_51;
    u16 temp_r0_56;
    u32 temp_r0_57;
    s32 temp_r0_5;
    u16 temp_r0_61;
    u32 temp_r0_62;
    s32 temp_r0_77;
    s32 temp_r0_78;
    s32 temp_r0_87;
    s32 temp_r0_8;
    s32 temp_r0_99;
    s32 temp_r0_9;
    s32 temp_r1_17;
    s32 temp_r1_18;
    s32 temp_r1_20;
    s32 temp_r1_21;
    s32 temp_r1_23;
    s32 temp_r1_24;
    s32 temp_r1_25;
    s32 temp_r1_26;
    s32 temp_r1_28;
    s32 temp_r1_29;
    u32 temp_r1_30;
    s32 temp_r1_31;
    s32 temp_r1_32;
    u32 temp_r1_33;
    s32 temp_r1_41;
    s32 temp_r1_51;
    s32 temp_r1_53;
    s32 temp_r1_5;
    s32 temp_r1_6;
    s32 temp_r2_10;
    s32 temp_r2_11;
    s32 temp_r2_12;
    s32 temp_r2_14;
    s32 temp_r2_16;
    s32 temp_r2_18;
    s32 temp_r2_19;
    s32 temp_r2_7;
    s32 temp_r2_8;
    u32 temp_r2_9;
    s32 temp_r3_4;
    s32 temp_r3_5;
    s32 temp_r3_7;
    s32 temp_r3_8;
    s32 temp_r4_10;
    s32 temp_r4_11;
    s32 temp_r4_12;
    s32 temp_r4_47;
    s32 temp_r4_8;
    s32 temp_r4_9;
    s32 temp_r5;
    s32 temp_r5_11;
    s32 temp_r5_6;
    s32 temp_r5_8;
    s32 var_r0_11;
    s32 var_r0_16;
    s32 var_r0_17;
    s32 var_r0_29;
    s32 var_r0_33;
    s32 var_r0_34;
    s32 var_r0_38;
    s32 var_r1_11;
    u16 var_r2_10;
    s32 var_r2_16;
    s32 var_r2_2;
    s32 var_r2_3;
    s32 var_r2_4;
    s32 var_r2_5;
    s32 var_r2_6;
    s32 var_r2_7;
    s32 var_r2_8;
    s32 var_r2_9;
    s32 var_r3_13;
    s32 var_r3_6;
    s32 var_r3_8;
    u32 var_r5_4;
    s32 var_r6_3;
    u32 *var_r3_14;
    u32 temp_r0_103;
    u32 temp_r0_112;
    u32 temp_r0_114;
    u32 temp_r0_115;
    u32 temp_r0_121;
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
    u32 temp_r0_160;
    u32 temp_r0_161;
    u32 temp_r0_165;
    u32 temp_r0_167;
    u32 temp_r0_168;
    u32 temp_r0_169;
    u32 temp_r0_170;
    u32 temp_r0_18;
    u32 temp_r0_20;
    u32 temp_r0_26;
    u32 temp_r0_38;
    u32 temp_r0_42;
    u32 temp_r0_45;
    u32 temp_r0_52;
    u32 temp_r0_58;
    u32 temp_r0_59;
    u32 temp_r0_63;
    u32 temp_r0_64;
    u32 temp_r0_79;
    u32 temp_r0_80;
    u32 temp_r0_81;
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
    u32 temp_r1_58;
    u32 temp_r1_60;
    u32 temp_r1_7;
    u32 temp_r1_8;
    u32 temp_r2;
    u32 temp_r2_3;
    u32 temp_r2_48;
    u32 temp_r2_4;
    u32 temp_r2_5;
    u32 temp_r2_61;
    u32 temp_r2_6;
    u32 temp_r3;
    u32 temp_r4;
    u32 temp_r4_37;
    u32 temp_r4_38;
    u32 temp_r4_3;
    u32 temp_r4_6;
    u32 temp_r4_7;
    u32 temp_r5_7;
    u32 var_r1_18;
    u32 var_r1_19;
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
    s32 temp_r0_54;
    s32 temp_r0_67;
    s32 temp_r0_6;
    s32 temp_r0_82;
    s32 temp_r1_45;
    s32 temp_r1_47;
    s32 temp_r1_49;
    s32 temp_r1_54;
    s32 temp_r2_15;
    s32 temp_r2_17;
    s32 temp_r2_60;
    s32 temp_r2_62;
    u32 temp_r5_3;
    s32 var_r1_13;
    s32 var_r1_15;
    s32 var_r2_11;
    s32 var_r2_15;
    s32 var_r3_10;
    s32 var_r3_9;
    void **var_r5_10;
    void **var_r5_9;
    void *temp_r0_120;
    void *temp_r0_158;
    void *temp_r0_159;
    void *temp_r0_21;
    void *temp_r0_22;
    void *temp_r0_23;
    void *temp_r0_24;
    void *temp_r1_10;
    void *temp_r1_11;
    void *temp_r1_12;
    void *temp_r1_13;
    void *temp_r1_14;
    void *temp_r1_15;
    void *temp_r1_43;
    void *temp_r1_44;
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
    void *var_r1;
    void *var_r1_25;
    void *var_r1_29;
    void *var_r1_2;
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
    if (((struct PlayerD368 *)arg0)->f20 == 0xD) {
        goto block_2;
    }
    d368_sub_0801E024(arg0);
    d368_sub_0801DD9C();
block_2:
    ((struct PlayerD368 *)arg0)->fC4 = (u16) ((struct PlayerD368 *)arg0)->f62;
    ((struct PlayerD368 *)arg0)->fC2 = (u16) ((struct PlayerD368 *)arg0)->f60;
    ((struct PlayerD368 *)arg0)->fDC = (s32) (((struct PlayerD368 *)arg0)->f0 << 0x18);
    sp128 = 0;
    sp1B4 = arg0 + 0x62;
    sp1BC = arg0 + 0xC4;
    sp1B0 = arg0 + 0x60;
    sp1B8 = arg0 + 0xC2;
    sp1C8 = arg0 + 0xDC;
    var_r0 = arg0 + 0xE4;
loop_3:
    *var_r0 = 0;
    var_r0 += 0x1;
    temp_r2 = sp128 + 1;
    sp128 = temp_r2;
    if (temp_r2 <= 4U) {
        goto loop_3;
    }
    ((struct PlayerD368 *)arg0)->f114 = 0U;
    if (((struct PlayerD368 *)arg0)->f20 == 0xD) {
        goto loop_7;
    }
    d368_sub_08060DB0(1);
    d368_sub_08061688(1);
    d368_sub_08015E00(arg0);
    temp_r2_2 = (d368_sub_080020F4() * 0x14C) + ((u8 *)&d368_gUnk_03003CE0 + 0x30);
    *temp_r2_2 |= 1;
    ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 | 0x800);
    d368_sub_0800D2F4();
    d368_sub_08067B50();
    d368_sub_08065DAC();
    d368_sub_08065D50();
    goto loop_7;
block_6:
    d368_sub_080003F0();
loop_7:
    if (((struct PlayerD368 *)arg0)->f2 == 0) {
        goto block_6;
    }
    if (!(1 & M2C_FIELD(d368_gUnk_03005CF4, u16 *, 4))) {
        goto block_6;
    }
    d368_sub_08065838(((struct PlayerD368 *)arg0)->f0, 0x78);
    goto loop_1867;
block_10:
    sp1C0 = &coordF0;
    sp1C4 = &coordF2;
    goto loop_12;
block_11:
    d368_sub_080003F0();
loop_12:
    if (d368_sub_0800CD34() != 0) {
        goto block_11;
    }
    if (sp168 == sp16C) {
        goto block_17;
    }
    sp168 = sp16C;
    sp128 = 1;
loop_15:
    temp_r1 = (sp128 * 2) + ((struct PlayerD368 *)arg0)->fAC;
    *temp_r1 = *(temp_r1 - 0x2);
    temp_r4 = sp128 + 1;
    sp128 = temp_r4;
    if (temp_r4 <= 0x1FU) {
        goto loop_15;
    }
    M2C_FIELD(((struct PlayerD368 *)arg0)->fAC, u16 *, 0) = (u16) ((u16) M2C_FIELD(sp180, u16 *, 0) >> 4);
    M2C_FIELD(((struct PlayerD368 *)arg0)->fAC, s16 *, 2) = (s16) ((u32) (M2C_FIELD(sp180, u16 *, 2) << 0x14) >> 0x14);
block_17:
    if (((struct PlayerD368 *)arg0)->f20 != 0xD) {
        goto block_19;
    }
    goto block_394;
block_19:
    if (d368_sub_0805EF90() != 0) {
        goto block_21;
    }
    ((struct PlayerD368 *)arg0)->f18 = 1U;
    ((struct PlayerD368 *)arg0)->f1A = 2U;
    sp174 = (u32) (u8) (sp174 + 1);
    goto block_22;
block_21:
    ((struct PlayerD368 *)arg0)->f18 = 0U;
    ((struct PlayerD368 *)arg0)->f1A = 0U;
    sp174 = 0;
block_22:
    if (d368_sub_0800CD8C() != 0) {
        goto block_24;
    }
    d368_sub_0801DD9C();
block_24:
    if (d368_sub_0800CC98() != 0) {
        goto block_46;
    }
    if (d368_sub_08058DB0() != 0) {
        goto block_46;
    }
    d368_sub_08013C3C(arg0);
    temp_r1_2 = (sp144 << 0x10) + 0x10000;
    sp144 = temp_r1_2 >> 0x10;
    if ((s32) ((s32) temp_r1_2 >> 0x10) < (s32) ((struct PlayerD368 *)arg0)->f5E) {
        goto block_28;
    }
    sp144 = (u32) (u16) ((struct PlayerD368 *)arg0)->f5E;
block_28:
    ((s32 *)&historyPair)[d368_gUnk_03002344 & 1] = d368_sub_0805D37C(((struct PlayerD368 *)arg0)->f8C, ((struct PlayerD368 *)arg0)->f90, (u32) (M2C_FIELD(sp180, u8 *, 4) << 0x1A) >> 0x1A);
    temp_r0_2 = M2C_FIELD((s32 *)&historyPair, s32 *, 0);
    if (temp_r0_2 == 0) {
        goto block_30;
    }
    sp184 = temp_r0_2;
    sp188 = 0;
    goto block_34;
block_30:
    temp_r0_3 = M2C_FIELD((s32 *)&historyPair, s32 *, 4);
    if (temp_r0_3 == 0) {
        goto block_32;
    }
    sp184 = temp_r0_3;
    sp188 = 0;
    goto block_34;
block_32:
    temp_r0_4 = sp188;
    sp188 = temp_r0_4 + 1;
    if (temp_r0_4 <= 2) {
        goto block_34;
    }
    sp184 = 0;
    sp188 = 0;
block_34:
    if (d368_sub_0801DF8C() == 0) {
        goto block_36;
    }
    sp184 = 0;
block_36:
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x8C) != 0xD) {
        goto block_39;
    }
    if (d368_gUnk_030056FC != 0) {
        goto block_39;
    }
    sp184 = 0;
block_39:
    if (sp184 == 0) {
        goto block_44;
    }
    if (d368_sub_0805F184() != 0) {
        goto block_46;
    }
    if (d368_sub_0806569C() != 0) {
        goto block_46;
    }
    if (d368_sub_0800CE68() != 0) {
        goto block_46;
    }
    d368_sub_0805FFBC(0xF, 0x12, sp184 + 0x10, 0x80000000);
    sp18C = 0;
    goto block_46;
block_44:
    if (sp18C != 0) {
        goto block_46;
    }
    d368_sub_0801A664(0x12, 2);
    sp18C = 1;
block_46:
    temp_r1_3 = ((struct PlayerD368 *)arg0)->f30;
    temp_r5 = temp_r1_3 & 1;
    if (temp_r5 == 0) {
        goto block_48;
    }
    ((struct PlayerD368 *)arg0)->f12 = 0U;
    ((struct PlayerD368 *)arg0)->f14 = 0U;
    ((struct PlayerD368 *)arg0)->f16 = 0U;
    *(((struct PlayerD368 *)arg0)->f136 + ((struct PlayerD368 *)arg0)->f13C) = 0xF0 & d368_gUnk_0300130C;
    ((struct PlayerD368 *)arg0)->f136 = (u16) ((s32) (((struct PlayerD368 *)arg0)->f136 + 1) % 5);
    goto block_58;
block_48:
    if (!(temp_r1_3 & 4)) {
        goto block_51;
    }
    temp_r0_5 = (u16) d368_sub_08016C88(((struct PlayerD368 *)arg0)->f8C, ((struct PlayerD368 *)arg0)->f90, ((struct PlayerD368 *)arg0)->f9C, ((struct PlayerD368 *)arg0)->fA0, (8));
    ((struct PlayerD368 *)arg0)->f12 = temp_r0_5;
    ((struct PlayerD368 *)arg0)->f14 = temp_r5;
    if ((temp_r0_5 << 0x10) != 0) {
        goto block_58;
    }
    ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 & ~0x24);
    temp_r1_4 = (d368_sub_080020F4() * 0x14C) + ((u8 *)&d368_gUnk_03003CE0 + 0x30);
    *temp_r1_4 |= 1;
    goto block_58;
block_51:
    temp_r4_2 = 0xF0 & d368_gUnk_0300130C;
    *(((struct PlayerD368 *)arg0)->f136 + ((struct PlayerD368 *)arg0)->f13C) = temp_r4_2;
    ((struct PlayerD368 *)arg0)->f136 = (u16) ((s32) (((struct PlayerD368 *)arg0)->f136 + 1) % 5);
    if (temp_r4_2 == 0) {
        goto block_54;
    }
    sp128 = 0;
    var_r2 = ((struct PlayerD368 *)arg0)->f13C;
loop_53:
    d368_gUnk_0300130C |= *var_r2;
    var_r2 += 0x1;
    temp_r4_3 = sp128 + 1;
    sp128 = temp_r4_3;
    if (temp_r4_3 <= 4U) {
        goto loop_53;
    }
block_54:
    var_r0_2 = d368_sub_0801AC78();
    if (var_r0_2 == 0) {
        goto block_56;
    }
    ((struct PlayerD368 *)arg0)->f12 = (u16) d368_gUnk_0300130C;
    ((struct PlayerD368 *)arg0)->f14 = (u16) d368_gUnk_03001324;
    var_r0_2 = (s32) d368_gUnk_03001328;
    goto block_57;
block_56:
    ((struct PlayerD368 *)arg0)->f12 = (u16) var_r0_2;
    ((struct PlayerD368 *)arg0)->f14 = (u16) var_r0_2;
block_57:
    ((struct PlayerD368 *)arg0)->f16 = (u16) var_r0_2;
block_58:
    temp_r2_3 = ((struct PlayerD368 *)arg0)->f30;
    if (!(0x10 & temp_r2_3)) {
        goto block_60;
    }
    ((struct PlayerD368 *)arg0)->f14 = (u16) (((struct PlayerD368 *)arg0)->f14 & ~(((struct PlayerD368 *)arg0)->f18 | 0xC));
    ((struct PlayerD368 *)arg0)->f30 = (u32) (temp_r2_3 & ~0x10);
block_60:
    temp_r2_4 = ((struct PlayerD368 *)arg0)->f30;
    if (!(0x10000 & temp_r2_4)) {
        goto block_62;
    }
    ((struct PlayerD368 *)arg0)->f14 = (u16) (((struct PlayerD368 *)arg0)->f14 & ~(((struct PlayerD368 *)arg0)->f1A | 0xC));
    ((struct PlayerD368 *)arg0)->f30 = (u32) (temp_r2_4 & 0xFFFEFFFF);
block_62:
    temp_r4_4 = ((struct PlayerD368 *)arg0)->f8C;
    temp_r5_2 = ((struct PlayerD368 *)arg0)->f90;
    temp_r0_6 = (u8) d368_sub_0800BCA0(temp_r4_4, temp_r5_2, d368_sub_0800CCCC());
    if (temp_r0_6 == 7) {
        goto block_65;
    }
    if (temp_r0_6 == 8) {
        goto block_66;
    }
    goto block_68;
block_65:
    sp144 = 0;
    sp154 = 0;
    goto block_68;
block_66:
    ((struct PlayerD368 *)arg0)->f14 = (u16) (0xFFF7 & ((struct PlayerD368 *)arg0)->f14);
    if (d368_sub_0800D098() == 0) {
        goto block_68;
    }
    ((struct PlayerD368 *)arg0)->f12 = (u16) (0xFF0F & ((struct PlayerD368 *)arg0)->f12);
    d368_sub_08065230(sp178, 0x78, 0x3C, 0x21U, (0));
block_68:
    if ((u32) (u16) (((struct PlayerD368 *)arg0)->f20 - 0xB) > 1U) {
        goto block_70;
    }
    goto block_279;
block_70:
    if (d368_sub_0805EF90() == 0) {
        goto block_72;
    }
    goto block_279;
block_72:
    temp_r1_5 = ((struct PlayerD368 *)arg0)->f14;
    if (!(0x200 & temp_r1_5)) {
        goto block_89;
    }
    if (d368_sub_0800CE68() == 0) {
        goto block_75;
    }
    goto block_279;
block_75:
    if (d368_sub_08058DB0() == 0) {
        goto block_77;
    }
    goto block_279;
block_77:
    if (!(((struct PlayerD368 *)arg0)->f30 & 0x2400)) {
        goto block_79;
    }
    goto block_279;
block_79:
    if (d368_sub_0800CCCC() == 0) {
        goto block_82;
    }
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x90) != 2) {
        goto block_82;
    }
    sp128 = (u32) d368_sub_08057B64(3);
    goto block_83;
block_82:
    sp128 = 0;
block_83:
    if ((u32) (sp128 - 2) > 8U) {
        goto block_85;
    }
    goto block_279;
block_85:
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x8C) != 8) {
        goto block_88;
    }
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x90) != 0x11) {
        goto block_88;
    }
    goto block_279;
block_88:
    d368_sub_08000420(0x18A92);
    goto block_279;
block_89:
    if (((struct PlayerD368 *)arg0)->f18 & d368_gUnk_03001324) {
        goto block_91;
    }
    goto block_136;
block_91:
    temp_r3 = ((struct PlayerD368 *)arg0)->f30;
    if (0x6001 & temp_r3) {
        goto block_103;
    }
    if (d368_sub_0800CE68() == 0) {
        goto block_94;
    }
    goto block_279;
block_94:
    if (d368_sub_0800CC98() == 0) {
        goto block_96;
    }
    goto block_279;
block_96:
    if (((struct PlayerD368 *)arg0)->f20 != 0xC) {
        goto block_98;
    }
    goto block_279;
block_98:
    if (sp184 != 0) {
        goto block_100;
    }
    goto block_279;
block_100:
    if (d368_sub_080686F4(sp184) != 0) {
        goto block_102;
    }
    d368_sub_08065A90(0x3D5, 0x1E);
    goto block_279;
block_102:
    ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 | 0x4000);
    temp_r1_6 = ~((struct PlayerD368 *)arg0)->f18;
    ((struct PlayerD368 *)arg0)->f14 = (u16) (temp_r1_6 & ((struct PlayerD368 *)arg0)->f14);
    ((struct PlayerD368 *)arg0)->f12 = (u16) (temp_r1_6 & ((struct PlayerD368 *)arg0)->f12);
    goto block_279;
block_103:
    if (0x2000 & temp_r3) {
        goto block_105;
    }
    goto block_279;
block_105:
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x8C) != 2) {
        goto block_108;
    }
    if (M2C_FIELD(((u8 *)&d368_gUnk_03003170 + 0x8C), u16 *, 4) != 7) {
        goto block_108;
    }
    goto block_279;
block_108:
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x8C) != 5) {
        goto block_111;
    }
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x90) != 0xA) {
        goto block_111;
    }
    goto block_279;
block_111:
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x8C) != 8) {
        goto block_114;
    }
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x90) != 0x11) {
        goto block_114;
    }
    goto block_279;
block_114:
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x8C) != 0xD) {
        goto block_116;
    }
    goto block_279;
block_116:
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x8C) != 0x13) {
        goto block_119;
    }
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x90) != 2) {
        goto block_119;
    }
    goto block_279;
block_119:
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x8C) != 0x15) {
        goto block_124;
    }
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x90) != 2) {
        goto block_122;
    }
    goto block_279;
block_122:
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x90) != 4) {
        goto block_124;
    }
    goto block_279;
block_124:
    if (!(temp_r3 & 0x01800401)) {
        goto block_126;
    }
    goto block_279;
block_126:
    if (d368_sub_0800CF80() == 0) {
        goto block_128;
    }
    goto block_279;
block_128:
    if (d368_sub_08058DB0() == 0) {
        goto block_130;
    }
    goto block_279;
block_130:
    if (d368_sub_08056E90() == 0) {
        goto block_132;
    }
    goto block_279;
block_132:
    if (d368_sub_0800CB9C() == 0) {
        goto block_135;
    }
    if (d368_sub_0800CDC0() == 0) {
        goto block_135;
    }
    goto block_279;
block_135:
    temp_r0_7 = (s32) d368_sub_0805DF38(1, 0xE, 0x19, 2, (-2), (0x1404E1));
    sp17C = temp_r0_7;
    d368_sub_0805EF84(temp_r0_7, 1);
    ((struct PlayerD368 *)arg0)->f20 = 0xCU;
    ((struct PlayerD368 *)arg0)->f22 = 7U;
    goto block_279;
block_136:
    if (!(0x100 & temp_r1_5)) {
        goto block_157;
    }
    if (((struct PlayerD368 *)arg0)->f20 != 0xC) {
        goto block_139;
    }
    goto block_279;
block_139:
    if (d368_sub_0800CC98() == 0) {
        goto block_141;
    }
    goto block_279;
block_141:
    if (d368_sub_08058DB0() == 0) {
        goto block_143;
    }
    goto block_279;
block_143:
    if (d368_sub_0800CE68() == 0) {
        goto block_145;
    }
    goto block_279;
block_145:
    if (!(((struct PlayerD368 *)arg0)->f30 & 0x2400)) {
        goto block_147;
    }
    goto block_279;
block_147:
    if (d368_sub_0800CCCC() == 0) {
        goto block_150;
    }
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x90) != 2) {
        goto block_150;
    }
    sp128 = (u32) d368_sub_08057B64(3);
    goto block_151;
block_150:
    sp128 = 0;
block_151:
    if ((u32) (sp128 - 2) > 8U) {
        goto block_153;
    }
    goto block_279;
block_153:
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x8C) != 8) {
        goto block_156;
    }
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x90) != 0x11) {
        goto block_156;
    }
    goto block_279;
block_156:
    d368_sub_08000420(0x18A93);
    goto block_279;
block_157:
    if (((struct PlayerD368 *)arg0)->f1A & ((struct PlayerD368 *)arg0)->f16) {
        goto block_159;
    }
    goto block_197;
block_159:
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x8C) != 0xC) {
        goto block_161;
    }
    goto block_197;
block_161:
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x8C) != 0xE) {
        goto block_163;
    }
    goto block_197;
block_163:
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x8C) != 0xB) {
        goto block_165;
    }
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x90) == 0) {
        goto block_197;
    }
block_165:
    temp_r0_8 = ((struct PlayerD368 *)arg0)->f20;
    if (temp_r0_8 == 3) {
        goto block_197;
    }
    if (temp_r0_8 == 0xE) {
        goto block_197;
    }
    if (temp_r0_8 == 0xB) {
        goto block_197;
    }
    if (temp_r0_8 == 4) {
        goto block_197;
    }
    if (temp_r0_8 == 6) {
        goto block_197;
    }
    if (temp_r0_8 == 7) {
        goto block_197;
    }
    if (temp_r0_8 == 8) {
        goto block_197;
    }
    if (temp_r0_8 == 0xC) {
        goto block_197;
    }
    if (sp174 <= 5U) {
        goto block_197;
    }
    if (((struct PlayerD368 *)arg0)->f30 & 0x01802404) {
        goto block_197;
    }
    if (d368_sub_08058DB0() == 0) {
        goto block_177;
    }
    goto block_279;
block_177:
    if (d368_sub_0800CE68() == 0) {
        goto block_179;
    }
    goto block_279;
block_179:
    if (d368_sub_0800CC98() == 0) {
        goto block_181;
    }
    goto block_279;
block_181:
    if (((struct PlayerD368 *)arg0)->f20 != 0xC) {
        goto block_183;
    }
    goto block_279;
block_183:
    if (*(u16 *)(sp12C + 0x56 + (M2C_FIELD(sp12C, u16 *, 0x54) * 2)) != 0) {
        goto block_185;
    }
    goto block_279;
block_185:
    if (sp194 == 0xFFFF) {
        goto block_187;
    }
    goto block_279;
block_187:
    temp_r0_9 = *(u16 *)(d368_gUnk_030034E0 + 0x56 + (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x54) * 2));
    if (temp_r0_9 != 0) {
        goto block_189;
    }
    goto block_279;
block_189:
    temp_r4_5 = d368_sub_0805D548(temp_r0_9 - 1);
    if (d368_sub_0801DE60() != 0) {
        goto block_191;
    }
    var_r2_2 = d368_sub_0801E0AC(d368_gUnk_030034E0 + 0x30, 5);
    goto block_192;
block_191:
    var_r2_2 = 0;
block_192:
    if (temp_r4_5 != -1) {
        goto block_194;
    }
    goto block_279;
block_194:
    if (d368_sub_0805BD5C(d368_gUnk_030034E0 + ((temp_r4_5 * 0x10) + 0x150), var_r2_2) != 0) {
        goto block_196;
    }
    goto block_279;
block_196:
    d368_sub_0805D580(temp_r4_5);
    goto block_279;
block_197:
    if (8 & temp_r1_5) {
        goto block_199;
    }
    goto block_244;
block_199:
    if (d368_sub_0800CCCC() == 0) {
        goto block_202;
    }
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x90) != 2) {
        goto block_202;
    }
    sp128 = (u32) d368_sub_08057B64(3);
    goto block_203;
block_202:
    sp128 = 0;
block_203:
    temp_r1_7 = ((struct PlayerD368 *)arg0)->f30;
    if (!(0x01802404 & temp_r1_7)) {
        goto block_205;
    }
    goto block_279;
block_205:
    temp_r0_10 = ((struct PlayerD368 *)arg0)->f20;
    if (temp_r0_10 != 0xC) {
        goto block_207;
    }
    goto block_279;
block_207:
    if (temp_r0_10 != 0xA) {
        goto block_209;
    }
    goto block_279;
block_209:
    if (temp_r0_10 != 0xB) {
        goto block_211;
    }
    goto block_279;
block_211:
    if (temp_r0_10 != 5) {
        goto block_213;
    }
    goto block_279;
block_213:
    if (temp_r0_10 != 3) {
        goto block_215;
    }
    goto block_279;
block_215:
    if (temp_r0_10 != 9) {
        goto block_217;
    }
    goto block_279;
block_217:
    if (temp_r0_10 != 4) {
        goto block_219;
    }
    goto block_279;
block_219:
    if (!(temp_r1_7 & 0x400000)) {
        goto block_221;
    }
    goto block_279;
block_221:
    if (d368_sub_08058DB0() == 0) {
        goto block_223;
    }
    goto block_279;
block_223:
    if (d368_sub_0800CC98() == 0) {
        goto block_225;
    }
    goto block_279;
block_225:
    if (d368_sub_0801AAE0() != 0) {
        goto block_227;
    }
    goto block_279;
block_227:
    if (d368_sub_0800D11C() == 0) {
        goto block_229;
    }
    goto block_279;
block_229:
    if (d368_sub_0800CE68() == 0) {
        goto block_231;
    }
    goto block_279;
block_231:
    if (((struct PlayerD368 *)arg0)->f20 != 0xE) {
        goto block_233;
    }
    goto block_279;
block_233:
    if (d368_sub_0800BA6C() != 0) {
        goto block_235;
    }
    goto block_279;
block_235:
    if (sp174 > 5U) {
        goto block_237;
    }
    goto block_279;
block_237:
    if (d368_sub_0801AAE0() != 0) {
        goto block_239;
    }
    goto block_279;
block_239:
    temp_r0_11 = d368_sub_08065974();
    if (temp_r0_11 == 0) {
        goto block_241;
    }
    goto block_279;
block_241:
    if ((u32) (sp128 - 2) > 8U) {
        goto block_243;
    }
    goto block_279;
block_243:
    temp_r3_2 = (0x14C * d368_sub_080020F4()) + ((u8 *)&d368_gUnk_03003CE0 + 0x30);
    *temp_r3_2 |= 1;
    ((struct PlayerD368 *)arg0)->f14 = temp_r0_11;
    ((struct PlayerD368 *)arg0)->f12 = temp_r0_11;
    d368_sub_08065654();
    goto block_279;
block_244:
    if (4 & temp_r1_5) {
        goto block_246;
    }
    goto block_279;
block_246:
    sp128 = 1;
    temp_r1_8 = M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x8C) - 2;
    if (temp_r1_8 > 0x11U) {
        goto block_257;
    }
    switch (temp_r1_8) { case 0: goto sw1_0; case 1: goto sw1_1; case 3: goto sw1_3; case 12: goto sw1_12; case 17: goto sw1_17; case 2: goto sw1_2; case 4: goto sw1_4; case 5: goto sw1_5; case 6: goto sw1_6; case 7: goto sw1_7; case 8: goto sw1_8; case 9: goto sw1_9; case 10: goto sw1_10; case 11: goto sw1_11; case 13: goto sw1_13; case 14: goto sw1_14; case 15: goto sw1_15; case 16: goto sw1_16; }
sw1_0:
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x90) != 7) {
        goto block_258;
    }
    sp128 = 0;
    goto block_258;
sw1_1:
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x90) != 4) {
        goto block_258;
    }
    sp128 = 0;
    goto block_258;
sw1_3:
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x90) != 0xA) {
        goto block_258;
    }
    sp128 = 0;
    goto block_258;
sw1_12:
    sp128 = 0;
    goto block_258;
sw1_17:
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x90) != 2) {
        goto block_258;
    }
    sp128 = 0;
    goto block_258;
sw1_2:
sw1_4:
sw1_5:
sw1_6:
sw1_7:
sw1_8:
sw1_9:
sw1_10:
sw1_11:
sw1_13:
sw1_14:
sw1_15:
sw1_16:
block_257:
    sp128 = 1;
block_258:
    if (d368_sub_0800CF80() != 0) {
        goto block_278;
    }
    if (sp128 != 1) {
        goto block_278;
    }
    temp_r0_12 = ((struct PlayerD368 *)arg0)->f20;
    if (temp_r0_12 == 4) {
        goto block_278;
    }
    if (temp_r0_12 == 3) {
        goto block_278;
    }
    if (temp_r0_12 == 0xA) {
        goto block_278;
    }
    if (temp_r0_12 == 9) {
        goto block_278;
    }
    if (temp_r0_12 == 5) {
        goto block_278;
    }
    if (temp_r0_12 == 0xC) {
        goto block_278;
    }
    if (M2C_FIELD(d368_gUnk_030034E0, u8 *, 0x13A) == 0) {
        goto block_278;
    }
    if (d368_sub_0800CCCC() != 0) {
        goto block_278;
    }
    if (sp174 <= 5U) {
        goto block_278;
    }
    if (d368_sub_0800CD8C() != 0) {
        goto block_278;
    }
    if (((struct PlayerD368 *)arg0)->f20 == 0xE) {
        goto block_277;
    }
    temp_r5_3 = ((struct PlayerD368 *)arg0)->f30 & 0x01803400;
    if (temp_r5_3 != 0) {
        goto block_277;
    }
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x8C) != 0xB) {
        goto block_274;
    }
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x90) == 0) {
        goto block_277;
    }
block_274:
    if ((u32) ((struct PlayerD368 *)arg0)->fC6 < (u32) (M2C_FIELD((void *) d368_sub_08007290(M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x132) | 0x110000), s32 *, 0xA0) + (s8) ((struct PlayerD368 *)arg0)->f79)) {
        goto block_277;
    }
    if ((u32) ((struct PlayerD368 *)arg0)->f64 > 9U) {
        goto block_277;
    }
    ((struct PlayerD368 *)arg0)->f68 = temp_r5_3;
    ((struct PlayerD368 *)arg0)->f20 = 0xEU;
    ((struct PlayerD368 *)arg0)->fC6 = (s16) temp_r5_3;
    d368_sub_0806617C();
    goto block_279;
block_277:
    d368_sub_0805865C(0x61);
    goto block_279;
block_278:
    d368_sub_0805865C(0x61);
block_279:
    temp_r0_13 = ((struct PlayerD368 *)arg0)->f114 - 1;
    ((struct PlayerD368 *)arg0)->f114 = temp_r0_13;
    if ((s32) (temp_r0_13 << 0x10) > 0) {
        goto block_281;
    }
    ((struct PlayerD368 *)arg0)->f114 = 0U;
block_281:
    ((struct PlayerD368 *)arg0)->f122 = (u16) (((struct PlayerD368 *)arg0)->f122 + 1);
    if (d368_sub_0800CDF8() == 0) {
        goto block_283;
    }
    goto block_392;
block_283:
    if (!(((struct PlayerD368 *)arg0)->f30 & 0x2000)) {
        goto block_285;
    }
    goto block_392;
block_285:
    temp_r0_14 = d368_sub_0801DE60();
    if (temp_r0_14 == 4) {
        goto block_290;
    }
    if ((s32) temp_r0_14 > 4) {
        goto block_289;
    }
    if (temp_r0_14 == 1) {
        goto block_290;
    }
    goto block_291;
block_289:
    if (temp_r0_14 != 6) {
        goto block_291;
    }
block_290:
    var_r2_3 = d368_sub_0801E0AC(d368_gUnk_030034E0 + 0x30, 7);
    goto block_292;
block_291:
    var_r2_3 = 0;
block_292:
    temp_r0_15 = sp198;
    sp198 = temp_r0_15 + 1;
    if ((s32) (0xBB80 / (s32) (((struct PlayerD368 *)arg0)->f3C + ((0x64 * (var_r2_3 + (s8) ((struct PlayerD368 *)arg0)->f70)) + 0xC8))) >= temp_r0_15) {
        goto block_295;
    }
    sp198 = 0;
    temp_r0_16 = *sp1B8 + 0xA;
    *sp1B8 = temp_r0_16;
    if ((s32) (s16) temp_r0_16 <= (s32) (s16) *sp1B0) {
        goto block_295;
    }
    *sp1B8 = *sp1B0;
block_295:
    var_r6 = ((struct PlayerD368 *)arg0)->f34;
    sp128 = 0;
loop_296:
    temp_r1_9 = M2C_FIELD(var_r6, s16 *, 0);
    if ((s32) temp_r1_9 >= 0) {
        goto block_299;
    }
    var_r3 = var_r6 + 0x14;
    if (temp_r1_9 == -2) {
        goto block_299;
    }
    goto block_388;
block_299:
    temp_r0_17 = M2C_FIELD(var_r6, u16 *, 2);
    if ((u32) temp_r0_17 <= 3U) {
        goto block_301;
    }
    goto block_362;
block_301:
    temp_r0_18 = M2C_FIELD(((temp_r0_17 * 0x14C) + (u8 *)&d368_gUnk_03003CE0), u16 *, 0xC) - 2;
    var_r3 = var_r6 + 0x14;
    if (temp_r0_18 <= 6U) {
        goto block_303;
    }
    goto block_388;
block_303:
    switch (temp_r0_18) { case 0: goto sw2_0; case 1: goto sw2_1; case 4: goto sw2_4; case 6: goto sw2_6; case 3: goto sw2_3; case 2: goto sw2_2; case 5: goto sw2_5; }
sw2_0:
    var_r3 = var_r6 + 0x14;
    if (M2C_FIELD(var_r6, u16 *, 4) == 7) {
        goto block_306;
    }
    goto block_388;
block_306:
    if (!(*(u32 *)((0x14C * temp_r0_17) + ((u8 *)&d368_gUnk_03003CE0 + 0x30)) & 0x2000)) {
        goto block_308;
    }
    goto block_390;
block_308:
    sp1CC = var_r3;
    if (d368_sub_0801DF8C() == 0) {
        goto block_310;
    }
    goto block_388;
block_310:
    if (((struct PlayerD368 *)arg0)->f68 == M2C_FIELD(((0x14C * M2C_FIELD(var_r6, u16 *, 2)) + (u8 *)&d368_gUnk_03003CE0), u8 *, 0x68)) {
        goto block_312;
    }
    goto block_388;
block_312:
    temp_r2_5 = sp150;
    sp150 = (u32) (u16) (temp_r2_5 + 1);
    if (temp_r2_5 > (u32) *(u16 *)((M2C_FIELD(var_r6, u16 *, 6) * 2) + (u8 *)&d368_gUnk_0847ACF8)) {
        goto block_314;
    }
    goto block_388;
block_314:
    temp_r0_19 = *sp1BC + 1;
    *sp1BC = temp_r0_19;
    if ((s32) (s16) temp_r0_19 <= (s32) (s16) *sp1B4) {
        goto block_316;
    }
    *sp1BC = *sp1B4;
block_316:
    sp150 = 0;
    goto block_388;
sw2_1:
    var_r3 = var_r6 + 0x14;
    if (M2C_FIELD(var_r6, u16 *, 4) == 6) {
        goto block_319;
    }
    goto block_388;
block_319:
    if (!(*(u32 *)((temp_r0_17 * 0x14C) + ((u8 *)&d368_gUnk_03003CE0 + 0x30)) & 0x2000)) {
        goto block_321;
    }
    goto block_390;
block_321:
    sp1CC = var_r3;
    if (d368_sub_0800CF80() == 0) {
        goto block_323;
    }
    goto block_388;
block_323:
    var_r5 = 0;
loop_324:
    if (!(d368_gUnk_030056FC & (1 << var_r5))) {
        goto block_340;
    }
    sp1D4 = var_r5 * 2;
    temp_r1_10 = d368_gUnk_030056F4 + (var_r5 * 0x2E0);
    var_r1 = temp_r1_10 + 0x8C;
    var_r4 = 0;
    sp128 = 0;
    sp1D0 = (s32) M2C_FIELD(temp_r1_10, s16 *, 0x8C);
    if (sp1D0 != -2) {
        goto loop_328;
    }
    if (M2C_FIELD(var_r1, u16 *, 4) != 6) {
        goto loop_328;
    }
    if (M2C_FIELD(var_r1, u16 *, 2) == ((struct PlayerD368 *)arg0)->f0) {
        goto block_340;
    }
loop_328:
    temp_r0_20 = sp128 + 1;
    sp128 = temp_r0_20;
    var_r1 += 0x28;
    if (temp_r0_20 > 7U) {
        goto block_333;
    }
    if (M2C_FIELD(var_r1, s16 *, 0) != -2) {
        goto loop_328;
    }
    if (M2C_FIELD(var_r1, u16 *, 4) != 6) {
        goto loop_328;
    }
    if (M2C_FIELD(var_r1, u16 *, 2) != ((struct PlayerD368 *)arg0)->f0) {
        goto loop_328;
    }
    var_r4 = 1;
block_333:
    if (var_r4 != 0) {
        goto block_340;
    }
    temp_r1_11 = d368_gUnk_030056F4 + ((((sp1D4 + var_r5) * 8) - var_r5) << 5);
    var_r1_2 = temp_r1_11 + 0x8C;
    sp128 = 0;
    if (M2C_FIELD(temp_r1_11, s16 *, 0x8C) != -1) {
        goto loop_336;
    }
    *(struct Copy40D368 *)var_r1_2 = *(struct Copy40D368 *)var_r6;
    goto block_340;
loop_336:
    temp_r4_6 = sp128 + 1;
    sp128 = temp_r4_6;
    var_r1_2 += 0x28;
    if (temp_r4_6 > 7U) {
        goto block_340;
    }
    if (M2C_FIELD(var_r1_2, s16 *, 0) != -1) {
        goto loop_336;
    }
    *(struct Copy40D368 *)var_r1_2 = *(struct Copy40D368 *)var_r6;
block_340:
    var_r5 += 1;
    if (var_r5 <= 4U) {
        goto loop_324;
    }
    goto block_388;
sw2_4:
sw2_6:
    var_r3 = var_r6 + 0x14;
    if (M2C_FIELD(var_r6, u16 *, 4) == 4) {
        goto block_344;
    }
    goto block_388;
block_344:
    sp1CC = var_r3;
    if (d368_sub_0800CCCC() != 0) {
        goto block_348;
    }
    if (d368_sub_0801DF8C() != 0) {
        goto block_348;
    }
    var_r3 = sp1CC;
    if (d368_sub_08056E90() != 0) {
        goto block_348;
    }
    goto block_388;
block_348:
    d368_sub_0805AD78(M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x68));
    M2C_FIELD(var_r6, s16 *, 0) = 0;
    ((struct PlayerD368 *)arg0)->f64 = (u16) ((struct PlayerD368 *)arg0)->fC;
    d368_sub_0806617C();
    goto block_372;
sw2_3:
    var_r3 = var_r6 + 0x14;
    if (M2C_FIELD(var_r6, u16 *, 4) == 7) {
        goto block_351;
    }
    goto block_388;
block_351:
    if (!(*(u32 *)((0x14C * temp_r0_17) + ((u8 *)&d368_gUnk_03003CE0 + 0x30)) & 0x2000)) {
        goto block_353;
    }
    goto block_390;
block_353:
    sp1CC = var_r3;
    if (d368_sub_0801DF8C() == 0) {
        goto block_355;
    }
    goto block_388;
block_355:
    if (((struct PlayerD368 *)arg0)->f68 == M2C_FIELD(((0x14C * M2C_FIELD(var_r6, u16 *, 2)) + (u8 *)&d368_gUnk_03003CE0), u8 *, 0x68)) {
        goto block_357;
    }
    goto block_388;
block_357:
    temp_r2_6 = sp150;
    sp150 = (u32) (u16) (temp_r2_6 + 1);
    if (temp_r2_6 > (u32) *(u16 *)((M2C_FIELD(var_r6, u16 *, 6) * 2) + (u8 *)&d368_gUnk_0847ACF8)) {
        goto block_359;
    }
    goto block_388;
block_359:
    temp_r0_25 = *sp1BC + 1;
    *sp1BC = temp_r0_25;
    if ((s32) (s16) temp_r0_25 <= (s32) (s16) *sp1B4) {
        goto block_361;
    }
    *sp1BC = *sp1B4;
block_361:
    sp150 = 0;
    goto block_388;
block_362:
    temp_r0_26 = M2C_FIELD(var_r6, u16 *, 4) - 1;
    var_r3 = var_r6 + 0x14;
    if (temp_r0_26 <= 6U) {
        goto block_364;
    }
    goto block_388;
block_364:
    switch (temp_r0_26) { case 0: goto sw3_0; case 1: goto sw3_1; case 3: goto sw3_3; case 5: goto sw3_5; case 6: goto sw3_6; }
sw3_0:
    var_r3 = var_r6 + 0x14;
    if (M2C_FIELD(var_r6, s16 *, 0) == 0) {
        goto block_367;
    }
    goto block_388;
block_367:
    M2C_FIELD(&((struct PlayerD368 *)arg0)->f88, u16 *, 2) = (u16) (M2C_FIELD(var_r6, u16 *, 6) + M2C_FIELD(&((struct PlayerD368 *)arg0)->f88, u16 *, 2));
    goto block_388;
sw3_1:
    if (!(0xF1 & ((struct PlayerD368 *)arg0)->f14)) {
        goto block_371;
    }
    temp_r1_16 = (u16) M2C_FIELD(var_r6, s16 *, 0) - 6;
    M2C_FIELD(var_r6, s16 *, 0) = temp_r1_16;
    if ((s32) (temp_r1_16 << 0x10) >= 0) {
        goto block_371;
    }
    M2C_FIELD(var_r6, s16 *, 0) = temp_r1_16 | 0xFFFF;
block_371:
    ((struct PlayerD368 *)arg0)->f14 = (u16) (0xFFFE & ((struct PlayerD368 *)arg0)->f14);
block_372:
    var_r3 = var_r6 + 0x14;
    goto block_388;
sw3_3:
    var_r3 = var_r6 + 0x14;
    if (M2C_FIELD(var_r6, s16 *, 0) == 0) {
        goto block_375;
    }
    goto block_388;
block_375:
    sp1CC = var_r3;
    if (d368_sub_0801DF8C() != 0) {
        goto block_388;
    }
    M2C_FIELD(&((struct PlayerD368 *)arg0)->f88, u16 *, 0) = (u16) (M2C_FIELD(var_r6, u16 *, 6) + M2C_FIELD(&((struct PlayerD368 *)arg0)->f88, u16 *, 0));
    goto block_388;
sw3_5:
    if ((((s16) M2C_FIELD(var_r6, s16 *, 0) % 60) << 0x10) != 0) {
        goto block_380;
    }
    if (d368_sub_0800D1B0() != 0) {
        goto block_380;
    }
    temp_r5_4 = (M2C_FIELD(var_r6, s32 *, 0x18) * 0xA) + 0x64;
    M2C_FIELD(&((struct PlayerD368 *)arg0)->f88, u16 *, 0) = (u16) (M2C_FIELD(&((struct PlayerD368 *)arg0)->f88, u16 *, 0) + ((s32) (temp_r5_4 * M2C_FIELD(var_r6, u16 *, 6)) / 100));
    ((struct PlayerD368 *)arg0)->fE0 = 6;
    d368_sub_08069224(6, (u16) ((s32) (temp_r5_4 * M2C_FIELD(var_r6, u16 *, 6)) / 100), d368_gUnk_030034E0 + 0x24);
block_380:
    var_r3 = var_r6 + 0x14;
    if (M2C_FIELD(var_r6, s16 *, 0) != 1) {
        goto block_388;
    }
    sp1CC = var_r3;
    d368_sub_0805867C(0x73);
    goto block_387;
sw3_6:
    if ((((s16) M2C_FIELD(var_r6, s16 *, 0) % 60) << 0x10) != 0) {
        goto block_385;
    }
    if (d368_sub_0800D1B0() != 0) {
        goto block_385;
    }
    temp_r5_5 = (M2C_FIELD(var_r6, s32 *, 0x18) * 0xA) + 0x64;
    M2C_FIELD(&((struct PlayerD368 *)arg0)->f88, u16 *, 0) = (u16) (M2C_FIELD(&((struct PlayerD368 *)arg0)->f88, u16 *, 0) + ((s32) (temp_r5_5 * M2C_FIELD(var_r6, u16 *, 6)) / 100));
    ((struct PlayerD368 *)arg0)->fE0 = 6;
    d368_sub_08069224(6, (u16) ((s32) (temp_r5_5 * M2C_FIELD(var_r6, u16 *, 6)) / 100), d368_gUnk_030034E0 + 0x24);
block_385:
    var_r3 = var_r6 + 0x14;
    if (M2C_FIELD(var_r6, s16 *, 0) != 1) {
        goto block_388;
    }
    sp1CC = var_r3;
    d368_sub_0805867C(0x73);
block_387:
    var_r3 = sp1CC;
sw2_2:
sw2_5:
block_388:
    if ((s32) M2C_FIELD(var_r6, s16 *, 0) < 0) {
        goto block_390;
    }
    M2C_FIELD(var_r6, s16 *, 0) = (u16) M2C_FIELD(var_r6, s16 *, 0) - 1;
block_390:
    temp_r4_7 = sp128 + 1;
    sp128 = temp_r4_7;
    var_r6 = var_r3;
    if (temp_r4_7 > 7U) {
        goto block_392;
    }
    goto loop_296;
block_392:
    if (!(((struct PlayerD368 *)arg0)->f30 & 0x800)) {
        goto block_394;
    }
    d368_sub_0806617C();
    d368_sub_08066220();
    ((struct PlayerD368 *)arg0)->f130 = 0U;
    ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 & 0xFFFFF7FF);
block_394:
    temp_r0_27 = ((struct PlayerD368 *)arg0)->f20;
    if ((u32) temp_r0_27 <= 0xEU) {
        goto block_396;
    }
    goto block_1038;
block_396:
    switch (temp_r0_27) { case 0: goto sw4_0; case 1: goto sw4_1; case 3: goto sw4_3; case 4: goto sw4_4; case 5: goto sw4_5; case 6: goto sw4_6; case 7: goto sw4_7; case 8: goto sw4_8; case 2: goto sw4_2; case 9: goto sw4_9; case 10: goto sw4_10; case 11: goto sw4_11; case 12: goto sw4_12; case 14: goto sw4_14; }
sw4_0:
    var_r6_2 = 0;
    sp19C = 0;
    sp130 = 0;
    ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 & 0xFFDFFFFF);
    temp_r1_17 = ((struct PlayerD368 *)arg0)->f12;
    if (!(0xF0 & temp_r1_17)) {
        goto block_399;
    }
    var_r6_2 = 5;
block_399:
    temp_r2_7 = ((struct PlayerD368 *)arg0)->f18;
    if (!(temp_r2_7 & temp_r1_17)) {
        goto block_401;
    }
    sp154 += 1;
    if (!(temp_r2_7 & ((struct PlayerD368 *)arg0)->f14)) {
        goto block_402;
    }
block_401:
    sp154 = 0;
block_402:
    temp_r2_8 = ((struct PlayerD368 *)arg0)->f1A;
    if (!(temp_r2_8 & temp_r1_17)) {
        goto block_407;
    }
    if (temp_r2_8 & ((struct PlayerD368 *)arg0)->f14) {
        goto block_407;
    }
    if (sp194 != 0xFFFF) {
        goto block_408;
    }
    sp158 += 1;
    goto block_408;
block_406:
    var_r0_4 = var_r4_2;
    goto block_415;
block_407:
    sp158 = 0;
    sp194 = 0xFFFF;
block_408:
    if (((struct PlayerD368 *)arg0)->f10 == 9) {
        goto block_417;
    }
    var_r4_2 = 7;
    var_r5_2 = arg0 + 0x64;
    var_r3_2 = (u8 *)&d368_gUnk_0847ACE8 + 0xE;
loop_410:
    temp_r0_28 = *var_r3_2 + ((s8) ((struct PlayerD368 *)arg0)->f6C * 0xA);
    var_r2_4 = temp_r0_28;
    if ((s32) (temp_r0_28 << 0x10) >= 0) {
        goto block_412;
    }
    var_r2_4 = 0;
block_412:
    if ((s32) (s16) *sp1B8 >= (s32) (s16) var_r2_4) {
        goto block_406;
    }
    var_r3_2 -= 0x1;
    var_r4_2 -= 1;
    if (var_r4_2 >= 0) {
        goto loop_410;
    }
    var_r0_4 = 0;
block_415:
    if ((var_r0_4 << 0x10) != 0) {
        goto block_419;
    }
    sp154 = 0;
    goto block_419;
block_417:
    d368_sub_0801DEB8();
    var_r5_2 = arg0 + 0x64;
    if ((d368_sub_08079FD0() << 0x10) != 0) {
        goto block_419;
    }
    sp154 = 0;
block_419:
    if (!(((struct PlayerD368 *)arg0)->f30 & 0x01800000)) {
        goto block_421;
    }
    sp144 = 0;
    sp154 = 0;
block_421:
    if (((struct PlayerD368 *)arg0)->fC == *var_r5_2) {
        goto block_423;
    }
    sp154 = 0;
block_423:
    if (((struct PlayerD368 *)arg0)->f10 != 0) {
        goto block_425;
    }
    sp144 = 0;
block_425:
    if (d368_sub_0800CCCC() != 0) {
        goto block_430;
    }
    if (d368_sub_0801E538() == 0) {
        goto block_430;
    }
    temp_r1_18 = ((struct PlayerD368 *)arg0)->f30 & 0x3400;
    if (temp_r1_18 != 0) {
        goto block_430;
    }
    if (sp154 <= 0xAU) {
        goto block_430;
    }
    ((struct PlayerD368 *)arg0)->f20 = 3U;
    ((struct PlayerD368 *)arg0)->f26 = temp_r1_18;
    ((struct PlayerD368 *)arg0)->f24 = temp_r1_18;
    sp130 = 0;
    sp134 = (s32) (u16) ((s32) (M2C_FIELD((void *) d368_sub_08007290(M2C_FIELD((d368_gUnk_030034E0 + (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x68) * 0x10)), u16 *, 0x72) | 0xB0000), u16 *, 0xAA) * (s8) ((struct PlayerD368 *)arg0)->f71) / 10);
    var_r4_3 = sp1C8;
    var_r0_5 = *var_r4_3 + 1;
    goto block_447;
block_430:
    if (d368_sub_0800CCCC() != 0) {
        goto block_436;
    }
    temp_r4_8 = ((struct PlayerD368 *)arg0)->f30 & 0x3400;
    if (temp_r4_8 != 0) {
        goto block_436;
    }
    if (sp158 <= 0x14U) {
        goto block_436;
    }
    temp_r0_29 = *(u16 *)(d368_gUnk_030034E0 + 0x56 + (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x54) * 2));
    if (temp_r0_29 == 0) {
        goto block_436;
    }
    if (d368_sub_0805D548(temp_r0_29 - 1) == -1) {
        goto block_436;
    }
    sp194 = (s32) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x54);
    ((struct PlayerD368 *)arg0)->f20 = 6U;
    ((struct PlayerD368 *)arg0)->f26 = temp_r4_8;
    ((struct PlayerD368 *)arg0)->f24 = temp_r4_8;
    sp130 = 0;
    sp134 = 0x200;
    goto block_448;
block_436:
    if (!(((struct PlayerD368 *)arg0)->f18 & ((struct PlayerD368 *)arg0)->f14)) {
        goto block_441;
    }
    if (d368_sub_0800CCCC() != 0) {
        goto block_448;
    }
    temp_r2_9 = ((struct PlayerD368 *)arg0)->f30 & 0x01803400;
    if (temp_r2_9 != 0) {
        goto block_448;
    }
    if ((s32) ((struct PlayerD368 *)arg0)->f5E > (s32) (s16) sp144) {
        goto block_448;
    }
    ((struct PlayerD368 *)arg0)->f130 = temp_r2_9;
    *sp1C8 += 1;
    ((struct PlayerD368 *)arg0)->f20 = 2U;
    ((struct PlayerD368 *)arg0)->fB2 = temp_r2_9;
    sp144 = 0;
    goto block_448;
block_441:
    if (var_r6_2 == 0) {
        goto block_443;
    }
    ((struct PlayerD368 *)arg0)->f20 = 1U;
    goto block_448;
block_443:
    temp_r1_19 = ((struct PlayerD368 *)arg0)->fD8;
    var_r4_3 = arg0 + 0xD8;
    if (temp_r1_19 > 0x17) {
        goto block_446;
    }
    temp_r0_30 = temp_r1_19 - 8;
    ((struct PlayerD368 *)arg0)->fD8 = temp_r0_30;
    if (temp_r0_30 > 0) {
        goto block_448;
    }
    ((struct PlayerD368 *)arg0)->fD8 = var_r6_2;
    goto block_448;
block_446:
    var_r0_5 = temp_r1_19 - (temp_r1_19 >> 1);
block_447:
    *var_r4_3 = var_r0_5;
block_448:
    temp_r0_31 = d368_sub_0800CCCC();
    if (temp_r0_31 != 0) {
        goto block_455;
    }
    if (sp154 <= 0x14U) {
        goto block_455;
    }
    if (((struct PlayerD368 *)arg0)->f10 != 0xA) {
        goto block_455;
    }
    if ((s32) (s16) *sp1B8 <= 0) {
        goto block_455;
    }
    if (d368_sub_0801DF8C() != 0) {
        goto block_454;
    }
    var_r1_4 = arg0 + 0x134;
    goto block_527;
block_454:
    ((struct PlayerD368 *)arg0)->f134 = (u16) temp_r0_31;
    goto block_1038;
block_455:
    var_r1_5 = arg0 + 0x134;
    goto block_530;
sw4_1:
    var_r6_3 = 0;
    sp19C = 0;
    ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 & 0xFFDFFFFF);
    temp_r1_20 = ((struct PlayerD368 *)arg0)->f12;
    if (!(0x40 & temp_r1_20)) {
        goto block_458;
    }
    var_r6_3 = 5;
    goto block_460;
block_458:
    if (!(0x80 & temp_r1_20)) {
        goto block_460;
    }
    var_r6_3 = 1;
block_460:
    if (!(0x20 & temp_r1_20)) {
        goto block_466;
    }
    if (var_r6_3 != 5) {
        goto block_463;
    }
    var_r6_3 = 4;
    goto block_472;
block_463:
    if (var_r6_3 != 1) {
        goto block_465;
    }
    var_r6_3 = 2;
    goto block_472;
block_465:
    var_r6_3 = 3;
    goto block_472;
block_466:
    if (!(0x10 & temp_r1_20)) {
        goto block_472;
    }
    if (var_r6_3 != 5) {
        goto block_469;
    }
    var_r6_3 = 6;
    goto block_472;
block_469:
    if (var_r6_3 != 1) {
        goto block_471;
    }
    var_r6_3 = 8;
    goto block_472;
block_471:
    var_r6_3 = 7;
block_472:
    temp_r2_10 = ((struct PlayerD368 *)arg0)->f18;
    if (!(temp_r2_10 & temp_r1_20)) {
        goto block_474;
    }
    sp154 += 1;
    if (!(temp_r2_10 & ((struct PlayerD368 *)arg0)->f14)) {
        goto block_475;
    }
block_474:
    sp154 = 0;
block_475:
    temp_r2_11 = ((struct PlayerD368 *)arg0)->f1A;
    if (!(temp_r2_11 & temp_r1_20)) {
        goto block_480;
    }
    if (temp_r2_11 & ((struct PlayerD368 *)arg0)->f14) {
        goto block_480;
    }
    if (sp194 != 0xFFFF) {
        goto block_481;
    }
    sp158 += 1;
    goto block_481;
block_479:
    var_r0_6 = var_r4_4;
    goto block_488;
block_480:
    sp158 = 0;
    sp194 = 0xFFFF;
block_481:
    if (((struct PlayerD368 *)arg0)->f10 == 9) {
        goto block_490;
    }
    var_r4_4 = 7;
    var_r5_3 = arg0 + 0x64;
    var_r3_3 = (u8 *)&d368_gUnk_0847ACE8 + 0xE;
loop_483:
    temp_r0_32 = *var_r3_3 + ((s8) ((struct PlayerD368 *)arg0)->f6C * 0xA);
    var_r2_5 = temp_r0_32;
    if ((s32) (temp_r0_32 << 0x10) >= 0) {
        goto block_485;
    }
    var_r2_5 = 0;
block_485:
    if ((s32) (s16) *sp1B8 >= (s32) (s16) var_r2_5) {
        goto block_479;
    }
    var_r3_3 -= 0x1;
    var_r4_4 -= 1;
    if (var_r4_4 >= 0) {
        goto loop_483;
    }
    var_r0_6 = 0;
block_488:
    if ((var_r0_6 << 0x10) != 0) {
        goto block_492;
    }
    sp154 = 0;
    goto block_492;
block_490:
    d368_sub_0801DEB8();
    var_r5_3 = arg0 + 0x64;
    if ((d368_sub_08079FD0() << 0x10) != 0) {
        goto block_492;
    }
    sp154 = 0;
block_492:
    if (!(((struct PlayerD368 *)arg0)->f30 & 0x01800000)) {
        goto block_494;
    }
    sp144 = 0;
    sp154 = 0;
block_494:
    if (((struct PlayerD368 *)arg0)->fC == *var_r5_3) {
        goto block_496;
    }
    sp154 = 0;
block_496:
    if (((struct PlayerD368 *)arg0)->f10 != 0) {
        goto block_498;
    }
    sp144 = 0;
block_498:
    if (d368_sub_0800CCCC() != 0) {
        goto block_503;
    }
    if (d368_sub_0801E538() == 0) {
        goto block_503;
    }
    temp_r1_21 = ((struct PlayerD368 *)arg0)->f30 & 0x3400;
    if (temp_r1_21 != 0) {
        goto block_503;
    }
    if (sp154 <= 0xAU) {
        goto block_503;
    }
    ((struct PlayerD368 *)arg0)->f20 = 3U;
    ((struct PlayerD368 *)arg0)->f26 = temp_r1_21;
    ((struct PlayerD368 *)arg0)->f24 = temp_r1_21;
    sp130 = 0;
    sp134 = (s32) (u16) ((s32) (M2C_FIELD((void *) d368_sub_08007290(M2C_FIELD((d368_gUnk_030034E0 + (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x68) * 0x10)), u16 *, 0x72) | 0xB0000), u16 *, 0xAA) * (s8) ((struct PlayerD368 *)arg0)->f71) / 10);
    *sp1C8 += 1;
    goto block_521;
block_503:
    if (d368_sub_0800CCCC() != 0) {
        goto block_509;
    }
    temp_r4_9 = ((struct PlayerD368 *)arg0)->f30 & 0x3400;
    if (temp_r4_9 != 0) {
        goto block_509;
    }
    if (sp158 <= 0x14U) {
        goto block_509;
    }
    temp_r0_33 = *(u16 *)(d368_gUnk_030034E0 + 0x56 + (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x54) * 2));
    if (temp_r0_33 == 0) {
        goto block_509;
    }
    if (d368_sub_0805D548(temp_r0_33 - 1) == -1) {
        goto block_509;
    }
    sp194 = (s32) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x54);
    ((struct PlayerD368 *)arg0)->f20 = 6U;
    ((struct PlayerD368 *)arg0)->f26 = temp_r4_9;
    ((struct PlayerD368 *)arg0)->f24 = temp_r4_9;
    sp130 = 0;
    sp134 = 0x200;
    goto block_521;
block_509:
    if (!(((struct PlayerD368 *)arg0)->f18 & ((struct PlayerD368 *)arg0)->f14)) {
        goto block_514;
    }
    if (d368_sub_0800CCCC() != 0) {
        goto block_521;
    }
    temp_r2_12 = ((struct PlayerD368 *)arg0)->f30 & 0x3400;
    if (temp_r2_12 != 0) {
        goto block_521;
    }
    if ((s32) ((struct PlayerD368 *)arg0)->f5E > (s32) (s16) sp144) {
        goto block_521;
    }
    ((struct PlayerD368 *)arg0)->f130 = temp_r2_12;
    *sp1C8 += 1;
    ((struct PlayerD368 *)arg0)->f20 = 2U;
    ((struct PlayerD368 *)arg0)->fB2 = temp_r2_12;
    sp144 = 0;
    goto block_521;
block_514:
    if (var_r6_3 != 0) {
        goto block_516;
    }
    ((struct PlayerD368 *)arg0)->f20 = var_r6_3;
    goto block_521;
block_516:
    M2C_FIELD(&((struct PlayerD368 *)arg0)->f1C, u16 *, 0) = (s16) (var_r6_3 - 1);
    temp_r3_3 = ((struct PlayerD368 *)arg0)->f40;
    temp_r1_22 = ((struct PlayerD368 *)arg0)->fD8;
    temp_r0_34 = (s32) (temp_r3_3 - temp_r1_22) >> 1;
    if (temp_r0_34 <= 0) {
        goto block_518;
    }
    var_r0_7 = temp_r1_22 + temp_r0_34;
    goto block_519;
block_518:
    var_r0_7 = temp_r1_22 + 1;
block_519:
    ((struct PlayerD368 *)arg0)->fD8 = var_r0_7;
    if ((s32) temp_r3_3 > (s32) ((struct PlayerD368 *)arg0)->fD8) {
        goto block_521;
    }
    ((struct PlayerD368 *)arg0)->fD8 = (s32) temp_r3_3;
block_521:
    temp_r0_35 = d368_sub_0800CCCC();
    if (temp_r0_35 != 0) {
        goto block_529;
    }
    if (sp154 <= 0x14U) {
        goto block_529;
    }
    if (((struct PlayerD368 *)arg0)->f10 != 0xA) {
        goto block_529;
    }
    if ((s32) (s16) *sp1B8 <= 0) {
        goto block_529;
    }
    if (d368_sub_0801DF8C() != 0) {
        goto block_528;
    }
    var_r1_4 = arg0 + 0x134;
block_527:
    *var_r1_4 = 1;
    goto block_1038;
block_528:
    ((struct PlayerD368 *)arg0)->f134 = (u16) temp_r0_35;
    goto block_1038;
block_529:
    var_r1_5 = arg0 + 0x134;
block_530:
    *var_r1_5 = 0;
    goto block_1038;
sw4_3:
    var_r6_4 = 0;
    temp_r1_23 = ((struct PlayerD368 *)arg0)->f12;
    if (!(0x40 & temp_r1_23)) {
        goto block_533;
    }
    var_r6_4 = 5;
    goto block_535;
block_533:
    if (!(0x80 & temp_r1_23)) {
        goto block_535;
    }
    var_r6_4 = 1;
block_535:
    if (!(0x20 & temp_r1_23)) {
        goto block_541;
    }
    if (var_r6_4 != 5) {
        goto block_538;
    }
    var_r6_4 = 4;
    goto block_547;
block_538:
    if (var_r6_4 != 1) {
        goto block_540;
    }
    var_r6_4 = 2;
    goto block_547;
block_540:
    var_r6_4 = 3;
    goto block_547;
block_541:
    if (!(0x10 & temp_r1_23)) {
        goto block_547;
    }
    if (var_r6_4 != 5) {
        goto block_544;
    }
    var_r6_4 = 6;
    goto block_547;
block_544:
    if (var_r6_4 != 1) {
        goto block_546;
    }
    var_r6_4 = 8;
    goto block_547;
block_546:
    var_r6_4 = 7;
block_547:
    temp_r3_4 = ((struct PlayerD368 *)arg0)->f18 & temp_r1_23;
    if (temp_r3_4 == 0) {
        goto block_549;
    }
    goto block_593;
block_549:
    temp_r0_36 = ((struct PlayerD368 *)arg0)->f26;
    if (temp_r0_36 != 0) {
        goto block_551;
    }
    goto block_592;
block_551:
    ((struct PlayerD368 *)arg0)->f20 = 5U;
    if (((struct PlayerD368 *)arg0)->f10 == 9) {
        goto block_556;
    }
    temp_r0_37 = ((s8) ((struct PlayerD368 *)arg0)->f6C * 0xA) + *(u16 *)((((struct PlayerD368 *)arg0)->f26 * 2) + (u8 *)&d368_gUnk_0847ACE8);
    var_r2_6 = temp_r0_37;
    if ((s32) (temp_r0_37 << 0x10) >= 0) {
        goto block_554;
    }
    var_r2_6 = 0;
block_554:
    temp_r1_24 = *sp1B8 - (s16) var_r2_6;
    *sp1B8 = temp_r1_24;
    if ((s32) (temp_r1_24 << 0x10) >= 0) {
        goto block_556;
    }
    *sp1B8 = temp_r3_4;
block_556:
    temp_r0_38 = (u32) d368_sub_0801DE60();
    if (temp_r0_38 <= 7U) {
        goto block_558;
    }
    goto block_591;
block_558:
    switch (temp_r0_38) { case 0: goto sw5_0; case 3: goto sw5_3; case 2: goto sw5_2; case 5: goto sw5_5; case 1: goto sw5_1; case 4: goto sw5_4; case 6: goto sw5_6; case 7: goto sw5_7; }
sw5_0:
    d368_sub_08014D60();
    *sp1C8 += 1;
    goto block_591;
sw5_3:
    d368_sub_080151E0();
    *sp1C8 += 1;
    goto block_591;
sw5_2:
    if (((struct PlayerD368 *)arg0)->f10 != 9) {
        goto block_566;
    }
    var_r0_8 = (s16) d368_sub_0806898C(d368_sub_0801DEB8(), ((struct PlayerD368 *)arg0)->f26);
    if (var_r0_8 == 0) {
        goto block_581;
    }
    if (d368_sub_0801DEB8() != 7) {
        goto block_582;
    }
    if (*(((struct PlayerD368 *)arg0)->f0 + &d368_gUnk_03006410) == 0) {
        goto block_582;
    }
    var_r0_9 = 0;
    goto block_588;
block_566:
    *sp1C8 += 1;
    goto block_590;
sw5_5:
    ((struct PlayerD368 *)arg0)->f20 = 5U;
    *sp1C8 += 1;
    goto block_591;
sw5_1:
sw5_4:
sw5_6:
    temp_r4_10 = ((struct PlayerD368 *)arg0)->f10;
    if (temp_r4_10 == 5) {
        goto block_574;
    }
    if ((s32) temp_r4_10 > 5) {
        goto block_572;
    }
    if (temp_r4_10 == 4) {
        goto block_583;
    }
    goto block_591;
block_572:
    if (temp_r4_10 == 9) {
        goto block_575;
    }
    goto block_591;
block_574:
    *sp1C8 += 1;
    ((struct PlayerD368 *)arg0)->f20 = temp_r4_10;
    d368_sub_0801551C();
    goto block_591;
block_575:
    var_r0_9 = (s16) d368_sub_0806898C(d368_sub_0801DEB8(), ((struct PlayerD368 *)arg0)->f26);
    if (var_r0_9 == 0) {
        goto block_588;
    }
    if (d368_sub_0801DE60() != 6) {
        goto block_582;
    }
    if (d368_sub_0801DEB8() != 0x11) {
        goto block_579;
    }
    if (*(((struct PlayerD368 *)arg0)->f0 + &d368_gUnk_03006430) != 0) {
        goto block_580;
    }
block_579:
    ((struct PlayerD368 *)arg0)->f20 = temp_r4_10;
    *sp1C8 += 1;
    goto block_591;
block_580:
    var_r0_8 = 0;
block_581:
    ((struct PlayerD368 *)arg0)->f26 = (u16) var_r0_8;
    ((struct PlayerD368 *)arg0)->f24 = (u16) var_r0_8;
    sp130 = 0;
    sp134 = 0;
    ((struct PlayerD368 *)arg0)->f20 = 0U;
    goto block_591;
block_582:
    ((struct PlayerD368 *)arg0)->f20 = ((struct PlayerD368 *)arg0)->f10;
    *sp1C8 += 1;
    goto block_591;
block_583:
    *sp1C8 += 1;
    ((struct PlayerD368 *)arg0)->f20 = 5U;
    d368_sub_0801551C();
    goto block_591;
sw5_7:
    temp_r4_11 = ((struct PlayerD368 *)arg0)->f10;
    if (temp_r4_11 != 9) {
        goto block_589;
    }
    var_r0_9 = (s16) d368_sub_0806898C(d368_sub_0801DEB8(), ((struct PlayerD368 *)arg0)->f26);
    if (var_r0_9 == 0) {
        goto block_588;
    }
    ((struct PlayerD368 *)arg0)->f20 = temp_r4_11;
    *sp1C8 += 1;
    if (d368_sub_0801DEB8() != 0x13) {
        goto block_591;
    }
    sp170 = d368_sub_080008C8();
    sp170 &= 7;
    goto block_591;
block_588:
    ((struct PlayerD368 *)arg0)->f26 = (u16) var_r0_9;
    ((struct PlayerD368 *)arg0)->f24 = (u16) var_r0_9;
    sp130 = 0;
    sp134 = 0;
    ((struct PlayerD368 *)arg0)->f20 = 0U;
    goto block_591;
block_589:
    *sp1C8 += 1;
block_590:
    ((struct PlayerD368 *)arg0)->f20 = 5U;
block_591:
    ((struct PlayerD368 *)arg0)->fB4 = 0U;
    *(u16 *)((arg0 + 0xB4) - 2) = 0;
    sp144 = 0;
    goto block_1038;
block_592:
    ((struct PlayerD368 *)arg0)->f24 = temp_r0_36;
    ((struct PlayerD368 *)arg0)->f26 = temp_r0_36;
    sp130 = 0;
    sp134 = 0;
    ((struct PlayerD368 *)arg0)->f20 = 0U;
    var_r1_6 = 0xFFDFFFFF;
    goto block_1024;
block_593:
    temp_r0_39 = d368_sub_0801E538();
    if (temp_r0_39 != 0) {
        goto block_596;
    }
    ((struct PlayerD368 *)arg0)->f20 = (u16) temp_r0_39;
    ((struct PlayerD368 *)arg0)->f24 = (u16) temp_r0_39;
    ((struct PlayerD368 *)arg0)->f26 = (u16) temp_r0_39;
    goto block_625;
block_595:
    var_r0_10 = var_r4_5;
    goto block_603;
block_596:
    if (((struct PlayerD368 *)arg0)->f10 == 9) {
        goto block_606;
    }
    sp128 = d368_sub_0801D34C();
    var_r4_5 = 7;
    var_r3_4 = (u8 *)&d368_gUnk_0847ACE8 + 0xE;
loop_598:
    temp_r0_40 = *var_r3_4 + ((s8) ((struct PlayerD368 *)arg0)->f6C * 0xA);
    var_r2_7 = temp_r0_40;
    if ((s32) (temp_r0_40 << 0x10) >= 0) {
        goto block_600;
    }
    var_r2_7 = 0;
block_600:
    if ((s32) (s16) *sp1B8 >= (s32) (s16) var_r2_7) {
        goto block_595;
    }
    var_r3_4 -= 0x1;
    var_r4_5 -= 1;
    if (var_r4_5 >= 0) {
        goto loop_598;
    }
    var_r0_10 = 0;
block_603:
    var_r5_4 = (u16) var_r0_10;
    if (sp128 > (u32) var_r5_4) {
        goto block_607;
    }
    if (sp128 <= (u32) ((struct PlayerD368 *)arg0)->f26) {
        goto block_611;
    }
    sp128 = 0;
    goto block_612;
block_606:
    sp128 = d368_sub_0801D34C();
    d368_sub_0801DEB8();
    var_r5_4 = (u16) d368_sub_08079FD0() - 1;
    if (sp128 <= (u32) var_r5_4) {
        goto block_609;
    }
block_607:
    sp128 = (u32) var_r5_4;
    if ((u32) var_r5_4 <= (u32) ((struct PlayerD368 *)arg0)->f26) {
        goto block_611;
    }
    sp128 = 0;
    goto block_612;
block_609:
    if (sp128 <= (u32) ((struct PlayerD368 *)arg0)->f26) {
        goto block_611;
    }
    sp128 = 0;
block_611:
    if (sp128 != 0) {
        goto block_613;
    }
block_612:
    sp130 = (s32) (u16) (sp130 + sp134);
    goto block_614;
block_613:
    ((struct PlayerD368 *)arg0)->f26 = (u16) sp128;
    ((struct PlayerD368 *)arg0)->f24 = 0U;
block_614:
    if ((u32) sp130 <= 0xFFU) {
        goto block_625;
    }
    temp_r0_41 = ((u32) sp130 >> 8) + ((struct PlayerD368 *)arg0)->f24;
    ((struct PlayerD368 *)arg0)->f24 = temp_r0_41;
    sp130 = (s32) (u8) sp130;
    if ((u32) temp_r0_41 <= 0x10U) {
        goto block_625;
    }
    sp134 = (s32) (u16) (sp134 + 0x20);
    ((struct PlayerD368 *)arg0)->f26 = (u16) (((struct PlayerD368 *)arg0)->f26 + 1);
    ((struct PlayerD368 *)arg0)->f24 = 0U;
    temp_r0_42 = ((struct PlayerD368 *)arg0)->f26 - 1;
    if (temp_r0_42 > 6U) {
        goto block_625;
    }
    switch (temp_r0_42) { case 0: goto sw6_0; case 1: goto sw6_1; case 2: goto sw6_2; case 3: goto sw6_3; case 4: goto sw6_4; case 5: goto sw6_5; case 6: goto sw6_6; }
sw6_0:
    d368_sub_0805865C(0x90);
    goto block_625;
sw6_1:
    d368_sub_0805865C(0x96);
    goto block_625;
sw6_2:
    d368_sub_0805865C(0x97);
    goto block_625;
sw6_3:
    d368_sub_0805865C(0x98);
    goto block_625;
sw6_4:
    d368_sub_0805865C(0x99);
    goto block_625;
sw6_5:
    d368_sub_0805865C(0x9A);
    goto block_625;
sw6_6:
    d368_sub_0805865C(0x9B);
block_625:
    if (var_r6_4 == 0) {
        goto block_628;
    }
    var_r0_11 = 4;
block_627:
    ((struct PlayerD368 *)arg0)->f20 = var_r0_11;
    goto block_1038;
block_628:
    var_r1_7 = ((struct PlayerD368 *)arg0)->fD8;
    var_r4_6 = arg0 + 0xD8;
    if (var_r1_7 > 0x17) {
        goto block_630;
    }
    goto block_823;
block_630:
    goto block_1036;
sw4_4:
    var_r6_5 = 0;
    temp_r1_25 = ((struct PlayerD368 *)arg0)->f12;
    if (!(0x40 & temp_r1_25)) {
        goto block_633;
    }
    var_r6_5 = 5;
    goto block_635;
block_633:
    if (!(0x80 & temp_r1_25)) {
        goto block_635;
    }
    var_r6_5 = 1;
block_635:
    if (!(0x20 & temp_r1_25)) {
        goto block_641;
    }
    if (var_r6_5 != 5) {
        goto block_638;
    }
    var_r6_5 = 4;
    goto block_647;
block_638:
    if (var_r6_5 != 1) {
        goto block_640;
    }
    var_r6_5 = 2;
    goto block_647;
block_640:
    var_r6_5 = 3;
    goto block_647;
block_641:
    if (!(0x10 & temp_r1_25)) {
        goto block_647;
    }
    if (var_r6_5 != 5) {
        goto block_644;
    }
    var_r6_5 = 6;
    goto block_647;
block_644:
    if (var_r6_5 != 1) {
        goto block_646;
    }
    var_r6_5 = 8;
    goto block_647;
block_646:
    var_r6_5 = 7;
block_647:
    temp_r3_5 = ((struct PlayerD368 *)arg0)->f18 & temp_r1_25;
    if (temp_r3_5 == 0) {
        goto block_649;
    }
    goto block_696;
block_649:
    temp_r0_43 = ((struct PlayerD368 *)arg0)->f26;
    if (temp_r0_43 != 0) {
        goto block_651;
    }
    goto block_695;
block_651:
    if (((struct PlayerD368 *)arg0)->f10 == 9) {
        goto block_656;
    }
    temp_r0_44 = ((s8) ((struct PlayerD368 *)arg0)->f6C * 0xA) + *(u16 *)((((struct PlayerD368 *)arg0)->f26 * 2) + (u8 *)&d368_gUnk_0847ACE8);
    var_r2_8 = temp_r0_44;
    if ((s32) (temp_r0_44 << 0x10) >= 0) {
        goto block_654;
    }
    var_r2_8 = 0;
block_654:
    temp_r1_26 = *sp1B8 - (s16) var_r2_8;
    *sp1B8 = temp_r1_26;
    if ((s32) (temp_r1_26 << 0x10) >= 0) {
        goto block_656;
    }
    *sp1B8 = temp_r3_5;
block_656:
    temp_r0_45 = (u32) d368_sub_0801DE60();
    if (temp_r0_45 <= 7U) {
        goto block_658;
    }
    goto block_694;
block_658:
    switch (temp_r0_45) { case 0: goto sw7_0; case 2: goto sw7_2; case 3: goto sw7_3; case 5: goto sw7_5; case 1: goto sw7_1; case 4: goto sw7_4; case 6: goto sw7_6; case 7: goto sw7_7; }
sw7_0:
    *sp1C8 += 1;
    ((struct PlayerD368 *)arg0)->f20 = 5U;
    d368_sub_08014D60();
    goto block_694;
sw7_2:
    if (((struct PlayerD368 *)arg0)->f10 != 9) {
        goto block_668;
    }
    temp_r0_46 = (s16) d368_sub_0806898C(d368_sub_0801DEB8(), ((struct PlayerD368 *)arg0)->f26);
    if (temp_r0_46 == 0) {
        goto block_667;
    }
    if (d368_sub_0801DEB8() == 7) {
        goto block_664;
    }
    goto block_689;
block_664:
    if (*(((struct PlayerD368 *)arg0)->f0 + &d368_gUnk_03006410) != 0) {
        goto block_666;
    }
    goto block_689;
block_666:
    ((struct PlayerD368 *)arg0)->f26 = 0U;
    ((struct PlayerD368 *)arg0)->f24 = 0U;
    goto block_691;
block_667:
    ((struct PlayerD368 *)arg0)->f26 = (u16) temp_r0_46;
    ((struct PlayerD368 *)arg0)->f24 = (u16) temp_r0_46;
    sp130 = 0;
    sp134 = 0;
    ((struct PlayerD368 *)arg0)->f20 = 0U;
    goto block_694;
block_668:
    *sp1C8 += 1;
    goto block_693;
sw7_3:
    *sp1C8 += 1;
    ((struct PlayerD368 *)arg0)->f20 = 5U;
    d368_sub_080151E0();
    goto block_694;
sw7_5:
    ((struct PlayerD368 *)arg0)->f20 = 5U;
    *sp1C8 += 1;
    goto block_694;
sw7_1:
sw7_4:
sw7_6:
    temp_r4_12 = ((struct PlayerD368 *)arg0)->f10;
    if (temp_r4_12 == 5) {
        goto block_677;
    }
    if ((s32) temp_r4_12 > 5) {
        goto block_675;
    }
    if (temp_r4_12 == 4) {
        goto block_686;
    }
    goto block_694;
block_675:
    if (temp_r4_12 == 9) {
        goto block_678;
    }
    goto block_694;
block_677:
    *sp1C8 += 1;
    ((struct PlayerD368 *)arg0)->f20 = temp_r4_12;
    d368_sub_0801551C();
    goto block_694;
block_678:
    temp_r0_47 = (s16) d368_sub_0806898C(d368_sub_0801DEB8(), ((struct PlayerD368 *)arg0)->f26);
    if (temp_r0_47 == 0) {
        goto block_685;
    }
    if (d368_sub_0801DE60() != 6) {
        goto block_684;
    }
    if (d368_sub_0801DEB8() != 0x11) {
        goto block_682;
    }
    if (*(((struct PlayerD368 *)arg0)->f0 + &d368_gUnk_03006430) != 0) {
        goto block_683;
    }
block_682:
    ((struct PlayerD368 *)arg0)->f20 = temp_r4_12;
    *sp1C8 += 1;
    goto block_694;
block_683:
    ((struct PlayerD368 *)arg0)->f26 = 0U;
    ((struct PlayerD368 *)arg0)->f24 = 0U;
    sp130 = 0;
    sp134 = 0;
    ((struct PlayerD368 *)arg0)->f20 = 0U;
    goto block_694;
block_684:
    ((struct PlayerD368 *)arg0)->f20 = temp_r4_12;
    *sp1C8 += 1;
    goto block_694;
block_685:
    ((struct PlayerD368 *)arg0)->f26 = (u16) temp_r0_47;
    ((struct PlayerD368 *)arg0)->f24 = (u16) temp_r0_47;
    sp130 = 0;
    sp134 = 0;
    ((struct PlayerD368 *)arg0)->f20 = 0U;
    goto block_694;
block_686:
    *sp1C8 += 1;
    ((struct PlayerD368 *)arg0)->f20 = 5U;
    d368_sub_0801551C();
    goto block_694;
sw7_7:
    if (((struct PlayerD368 *)arg0)->f10 != 9) {
        goto block_692;
    }
    temp_r0_48 = (s16) d368_sub_0806898C(d368_sub_0801DEB8(), ((struct PlayerD368 *)arg0)->f26);
    if (temp_r0_48 == 0) {
        goto block_690;
    }
block_689:
    ((struct PlayerD368 *)arg0)->f20 = ((struct PlayerD368 *)arg0)->f10;
    *sp1C8 += 1;
    goto block_694;
block_690:
    ((struct PlayerD368 *)arg0)->f26 = (u16) temp_r0_48;
    ((struct PlayerD368 *)arg0)->f24 = (u16) temp_r0_48;
block_691:
    sp130 = 0;
    sp134 = 0;
    ((struct PlayerD368 *)arg0)->f20 = 0U;
    goto block_694;
block_692:
    *sp1C8 += 1;
block_693:
    ((struct PlayerD368 *)arg0)->f20 = 5U;
block_694:
    ((struct PlayerD368 *)arg0)->fB4 = 0U;
    *(u16 *)((arg0 + 0xB4) - 2) = 0;
    sp144 = 0;
    goto block_1038;
block_695:
    ((struct PlayerD368 *)arg0)->f26 = temp_r0_43;
    ((struct PlayerD368 *)arg0)->f24 = temp_r0_43;
    sp144 = 0;
    sp130 = 0;
    sp134 = 0;
    ((struct PlayerD368 *)arg0)->f20 = 0U;
    var_r1_6 = 0xFFDFFFFF;
    goto block_1024;
block_696:
    if (var_r6_5 != 0) {
        goto block_698;
    }
    var_r0_11 = 3;
    goto block_627;
block_698:
    temp_r0_49 = d368_sub_0801E538();
    if (temp_r0_49 != 0) {
        goto block_701;
    }
    ((struct PlayerD368 *)arg0)->f20 = (u16) temp_r0_49;
    ((struct PlayerD368 *)arg0)->f24 = (u16) temp_r0_49;
    ((struct PlayerD368 *)arg0)->f26 = (u16) temp_r0_49;
    var_r4_7 = arg0 + 0xD8;
    var_sl = var_r6_5 - 1;
    var_r9 = arg0 + 0x40;
    goto block_732;
block_700:
    var_r0_12 = var_r5_5;
    goto block_708;
block_701:
    if (((struct PlayerD368 *)arg0)->f10 == 9) {
        goto block_713;
    }
    sp128 = d368_sub_0801D34C();
    var_r5_5 = 7;
    var_r4_7 = arg0 + 0xD8;
    var_sl = var_r6_5 - 1;
    var_r9 = arg0 + 0x40;
    var_r3_5 = (u8 *)&d368_gUnk_0847ACE8 + 0xE;
loop_703:
    temp_r0_50 = *var_r3_5 + ((s8) ((struct PlayerD368 *)arg0)->f6C * 0xA);
    var_r2_9 = temp_r0_50;
    if ((s32) (temp_r0_50 << 0x10) >= 0) {
        goto block_705;
    }
    var_r2_9 = 0;
block_705:
    if ((s32) (s16) *sp1B8 >= (s32) (s16) var_r2_9) {
        goto block_700;
    }
    var_r3_5 -= 0x1;
    var_r5_5 -= 1;
    if (var_r5_5 >= 0) {
        goto loop_703;
    }
    var_r0_12 = 0;
block_708:
    temp_r5_6 = (u16) var_r0_12;
    if (sp128 <= (u32) temp_r5_6) {
        goto block_711;
    }
    sp128 = (u32) temp_r5_6;
    if ((u32) temp_r5_6 <= (u32) ((struct PlayerD368 *)arg0)->f26) {
        goto block_718;
    }
    sp128 = 0;
    goto block_719;
block_711:
    if (sp128 <= (u32) ((struct PlayerD368 *)arg0)->f26) {
        goto block_718;
    }
    sp128 = 0;
    goto block_719;
block_713:
    sp128 = d368_sub_0801D34C();
    d368_sub_0801DEB8();
    temp_r5_7 = (u16) d368_sub_08079FD0() - 1;
    if (sp128 <= temp_r5_7) {
        goto block_716;
    }
    sp128 = temp_r5_7;
    var_r4_7 = arg0 + 0xD8;
    var_sl = var_r6_5 - 1;
    var_r9 = arg0 + 0x40;
    if (temp_r5_7 <= (u32) ((struct PlayerD368 *)arg0)->f26) {
        goto block_718;
    }
    sp128 = 0;
    goto block_719;
block_716:
    var_r4_7 = arg0 + 0xD8;
    var_sl = var_r6_5 - 1;
    var_r9 = arg0 + 0x40;
    if (sp128 <= (u32) ((struct PlayerD368 *)arg0)->f26) {
        goto block_718;
    }
    sp128 = 0;
block_718:
    if (sp128 != 0) {
        goto block_720;
    }
block_719:
    sp130 = (s32) (u16) (sp130 + sp134);
    goto block_721;
block_720:
    ((struct PlayerD368 *)arg0)->f26 = (u16) sp128;
    ((struct PlayerD368 *)arg0)->f24 = 0U;
block_721:
    if ((u32) sp130 <= 0xFFU) {
        goto block_732;
    }
    temp_r0_51 = ((u32) sp130 >> 8) + ((struct PlayerD368 *)arg0)->f24;
    ((struct PlayerD368 *)arg0)->f24 = temp_r0_51;
    sp130 = (s32) (u8) sp130;
    if ((u32) temp_r0_51 <= 0x10U) {
        goto block_732;
    }
    sp134 = (s32) (u16) (sp134 + 0x20);
    ((struct PlayerD368 *)arg0)->f26 = (u16) (((struct PlayerD368 *)arg0)->f26 + 1);
    ((struct PlayerD368 *)arg0)->f24 = 0U;
    temp_r0_52 = ((struct PlayerD368 *)arg0)->f26 - 1;
    if (temp_r0_52 > 6U) {
        goto block_732;
    }
    switch (temp_r0_52) { case 0: goto sw8_0; case 1: goto sw8_1; case 2: goto sw8_2; case 3: goto sw8_3; case 4: goto sw8_4; case 5: goto sw8_5; case 6: goto sw8_6; }
sw8_0:
    d368_sub_0805865C(0x90);
    goto block_732;
sw8_1:
    d368_sub_0805865C(0x96);
    goto block_732;
sw8_2:
    d368_sub_0805865C(0x97);
    goto block_732;
sw8_3:
    d368_sub_0805865C(0x98);
    goto block_732;
sw8_4:
    d368_sub_0805865C(0x99);
    goto block_732;
sw8_5:
    d368_sub_0805865C(0x9A);
    goto block_732;
sw8_6:
    d368_sub_0805865C(0x9B);
block_732:
    M2C_FIELD(&((struct PlayerD368 *)arg0)->f1C, u16 *, 0) = var_sl;
    temp_r2_13 = *var_r9;
    temp_r1_27 = *var_r4_7;
    temp_r0_53 = (s32) (temp_r2_13 - temp_r1_27) >> 1;
    if (temp_r0_53 <= 0) {
        goto block_734;
    }
    var_r0_13 = temp_r1_27 + temp_r0_53;
    goto block_735;
block_734:
    var_r0_13 = temp_r1_27 + 1;
block_735:
    *var_r4_7 = var_r0_13;
    if ((s32) temp_r2_13 <= (s32) *var_r4_7) {
        goto block_737;
    }
    goto block_1038;
block_737:
    *var_r4_7 = (s32) temp_r2_13;
    goto block_1038;
sw4_5:
    var_r6_6 = 0;
    temp_r1_28 = ((struct PlayerD368 *)arg0)->f12;
    if (!(0x40 & temp_r1_28)) {
        goto block_740;
    }
    var_r6_6 = 5;
    goto block_742;
block_740:
    if (!(0x80 & temp_r1_28)) {
        goto block_742;
    }
    var_r6_6 = 1;
block_742:
    if (!(0x20 & temp_r1_28)) {
        goto block_748;
    }
    if (var_r6_6 != 5) {
        goto block_745;
    }
    var_r6_6 = 4;
    goto block_754;
block_745:
    if (var_r6_6 != 1) {
        goto block_747;
    }
    var_r6_6 = 2;
    goto block_754;
block_747:
    var_r6_6 = 3;
    goto block_754;
block_748:
    if (!(0x10 & temp_r1_28)) {
        goto block_754;
    }
    if (var_r6_6 != 5) {
        goto block_751;
    }
    var_r6_6 = 6;
    goto block_754;
block_751:
    if (var_r6_6 != 1) {
        goto block_753;
    }
    var_r6_6 = 8;
    goto block_754;
block_753:
    var_r6_6 = 7;
block_754:
    temp_r0_54 = d368_sub_0801DE60();
    if (temp_r0_54 == 5) {
        goto block_762;
    }
    if ((s32) temp_r0_54 > 5) {
        goto block_758;
    }
    if (temp_r0_54 == 0) {
        goto block_760;
    }
    goto block_770;
block_758:
    if (temp_r0_54 == 7) {
        goto block_765;
    }
    goto block_770;
block_760:
    if (((struct PlayerD368 *)arg0)->f10 != 3) {
        goto block_769;
    }
    goto block_766;
block_762:
    if (((struct PlayerD368 *)arg0)->f10 != 8) {
        goto block_769;
    }
    if (var_r6_6 == 0) {
        goto block_769;
    }
    M2C_FIELD(&((struct PlayerD368 *)arg0)->f1C, u16 *, 0) = (s16) (var_r6_6 - 1);
    var_r5_6 = arg0 + 0x8C;
    ((struct PlayerD368 *)arg0)->f94 = (s32) ((struct PlayerD368 *)arg0)->f8C;
    M2C_FIELD((arg0 + 0x94), s32 *, 4) = (s32) M2C_FIELD(var_r5_6, s32 *, 4);
    var_r3_6 = (u16) d368_sub_0800CCCC();
    var_r0_14 = (s32) ((u16) ((struct PlayerD368 *)arg0)->f40 << 0x10) >> 0x11;
    var_r2_10 = M2C_FIELD(&((struct PlayerD368 *)arg0)->f1C, u16 *, 0);
    goto block_768;
block_765:
    if (((struct PlayerD368 *)arg0)->f10 != 1) {
        goto block_769;
    }
block_766:
    if (var_r6_6 == 0) {
        goto block_769;
    }
    var_r5_6 = arg0 + 0x8C;
    ((struct PlayerD368 *)arg0)->f94 = (s32) ((struct PlayerD368 *)arg0)->f8C;
    M2C_FIELD((arg0 + 0x94), s32 *, 4) = (s32) M2C_FIELD(var_r5_6, s32 *, 4);
    var_r3_6 = (u16) d368_sub_0800CCCC();
    var_r0_14 = (s32) ((u16) ((struct PlayerD368 *)arg0)->f40 << 0x10) >> 0x11;
    var_r2_10 = var_r6_6 - 1;
block_768:
    d368_sub_08013E90(var_r0_14, var_r5_6, var_r2_10, var_r3_6, (((struct PlayerD368 *)arg0)->f30 & 0x20));
block_769:
    ((struct PlayerD368 *)arg0)->fD8 = 0;
    goto block_1038;
block_770:
    var_r1_7 = ((struct PlayerD368 *)arg0)->fD8;
    var_r4_6 = arg0 + 0xD8;
    if (var_r1_7 <= 0x17) {
        goto block_772;
    }
    goto block_1036;
block_772:
    temp_r0_55 = var_r1_7 - 8;
    ((struct PlayerD368 *)arg0)->fD8 = temp_r0_55;
    if (temp_r0_55 <= 0) {
        goto block_774;
    }
    goto block_1038;
block_774:
    var_r0_15 = 0;
    goto block_1037;
sw4_6:
    sp158 = 0;
    var_r6_4 = 0;
    temp_r1_29 = ((struct PlayerD368 *)arg0)->f12;
    if (!(0x40 & temp_r1_29)) {
        goto block_777;
    }
    var_r6_4 = 5;
    goto block_779;
block_777:
    if (!(0x80 & temp_r1_29)) {
        goto block_779;
    }
    var_r6_4 = 1;
block_779:
    if (!(0x20 & temp_r1_29)) {
        goto block_785;
    }
    if (var_r6_4 != 5) {
        goto block_782;
    }
    var_r6_4 = 4;
    goto block_791;
block_782:
    if (var_r6_4 != 1) {
        goto block_784;
    }
    var_r6_4 = 2;
    goto block_791;
block_784:
    var_r6_4 = 3;
    goto block_791;
block_785:
    if (!(0x10 & temp_r1_29)) {
        goto block_791;
    }
    if (var_r6_4 != 5) {
        goto block_788;
    }
    var_r6_4 = 6;
    goto block_791;
block_788:
    if (var_r6_4 != 1) {
        goto block_790;
    }
    var_r6_4 = 8;
    goto block_791;
block_790:
    var_r6_4 = 7;
block_791:
    if (d368_sub_0805D548(*(u16 *)(d368_gUnk_030034E0 + 0x56 + (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x54) * 2)) - 1) != -1) {
        goto block_793;
    }
    ((struct PlayerD368 *)arg0)->f24 = 0U;
    ((struct PlayerD368 *)arg0)->f26 = 0U;
    sp130 = 0;
    sp134 = 0;
    ((struct PlayerD368 *)arg0)->f20 = 0U;
    sp190 = 0xFFFF;
    goto block_1038;
block_793:
    temp_r2_14 = ((struct PlayerD368 *)arg0)->f1A & ((struct PlayerD368 *)arg0)->f12;
    if (temp_r2_14 != 0) {
        goto block_798;
    }
    if (((struct PlayerD368 *)arg0)->f26 == 0) {
        goto block_797;
    }
    if (sp194 != M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x54)) {
        goto block_797;
    }
    sp190 = (s32) (u16) (*(u16 *)(d368_gUnk_030034E0 + 0x56 + (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x54) * 2)) - 1);
    ((struct PlayerD368 *)arg0)->f20 = 8U;
    ((struct PlayerD368 *)arg0)->fB4 = temp_r2_14;
    *(u16 *)((arg0 + 0xB4) - 2) = temp_r2_14;
    sp144 = 0;
    goto block_1038;
block_797:
    sp190 = 0xFFFE;
    ((struct PlayerD368 *)arg0)->f24 = 0U;
    ((struct PlayerD368 *)arg0)->f26 = 0U;
    sp130 = 0;
    sp134 = 0;
    ((struct PlayerD368 *)arg0)->f20 = 0U;
    goto block_1038;
block_798:
    temp_r0_56 = sp130 + sp134;
    temp_r5_8 = temp_r0_56;
    sp130 = (s32) temp_r5_8;
    if ((u32) temp_r5_8 > 0xFFU) {
        goto block_800;
    }
    goto block_819;
block_800:
    temp_r0_57 = ((u32) (temp_r0_56 << 0x10) >> 0x18) + ((struct PlayerD368 *)arg0)->f24;
    ((struct PlayerD368 *)arg0)->f24 = temp_r0_57;
    sp130 = (s32) (u8) temp_r5_8;
    if ((u32) temp_r0_57 <= 0xFU) {
        goto block_819;
    }
    temp_r1_30 = ((struct PlayerD368 *)arg0)->f26 + 1;
    ((struct PlayerD368 *)arg0)->f26 = temp_r1_30;
    sp134 = (s32) (u16) (sp134 + 0x20);
    temp_r2_15 = ((struct PlayerD368 *)arg0)->f67;
    if (temp_r2_15 == 0) {
        goto block_807;
    }
    if ((u32) temp_r1_30 <= 0x10U) {
        goto block_804;
    }
    var_r0_16 = 0x10;
    goto block_809;
block_804:
    ((struct PlayerD368 *)arg0)->f24 = 0U;
    temp_r0_58 = ((u32) (temp_r1_30 << 0x10) >> 0x11) - 1;
    if (temp_r0_58 > 6U) {
        goto block_819;
    }
    switch (temp_r0_58) { case 6: goto sw9_6; case 0: goto sw9_0; case 1: goto sw9_1; case 2: goto sw9_2; case 3: goto sw9_3; case 4: goto sw9_4; case 5: goto sw9_5; }
sw9_6:
    d368_sub_0805865C(0x9B);
    goto block_819;
block_807:
    if ((u32) temp_r1_30 <= 8U) {
        goto block_810;
    }
    var_r0_16 = 8;
block_809:
    ((struct PlayerD368 *)arg0)->f26 = var_r0_16;
    ((struct PlayerD368 *)arg0)->f24 = 0x11U;
    goto block_819;
block_810:
    ((struct PlayerD368 *)arg0)->f24 = (u16) temp_r2_15;
    temp_r0_59 = ((struct PlayerD368 *)arg0)->f26 - 1;
    if (temp_r0_59 > 6U) {
        goto block_819;
    }
    switch (temp_r0_59) { case 0: goto sw10_0; case 1: goto sw10_1; case 2: goto sw10_2; case 3: goto sw10_3; case 4: goto sw10_4; case 5: goto sw10_5; case 6: goto sw10_6; }
sw9_0:
sw10_0:
    d368_sub_0805865C(0x90);
    goto block_819;
sw9_1:
sw10_1:
    d368_sub_0805865C(0x96);
    goto block_819;
sw9_2:
sw10_2:
    d368_sub_0805865C(0x97);
    goto block_819;
sw9_3:
sw10_3:
    d368_sub_0805865C(0x98);
    goto block_819;
sw9_4:
sw10_4:
    d368_sub_0805865C(0x99);
    goto block_819;
sw9_5:
sw10_5:
    d368_sub_0805865C(0x9A);
    goto block_819;
sw10_6:
    d368_sub_0805865C(0x9B);
block_819:
    if (var_r6_4 == 0) {
        goto block_821;
    }
    var_r0_11 = 7;
    goto block_627;
block_821:
    var_r1_7 = ((struct PlayerD368 *)arg0)->fD8;
    var_r4_6 = arg0 + 0xD8;
    if (var_r1_7 <= 0x17) {
        goto block_823;
    }
    goto block_1036;
block_823:
    temp_r0_60 = var_r1_7 - 8;
    *var_r4_6 = temp_r0_60;
    if (temp_r0_60 <= 0) {
        goto block_825;
    }
    goto block_1038;
block_825:
    *var_r4_6 = var_r6_4;
    goto block_1038;
sw4_7:
    sp158 = 0;
    var_r6_7 = 0;
    temp_r1_31 = ((struct PlayerD368 *)arg0)->f12;
    if (!(0x40 & temp_r1_31)) {
        goto block_828;
    }
    var_r6_7 = 5;
    goto block_830;
block_828:
    if (!(0x80 & temp_r1_31)) {
        goto block_830;
    }
    var_r6_7 = 1;
block_830:
    if (!(0x20 & temp_r1_31)) {
        goto block_836;
    }
    if (var_r6_7 != 5) {
        goto block_833;
    }
    var_r6_7 = 4;
    goto block_842;
block_833:
    if (var_r6_7 != 1) {
        goto block_835;
    }
    var_r6_7 = 2;
    goto block_842;
block_835:
    var_r6_7 = 3;
    goto block_842;
block_836:
    if (!(0x10 & temp_r1_31)) {
        goto block_842;
    }
    if (var_r6_7 != 5) {
        goto block_839;
    }
    var_r6_7 = 6;
    goto block_842;
block_839:
    if (var_r6_7 != 1) {
        goto block_841;
    }
    var_r6_7 = 8;
    goto block_842;
block_841:
    var_r6_7 = 7;
block_842:
    if (d368_sub_0805D548(*(u16 *)(d368_gUnk_030034E0 + 0x56 + (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x54) * 2)) - 1) != -1) {
        goto block_844;
    }
    ((struct PlayerD368 *)arg0)->f24 = 0U;
    ((struct PlayerD368 *)arg0)->f26 = 0U;
    sp130 = 0;
    sp134 = 0;
    ((struct PlayerD368 *)arg0)->f20 = 0U;
    goto block_1038;
block_844:
    temp_r2_16 = ((struct PlayerD368 *)arg0)->f1A & ((struct PlayerD368 *)arg0)->f12;
    if (temp_r2_16 != 0) {
        goto block_849;
    }
    if (((struct PlayerD368 *)arg0)->f26 == 0) {
        goto block_848;
    }
    if (sp194 != M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x54)) {
        goto block_848;
    }
    sp190 = (s32) (u16) (*(u16 *)(d368_gUnk_030034E0 + 0x56 + (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x54) * 2)) - 1);
    ((struct PlayerD368 *)arg0)->f20 = 8U;
    ((struct PlayerD368 *)arg0)->fB4 = temp_r2_16;
    *(u16 *)((arg0 + 0xB4) - 2) = temp_r2_16;
    sp144 = 0;
    sp158 = 0;
    goto block_1038;
block_848:
    sp194 = 0xFFFE;
    ((struct PlayerD368 *)arg0)->f26 = 0U;
    ((struct PlayerD368 *)arg0)->f24 = 0U;
    sp144 = 0;
    sp130 = 0;
    sp134 = 0;
    ((struct PlayerD368 *)arg0)->f20 = 0U;
    goto block_1038;
block_849:
    if (var_r6_7 != 0) {
        goto block_851;
    }
    var_r0_11 = 6;
    goto block_627;
block_851:
    temp_r0_61 = sp130 + sp134;
    temp_r1_32 = temp_r0_61;
    sp130 = (s32) temp_r1_32;
    if ((u32) temp_r1_32 > 0xFFU) {
        goto block_853;
    }
    goto block_872;
block_853:
    temp_r0_62 = ((u32) (temp_r0_61 << 0x10) >> 0x18) + ((struct PlayerD368 *)arg0)->f24;
    ((struct PlayerD368 *)arg0)->f24 = temp_r0_62;
    sp130 = (s32) (u8) sp130;
    if ((u32) temp_r0_62 <= 0xFU) {
        goto block_872;
    }
    temp_r1_33 = ((struct PlayerD368 *)arg0)->f26 + 1;
    ((struct PlayerD368 *)arg0)->f26 = temp_r1_33;
    sp134 = (s32) (u16) (sp134 + 0x20);
    temp_r2_17 = ((struct PlayerD368 *)arg0)->f67;
    if (temp_r2_17 == 0) {
        goto block_860;
    }
    if ((u32) temp_r1_33 <= 0x10U) {
        goto block_857;
    }
    var_r0_17 = 0x10;
    goto block_862;
block_857:
    ((struct PlayerD368 *)arg0)->f24 = 0U;
    temp_r0_63 = ((u32) (temp_r1_33 << 0x10) >> 0x11) - 1;
    if (temp_r0_63 > 6U) {
        goto block_872;
    }
    switch (temp_r0_63) { case 6: goto sw11_6; case 0: goto sw11_0; case 1: goto sw11_1; case 2: goto sw11_2; case 3: goto sw11_3; case 4: goto sw11_4; case 5: goto sw11_5; }
sw11_6:
    d368_sub_0805865C(0x9B);
    goto block_872;
block_860:
    if ((u32) temp_r1_33 <= 8U) {
        goto block_863;
    }
    var_r0_17 = 8;
block_862:
    ((struct PlayerD368 *)arg0)->f26 = var_r0_17;
    ((struct PlayerD368 *)arg0)->f24 = 0x11U;
    goto block_872;
block_863:
    ((struct PlayerD368 *)arg0)->f24 = (u16) temp_r2_17;
    temp_r0_64 = ((struct PlayerD368 *)arg0)->f26 - 1;
    if (temp_r0_64 > 6U) {
        goto block_872;
    }
    switch (temp_r0_64) { case 0: goto sw12_0; case 1: goto sw12_1; case 2: goto sw12_2; case 3: goto sw12_3; case 4: goto sw12_4; case 5: goto sw12_5; case 6: goto sw12_6; }
sw11_0:
sw12_0:
    d368_sub_0805865C(0x90);
    goto block_872;
sw11_1:
sw12_1:
    d368_sub_0805865C(0x96);
    goto block_872;
sw11_2:
sw12_2:
    d368_sub_0805865C(0x97);
    goto block_872;
sw11_3:
sw12_3:
    d368_sub_0805865C(0x98);
    goto block_872;
sw11_4:
sw12_4:
    d368_sub_0805865C(0x99);
    goto block_872;
sw11_5:
sw12_5:
    d368_sub_0805865C(0x9A);
    goto block_872;
sw12_6:
    d368_sub_0805865C(0x9B);
block_872:
    M2C_FIELD(&((struct PlayerD368 *)arg0)->f1C, u16 *, 0) = (s16) (var_r6_7 - 1);
    temp_r3_6 = ((struct PlayerD368 *)arg0)->f40;
    temp_r1_34 = ((struct PlayerD368 *)arg0)->fD8;
    temp_r0_65 = (s32) (temp_r3_6 - temp_r1_34) >> 1;
    if (temp_r0_65 <= 0) {
        goto block_874;
    }
    var_r0_18 = temp_r1_34 + temp_r0_65;
    goto block_875;
block_874:
    var_r0_18 = temp_r1_34 + 1;
block_875:
    ((struct PlayerD368 *)arg0)->fD8 = var_r0_18;
    if ((s32) temp_r3_6 <= (s32) ((struct PlayerD368 *)arg0)->fD8) {
        goto block_877;
    }
    goto block_1038;
block_877:
    ((struct PlayerD368 *)arg0)->fD8 = (s32) temp_r3_6;
    goto block_1038;
sw4_8:
    temp_r1_35 = ((struct PlayerD368 *)arg0)->fD8;
    if (temp_r1_35 > 0x17) {
        goto block_881;
    }
    temp_r0_66 = temp_r1_35 - 8;
    ((struct PlayerD368 *)arg0)->fD8 = temp_r0_66;
    if (temp_r0_66 > 0) {
        goto block_883;
    }
    var_r0_19 = 0;
    goto block_882;
block_881:
    var_r0_19 = temp_r1_35 - (temp_r1_35 >> 1);
block_882:
    ((struct PlayerD368 *)arg0)->fD8 = var_r0_19;
block_883:
    if (((struct PlayerD368 *)arg0)->fB0 == ((struct PlayerD368 *)arg0)->fB8) {
        goto block_885;
    }
    goto block_1038;
block_885:
    if (((struct PlayerD368 *)arg0)->fB6 != 0) {
        goto block_887;
    }
    goto block_1038;
block_887:
    ((struct PlayerD368 *)arg0)->f20 = 0U;
    ((struct PlayerD368 *)arg0)->f24 = 0U;
    ((struct PlayerD368 *)arg0)->f26 = 0U;
    sp144 = 0;
    sp190 = 0xFFFF;
    goto block_1038;
sw4_2:
    temp_r0_67 = d368_sub_0801DE60();
    if (temp_r0_67 == 3) {
        goto block_893;
    }
    if (temp_r0_67 == 4) {
        goto block_906;
    }
    var_r1_8 = ((struct PlayerD368 *)arg0)->fD8;
    var_r4_8 = arg0 + 0xD8;
    if (var_r1_8 > 0x17) {
        goto block_919;
    }
    temp_r0_68 = var_r1_8 - 8;
    ((struct PlayerD368 *)arg0)->fD8 = temp_r0_68;
    if (temp_r0_68 > 0) {
        goto block_921;
    }
    ((struct PlayerD368 *)arg0)->fD8 = 0;
    goto block_921;
block_893:
    if (((struct PlayerD368 *)arg0)->f10 != 4) {
        goto block_903;
    }
    temp_r2_18 = ((struct PlayerD368 *)arg0)->fB2;
    if (temp_r2_18 == 0) {
        goto block_900;
    }
    var_r4_8 = arg0 + 0xD8;
    if (M2C_FIELD((arg0 + 0xB2), u16 *, 2) != 1) {
        goto block_897;
    }
    ((struct PlayerD368 *)arg0)->fD8 = 0x200;
block_897:
    var_r1_8 = ((struct PlayerD368 *)arg0)->fD8;
    if (var_r1_8 > 0x17) {
        goto block_919;
    }
    temp_r0_69 = var_r1_8 - 8;
    ((struct PlayerD368 *)arg0)->fD8 = temp_r0_69;
    if (temp_r0_69 > 0) {
        goto block_921;
    }
    var_r0_20 = 0;
    goto block_920;
block_900:
    var_r1_8 = ((struct PlayerD368 *)arg0)->fD8;
    var_r4_8 = arg0 + 0xD8;
    if (var_r1_8 > 0x17) {
        goto block_919;
    }
    temp_r0_70 = var_r1_8 - 8;
    ((struct PlayerD368 *)arg0)->fD8 = temp_r0_70;
    if (temp_r0_70 > 0) {
        goto block_921;
    }
    ((struct PlayerD368 *)arg0)->fD8 = (s32) temp_r2_18;
    goto block_921;
block_903:
    var_r1_8 = ((struct PlayerD368 *)arg0)->fD8;
    var_r4_8 = arg0 + 0xD8;
    if (var_r1_8 > 0x17) {
        goto block_919;
    }
    temp_r0_71 = var_r1_8 - 8;
    ((struct PlayerD368 *)arg0)->fD8 = temp_r0_71;
    if (temp_r0_71 > 0) {
        goto block_921;
    }
    var_r0_20 = 0;
    goto block_920;
block_906:
    if (((struct PlayerD368 *)arg0)->f10 != 4) {
        goto block_916;
    }
    if ((u32) ((struct PlayerD368 *)arg0)->fB2 <= 1U) {
        goto block_913;
    }
    var_r4_8 = arg0 + 0xD8;
    if (((struct PlayerD368 *)arg0)->fB4 != 1) {
        goto block_910;
    }
    ((struct PlayerD368 *)arg0)->fD8 = 0x200;
block_910:
    var_r1_8 = ((struct PlayerD368 *)arg0)->fD8;
    if (var_r1_8 > 0x17) {
        goto block_919;
    }
    temp_r0_72 = var_r1_8 - 8;
    ((struct PlayerD368 *)arg0)->fD8 = temp_r0_72;
    if (temp_r0_72 > 0) {
        goto block_921;
    }
    var_r0_20 = 0;
    goto block_920;
block_913:
    var_r1_8 = ((struct PlayerD368 *)arg0)->fD8;
    var_r4_8 = arg0 + 0xD8;
    if (var_r1_8 > 0x17) {
        goto block_919;
    }
    temp_r0_73 = var_r1_8 - 8;
    ((struct PlayerD368 *)arg0)->fD8 = temp_r0_73;
    if (temp_r0_73 > 0) {
        goto block_921;
    }
    var_r0_20 = 0;
    goto block_920;
block_916:
    var_r1_8 = ((struct PlayerD368 *)arg0)->fD8;
    var_r4_8 = arg0 + 0xD8;
    if (var_r1_8 > 0x17) {
        goto block_919;
    }
    temp_r0_74 = var_r1_8 - 8;
    ((struct PlayerD368 *)arg0)->fD8 = temp_r0_74;
    if (temp_r0_74 > 0) {
        goto block_921;
    }
    var_r0_20 = 0;
    goto block_920;
block_919:
    var_r0_20 = var_r1_8 - (var_r1_8 >> 1);
block_920:
    *var_r4_8 = var_r0_20;
block_921:
    if (((struct PlayerD368 *)arg0)->fB0 == ((struct PlayerD368 *)arg0)->fB8) {
        goto block_923;
    }
    goto block_1038;
block_923:
    if (((struct PlayerD368 *)arg0)->fB6 != 0) {
        goto block_925;
    }
    goto block_1038;
block_925:
    ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 & 0xFFDFFFFF);
    ((struct PlayerD368 *)arg0)->f20 = 0U;
    ((struct PlayerD368 *)arg0)->f24 = 0U;
    ((struct PlayerD368 *)arg0)->f26 = 0U;
    sp144 = 0;
    goto block_1038;
sw4_9:
    temp_r1_36 = ((struct PlayerD368 *)arg0)->fD8;
    if (temp_r1_36 > 0x17) {
        goto block_929;
    }
    temp_r0_75 = temp_r1_36 - 8;
    ((struct PlayerD368 *)arg0)->fD8 = temp_r0_75;
    if (temp_r0_75 > 0) {
        goto block_931;
    }
    var_r0_21 = 0;
    goto block_930;
block_929:
    var_r0_21 = temp_r1_36 - (temp_r1_36 >> 1);
block_930:
    ((struct PlayerD368 *)arg0)->fD8 = var_r0_21;
block_931:
    if (((struct PlayerD368 *)arg0)->fB0 == ((struct PlayerD368 *)arg0)->fB8) {
        goto block_933;
    }
    goto block_1038;
block_933:
    if (((struct PlayerD368 *)arg0)->fB6 != 0) {
        goto block_935;
    }
    goto block_1038;
block_935:
    ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 & 0xFFDFFFFF);
    ((struct PlayerD368 *)arg0)->f20 = 0U;
    ((struct PlayerD368 *)arg0)->f24 = 0U;
    ((struct PlayerD368 *)arg0)->f26 = 0U;
    sp144 = 0;
    goto block_1038;
sw4_10:
    temp_r1_37 = ((struct PlayerD368 *)arg0)->fD8;
    if (temp_r1_37 > 0x17) {
        goto block_939;
    }
    temp_r0_76 = temp_r1_37 - 8;
    ((struct PlayerD368 *)arg0)->fD8 = temp_r0_76;
    if (temp_r0_76 > 0) {
        goto block_941;
    }
    var_r0_22 = 0;
    goto block_940;
block_939:
    var_r0_22 = temp_r1_37 - (temp_r1_37 >> 1);
block_940:
    ((struct PlayerD368 *)arg0)->fD8 = var_r0_22;
block_941:
    if (((struct PlayerD368 *)arg0)->fB0 == ((struct PlayerD368 *)arg0)->fB8) {
        goto block_943;
    }
    goto block_997;
block_943:
    if (((struct PlayerD368 *)arg0)->fB6 != 0) {
        goto block_945;
    }
    goto block_997;
block_945:
    sp194 = 0xFFFE;
    temp_r0_77 = (u16) d368_sub_08013BC0(arg0);
    if (temp_r0_77 != 0) {
        goto block_947;
    }
    goto block_991;
block_947:
    ((struct PlayerD368 *)arg0)->fB8 = 0xFFFDU;
    ((struct PlayerD368 *)arg0)->fB4 = 0U;
    *(u16 *)((arg0 + 0xB4) - 2) = 0;
    ((struct PlayerD368 *)arg0)->f20 = 0xBU;
    ((struct PlayerD368 *)arg0)->f64 = (u16) ((struct PlayerD368 *)arg0)->fC;
    if (d368_sub_0800CCCC() != 0) {
        goto block_952;
    }
    if (d368_sub_0800CD34() != 0) {
        goto block_952;
    }
    temp_r0_78 = ((struct PlayerD368 *)arg0)->fC;
    if (temp_r0_78 != 8) {
        goto block_951;
    }
    d368_sub_0805865C(0x53);
    goto block_952;
block_951:
    d368_sub_0805865C(temp_r0_78 + 0x4D);
block_952:
    if (d368_sub_0800CB9C() == 0) {
        goto block_954;
    }
    d368_sub_08058B08(0x44, 0x12C);
    goto block_955;
block_954:
    d368_sub_08058688(0x44);
block_955:
    sp148 = 0;
    if (d368_sub_0800CF80() != 0) {
        goto block_976;
    }
    if (d368_sub_0800CDC0() != 0) {
        goto block_976;
    }
    var_r5_7 = 0;
    goto loop_959;
block_958:
    if (sp128 != 3) {
        goto block_972;
    }
loop_959:
    temp_r0_79 = d368_sub_080008C8() % 3U;
    sp128 = temp_r0_79;
    if (temp_r0_79 == 1) {
        goto block_965;
    }
    if (temp_r0_79 < 1U) {
        goto block_963;
    }
    if (temp_r0_79 == 2) {
        goto block_967;
    }
    goto block_971;
block_963:
    if (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x100) != 0) {
        goto block_968;
    }
    sp128 = 3;
    var_r0_23 = 1;
    goto block_970;
block_965:
    if (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x110) != 0) {
        goto block_968;
    }
    sp128 = 3;
    var_r0_23 = 2;
    goto block_970;
block_967:
    if (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x120) == 0) {
        goto block_969;
    }
block_968:
    d368_sub_08066490(((struct PlayerD368 *)arg0)->f8C, ((struct PlayerD368 *)arg0)->f90, d368_gUnk_030034E0 + 0x100 + sp128 * 0x10);
    goto block_971;
block_969:
    sp128 = 3;
    var_r0_23 = 4;
block_970:
    var_r5_7 |= var_r0_23;
block_971:
    if (var_r5_7 != 7) {
        goto block_958;
    }
block_972:
    if (var_r5_7 == 7) {
        goto block_974;
    }
    d368_sub_080137A0(sp128);
block_974:
    d368_sub_0805D094();
    d368_sub_0805D0E8();
    d368_sub_0805D13C();
    d368_sub_0805D190();
    d368_sub_0805D1E0();
    temp_r0_80 = d368_sub_0805D5A0();
    M2C_FIELD(&spE0[0], u32 *, 4) = temp_r0_80;
    M2C_FIELD(&spE0[0], s16 *, 0) = 0xA;
    if (temp_r0_80 == 0) {
        goto block_976;
    }
    d368_sub_08066490(((struct PlayerD368 *)arg0)->f8C, ((struct PlayerD368 *)arg0)->f90, &spE0[0]);
block_976:
    d368_sub_0801E278(arg0, 6);
    d368_sub_0801E278(arg0, 7);
    d368_sub_0801E278(arg0, 3);
    d368_sub_0801E278(arg0, 3);
    d368_sub_0801E278(arg0, 5);
    d368_sub_0805867C(0x183);
    ((struct PlayerD368 *)arg0)->f68 = 0U;
    d368_sub_0806617C();
    d368_sub_08022284(((struct PlayerD368 *)arg0)->f0, ((struct PlayerD368 *)arg0)->fE0);
    temp_r0_81 = ((struct PlayerD368 *)arg0)->fE0 - 1;
    if (temp_r0_81 > 5U) {
        goto block_990;
    }
    switch (temp_r0_81) { case 0: goto sw13_0; case 1: goto sw13_1; case 2: goto sw13_2; case 3: goto sw13_3; case 4: goto sw13_4; case 5: goto sw13_5; }
sw13_0:
    if ((s32) (s16) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x24) <= 0) {
        goto block_990;
    }
    M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x24) = (u16) (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x24) - 1);
    goto block_990;
sw13_1:
    if ((s32) (s16) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x26) <= 0) {
        goto block_990;
    }
    M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x26) = (u16) (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x26) - 1);
    goto block_990;
sw13_2:
    if ((s32) (s16) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x28) <= 0) {
        goto block_990;
    }
    M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x28) = (u16) (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x28) - 1);
    goto block_990;
sw13_3:
    if ((s32) (s16) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2A) <= 0) {
        goto block_990;
    }
    M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2A) = (u16) (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2A) - 1);
    goto block_990;
sw13_4:
    if ((s32) (s16) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2C) <= 0) {
        goto block_990;
    }
    M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2C) = (u16) (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2C) - 1);
    goto block_990;
sw13_5:
    if ((s32) (s16) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2E) <= 0) {
        goto block_990;
    }
    M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2E) = (u16) (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2E) - 1);
block_990:
    ((struct PlayerD368 *)arg0)->fE0 = 0;
    goto block_997;
block_991:
    ((struct PlayerD368 *)arg0)->f20 = temp_r0_77;
    ((struct PlayerD368 *)arg0)->f114 = 0x14U;
    temp_r0_82 = d368_sub_0801DE60();
    if (temp_r0_82 != 5) {
        goto block_997;
    }
    if (((struct PlayerD368 *)arg0)->f30 & 0x20000) {
        goto block_997;
    }
    if (d368_sub_0801E0AC(d368_gUnk_030034E0 + 0x30, 5) == 0) {
        goto block_997;
    }
    if ((s32) (s16) *sp1BC >= (s32) ((s32) (*sp1B4 << 0x10) >> 0x11)) {
        goto block_997;
    }
    temp_r0_83 = d368_sub_0801E164(arg0, 5);
    if (temp_r0_83 == 0) {
        goto block_997;
    }
    M2C_FIELD(temp_r0_83, u16 *, 2) = (u16) ((struct PlayerD368 *)arg0)->f0;
    M2C_FIELD(temp_r0_83, s16 *, 4) = (s16) temp_r0_82;
    M2C_FIELD(temp_r0_83, u16 *, 6) = d368_sub_0801E0AC(d368_gUnk_030034E0 + 0x30, 5);
    M2C_FIELD(temp_r0_83, s16 *, 0) = 0x708;
    ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 | 0x20000);
    d368_sub_0805867C(0x16F);
block_997:
    ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 & 0xFFDFFFFF);
    sp144 = 0;
    ((struct PlayerD368 *)arg0)->f24 = 0U;
    ((struct PlayerD368 *)arg0)->f26 = (u16) sp144;
    sp130 = 0;
    sp134 = 0;
    goto block_1038;
sw4_11:
    temp_r1_38 = ((struct PlayerD368 *)arg0)->fD8;
    if (temp_r1_38 > 0x17) {
        goto block_1001;
    }
    temp_r0_84 = temp_r1_38 - 8;
    ((struct PlayerD368 *)arg0)->fD8 = temp_r0_84;
    if (temp_r0_84 > 0) {
        goto block_1003;
    }
    var_r0_24 = 0;
    goto block_1002;
block_1001:
    var_r0_24 = temp_r1_38 - (temp_r1_38 >> 1);
block_1002:
    ((struct PlayerD368 *)arg0)->fD8 = var_r0_24;
block_1003:
    if (((struct PlayerD368 *)arg0)->fB0 != ((struct PlayerD368 *)arg0)->fB8) {
        goto block_1010;
    }
    if (((struct PlayerD368 *)arg0)->fB6 == 0) {
        goto block_1010;
    }
    temp_r1_39 = sp148;
    sp148 = (u32) ((temp_r1_39 << 0x10) + 0x10000) >> 0x10;
    if ((s32) (s16) temp_r1_39 <= 0x78) {
        goto block_1010;
    }
    d368_sub_0805867C(0x73);
    ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 | 0x2000);
    temp_r0_85 = d368_sub_0800CB9C();
    if (temp_r0_85 == 0) {
        goto block_1008;
    }
    ((struct PlayerD368 *)arg0)->f20 = 0U;
    goto block_1009;
block_1008:
    ((struct PlayerD368 *)arg0)->f20 = 0xCU;
    ((struct PlayerD368 *)arg0)->f22 = (u16) temp_r0_85;
block_1009:
    d368_sub_08067D74();
block_1010:
    ((struct PlayerD368 *)arg0)->f24 = 0U;
    ((struct PlayerD368 *)arg0)->f26 = 0U;
    sp130 = 0;
    sp134 = 0;
    var_r1_6 = 0xFFDFFFFF;
    goto block_1024;
sw4_12:
    temp_r1_40 = ((struct PlayerD368 *)arg0)->fD8;
    if (temp_r1_40 > 0x17) {
        goto block_1014;
    }
    temp_r0_86 = temp_r1_40 - 8;
    ((struct PlayerD368 *)arg0)->fD8 = temp_r0_86;
    if (temp_r0_86 > 0) {
        goto block_1016;
    }
    var_r0_25 = 0;
    goto block_1015;
block_1014:
    var_r0_25 = temp_r1_40 - (temp_r1_40 >> 1);
block_1015:
    ((struct PlayerD368 *)arg0)->fD8 = var_r0_25;
block_1016:
    ((struct PlayerD368 *)arg0)->f24 = 0U;
    ((struct PlayerD368 *)arg0)->f26 = 0U;
    sp130 = 0;
    sp134 = 0;
    ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 & 0xFFDFFFFF);
    temp_r0_87 = ((struct PlayerD368 *)arg0)->f22;
    if ((u32) temp_r0_87 > 7U) {
        goto block_1038;
    }
    switch (temp_r0_87) { case 0: goto sw14_0; case 2: goto sw14_2; case 3: goto sw14_3; case 4: goto sw14_4; case 7: goto sw14_7; }
sw14_0:
    if (d368_sub_0800CC98() != 0) {
        goto block_1038;
    }
    ((struct PlayerD368 *)arg0)->f22 = 1U;
    ((struct PlayerD368 *)arg0)->f68 = 0U;
    goto block_1038;
sw14_2:
    if (d368_sub_0801AC78() == 0) {
        goto block_1038;
    }
    ((struct PlayerD368 *)arg0)->f22 = 3U;
    goto block_1038;
sw14_3:
    var_r0_11 = 0;
    goto block_627;
sw14_4:
    var_r1_6 = -4;
block_1024:
    ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 & var_r1_6);
    goto block_1038;
sw14_7:
    if (d368_sub_0805EEFC(sp17C) == 0) {
        goto block_1029;
    }
    var_r0_11 = (u16) d368_sub_0805EF14(sp17C);
    if (var_r0_11 != 0) {
        goto block_1028;
    }
    goto block_627;
block_1028:
    ((struct PlayerD368 *)arg0)->f20 = 0xCU;
    ((struct PlayerD368 *)arg0)->f22 = 0U;
    goto block_1038;
block_1029:
    if (d368_sub_08058DB0() != 0) {
        goto block_1032;
    }
    if (d368_sub_0800D11C() != 0) {
        goto block_1032;
    }
    if (!(((struct PlayerD368 *)arg0)->f30 & 0x400)) {
        goto block_1038;
    }
block_1032:
    d368_sub_0805EF84(sp17C, 1);
    d368_sub_0805EE6C(sp17C);
    goto block_1038;
sw4_14:
    var_r1_7 = ((struct PlayerD368 *)arg0)->fD8;
    var_r4_6 = arg0 + 0xD8;
    if (var_r1_7 > 0x17) {
        goto block_1036;
    }
    temp_r0_88 = var_r1_7 - 8;
    ((struct PlayerD368 *)arg0)->fD8 = temp_r0_88;
    if (temp_r0_88 > 0) {
        goto block_1038;
    }
    var_r0_15 = 0;
    goto block_1037;
block_1036:
    var_r0_15 = var_r1_7 - (var_r1_7 >> 1);
block_1037:
    *var_r4_6 = var_r0_15;
block_1038:
    if (((struct PlayerD368 *)arg0)->f20 != 0xD) {
        goto block_1040;
    }
    goto block_1120;
block_1040:
    if (((struct PlayerD368 *)arg0)->fD8 == 0) {
        goto block_1042;
    }
    temp_r5_9 = arg0 + 0x8C;
    ((struct PlayerD368 *)arg0)->f94 = (s32) ((struct PlayerD368 *)arg0)->f8C;
    M2C_FIELD((arg0 + 0x94), s32 *, 4) = (s32) M2C_FIELD(temp_r5_9, s32 *, 4);
    temp_r3_7 = (u16) d368_sub_0800CCCC();
    d368_sub_08013E90(((struct PlayerD368 *)arg0)->fD8, temp_r5_9, M2C_FIELD(&((struct PlayerD368 *)arg0)->f1C, u16 *, 0), temp_r3_7, (((struct PlayerD368 *)arg0)->f30 & 0x20));
block_1042:
    if (d368_sub_0800CD8C() != 0) {
        goto block_1044;
    }
    d368_sub_08013CEC(arg0);
block_1044:
    d368_sub_080140AC(arg0);
    if (d368_sub_0800CC98() != 0) {
        goto block_1046;
    }
    d368_sub_0800AD04(arg0 + 0x8C, arg0 + 0x90, d368_sub_0800CCCC());
block_1046:
    if (sp13C != 0) {
        goto block_1049;
    }
    if (((struct PlayerD368 *)arg0)->f88 == 0) {
        goto block_1049;
    }
    sp14C = 0x14;
    sp13C = (s32) (u16) (M2C_FIELD(&((struct PlayerD368 *)arg0)->f88, u16 *, 2) + M2C_FIELD(&((struct PlayerD368 *)arg0)->f88, u16 *, 0));
    sp140 = 0;
block_1049:
    sp14C = (s32) (u16) (sp14C - 1);
    if (0x8000 & sp14C) {
        goto block_1067;
    }
    if (sp13C != 0) {
        goto block_1052;
    }
    sp14C = 0xFFFF;
    goto block_1068;
block_1052:
    if (((struct PlayerD368 *)arg0)->f30 & 2) {
        goto block_1068;
    }
    *sp1C0 = (s16) (*sp1C0 - 8);
    if (d368_sub_0800CC98() == 0) {
        goto block_1063;
    }
    temp_r0_89 = M2C_FIELD(d368_gUnk_03006440, u32 *, 0);
    if (temp_r0_89 > 4U) {
        goto block_1058;
    }
    if (temp_r0_89 >= 2U) {
        goto block_1061;
    }
    if (temp_r0_89 == 1) {
        goto block_1060;
    }
    goto block_1065;
block_1058:
    if (temp_r0_89 == 6) {
        goto block_1061;
    }
    goto block_1065;
block_1060:
    var_r1_9 = (s16) sp140 + 0x48;
    var_r0_26 = 0x5C;
    goto block_1062;
block_1061:
    var_r1_9 = (s16) sp140 + 0x54;
    var_r0_26 = 0x24;
block_1062:
    d368_sub_0805FAC0(var_r0_26, var_r1_9, sp13C, 1);
    goto block_1065;
block_1063:
    if (d368_sub_0800CD8C() != 0) {
        goto block_1065;
    }
    d368_sub_0805FAC0(*sp1C0, *sp1C4 + (s16) sp140, sp13C, 1);
block_1065:
    if (!(2 & sp14C)) {
        goto block_1068;
    }
    sp140 = (u32) ((sp140 << 0x10) + 0xFFFF0000) >> 0x10;
    goto block_1068;
block_1067:
    sp13C = 0;
    sp14C = 0xFFFF;
block_1068:
    if (((struct PlayerD368 *)arg0)->f20 != 0xA) {
        goto block_1070;
    }
    goto block_1120;
block_1070:
    if ((d368_sub_08013BC0(arg0) << 0x10) != 0) {
        goto block_1072;
    }
    goto block_1120;
block_1072:
    temp_r1_41 = ((struct PlayerD368 *)arg0)->f20;
    if (temp_r1_41 != 0xB) {
        goto block_1074;
    }
    goto block_1120;
block_1074:
    temp_r2_19 = ((struct PlayerD368 *)arg0)->f30 & 0x2000;
    if (temp_r2_19 == 0) {
        goto block_1076;
    }
    goto block_1120;
block_1076:
    if (temp_r1_41 != 0xC) {
        goto block_1078;
    }
    goto block_1120;
block_1078:
    ((struct PlayerD368 *)arg0)->fB8 = 0xFFFDU;
    ((struct PlayerD368 *)arg0)->fB4 = temp_r2_19;
    temp_r0_90 = (arg0 + 0xB4) - 2;
    *temp_r0_90 = temp_r2_19;
    *(temp_r0_90 - 0x27) = ((struct PlayerD368 *)arg0)->fC;
    ((struct PlayerD368 *)arg0)->f20 = 0xBU;
    if (d368_sub_0800CCCC() != 0) {
        goto block_1081;
    }
    if (d368_sub_0800CD34() != 0) {
        goto block_1081;
    }
    d368_sub_0805865C(((struct PlayerD368 *)arg0)->fC + 0x4D);
block_1081:
    if (d368_sub_0800CB9C() == 0) {
        goto block_1083;
    }
    d368_sub_08058B08(0x44, 0x12C);
    goto block_1084;
block_1083:
    d368_sub_08058688(0x44);
block_1084:
    d368_sub_0801E278(arg0, 6);
    d368_sub_0801E278(arg0, 7);
    d368_sub_0801E278(arg0, 3);
    d368_sub_0801E278(arg0, 3);
    d368_sub_0801E278(arg0, 5);
    d368_sub_0805867C(0x73);
    *sp1BC = 0;
    if (d368_sub_0800CF80() != 0) {
        goto block_1105;
    }
    if (d368_sub_0800CDC0() != 0) {
        goto block_1105;
    }
    var_r5_8 = 0;
    goto loop_1088;
block_1087:
    if (sp128 != 3) {
        goto block_1101;
    }
loop_1088:
    temp_r0_91 = d368_sub_080008C8() % 3U;
    sp128 = temp_r0_91;
    if (temp_r0_91 == 1) {
        goto block_1094;
    }
    if (temp_r0_91 < 1U) {
        goto block_1092;
    }
    if (temp_r0_91 == 2) {
        goto block_1096;
    }
    goto block_1100;
block_1092:
    if (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x100) == 4) {
        goto block_1097;
    }
    sp128 = 3;
    var_r0_27 = 1;
    goto block_1099;
block_1094:
    if (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x110) == 3) {
        goto block_1097;
    }
    sp128 = 3;
    var_r0_27 = 2;
    goto block_1099;
block_1096:
    if (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x120) != 5) {
        goto block_1098;
    }
block_1097:
    d368_sub_08066490(((struct PlayerD368 *)arg0)->f8C, ((struct PlayerD368 *)arg0)->f90, d368_gUnk_030034E0 + 0x100 + sp128 * 0x10);
    goto block_1100;
block_1098:
    sp128 = 3;
    var_r0_27 = 4;
block_1099:
    var_r5_8 |= var_r0_27;
block_1100:
    if (var_r5_8 != 7) {
        goto block_1087;
    }
block_1101:
    if (var_r5_8 == 7) {
        goto block_1103;
    }
    d368_sub_080137A0(sp128);
block_1103:
    d368_sub_0805AD78(M2C_FIELD(sp12C, u16 *, 0x68));
    d368_sub_0805D094();
    d368_sub_0805D0E8();
    d368_sub_0805D13C();
    d368_sub_0805D190();
    d368_sub_0805D1E0();
    temp_r0_92 = d368_sub_0805D5A0();
    M2C_FIELD(&spE0[0], u32 *, 4) = temp_r0_92;
    M2C_FIELD(&spE0[0], s16 *, 0) = 0xA;
    if (temp_r0_92 == 0) {
        goto block_1105;
    }
    d368_sub_08066490(((struct PlayerD368 *)arg0)->f8C, ((struct PlayerD368 *)arg0)->f90, &spE0[0]);
block_1105:
    ((struct PlayerD368 *)arg0)->f68 = 0U;
    d368_sub_0806617C();
    d368_sub_08022284(((struct PlayerD368 *)arg0)->f0, ((struct PlayerD368 *)arg0)->fE0);
    temp_r0_93 = ((struct PlayerD368 *)arg0)->fE0 - 1;
    if (temp_r0_93 > 5U) {
        goto block_1119;
    }
    switch (temp_r0_93) { case 0: goto sw15_0; case 1: goto sw15_1; case 2: goto sw15_2; case 3: goto sw15_3; case 4: goto sw15_4; case 5: goto sw15_5; }
sw15_0:
    if ((s32) (s16) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x24) <= 0) {
        goto block_1119;
    }
    M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x24) = (u16) (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x24) - 1);
    goto block_1119;
sw15_1:
    if ((s32) (s16) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x26) <= 0) {
        goto block_1119;
    }
    M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x26) = (u16) (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x26) - 1);
    goto block_1119;
sw15_2:
    if ((s32) (s16) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x28) <= 0) {
        goto block_1119;
    }
    M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x28) = (u16) (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x28) - 1);
    goto block_1119;
sw15_3:
    if ((s32) (s16) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2A) <= 0) {
        goto block_1119;
    }
    M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2A) = (u16) (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2A) - 1);
    goto block_1119;
sw15_4:
    if ((s32) (s16) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2C) <= 0) {
        goto block_1119;
    }
    M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2C) = (u16) (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2C) - 1);
    goto block_1119;
sw15_5:
    if ((s32) (s16) M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2E) <= 0) {
        goto block_1119;
    }
    M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2E) = (u16) (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x2E) - 1);
block_1119:
    ((struct PlayerD368 *)arg0)->fE0 = 0;
block_1120:
    temp_r3_8 = ((struct PlayerD368 *)arg0)->f20;
    if ((u32) temp_r3_8 <= 0xEU) {
        goto block_1122;
    }
    goto block_1302;
block_1122:
    switch (temp_r3_8) { case 0: goto sw16_0; case 6: goto sw16_6; case 1: goto sw16_1; case 7: goto sw16_7; case 3: goto sw16_3; case 4: goto sw16_4; case 2: goto sw16_2; case 5: goto sw16_5; case 8: goto sw16_8; case 9: goto sw16_9; case 10: goto sw16_10; case 11: goto sw16_11; case 12: goto sw16_12; case 14: goto sw16_14; }
sw16_0:
sw16_6:
    temp_r2_20 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_20)->w0_b0_n4.value = temp_r3_8;
    temp_r4_13 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r4_13)->w0_b4_n12.value = (s32) ((struct PlayerD368 *)arg0)->f8C >> 8;
    temp_r4_14 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r4_14)->w0_b16_n12.value = (((struct PlayerD368 *)arg0)->f90) >> 8;
    temp_r2_21 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_21)->w0_b28_n4.value = ((struct PlayerD368 *)arg0)->f1C;
    temp_r4_15 = ((struct PlayerD368 *)arg0)->f144;
    temp_r0_94 = d368_sub_0800CCCC();
    ((union RecordD368 *)temp_r4_15)->w1_b0_n6.value = ((s32) ((0 - temp_r0_94) | temp_r0_94) >> 0x1F) & 0x20;
    temp_r3_9 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_9)->w1_b6_n4.value = ((struct PlayerD368 *)arg0)->f132;
    temp_r3_10 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_10)->w1_b10_n1.value = ((struct PlayerD368 *)arg0)->f134;
    temp_r3_11 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_11)->w1_b11_n8.value = (u8) ((struct PlayerD368 *)arg0)->f48;
    if (((struct PlayerD368 *)arg0)->f20 != 0) {
        goto block_1125;
    }
    temp_r3_12 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_12)->w1_b28_n1.value = ((u32) ((struct PlayerD368 *)arg0)->f30 >> 0xA) & 1 & 1;
    goto block_1126;
block_1125:
    temp_r2_22 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_22)->w1_b28_n1.value = ((u32) (0)) >> 4;
block_1126:
    if (d368_sub_0800CD34() == 0) {
        goto block_1128;
    }
    goto block_1302;
block_1128:
    if (!(((struct PlayerD368 *)arg0)->f30 & 0x80002)) {
        goto block_1130;
    }
    goto block_1302;
block_1130:
    if (d368_sub_0801DF8C() != 0) {
        goto block_1136;
    }
    temp_r0_95 = d368_sub_0800CC98();
    temp_r3_13 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_13)->w1_b19_n5.value = (u32) ((0 - temp_r0_95) | temp_r0_95) >> 0x1F;
    if ((s32) (s16) *sp1B8 >= (s32) (s16) ((s16) *sp1B0 / 10)) {
        goto block_1133;
    }
    temp_r2_23 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_23)->w1_b19_n5.value = ((u32) (0x18)) >> 3;
block_1133:
    if ((s32) (s16) *sp1BC < (s32) (s16) ((s16) *sp1B4 / 3)) {
        goto block_1135;
    }
    goto block_1302;
block_1135:
    var_r0_28 = 7 & M2C_FIELD(((struct PlayerD368 *)arg0)->f144, u8 *, 6);
    var_r1_10 = 0x10;
    goto block_1151;
block_1136:
    if (!(8 & ((struct PlayerD368 *)arg0)->f14)) {
        goto block_1138;
    }
    goto block_1150;
block_1138:
    goto block_1152;
sw16_1:
sw16_7:
    temp_r2_24 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_24)->w0_b0_n4.value = temp_r3_8;
    temp_r4_16 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r4_16)->w0_b4_n12.value = (s32) ((struct PlayerD368 *)arg0)->f8C >> 8;
    temp_r4_17 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r4_17)->w0_b16_n12.value = (((struct PlayerD368 *)arg0)->f90) >> 8;
    temp_r2_25 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_25)->w0_b28_n4.value = ((struct PlayerD368 *)arg0)->f1C;
    temp_r4_18 = ((struct PlayerD368 *)arg0)->f144;
    temp_r0_96 = d368_sub_0800CCCC();
    ((union RecordD368 *)temp_r4_18)->w1_b0_n6.value = ((s32) ((0 - temp_r0_96) | temp_r0_96) >> 0x1F) & 0x20;
    temp_r3_14 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_14)->w1_b6_n4.value = ((struct PlayerD368 *)arg0)->f132;
    temp_r3_15 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_15)->w1_b10_n1.value = ((struct PlayerD368 *)arg0)->f134;
    temp_r3_16 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_16)->w1_b11_n8.value = (u8) ((struct PlayerD368 *)arg0)->f48;
    if (d368_sub_0801DF8C() != 0) {
        goto block_1147;
    }
    if (d368_sub_0800CD34() != 0) {
        goto block_1147;
    }
    if (((struct PlayerD368 *)arg0)->f30 & 0x80002) {
        goto block_1147;
    }
    temp_r2_26 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_26)->w1_b19_n5.value = ((u32) (0)) >> 3;
    if ((s32) (s16) *sp1B8 >= (s32) (s16) ((s16) *sp1B0 / 10)) {
        goto block_1144;
    }
    temp_r2_27 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_27)->w1_b19_n5.value = ((u32) (0x18)) >> 3;
block_1144:
    if ((s32) (s16) *sp1BC < (s32) (s16) ((s16) *sp1B4 / 3)) {
        goto block_1146;
    }
    goto block_1302;
block_1146:
    var_r0_28 = 7 & M2C_FIELD(((struct PlayerD368 *)arg0)->f144, u8 *, 6);
    var_r1_10 = 0x10;
    goto block_1151;
block_1147:
    if (d368_sub_0801DF8C() != 0) {
        goto block_1149;
    }
    goto block_1302;
block_1149:
    if (!(8 & ((struct PlayerD368 *)arg0)->f14)) {
        goto block_1152;
    }
block_1150:
    var_r0_28 = 7 & M2C_FIELD(((struct PlayerD368 *)arg0)->f144, u8 *, 6);
    var_r1_10 = 0x20;
block_1151:
    M2C_FIELD(((struct PlayerD368 *)arg0)->f144, s8 *, 6) = (s8) (var_r0_28 | var_r1_10);
    goto block_1302;
block_1152:
    temp_r2_28 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_28)->w1_b19_n5.value = ((u32) (0)) >> 3;
    goto block_1302;
sw16_3:
    var_r5_9 = arg0 + 0x144;
    temp_r2_29 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_29)->w0_b0_n4.value = temp_r3_8;
    temp_r4_19 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r4_19)->w0_b4_n12.value = (s32) ((struct PlayerD368 *)arg0)->f8C >> 8;
    temp_r4_20 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r4_20)->w0_b16_n12.value = (((struct PlayerD368 *)arg0)->f90) >> 8;
    temp_r2_30 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_30)->w0_b28_n4.value = ((struct PlayerD368 *)arg0)->f1C;
    temp_r4_21 = ((struct PlayerD368 *)arg0)->f144;
    temp_r0_97 = d368_sub_0800CCCC();
    ((union RecordD368 *)temp_r4_21)->w1_b0_n6.value = ((s32) ((0 - temp_r0_97) | temp_r0_97) >> 0x1F) & 0x20;
    temp_r3_17 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_17)->w1_b6_n4.value = ((struct PlayerD368 *)arg0)->f132;
    temp_r3_18 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_18)->w1_b11_n8.value = (u8) ((struct PlayerD368 *)arg0)->f26;
    goto block_1155;
sw16_4:
    var_r5_9 = arg0 + 0x144;
    temp_r2_31 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_31)->w0_b0_n4.value = temp_r3_8;
    temp_r4_22 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r4_22)->w0_b4_n12.value = (s32) ((struct PlayerD368 *)arg0)->f8C >> 8;
    temp_r4_23 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r4_23)->w0_b16_n12.value = (((struct PlayerD368 *)arg0)->f90) >> 8;
    temp_r2_32 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_32)->w0_b28_n4.value = ((struct PlayerD368 *)arg0)->f1C;
    temp_r4_24 = ((struct PlayerD368 *)arg0)->f144;
    temp_r0_98 = d368_sub_0800CCCC();
    ((union RecordD368 *)temp_r4_24)->w1_b0_n6.value = ((s32) ((0 - temp_r0_98) | temp_r0_98) >> 0x1F) & 0x20;
    temp_r3_19 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_19)->w1_b6_n4.value = ((struct PlayerD368 *)arg0)->f132;
block_1155:
    temp_r3_20 = *var_r5_9;
    M2C_FIELD(temp_r3_20, u8 *, 6) = (u8) ((7 & M2C_FIELD(temp_r3_20, u8 *, 6)) | (d368_sub_0801DEB8() * 8));
    goto block_1302;
sw16_2:
    d368_sub_0801FDD0(arg0);
    temp_r3_21 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_21)->w0_b0_n4.value = ((struct PlayerD368 *)arg0)->f20;
    temp_r4_25 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r4_25)->w0_b4_n12.value = (s32) ((struct PlayerD368 *)arg0)->f8C >> 8;
    temp_r4_26 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r4_26)->w0_b16_n12.value = (((struct PlayerD368 *)arg0)->f90) >> 8;
    temp_r2_33 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_33)->w0_b28_n4.value = ((struct PlayerD368 *)arg0)->f1C;
    temp_r3_22 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_22)->w1_b6_n4.value = ((struct PlayerD368 *)arg0)->f132;
    temp_r0_99 = ((struct PlayerD368 *)arg0)->f64;
    if ((u32) temp_r0_99 <= 9U) {
        goto block_1158;
    }
    goto block_1187;
block_1158:
    switch (temp_r0_99) { case 0: goto sw17_0; case 1: goto sw17_1; case 2: goto sw17_2; case 3: goto sw17_3; case 4: goto sw17_4; case 5: goto sw17_5; case 6: goto sw17_6; case 8: goto sw17_8; case 7: goto sw17_7; case 9: goto sw17_9; }
sw17_0:
    goto block_1213;
sw17_1:
    if (((struct PlayerD368 *)arg0)->f10 == 5) {
        goto block_1162;
    }
    goto block_1302;
block_1162:
    goto block_1213;
sw17_2:
    temp_r0_100 = ((struct PlayerD368 *)arg0)->f10;
    if (temp_r0_100 == 3) {
        goto block_1166;
    }
    if (temp_r0_100 == 7) {
        goto block_1166;
    }
    goto block_1302;
block_1166:
    if (!(((struct PlayerD368 *)arg0)->f30 & 0x200000)) {
        goto block_1168;
    }
    temp_r3_23 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_23)->w1_b20_n5.value = ((struct PlayerD368 *)arg0)->f28;
    goto block_1169;
block_1168:
    temp_r2_34 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_34)->w1_b20_n5.value = ((u32) (0)) >> 4;
block_1169:
    var_r5_10 = arg0 + 0x144;
    temp_r2_35 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_35)->w1_b14_n3.value = ((u32) (0)) >> 14;
    temp_r3_24 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_24)->w1_b17_n3.value = M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x3C);
    goto block_1220;
sw17_3:
    goto block_1213;
sw17_4:
    if (((struct PlayerD368 *)arg0)->f10 == 5) {
        goto block_1173;
    }
    goto block_1302;
block_1173:
    goto block_1213;
sw17_5:
    goto block_1213;
sw17_6:
sw17_8:
    if (((struct PlayerD368 *)arg0)->f10 == 5) {
        goto block_1177;
    }
    goto block_1302;
block_1177:
    goto block_1213;
sw17_7:
    temp_r0_101 = ((struct PlayerD368 *)arg0)->f10;
    if (temp_r0_101 == 1) {
        goto block_1181;
    }
    if (temp_r0_101 == 8) {
        goto block_1182;
    }
    goto block_1302;
block_1181:
    goto block_1213;
block_1182:
    if (!(((struct PlayerD368 *)arg0)->f30 & 0x200000)) {
        goto block_1184;
    }
    temp_r3_25 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_25)->w1_b20_n5.value = ((struct PlayerD368 *)arg0)->f28;
    goto block_1185;
block_1184:
    temp_r2_36 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_36)->w1_b20_n5.value = ((u32) (0)) >> 4;
block_1185:
    temp_r2_37 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_37)->w1_b14_n3.value = ((u32) (0)) >> 14;
    temp_r5_10 = ((struct PlayerD368 *)arg0)->f144;
    temp_r0_102 = d368_sub_0800CCCC();
    ((union RecordD368 *)temp_r5_10)->w1_b0_n6.value = ((s32) ((0 - temp_r0_102) | temp_r0_102) >> 0x1F) & 0x20;
    var_r0_29 = d368_sub_0807A028(1);
    var_r3_7 = ((struct PlayerD368 *)arg0)->f144;
    goto block_1221;
sw17_9:
    goto block_1213;
block_1187:
    goto block_1213;
sw16_5:
    d368_sub_0801FDD0(arg0);
    temp_r3_26 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_26)->w0_b0_n4.value = ((struct PlayerD368 *)arg0)->f20;
    temp_r4_27 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r4_27)->w0_b4_n12.value = (s32) ((struct PlayerD368 *)arg0)->f8C >> 8;
    temp_r4_28 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r4_28)->w0_b16_n12.value = (((struct PlayerD368 *)arg0)->f90) >> 8;
    temp_r2_38 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_38)->w0_b28_n4.value = ((struct PlayerD368 *)arg0)->f1C;
    temp_r0_103 = (u32) d368_sub_0801DE60();
    if (temp_r0_103 <= 7U) {
        goto block_1190;
    }
    goto block_1302;
block_1190:
    switch (temp_r0_103) { case 0: goto sw18_0; case 5: goto sw18_5; case 3: goto sw18_3; case 2: goto sw18_2; case 1: goto sw18_1; case 7: goto sw18_7; }
sw18_0:
    temp_r3_27 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_27)->w1_b14_n3.value = ((struct PlayerD368 *)arg0)->f26;
    temp_r0_104 = ((struct PlayerD368 *)arg0)->f10;
    if (temp_r0_104 == 2) {
        goto block_1198;
    }
    if ((s32) temp_r0_104 > 2) {
        goto block_1195;
    }
    if (temp_r0_104 == 1) {
        goto block_1197;
    }
    goto block_1201;
block_1195:
    if (temp_r0_104 == 3) {
        goto block_1199;
    }
    goto block_1201;
block_1197:
    var_r1_11 = M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x3C);
    goto block_1200;
block_1198:
    var_r1_11 = M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x38);
    goto block_1200;
block_1199:
    var_r1_11 = M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x34);
block_1200:
    M2C_FIELD(((struct PlayerD368 *)arg0)->f144, u8 *, 6) = (u8) ((-0xF & M2C_FIELD(((struct PlayerD368 *)arg0)->f144, u8 *, 6)) | ((var_r1_11 & 7) * 2));
block_1201:
    goto block_1213;
sw18_5:
    temp_r3_28 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_28)->w1_b14_n3.value = ((struct PlayerD368 *)arg0)->f26;
    temp_r4_29 = ((struct PlayerD368 *)arg0)->f144;
    temp_r0_105 = d368_sub_0800CCCC();
    ((union RecordD368 *)temp_r4_29)->w1_b0_n6.value = ((s32) ((0 - temp_r0_105) | temp_r0_105) >> 0x1F) & 0x20;
    temp_r0_106 = ((struct PlayerD368 *)arg0)->f10;
    if (temp_r0_106 == 6) {
        goto block_1205;
    }
    if (temp_r0_106 == 8) {
        goto block_1206;
    }
    goto block_1302;
block_1205:
    var_r1_12 = (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x34) & 7) * 2;
    var_r2_11 = M2C_FIELD(((struct PlayerD368 *)arg0)->f144, u8 *, 6);
    var_r0_30 = -0xF;
    goto block_1301;
block_1206:
    var_r1_12 = (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x38) & 7) * 2;
    var_r2_11 = M2C_FIELD(((struct PlayerD368 *)arg0)->f144, u8 *, 6);
    var_r0_30 = -0xF;
    goto block_1301;
sw18_3:
    var_r5_10 = arg0 + 0x144;
    temp_r3_29 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_29)->w1_b14_n3.value = ((struct PlayerD368 *)arg0)->f26;
    temp_r3_30 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_30)->w1_b17_n3.value = M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x38);
    goto block_1220;
sw18_2:
    var_r5_10 = arg0 + 0x144;
    temp_r3_31 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_31)->w1_b14_n3.value = ((struct PlayerD368 *)arg0)->f26;
    temp_r3_32 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_32)->w1_b17_n3.value = M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x3C);
    temp_r2_39 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_39)->w1_b20_n5.value = ((u32) (0)) >> 4;
    goto block_1220;
sw18_1:
    var_r5_10 = arg0 + 0x144;
    temp_r3_33 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_33)->w1_b14_n3.value = ((struct PlayerD368 *)arg0)->f26;
    temp_r3_34 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_34)->w1_b17_n3.value = M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x3C);
    goto block_1220;
sw18_7:
    temp_r3_35 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_35)->w1_b14_n3.value = ((struct PlayerD368 *)arg0)->f26;
    if (((struct PlayerD368 *)arg0)->f10 != 1) {
        goto block_1212;
    }
    temp_r3_36 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_36)->w1_b17_n3.value = M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x3C);
block_1212:
block_1213:
    temp_r0_107 = d368_sub_0800CCCC();
    M2C_FIELD(((struct PlayerD368 *)arg0)->f144, u8 *, 4) = (u8) ((-0x40 & M2C_FIELD(((struct PlayerD368 *)arg0)->f144, u8 *, 4)) | (((s32) ((0 - temp_r0_107) | temp_r0_107) >> 0x1F) & 0x20));
    goto block_1302;
sw16_8:
    temp_r2_40 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_40)->w0_b0_n4.value = temp_r3_8;
    temp_r4_30 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r4_30)->w0_b4_n12.value = (s32) ((struct PlayerD368 *)arg0)->f8C >> 8;
    temp_r4_31 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r4_31)->w0_b16_n12.value = (((struct PlayerD368 *)arg0)->f90) >> 8;
    temp_r2_41 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_41)->w0_b28_n4.value = ((struct PlayerD368 *)arg0)->f1C;
    temp_r4_32 = ((struct PlayerD368 *)arg0)->f144;
    temp_r0_108 = d368_sub_0800CCCC();
    ((union RecordD368 *)temp_r4_32)->w1_b0_n6.value = ((s32) ((0 - temp_r0_108) | temp_r0_108) >> 0x1F) & 0x20;
    temp_r3_37 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_37)->w1_b6_n8.value = (u8) sp190;
    temp_r3_38 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_38)->w1_b20_n5.value = ((struct PlayerD368 *)arg0)->f26;
    goto block_1302;
sw16_9:
    temp_r2_42 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_42)->w0_b0_n4.value = temp_r3_8;
    temp_r4_33 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r4_33)->w0_b4_n12.value = (s32) ((struct PlayerD368 *)arg0)->f8C >> 8;
    temp_r4_34 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r4_34)->w0_b16_n12.value = (((struct PlayerD368 *)arg0)->f90) >> 8;
    temp_r2_43 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_43)->w0_b28_n4.value = ((struct PlayerD368 *)arg0)->f1C;
    if (d368_sub_0801DE60() != 7) {
        goto block_1218;
    }
    if (d368_sub_0801DEB8() != 0x13) {
        goto block_1218;
    }
    var_r0_31 = (-0xF & M2C_FIELD(((struct PlayerD368 *)arg0)->f144, u8 *, 7)) | (sp170 * 2);
    goto block_1219;
block_1218:
    var_r0_31 = -0xF & M2C_FIELD(((struct PlayerD368 *)arg0)->f144, u8 *, 7);
block_1219:
    M2C_FIELD(((struct PlayerD368 *)arg0)->f144, s8 *, 7) = var_r0_31;
    var_r5_10 = arg0 + 0x144;
    temp_r3_39 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_39)->w1_b14_n3.value = ((struct PlayerD368 *)arg0)->f26;
    temp_r3_40 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_40)->w1_b17_n3.value = d368_sub_0801CCC8();
    temp_r3_41 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_41)->w1_b20_n5.value = d368_sub_0801DEB8();
block_1220:
    temp_r4_35 = *var_r5_10;
    temp_r0_109 = d368_sub_0800CCCC();
    M2C_FIELD(temp_r4_35, u8 *, 4) = (u8) ((-0x40 & M2C_FIELD(temp_r4_35, u8 *, 4)) | (((s32) ((0 - temp_r0_109) | temp_r0_109) >> 0x1F) & 0x20));
    var_r0_29 = d368_sub_0807A028(1);
    var_r3_7 = *var_r5_10;
block_1221:
    ((union RecordD368 *)var_r3_7)->w1_b6_n8.value = (u8) var_r0_29;
    goto block_1302;
sw16_10:
    temp_r2_44 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_44)->w0_b0_n4.value = temp_r3_8;
    temp_r3_42 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_42)->w0_b4_n12.value = (s32) ((struct PlayerD368 *)arg0)->f8C >> 8;
    temp_r3_43 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_43)->w0_b16_n12.value = (((struct PlayerD368 *)arg0)->f90) >> 8;
    temp_r3_44 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_44)->w0_b28_n4.value = ((struct PlayerD368 *)arg0)->f1C;
    temp_r4_36 = ((struct PlayerD368 *)arg0)->f144;
    temp_r0_110 = d368_sub_0800CCCC();
    ((union RecordD368 *)temp_r4_36)->w1_b0_n6.value = ((s32) ((0 - temp_r0_110) | temp_r0_110) >> 0x1F) & 0x20;
    temp_r2_45 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_45)->w1_b6_n1.value = ((u32) (0)) >> 6;
    temp_r0_111 = d368_sub_0801DE60();
    if (temp_r0_111 != 5) {
        goto block_1224;
    }
    goto block_1249;
block_1224:
    if ((s32) temp_r0_111 > 5) {
        goto block_1227;
    }
    if (temp_r0_111 == 3) {
        goto block_1230;
    }
    goto block_1302;
block_1227:
    if (temp_r0_111 != 7) {
        goto block_1229;
    }
    goto block_1280;
block_1229:
    goto block_1302;
block_1230:
    if (d368_sub_0800CDC0() == 0) {
        goto block_1232;
    }
    goto block_1302;
block_1232:
    if (M2C_FIELD(sp12C, u16 *, 0x48) != 0) {
        goto block_1234;
    }
    goto block_1302;
block_1234:
    if (sp19C == 0) {
        goto block_1236;
    }
    goto block_1302;
block_1236:
    if (d368_sub_0800CB9C() == 0) {
        goto block_1239;
    }
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x8C) != 0xB) {
        goto block_1239;
    }
    goto block_1302;
block_1239:
    sp19C = 1;
    temp_r4_37 = d368_sub_080008C8() % 100U;
    if (temp_r4_37 < (u32) ((d368_sub_0801E0AC(d368_gUnk_030034E0 + 0x30, 5) * 5) + 0xA)) {
        goto block_1241;
    }
    goto block_1302;
block_1241:
    if ((s32) ((s16) *sp1BC - M2C_FIELD(&((struct PlayerD368 *)arg0)->f88, u16 *, 0)) <= 0) {
        goto block_1247;
    }
    temp_r0_112 = ((struct PlayerD368 *)arg0)->f110;
    if (temp_r0_112 == 0) {
        goto block_1247;
    }
    ((struct PlayerD368 *)arg0)->f110 = (u32) (temp_r0_112 - 1);
    temp_r2_46 = ((struct PlayerD368 *)arg0)->f144;
    M2C_FIELD(temp_r2_46, u8 *, 4) = (s8) ((u8) M2C_FIELD(temp_r2_46, u8 *, 4) | 0x40);
    temp_r1_42 = ((struct PlayerD368 *)arg0)->f110;
    if (temp_r1_42 <= 3U) {
        goto block_1245;
    }
    var_r1_13 = *(u8 *)(*(u16 *)(arg0 + 0x126 + ((temp_r1_42 - 4) * 2)) + (u8 *)&d368_gUnk_084790B4);
    M2C_FIELD(&((struct PlayerD368 *)arg0)->f1C, u16 *, 0) = (s16) var_r1_13;
    goto block_1246;
block_1245:
    var_r1_13 = (u8) ((struct PlayerD368 *)arg0)->f1C;
block_1246:
    M2C_FIELD(((struct PlayerD368 *)arg0)->f144, u8 *, 3) = (u8) ((0xF & M2C_FIELD(((struct PlayerD368 *)arg0)->f144, u8 *, 3)) | (var_r1_13 * 0x10));
    goto block_1248;
block_1247:
    temp_r2_47 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_47)->w1_b6_n1.value = ((u32) (0)) >> 6;
block_1248:
    var_r1_14 = arg0 + 0x110;
    goto block_1293;
block_1249:
    temp_r0_113 = d368_sub_0800CDC0();
    sp1A8 = temp_r0_113;
    if (temp_r0_113 == 0) {
        goto block_1251;
    }
    goto block_1302;
block_1251:
    if (M2C_FIELD(sp12C, u16 *, 0x44) != 0) {
        goto block_1253;
    }
    goto block_1302;
block_1253:
    if (d368_sub_0800CB9C() == 0) {
        goto block_1256;
    }
    if (M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x8C) != 0xB) {
        goto block_1256;
    }
    goto block_1302;
block_1256:
    if (sp19C != 0) {
        goto block_1258;
    }
    goto block_1271;
block_1258:
    if (((struct PlayerD368 *)arg0)->fB2 == 1) {
        goto block_1260;
    }
    goto block_1302;
block_1260:
    temp_r5_11 = ((struct PlayerD368 *)arg0)->fB4;
    if (temp_r5_11 == 1) {
        goto block_1262;
    }
    goto block_1302;
block_1262:
    temp_r2_48 = ((struct PlayerD368 *)arg0)->f110;
    if (temp_r2_48 > 3U) {
        goto block_1264;
    }
    goto block_1267;
block_1264:
    temp_r1_43 = d368_gUnk_030056F4 + ((temp_r2_48 * 0x2E0) + 0xFFFFF480);
    if (M2C_FIELD(temp_r1_43, u8 *, 0x1DC) == 0) {
        goto block_1266;
    }
    M2C_FIELD(temp_r1_43, s16 *, 0xC) = 0xA;
    M2C_FIELD((s32 *)&localRecord, u32 *, 4) = (s32) (((s32) M2C_FIELD((s32 *)&localRecord, u32 *, 4) & 0xFFFF0000) | (u16) ((s16) ((struct PlayerD368 *)arg0)->f38 * 4));
    M2C_FIELD((s32 *)&localRecord, s32 *, 0) = (M2C_FIELD((s32 *)&localRecord, s32 *, 0) & 0xFFFF00FF & 0xFF00FFFF) | 0x200000;
    M2C_FIELD((s32 *)&localRecord, s32 *, 0) = (M2C_FIELD((s32 *)&localRecord, s32 *, 0) & 0xFFFFFF) | (*(((u32) (ArcTan2((s16) ((s32) ((M2C_FIELD(temp_r1_43, s32 *, 0x14) - ((struct PlayerD368 *)arg0)->f8C) << 8) >> 0x10), (s16) ((s32) ((M2C_FIELD(temp_r1_43, s32 *, 0x18) - ((struct PlayerD368 *)arg0)->f90) << 8) >> 0x10)) << 0x10) >> 0x1C) + (u8 *)&d368_gUnk_084790B4) << 0x18);
    M2C_FIELD(temp_r1_43, s32 *, 0x54) = (s32) *sp1C8;
    M2C_FIELD((s32 *)&localRecord, s32 *, 0) = (M2C_FIELD((s32 *)&localRecord, s32 *, 0) & 0xFFFFFF00) | (u8) (M2C_FIELD(temp_r1_43, u8 *, 0) + 4);
    M2C_FIELD(temp_r1_43, u16 *, 0x4A) = (u16) (M2C_FIELD((s32 *)&localRecord, u16 *, 4) + M2C_FIELD(temp_r1_43, u16 *, 0x4A));
    M2C_FIELD(temp_r1_43, s32 *, 0x4C) = (s32) M2C_FIELD((s32 *)&localRecord, u16 *, 4);
    M2C_FIELD(temp_r1_43, s16 *, 0x62) = (s16) (u8) ((u32) M2C_FIELD((s32 *)&localRecord, s32 *, 0) >> 8);
    M2C_FIELD(temp_r1_43, u16 *, 0x58) = (u16) ((struct PlayerD368 *)arg0)->f0;
    M2C_FIELD(temp_r1_43, u16 *, 0x5A) = (u16) ((temp_r5_11 << ((struct PlayerD368 *)arg0)->f0) | M2C_FIELD(temp_r1_43, u16 *, 0x5A));
    d368_sub_0801F2CC(temp_r1_43, (s32 *)&localRecord);
    d368_sub_080660EC((s32 *)&localRecord);
block_1266:
    ((struct PlayerD368 *)arg0)->f110 = (u32) sp1A8;
    goto block_1302;
block_1267:
    temp_r1_44 = (0x14C * temp_r2_48) + (u8 *)&d368_gUnk_03003CE0;
    temp_r1_45 = M2C_FIELD(temp_r1_44, u8 *, 0x68);
    if (temp_r1_45 == 0) {
        goto block_1270;
    }
    if (temp_r1_45 != ((struct PlayerD368 *)arg0)->f68) {
        goto block_1270;
    }
    M2C_FIELD((s32 *)&localRecord, u16 *, 4) = (u16) ((struct PlayerD368 *)arg0)->f38;
    M2C_FIELD((s32 *)&localRecord, s8 *, 1) = 0;
    M2C_FIELD((s32 *)&localRecord, s8 *, 2) = 0x20;
    temp_r2_49 = M2C_FIELD(temp_r1_44, void **, 0x148);
    M2C_FIELD((s32 *)&localRecord, u8 *, 3) = (u8) *(((u32) (ArcTan2((s16) (((u16) M2C_FIELD(temp_r2_49, u16 *, 0) >> 4) - ((s32) ((struct PlayerD368 *)arg0)->f8C >> 8)), (s16) (((u32) (M2C_FIELD(temp_r2_49, u16 *, 2) << 0x14) >> 0x14) - ((s32) ((struct PlayerD368 *)arg0)->f90 >> 8))) << 0x10) >> 0x1C) + (u8 *)&d368_gUnk_084790B4);
    *(u32 *)(temp_r1_44 + 0xF8 + (((struct PlayerD368 *)arg0)->f0 * 4)) = *sp1C8;
    M2C_FIELD((s32 *)&localRecord, s8 *, 0) = (s8) M2C_FIELD(temp_r1_44, u16 *, 0);
    d368_sub_080660EC((s32 *)&localRecord);
block_1270:
    var_r1_14 = arg0 + 0x110;
    goto block_1293;
block_1271:
    temp_r4_38 = d368_sub_080008C8() % 100U;
    if (temp_r4_38 < (u32) (d368_sub_0801E0AC(d368_gUnk_030034E0 + 0x30, 4) * 7)) {
        goto block_1273;
    }
    goto block_1302;
block_1273:
    if ((s32) ((s16) *sp1BC - M2C_FIELD(&((struct PlayerD368 *)arg0)->f88, u16 *, 0)) <= 0) {
        goto block_1279;
    }
    temp_r0_114 = ((struct PlayerD368 *)arg0)->f110;
    if (temp_r0_114 == 0) {
        goto block_1279;
    }
    sp19C = 1;
    ((struct PlayerD368 *)arg0)->f110 = (u32) (temp_r0_114 - 1);
    temp_r2_50 = ((struct PlayerD368 *)arg0)->f144;
    M2C_FIELD(temp_r2_50, u8 *, 4) = (s8) ((u8) M2C_FIELD(temp_r2_50, u8 *, 4) | 0x40);
    temp_r1_46 = ((struct PlayerD368 *)arg0)->f110;
    if (temp_r1_46 <= 3U) {
        goto block_1277;
    }
    var_r1_15 = *(u8 *)(*(u16 *)(arg0 + 0x126 + ((temp_r1_46 - 4) * 2)) + (u8 *)&d368_gUnk_084790B4);
    M2C_FIELD(&((struct PlayerD368 *)arg0)->f1C, u16 *, 0) = (s16) var_r1_15;
    goto block_1278;
block_1277:
    var_r1_15 = (u8) ((struct PlayerD368 *)arg0)->f1C;
block_1278:
    M2C_FIELD(((struct PlayerD368 *)arg0)->f144, u8 *, 3) = (u8) ((0xF & M2C_FIELD(((struct PlayerD368 *)arg0)->f144, u8 *, 3)) | (var_r1_15 * 0x10));
    goto block_1302;
block_1279:
    sp19C = 0;
    temp_r2_51 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_51)->w1_b6_n1.value = ((u32) (0)) >> 6;
    goto block_1302;
block_1280:
    if (d368_sub_0800CDC0() == 0) {
        goto block_1282;
    }
    goto block_1302;
block_1282:
    if (M2C_FIELD(sp12C, u16 *, 0x4C) != 0) {
        goto block_1284;
    }
    goto block_1302;
block_1284:
    if (sp19C == 0) {
        goto block_1286;
    }
    goto block_1302;
block_1286:
    sp19C = 1;
    temp_r4_39 = (s16) (d368_sub_0800086C() % 100);
    if ((s32) temp_r4_39 < (s32) (d368_sub_0801E0AC(d368_gUnk_030034E0 + 0x30, 6) * 8)) {
        goto block_1288;
    }
    goto block_1302;
block_1288:
    if ((s32) ((s16) *sp1BC - M2C_FIELD(&((struct PlayerD368 *)arg0)->f88, u16 *, 0)) <= 0) {
        goto block_1291;
    }
    temp_r0_115 = ((struct PlayerD368 *)arg0)->f110;
    if (temp_r0_115 == 0) {
        goto block_1291;
    }
    ((struct PlayerD368 *)arg0)->f110 = (u32) (temp_r0_115 - 1);
    temp_r2_52 = ((struct PlayerD368 *)arg0)->f144;
    M2C_FIELD(temp_r2_52, u8 *, 4) = (s8) ((u8) M2C_FIELD(temp_r2_52, u8 *, 4) | 0x40);
    temp_r3_45 = ((struct PlayerD368 *)arg0)->f144;
    temp_r1_47 = *(u8 *)(*(u16 *)(arg0 + 0x126 + (((struct PlayerD368 *)arg0)->f110 * 2)) + (u8 *)&d368_gUnk_084790B4);
    M2C_FIELD(&((struct PlayerD368 *)arg0)->f1C, u16 *, 0) = (s16) temp_r1_47;
    ((union RecordD368 *)temp_r3_45)->w0_b28_n4.value = temp_r1_47;
    goto block_1292;
block_1291:
    temp_r2_53 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_53)->w1_b6_n1.value = ((u32) (0)) >> 6;
block_1292:
    var_r1_14 = arg0 + 0x110;
block_1293:
    *var_r1_14 = 0;
    goto block_1302;
sw16_11:
    temp_r2_54 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_54)->w0_b0_n4.value = temp_r3_8;
    temp_r4_40 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r4_40)->w0_b4_n12.value = (s32) ((struct PlayerD368 *)arg0)->f8C >> 8;
    temp_r4_41 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r4_41)->w0_b16_n12.value = (((struct PlayerD368 *)arg0)->f90) >> 8;
    temp_r2_55 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_55)->w0_b28_n4.value = ((struct PlayerD368 *)arg0)->f1C;
    temp_r4_42 = ((struct PlayerD368 *)arg0)->f144;
    temp_r0_116 = d368_sub_0800CCCC();
    ((union RecordD368 *)temp_r4_42)->w1_b0_n6.value = ((s32) ((0 - temp_r0_116) | temp_r0_116) >> 0x1F) & 0x20;
    temp_r2_56 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_56)->w1_b6_n4.value = ((u32) (0)) >> 6;
    goto block_1302;
sw16_12:
    temp_r2_57 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_57)->w0_b0_n4.value = temp_r3_8;
    temp_r4_43 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r4_43)->w0_b4_n12.value = (s32) ((struct PlayerD368 *)arg0)->f8C >> 8;
    temp_r4_44 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r4_44)->w0_b16_n12.value = (((struct PlayerD368 *)arg0)->f90) >> 8;
    temp_r2_58 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_58)->w0_b28_n4.value = ((struct PlayerD368 *)arg0)->f1C;
    temp_r4_45 = ((struct PlayerD368 *)arg0)->f144;
    temp_r0_117 = d368_sub_0800CCCC();
    ((union RecordD368 *)temp_r4_45)->w1_b0_n6.value = ((s32) ((0 - temp_r0_117) | temp_r0_117) >> 0x1F) & 0x20;
    temp_r3_46 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_46)->w1_b6_n6.value = ((struct PlayerD368 *)arg0)->f22;
    temp_r0_118 = ((struct PlayerD368 *)arg0)->f22;
    if (temp_r0_118 != 1) {
        goto block_1297;
    }
    goto block_1302;
block_1297:
    if (temp_r0_118 == 5) {
        goto block_1299;
    }
    goto block_1302;
block_1299:
    temp_r3_47 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_47)->w1_b12_n6.value = ((struct PlayerD368 *)arg0)->fBA;
    temp_r3_48 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_48)->w1_b18_n4.value = ((struct PlayerD368 *)arg0)->fBC;
    temp_r3_49 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_49)->w1_b23_n1.value = ((struct PlayerD368 *)arg0)->fBE;
    temp_r3_50 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_50)->w1_b22_n1.value = ((struct PlayerD368 *)arg0)->fC0;
    ((struct PlayerD368 *)arg0)->f22 = 6U;
    goto block_1302;
sw16_14:
    temp_r2_59 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r2_59)->w0_b0_n4.value = temp_r3_8;
    temp_r3_51 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_51)->w0_b4_n12.value = (s32) ((struct PlayerD368 *)arg0)->f8C >> 8;
    temp_r3_52 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_52)->w0_b16_n12.value = (((struct PlayerD368 *)arg0)->f90) >> 8;
    temp_r3_53 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_53)->w0_b28_n4.value = ((struct PlayerD368 *)arg0)->f1C;
    temp_r4_46 = ((struct PlayerD368 *)arg0)->f144;
    temp_r0_119 = d368_sub_0800CCCC();
    ((union RecordD368 *)temp_r4_46)->w1_b0_n6.value = ((s32) ((0 - temp_r0_119) | temp_r0_119) >> 0x1F) & 0x20;
    temp_r0_120 = (void *) d368_sub_08007290(M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x132) | 0x110000);
    temp_r3_54 = ((struct PlayerD368 *)arg0)->f144;
    ((union RecordD368 *)temp_r3_54)->w1_b11_n8.value = M2C_FIELD(temp_r0_120, u32 *, 0xA4) & 0xF;
    var_r1_12 = ((u32) M2C_FIELD(temp_r0_120, u32 *, 0xA4) >> 4) * 8;
    var_r2_11 = M2C_FIELD(((struct PlayerD368 *)arg0)->f144, u8 *, 6);
    var_r0_30 = 7;
block_1301:
    M2C_FIELD(((struct PlayerD368 *)arg0)->f144, s8 *, 6) = (s8) ((var_r0_30 & var_r2_11) | var_r1_12);
block_1302:
    if (((struct PlayerD368 *)arg0)->f20 == 0xD) {
        goto block_1316;
    }
    temp_r3_55 = ((struct PlayerD368 *)arg0)->f144;
    temp_r2_60 = (u8) M2C_FIELD(temp_r3_55, u8 *, 4);
    M2C_FIELD(temp_r3_55, u8 *, 4) = (s8) ((-0x40 & temp_r2_60) | ((((u32) (temp_r2_60 << 0x1A) >> 0x1A) | M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x90)) & 0x3F));
    if (d368_sub_0800CFF0() != 0) {
        goto block_1316;
    }
    temp_r2_61 = d368_sub_08002164();
    var_ip = 0;
    var_r3_8 = ((struct PlayerD368 *)arg0)->f0;
    var_r5_11 = 0;
    sp128 = 0;
    if (temp_r2_61 <= 0U) {
        goto block_1313;
    }
    sp1AC = (s32) ((struct PlayerD368 *)arg0)->f68;
    var_r9_2 = (u8 *)&d368_gUnk_03003CE0 + 0x68;
    var_r4_9 = (u8 *)&d368_gUnk_03003CE0;
    var_r8 = 0;
loop_1306:
    if (sp1AC != *var_r9_2) {
        goto block_1312;
    }
    var_ip += 1;
    temp_r1_48 = *(void * *)((u8 *)&d368_gUnk_03003E28 + var_r8);
    temp_r0_121 = (u32) (M2C_FIELD(temp_r1_48, u8 *, 0) << 0x1C) >> 0x1C;
    if ((s32) temp_r0_121 > 1) {
        goto block_1312;
    }
    if ((s32) temp_r0_121 < 0) {
        goto block_1312;
    }
    if ((s32) (M2C_FIELD(temp_r1_48, u8 *, 5) << 0x1D) >= 0) {
        goto block_1312;
    }
    var_r5_11 += 1;
    if ((u32) *var_r4_9 >= (u32) *(u32 *)((0x14C * var_r3_8) + (u8 *)&d368_gUnk_03003CE0)) {
        goto block_1312;
    }
    var_r3_8 = (u16) sp128;
block_1312:
    var_r9_2 += 0xa6;
    var_r4_9 += 0xa6;
    var_r8 += 0x14C;
    temp_r0_122 = sp128 + 1;
    sp128 = temp_r0_122;
    if (temp_r0_122 < temp_r2_61) {
        goto loop_1306;
    }
block_1313:
    if (var_r5_11 != var_ip) {
        goto block_1316;
    }
    if (var_r3_8 != ((struct PlayerD368 *)arg0)->f0) {
        goto block_1316;
    }
    d368_sub_080680F8(1);
block_1316:
    temp_r2_62 = M2C_FIELD(sp180, u8 *, 3);
    sp16C = temp_r2_62 >> 4;
    temp_r1_49 = M2C_FIELD(sp180, u8 *, 0);
    temp_r0_123 = (u32) (temp_r1_49 << 0x1C) >> 0x1C;
    if (temp_r0_123 <= 0xFU) {
        goto block_1318;
    }
    goto block_1603;
block_1318:
    switch (temp_r0_123) { case 0: goto sw19_0; case 6: goto sw19_6; case 3: goto sw19_3; case 1: goto sw19_1; case 4: goto sw19_4; case 7: goto sw19_7; case 2: goto sw19_2; case 5: goto sw19_5; case 8: goto sw19_8; case 9: goto sw19_9; case 10: goto sw19_10; case 11: goto sw19_11; case 12: goto sw19_12; case 14: goto sw19_14; case 15: goto sw19_15; }
sw19_0:
    temp_r0_124 = (u8) M2C_FIELD(sp180, u8 *, 6) >> 3;
    if (temp_r0_124 != 1) {
        goto block_1321;
    }
    var_r1_16 = arg0 + 0x11E;
    var_r0_32 = 7;
    goto block_1336;
block_1321:
    if (temp_r0_124 != 2) {
        goto block_1325;
    }
    if (((struct PlayerD368 *)arg0)->f20 != 0xD) {
        goto block_1324;
    }
    var_r1_16 = arg0 + 0x11E;
    var_r0_32 = 9;
    goto block_1336;
block_1324:
    var_r1_16 = arg0 + 0x11E;
    goto block_1335;
block_1325:
    if (temp_r0_124 != 3) {
        goto block_1329;
    }
    if (((struct PlayerD368 *)arg0)->f20 != 0xD) {
        goto block_1328;
    }
    var_r1_16 = arg0 + 0x11E;
    var_r0_32 = 0xA;
    goto block_1336;
block_1328:
    var_r1_16 = arg0 + 0x11E;
    goto block_1335;
block_1329:
    if (temp_r0_124 != 4) {
        goto block_1331;
    }
    var_r1_16 = arg0 + 0x11E;
    var_r0_32 = 0x14;
    goto block_1336;
block_1331:
    var_r1_16 = arg0 + 0x11E;
    temp_r0_125 = ((struct PlayerD368 *)arg0)->f11E;
    if (temp_r0_125 == 7) {
        goto block_1335;
    }
    if ((s32) temp_r0_125 < 7) {
        goto block_1337;
    }
    if ((s32) temp_r0_125 > 0xA) {
        goto block_1337;
    }
    if ((s32) temp_r0_125 < 9) {
        goto block_1337;
    }
block_1335:
    var_r0_32 = 0;
block_1336:
    *var_r1_16 = var_r0_32;
sw19_6:
block_1337:
    d368_sub_08065158(&sp10, *(u32 *)((((struct PlayerD368 *)arg0)->f10 * 4) + (((struct PlayerD368 *)arg0)->f64 * 0x58) + (u8 *)&d368_gUnk_08479140), 0, -1, (0));
    sp114 = (u32) (M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C;
    temp_r1_50 = (u8) M2C_FIELD(sp180, u8 *, 3) >> 4;
    ((struct PlayerD368 *)arg0)->fB0 = (u16) temp_r1_50;
    M2C_FIELD((arg0 + 0xB0), s16 *, 8) = (s16) temp_r1_50;
    sp1A4 = (u32) (M2C_FIELD(sp180, u16 *, 4) << 0x16) >> 0x1C;
    sp124 = 1;
    temp_r0_126 = (u8) M2C_FIELD(sp180, u8 *, 6) >> 3;
    if (temp_r0_126 != 1) {
        goto block_1339;
    }
    ((struct PlayerD368 *)arg0)->f11E = 7U;
    goto block_1603;
block_1339:
    if (temp_r0_126 != 2) {
        goto block_1343;
    }
    if (((struct PlayerD368 *)arg0)->f20 != 0xD) {
        goto block_1342;
    }
    ((struct PlayerD368 *)arg0)->f11E = 9U;
    goto block_1603;
block_1342:
    ((struct PlayerD368 *)arg0)->f11E = 0U;
    goto block_1603;
block_1343:
    if (temp_r0_126 != 3) {
        goto block_1347;
    }
    if (((struct PlayerD368 *)arg0)->f20 != 0xD) {
        goto block_1346;
    }
    ((struct PlayerD368 *)arg0)->f11E = 0xAU;
    goto block_1603;
block_1346:
    ((struct PlayerD368 *)arg0)->f11E = 0U;
    goto block_1603;
block_1347:
    temp_r0_127 = ((struct PlayerD368 *)arg0)->f11E;
    if (temp_r0_127 == 7) {
        goto block_1354;
    }
    if ((s32) temp_r0_127 >= 7) {
        goto block_1350;
    }
    goto block_1603;
block_1350:
    if ((s32) temp_r0_127 <= 0xA) {
        goto block_1352;
    }
    goto block_1603;
block_1352:
    if ((s32) temp_r0_127 >= 9) {
        goto block_1354;
    }
    goto block_1603;
block_1354:
    ((struct PlayerD368 *)arg0)->f11E = 0U;
    goto block_1603;
sw19_3:
    temp_r0_128 = ((struct PlayerD368 *)arg0)->fC - 1;
    if (temp_r0_128 > 7U) {
        goto block_1370;
    }
    switch (temp_r0_128) { case 0: goto sw20_0; case 5: goto sw20_5; case 1: goto sw20_1; case 6: goto sw20_6; case 7: goto sw20_7; case 2: goto sw20_2; case 3: goto sw20_3; case 4: goto sw20_4; }
sw20_0:
    if (((struct PlayerD368 *)arg0)->f10 != 9) {
        goto block_1368;
    }
    var_r1_17 = 0x50029;
    goto block_1369;
sw20_5:
    if (((struct PlayerD368 *)arg0)->f10 != 9) {
        goto block_1368;
    }
    var_r1_17 = 0x5001B;
    goto block_1369;
sw20_1:
    if (((struct PlayerD368 *)arg0)->f10 != 9) {
        goto block_1368;
    }
    var_r1_17 = 0x5009D;
    goto block_1369;
sw20_6:
    temp_r1_51 = ((struct PlayerD368 *)arg0)->f10;
    if (temp_r1_51 != 9) {
        goto block_1365;
    }
    var_r1_17 = 0x5009C;
    goto block_1369;
block_1365:
    var_r1_17 = *(u32 *)((temp_r1_51 * 4) + (((struct PlayerD368 *)arg0)->f64 * 0x58) + (u8 *)&d368_gUnk_08479140);
    goto block_1369;
sw20_7:
    if (((struct PlayerD368 *)arg0)->f10 != 9) {
        goto block_1368;
    }
    var_r1_17 = 0x50088;
    goto block_1369;
block_1368:
    var_r1_17 = *(u32 *)((((struct PlayerD368 *)arg0)->f10 * 4) + (((struct PlayerD368 *)arg0)->f64 * 0x58) + (u8 *)&d368_gUnk_08479140);
block_1369:
    d368_sub_08065158(&sp10, var_r1_17, 0, -1, (0));
    goto block_1371;
sw20_2:
sw20_3:
sw20_4:
block_1370:
    d368_sub_08065158(&sp10, *(u32 *)((((struct PlayerD368 *)arg0)->f10 * 4) + (((struct PlayerD368 *)arg0)->f64 * 0x58) + (u8 *)&d368_gUnk_08479140), 0, -1, (0));
block_1371:
    sp114 = (u32) (M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C;
    temp_r1_52 = (u8) M2C_FIELD(sp180, u8 *, 3) >> 4;
    ((struct PlayerD368 *)arg0)->fB0 = (u16) temp_r1_52;
    M2C_FIELD((arg0 + 0xB0), s16 *, 8) = (s16) temp_r1_52;
    sp1A4 = (u32) (M2C_FIELD(sp180, u16 *, 4) << 0x16) >> 0x1C;
    sp124 = 1;
    goto block_1603;
sw19_1:
sw19_4:
sw19_7:
    d368_sub_08065158(&sp10, *(u32 *)((((struct PlayerD368 *)arg0)->f10 * 4) + (((struct PlayerD368 *)arg0)->f64 * 0x58) + (u8 *)&d368_gUnk_08479140), 0, -1, (0));
    sp114 = (u32) (M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C;
    temp_r1_53 = ((u8) M2C_FIELD(sp180, u8 *, 3) >> 4) + 8;
    ((struct PlayerD368 *)arg0)->fB0 = temp_r1_53;
    M2C_FIELD((arg0 + 0xB0), u16 *, 8) = temp_r1_53;
    sp124 = 1;
    sp1A4 = (u32) (M2C_FIELD(sp180, u16 *, 4) << 0x16) >> 0x1C;
    goto block_1603;
sw19_2:
    if (((struct PlayerD368 *)arg0)->fB0 != ((struct PlayerD368 *)arg0)->fB8) {
        goto block_1376;
    }
    if (((u32) (M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C) != sp114) {
        goto block_1376;
    }
    goto block_1445;
block_1376:
    d368_sub_08065158(&sp10, *(u32 *)((((struct PlayerD368 *)arg0)->f10 * 4) + (((struct PlayerD368 *)arg0)->f64 * 0x58) + ((u8 *)&d368_gUnk_08479140 + 0x2C)), 0, -1, (0));
    ((struct PlayerD368 *)arg0)->fB4 = 0U;
    *(u16 *)((arg0 + 0xB4) - 2) = 0;
    sp114 = (u32) (M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C;
    temp_r0_129 = (u8) M2C_FIELD(sp180, u8 *, 3) >> 4;
    ((struct PlayerD368 *)arg0)->fB0 = (u16) temp_r0_129;
    ((struct PlayerD368 *)arg0)->fB8 = (u16) temp_r0_129;
    sp124 = 0;
    if (d368_sub_0800CCCC() != 0) {
        goto block_1393;
    }
    if (d368_sub_0800CD34() != 0) {
        goto block_1393;
    }
    if (((struct PlayerD368 *)arg0)->f20 == 0xD) {
        goto block_1393;
    }
    temp_r0_130 = ((struct PlayerD368 *)arg0)->f10 - 1;
    if (temp_r0_130 > 8U) {
        goto block_1393;
    }
    switch (temp_r0_130) { case 1: goto sw21_1; case 2: goto sw21_2; case 0: goto sw21_0; case 3: goto sw21_3; case 4: goto sw21_4; case 6: goto sw21_6; case 8: goto sw21_8; case 7: goto sw21_7; case 5: goto sw21_5; }
sw21_1:
    d368_sub_0805865C(0x14);
    goto block_1393;
sw21_2:
    temp_r0_131 = ((struct PlayerD368 *)arg0)->fC;
    if (temp_r0_131 == 0) {
        goto block_1385;
    }
    if (temp_r0_131 == 2) {
        goto block_1386;
    }
    goto block_1393;
block_1385:
    d368_sub_0805865C(0x15);
    goto block_1393;
block_1386:
    d368_sub_0805865C(0x18);
    goto block_1393;
sw21_0:
sw21_3:
sw21_4:
sw21_6:
sw21_8:
    d368_sub_0805865C(0x13);
    goto block_1393;
sw21_7:
    temp_r0_132 = ((struct PlayerD368 *)arg0)->fC;
    if (temp_r0_132 == 5) {
        goto block_1391;
    }
    if (temp_r0_132 != 7) {
        goto block_1392;
    }
    d368_sub_0805865C(0x1D);
    goto block_1392;
block_1391:
    d368_sub_0805865C(0x1C);
sw21_5:
block_1392:
    d368_sub_0805865C(0x1B);
block_1393:
    temp_r0_133 = ((struct PlayerD368 *)arg0)->f64;
    if ((u32) temp_r0_133 <= 9U) {
        goto block_1395;
    }
    goto block_1445;
block_1395:
    switch (temp_r0_133) { case 0: goto sw22_0; case 1: goto sw22_1; case 2: goto sw22_2; case 3: goto sw22_3; case 4: goto sw22_4; case 5: goto sw22_5; case 6: goto sw22_6; case 7: goto sw22_7; case 8: goto sw22_8; case 9: goto sw22_9; }
sw22_0:
    var_r0_33 = M2C_FIELD(sp180, u16 *, 4);
    goto block_1444;
sw22_1:
    temp_r0_134 = ((struct PlayerD368 *)arg0)->f10;
    if (temp_r0_134 != 5) {
        goto block_1399;
    }
    goto block_1443;
block_1399:
    if (temp_r0_134 == 9) {
        goto block_1401;
    }
    goto block_1443;
block_1401:
    d368_sub_08065158(&sp10, 0x5011A, 0, -1, (0));
    goto block_1443;
sw22_2:
    temp_r0_135 = ((struct PlayerD368 *)arg0)->f10;
    if (temp_r0_135 == 7) {
        goto block_1408;
    }
    if ((s32) temp_r0_135 > 7) {
        goto block_1406;
    }
    if (temp_r0_135 == 3) {
        goto block_1412;
    }
    goto block_1445;
block_1406:
    if (temp_r0_135 == 9) {
        goto block_1416;
    }
    goto block_1445;
block_1408:
    if (((u32) (M2C_FIELD(sp180, u16 *, 6) << 0x17) >> 0x1B) == 0) {
        goto block_1410;
    }
    var_r1_18 = (u32) (M2C_FIELD(sp180, u16 *, 4) << 0x12) >> 0x18;
    var_r2_12 = ((u32) (M2C_FIELD(sp180, u32 *, 4) << 0xF) >> 0x1D) | 0x8000;
    var_r3_9 = M2C_FIELD(sp180, u8 *, 6);
    goto block_1411;
block_1410:
    var_r1_18 = (u32) (M2C_FIELD(sp180, u16 *, 4) << 0x12) >> 0x18;
    var_r2_12 = (u32) (M2C_FIELD(sp180, u32 *, 4) << 0xF) >> 0x1D;
    var_r3_9 = M2C_FIELD(sp180, u8 *, 6);
block_1411:
    d368_sub_080760E8(((struct PlayerD368 *)arg0)->f0, var_r1_18, var_r2_12, (u32) (var_r3_9 << 0x1C) >> 0x1D);
    goto block_1445;
block_1412:
    if (((u32) (M2C_FIELD(sp180, u16 *, 6) << 0x17) >> 0x1B) == 0) {
        goto block_1414;
    }
    var_r1_19 = (u32) (M2C_FIELD(sp180, u16 *, 4) << 0x12) >> 0x18;
    var_r2_13 = ((u32) (M2C_FIELD(sp180, u32 *, 4) << 0xF) >> 0x1D) | 0x8000;
    var_r3_10 = M2C_FIELD(sp180, u8 *, 6);
    goto block_1415;
block_1414:
    var_r1_19 = (u32) (M2C_FIELD(sp180, u16 *, 4) << 0x12) >> 0x18;
    var_r2_13 = (u32) (M2C_FIELD(sp180, u32 *, 4) << 0xF) >> 0x1D;
    var_r3_10 = M2C_FIELD(sp180, u8 *, 6);
block_1415:
    d368_sub_08076A88(((struct PlayerD368 *)arg0)->f0, var_r1_19, var_r2_13, (u32) (var_r3_10 << 0x1C) >> 0x1D);
    goto block_1445;
block_1416:
    var_r1_20 = 0x5011D;
    goto block_1438;
sw22_3:
    var_r0_33 = M2C_FIELD(sp180, u16 *, 4);
    goto block_1444;
sw22_4:
    temp_r0_136 = ((struct PlayerD368 *)arg0)->f10;
    if (temp_r0_136 == 5) {
        goto block_1421;
    }
    if (temp_r0_136 != 9) {
        goto block_1421;
    }
    d368_sub_08065158(&sp10, 0x500E9, 0, -1, (0));
block_1421:
    var_r0_33 = M2C_FIELD(sp180, u16 *, 4);
    goto block_1444;
sw22_5:
    var_r0_33 = M2C_FIELD(sp180, u16 *, 4);
    goto block_1444;
sw22_6:
    temp_r0_137 = ((struct PlayerD368 *)arg0)->f10;
    if (temp_r0_137 == 5) {
        goto block_1443;
    }
    if (temp_r0_137 != 9) {
        goto block_1443;
    }
    d368_sub_08065158(&sp10, 0x500F5, 0, -1, (0));
    goto block_1443;
sw22_7:
    temp_r0_138 = ((struct PlayerD368 *)arg0)->f10;
    if (temp_r0_138 == 8) {
        goto block_1433;
    }
    if ((s32) temp_r0_138 > 8) {
        goto block_1430;
    }
    if (temp_r0_138 == 1) {
        goto block_1432;
    }
    goto block_1445;
block_1430:
    if (temp_r0_138 == 9) {
        goto block_1437;
    }
    goto block_1445;
block_1432:
    var_r0_33 = M2C_FIELD(sp180, u16 *, 4);
    goto block_1444;
block_1433:
    var_r4_10 = (u32) (M2C_FIELD(sp180, u16 *, 6) << 0x17) >> 0x1B;
    if (var_r4_10 == 0) {
        goto block_1435;
    }
    var_r1_21 = (u32) (M2C_FIELD(sp180, u16 *, 4) << 0x12) >> 0x18;
    var_r2_14 = ((u32) (M2C_FIELD(sp180, u32 *, 4) << 0xF) >> 0x1D) | 0x8000;
    var_r3_11 = (u32) (M2C_FIELD(sp180, u8 *, 6) << 0x1C) >> 0x1D;
    var_r4_10 = 0;
    goto block_1436;
block_1435:
    var_r1_21 = (u32) (M2C_FIELD(sp180, u16 *, 4) << 0x12) >> 0x18;
    var_r2_14 = (u32) (M2C_FIELD(sp180, u32 *, 4) << 0xF) >> 0x1D;
    var_r3_11 = (u32) (M2C_FIELD(sp180, u8 *, 6) << 0x1C) >> 0x1D;
block_1436:
    d368_sub_08077444(((struct PlayerD368 *)arg0)->f0, var_r1_21, var_r2_14, var_r3_11, (var_r4_10));
    goto block_1445;
block_1437:
    var_r1_20 = 0x5012C;
block_1438:
    d368_sub_08065158(&sp10, var_r1_20, 0, -1, (0));
    goto block_1445;
sw22_8:
    temp_r0_139 = ((struct PlayerD368 *)arg0)->f10;
    if (temp_r0_139 == 5) {
        goto block_1442;
    }
    if (temp_r0_139 != 9) {
        goto block_1442;
    }
    d368_sub_08065158(&sp10, 0x50128, 0, -1, (0));
block_1442:
    var_r0_33 = M2C_FIELD(sp180, u16 *, 4);
    goto block_1444;
sw22_9:
block_1443:
    var_r0_33 = M2C_FIELD(sp180, u16 *, 4);
block_1444:
    sp1A4 = (u32) (var_r0_33 << 0x16) >> 0x1C;
block_1445:
    if (d368_sub_0800CCCC() == 0) {
        goto block_1447;
    }
    goto block_1603;
block_1447:
    if (d368_sub_0800CD34() == 0) {
        goto block_1449;
    }
    goto block_1603;
block_1449:
    if (((struct PlayerD368 *)arg0)->f20 != 0xD) {
        goto block_1451;
    }
    goto block_1603;
block_1451:
    if (((struct PlayerD368 *)arg0)->f10 == 4) {
        goto block_1453;
    }
    goto block_1603;
block_1453:
    if (((struct PlayerD368 *)arg0)->fC != 3) {
        goto block_1457;
    }
    if (((struct PlayerD368 *)arg0)->fB2 == 1) {
        goto block_1456;
    }
    goto block_1603;
block_1456:
    goto block_1459;
block_1457:
    if (((struct PlayerD368 *)arg0)->fB2 == 2) {
        goto block_1459;
    }
    goto block_1603;
block_1459:
    if (((struct PlayerD368 *)arg0)->fB4 == 0) {
        goto block_1461;
    }
    goto block_1603;
block_1461:
    d368_sub_0805865C(0x19);
    goto block_1603;
sw19_5:
    if (((struct PlayerD368 *)arg0)->fB0 != ((struct PlayerD368 *)arg0)->fB8) {
        goto block_1465;
    }
    if (((u32) (M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C) != sp114) {
        goto block_1465;
    }
    goto block_1507;
block_1465:
    if (((struct PlayerD368 *)arg0)->f20 == 0xD) {
        goto block_1469;
    }
    if (d368_sub_0800CCCC() != 0) {
        goto block_1469;
    }
    if (d368_sub_0800CD34() != 0) {
        goto block_1469;
    }
    d368_sub_0805865C(0x31);
block_1469:
    d368_sub_08065158(&sp10, *(u32 *)((((struct PlayerD368 *)arg0)->f10 * 4) + (((struct PlayerD368 *)arg0)->f64 * 0x58) + ((u8 *)&d368_gUnk_08479140 + 0x2C)), 0, -1, (0));
    ((struct PlayerD368 *)arg0)->fB4 = 0U;
    *(u16 *)((arg0 + 0xB4) - 2) = 0;
    sp114 = (u32) (M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C;
    ((struct PlayerD368 *)arg0)->fB0 = (u16) ((u8) M2C_FIELD(sp180, u8 *, 3) >> 4);
    temp_r0_140 = ((struct PlayerD368 *)arg0)->fC;
    if ((u32) temp_r0_140 <= 8U) {
        goto block_1471;
    }
    goto block_1506;
block_1471:
    switch (temp_r0_140) { case 0: goto sw23_0; case 2: goto sw23_2; case 3: goto sw23_3; case 5: goto sw23_5; case 7: goto sw23_7; case 4: goto sw23_4; case 1: goto sw23_1; case 6: goto sw23_6; case 8: goto sw23_8; }
sw23_0:
    temp_r0_141 = ((struct PlayerD368 *)arg0)->f10;
    if (temp_r0_141 == 2) {
        goto block_1504;
    }
    if ((s32) temp_r0_141 > 2) {
        goto block_1476;
    }
    if (temp_r0_141 == 1) {
        goto block_1478;
    }
    goto block_1506;
block_1476:
    if (temp_r0_141 == 3) {
        goto block_1482;
    }
    goto block_1506;
block_1478:
    temp_r0_142 = ((u32) (M2C_FIELD(sp180, u32 *, 4) << 0xF) >> 0x1D) - 1;
    if (temp_r0_142 > 6U) {
        goto block_1506;
    }
    switch (temp_r0_142) { case 2: goto sw24_2; case 3: goto sw24_3; case 4: goto sw24_4; case 5: goto sw24_5; case 6: goto sw24_6; case 0: goto sw24_0; case 1: goto sw24_1; }
sw24_2:
sw24_3:
    var_r0_34 = ((struct PlayerD368 *)arg0)->fB0 + 0x10;
    goto block_1505;
sw24_4:
sw24_5:
sw24_6:
    var_r0_34 = ((struct PlayerD368 *)arg0)->fB0 + 0x18;
    goto block_1505;
block_1482:
    var_r0_34 = (((u32) (M2C_FIELD(sp180, u32 *, 4) << 0xF) >> 0x1D) * 8) + ((struct PlayerD368 *)arg0)->fB0;
    goto block_1505;
sw23_2:
    temp_r0_143 = ((struct PlayerD368 *)arg0)->f10;
    if (temp_r0_143 == 3) {
        goto block_1486;
    }
    if (temp_r0_143 != 7) {
        goto block_1506;
    }
    d368_sub_0801500C(((struct PlayerD368 *)arg0)->f0);
    var_r0_34 = (((u32) (M2C_FIELD(sp180, u32 *, 4) << 0xF) >> 0x1D) * 8) + ((struct PlayerD368 *)arg0)->fB0;
    goto block_1505;
block_1486:
    d368_sub_08076A88(((struct PlayerD368 *)arg0)->f0, (u32) (M2C_FIELD(sp180, u16 *, 4) << 0x12) >> 0x18, (u32) (M2C_FIELD(sp180, u32 *, 4) << 0xF) >> 0x1D, (u32) (M2C_FIELD(sp180, u8 *, 6) << 0x1C) >> 0x1D);
    goto block_1504;
sw23_3:
    temp_r0_144 = ((struct PlayerD368 *)arg0)->f10;
    if (temp_r0_144 == 2) {
        goto block_1504;
    }
    if (temp_r0_144 != 4) {
        goto block_1506;
    }
    goto block_1504;
sw23_5:
    temp_r0_145 = ((struct PlayerD368 *)arg0)->f10;
    if (temp_r0_145 == 6) {
        goto block_1493;
    }
    if (temp_r0_145 == 8) {
        goto block_1494;
    }
    goto block_1506;
block_1493:
    d368_sub_08015B20(((struct PlayerD368 *)arg0)->f0);
    goto block_1504;
block_1494:
    d368_sub_08015B20(((struct PlayerD368 *)arg0)->f0);
    goto block_1504;
sw23_7:
    temp_r0_146 = ((struct PlayerD368 *)arg0)->f10;
    if (temp_r0_146 == 1) {
        goto block_1498;
    }
    if (temp_r0_146 == 8) {
        goto block_1499;
    }
    goto block_1506;
block_1498:
    d368_sub_08015820(((struct PlayerD368 *)arg0)->f0);
    goto block_1504;
block_1499:
    d368_sub_08015820(((struct PlayerD368 *)arg0)->f0);
    goto block_1504;
sw23_4:
    if (((struct PlayerD368 *)arg0)->f10 != 4) {
        goto block_1503;
    }
    goto block_1504;
sw23_1:
sw23_6:
sw23_8:
block_1503:
    if (((struct PlayerD368 *)arg0)->f10 != 5) {
        goto block_1506;
    }
sw24_0:
sw24_1:
block_1504:
    var_r0_34 = ((struct PlayerD368 *)arg0)->fB0 + 8;
block_1505:
    ((struct PlayerD368 *)arg0)->fB0 = var_r0_34;
block_1506:
    ((struct PlayerD368 *)arg0)->fB8 = (u16) ((struct PlayerD368 *)arg0)->fB0;
block_1507:
    sp124 = 0;
    goto block_1603;
sw19_8:
    if (((struct PlayerD368 *)arg0)->fB0 != ((struct PlayerD368 *)arg0)->fB8) {
        goto block_1511;
    }
    if (((u32) (M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C) != sp114) {
        goto block_1511;
    }
    goto block_1603;
block_1511:
    d368_sub_08065158(&sp10, *(u32 *)((((struct PlayerD368 *)arg0)->f10 * 4) + (((struct PlayerD368 *)arg0)->f64 * 0x58) + (u8 *)&d368_gUnk_08479140), 0, -1, (0));
    ((struct PlayerD368 *)arg0)->fB4 = 0U;
    *(u16 *)((arg0 + 0xB4) - 2) = 0;
    sp114 = (u32) (M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C;
    temp_r0_147 = (u8) M2C_FIELD(sp180, u8 *, 3) >> 4;
    ((struct PlayerD368 *)arg0)->fB0 = (u16) temp_r0_147;
    ((struct PlayerD368 *)arg0)->fB8 = (u16) temp_r0_147;
    sp124 = 0;
    temp_r0_148 = ((struct PlayerD368 *)arg0)->f20;
    if (temp_r0_148 != 0xD) {
        goto block_1513;
    }
    var_r1_22 = (u32) (M2C_FIELD(sp180, u16 *, 4) << 0x12) >> 0x18;
    var_r2_15 = M2C_FIELD(sp180, u8 *, 3);
    goto block_1516;
block_1513:
    if (temp_r0_148 == 8) {
        goto block_1515;
    }
    goto block_1603;
block_1515:
    sp190 = (s32) (u16) d368_sub_0805D548(*(u16 *)(d368_gUnk_030034E0 + 0x56 + (M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x54) * 2)) - 1);
    d368_sub_0805D580(sp190);
    var_r1_22 = (u32) (M2C_FIELD(sp180, u16 *, 4) << 0x12) >> 0x18;
    var_r2_15 = M2C_FIELD(sp180, u8 *, 3);
block_1516:
    d368_sub_0805D6B8(((struct PlayerD368 *)arg0)->f0, var_r1_22, var_r2_15 >> 4);
    goto block_1603;
sw19_9:
    if (((struct PlayerD368 *)arg0)->fB0 != ((struct PlayerD368 *)arg0)->fB8) {
        goto block_1520;
    }
    if (((u32) (M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C) != sp114) {
        goto block_1520;
    }
    goto block_1603;
block_1520:
    d368_sub_08065158(&sp10, *(u32 *)((((struct PlayerD368 *)arg0)->f10 * 4) + (((struct PlayerD368 *)arg0)->f64 * 0x58) + ((u8 *)&d368_gUnk_08479140 + 0x2C)), 0, -1, (0));
    ((struct PlayerD368 *)arg0)->fB4 = 0U;
    *(u16 *)((arg0 + 0xB4) - 2) = 0;
    sp114 = (u32) (M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C;
    temp_r0_149 = ((u8) M2C_FIELD(sp180, u8 *, 3) >> 4) + 8;
    ((struct PlayerD368 *)arg0)->fB0 = temp_r0_149;
    ((struct PlayerD368 *)arg0)->fB8 = temp_r0_149;
    temp_r0_150 = ((struct PlayerD368 *)arg0)->f20;
    if (temp_r0_150 != 0xD) {
        goto block_1522;
    }
    d368_sub_0807386C(((struct PlayerD368 *)arg0)->f0, (u32) (M2C_FIELD(sp180, u16 *, 6) << 0x17) >> 0x1B, (u32) (M2C_FIELD(sp180, u16 *, 4) << 0x12) >> 0x18, ((u32) (M2C_FIELD(sp180, u32 *, 4) << 0xF) >> 0x1D) | (((u32) (M2C_FIELD(sp180, u8 *, 7) << 0x1C) >> 0x1D) << 0x10), ((u32) (M2C_FIELD(sp180, u8 *, 6) << 0x1C) >> 0x1D));
    goto block_1524;
block_1522:
    if (temp_r0_150 != 9) {
        goto block_1524;
    }
    d368_sub_0807386C(((struct PlayerD368 *)arg0)->f0, (u32) (M2C_FIELD(sp180, u16 *, 6) << 0x17) >> 0x1B, (u32) (M2C_FIELD(sp180, u16 *, 4) << 0x12) >> 0x18, ((u32) (M2C_FIELD(sp180, u32 *, 4) << 0xF) >> 0x1D) | (((u32) (M2C_FIELD(sp180, u8 *, 7) << 0x1C) >> 0x1D) << 0x10), ((u32) (M2C_FIELD(sp180, u8 *, 6) << 0x1C) >> 0x1D));
block_1524:
    sp124 = 0;
    goto block_1603;
sw19_10:
    if (((struct PlayerD368 *)arg0)->fB0 != ((struct PlayerD368 *)arg0)->fB8) {
        goto block_1528;
    }
    if (((u32) (M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C) != sp114) {
        goto block_1528;
    }
    goto block_1603;
block_1528:
    d368_sub_08065158(&sp10, *(u32 *)((((struct PlayerD368 *)arg0)->f10 * 4) + (((struct PlayerD368 *)arg0)->f64 * 0x58) + (u8 *)&d368_gUnk_08479140), 0, -1, (0));
    ((struct PlayerD368 *)arg0)->fB4 = 0U;
    *(u16 *)((arg0 + 0xB4) - 2) = 0;
    sp114 = (u32) (M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C;
    temp_r0_151 = ((u8) M2C_FIELD(sp180, u8 *, 3) >> 4) + 0x10;
    ((struct PlayerD368 *)arg0)->fB0 = temp_r0_151;
    ((struct PlayerD368 *)arg0)->fB8 = temp_r0_151;
    sp124 = 0;
    temp_r0_152 = ((struct PlayerD368 *)arg0)->fC;
    if (temp_r0_152 == 5) {
        goto block_1537;
    }
    if ((s32) temp_r0_152 > 5) {
        goto block_1532;
    }
    if (temp_r0_152 == 3) {
        goto block_1534;
    }
    goto block_1603;
block_1532:
    if (temp_r0_152 == 7) {
        goto block_1547;
    }
    goto block_1603;
block_1534:
    if ((s32) (M2C_FIELD(sp180, u8 *, 4) << 0x19) < 0) {
        goto block_1536;
    }
    goto block_1603;
block_1536:
    d368_sub_08075494(((struct PlayerD368 *)arg0)->f0);
    goto block_1603;
block_1537:
    if ((s32) (M2C_FIELD(sp180, u8 *, 4) << 0x19) < 0) {
        goto block_1539;
    }
    goto block_1603;
block_1539:
    temp_r0_153 = ((struct PlayerD368 *)arg0)->f10;
    if (temp_r0_153 == 6) {
        goto block_1545;
    }
    if ((s32) temp_r0_153 > 6) {
        goto block_1543;
    }
    if (temp_r0_153 == 0) {
        goto block_1544;
    }
    goto block_1546;
block_1543:
    if (temp_r0_153 != 8) {
        goto block_1546;
    }
block_1544:
    d368_sub_08065158(&sp10, 0x500DA, 0, -1, (0));
    goto block_1546;
block_1545:
    d368_sub_08065158(&sp10, 0x500D9, 0, -1, (sp124));
block_1546:
    temp_r0_154 = (u8) M2C_FIELD(sp180, u8 *, 3) >> 4;
    ((struct PlayerD368 *)arg0)->fB0 = (u16) temp_r0_154;
    ((struct PlayerD368 *)arg0)->fB8 = (u16) temp_r0_154;
    goto block_1603;
block_1547:
    if ((s32) (M2C_FIELD(sp180, u8 *, 4) << 0x19) < 0) {
        goto block_1549;
    }
    goto block_1603;
block_1549:
    d368_sub_080756EC(((struct PlayerD368 *)arg0)->f0);
    goto block_1603;
sw19_11:
    if (((struct PlayerD368 *)arg0)->fB0 != ((struct PlayerD368 *)arg0)->fB8) {
        goto block_1552;
    }
    if (((u32) (M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C) == sp114) {
        goto block_1553;
    }
block_1552:
    d368_sub_08065158(&sp10, *(u32 *)((((struct PlayerD368 *)arg0)->f10 * 4) + (((struct PlayerD368 *)arg0)->f64 * 0x58) + (u8 *)&d368_gUnk_08479140), 0, -1, (0));
    ((struct PlayerD368 *)arg0)->fB4 = 0U;
    *(u16 *)((arg0 + 0xB4) - 2) = 0;
    sp114 = (u32) (M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C;
    temp_r0_155 = ((u8) M2C_FIELD(sp180, u8 *, 3) >> 4) + 0x18;
    ((struct PlayerD368 *)arg0)->fB0 = temp_r0_155;
    ((struct PlayerD368 *)arg0)->fB8 = temp_r0_155;
    ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 | 0x2000);
block_1553:
    sp124 = 0;
    goto block_1603;
sw19_12:
    temp_r0_156 = ((u32) (M2C_FIELD(sp180, u16 *, 4) << 0x14) >> 0x1A) - 1;
    if (temp_r0_156 <= 5U) {
        goto block_1556;
    }
    goto block_1603;
block_1556:
    switch (temp_r0_156) { case 0: goto sw25_0; case 1: goto sw25_1; case 2: goto sw25_2; case 3: goto sw25_3; case 4: goto sw25_4; case 5: goto sw25_5; }
sw25_0:
    temp_r0_157 = (u32) (M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C;
    if (temp_r0_157 == sp114) {
        goto block_1564;
    }
    sp114 = temp_r0_157;
    if (d368_sub_0800CCCC() != 0) {
        goto block_1563;
    }
    if (d368_sub_0800CF80() != 0) {
        goto block_1561;
    }
    ((struct PlayerD368 *)arg0)->fA4 = (s32) ((struct PlayerD368 *)arg0)->f8C;
    M2C_FIELD((arg0 + 0xA4), s32 *, 4) = (s32) M2C_FIELD((arg0 + 0x8C), s32 *, 4);
    ((struct PlayerD368 *)arg0)->f2C = (u16) M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x90);
    ((struct PlayerD368 *)arg0)->f2E = (u16) M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x8C);
block_1561:
    if (!(((struct PlayerD368 *)arg0)->f30 & 0x2000)) {
        goto block_1563;
    }
    ((struct PlayerD368 *)arg0)->fA4 = -1;
    M2C_FIELD((arg0 + 0xA4), s32 *, 4) = -1;
block_1563:
    d368_sub_080657C4(((struct PlayerD368 *)arg0)->f0, 0);
block_1564:
    if (d368_sub_0800CF80() != 0) {
        goto block_1566;
    }
    var_r1_23 = 3;
    goto block_1567;
block_1566:
    var_r1_23 = 1;
block_1567:
    ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 | var_r1_23);
    goto block_1603;
sw25_1:
sw25_2:
    if (d368_sub_0800CCCC() == 0) {
        goto block_1570;
    }
    ((struct PlayerD368 *)arg0)->f11E = 0U;
    d368_sub_08065158(&sp10, *(u32 *)((((struct PlayerD368 *)arg0)->f10 * 4) + (((struct PlayerD368 *)arg0)->f64 * 0x58) + (u8 *)&d368_gUnk_08479140), 0, -1, (0));
    ((struct PlayerD368 *)arg0)->fB0 = (u16) ((u8) M2C_FIELD(sp180, u8 *, 3) >> 4);
    sp118 = 0;
    sp120 = 3;
    goto block_1571;
block_1570:
    sp118 = 0xA000;
    sp120 = 0;
block_1571:
    sp11C = 0;
    goto block_1603;
sw25_3:
    ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 & ~3);
    goto block_1603;
sw25_4:
    temp_r1_54 = M2C_FIELD(sp180, u8 *, 6);
    d368_sub_08065158(&sp10, *(u32 *)((0x3C & temp_r1_54) + (((u32) (temp_r1_54 << 0x19) >> 0x1F) * 0x2C) + (((struct PlayerD368 *)arg0)->f64 * 0x58) + (u8 *)&d368_gUnk_08479140), 0, -1, (0));
    temp_r0_158 = arg0 + 0xB0;
    ((struct PlayerD368 *)arg0)->fB0 = (u16) (((u8) M2C_FIELD(sp180, u8 *, 3) >> 4) + ((u32) (M2C_FIELD(sp180, u32 *, 4) << 0xE) >> 0x1A));
    M2C_FIELD(temp_r0_158, s16 *, 2) = 0;
    M2C_FIELD((temp_r0_158 + 2), s16 *, 2) = 0;
    sp124 = (u8) M2C_FIELD(sp180, u8 *, 6) >> 7;
    goto block_1603;
sw25_5:
    ((struct PlayerD368 *)arg0)->fB0 = (u16) (((u32) (temp_r2_62 << 0x18) >> 0x1C) + ((u32) (M2C_FIELD(sp180, u32 *, 4) << 0xE) >> 0x1A));
    goto block_1603;
sw19_14:
    if (((u32) (temp_r1_49 << 0x1C) >> 0x1C) == sp114) {
        goto block_1581;
    }
    d368_sub_08065158(&sp10, *(u32 *)((((struct PlayerD368 *)arg0)->f64 * 0x58) + (u8 *)&d368_gUnk_08479140), 0, -1, (0));
    ((struct PlayerD368 *)arg0)->fB4 = 0U;
    temp_r0_159 = (arg0 + 0xB4) - 2;
    M2C_FIELD(temp_r0_159, s16 *, 0) = 0;
    M2C_FIELD(temp_r0_159, s16 *, 4) = 0;
    sp114 = (u32) (M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C;
    ((struct PlayerD368 *)arg0)->fB0 = 0x20U;
    ((struct PlayerD368 *)arg0)->fB8 = 0x20U;
    sp124 = 0;
    d368_sub_0800CBBC();
    temp_r4_47 = ((struct PlayerD368 *)arg0)->f0;
    if (temp_r4_47 != d368_sub_080020F4()) {
        goto block_1578;
    }
    sp15C = d368_sub_0800CBCC();
block_1578:
    if (d368_sub_0800CCCC() != 0) {
        goto block_1581;
    }
    if (d368_sub_0800CC98() != 0) {
        goto block_1581;
    }
    ((struct PlayerD368 *)arg0)->f124 = d368_sub_08058688(0x6B);
block_1581:
    if (((struct PlayerD368 *)arg0)->fB0 == ((struct PlayerD368 *)arg0)->fB8) {
        goto block_1583;
    }
    goto block_1603;
block_1583:
    if (((struct PlayerD368 *)arg0)->fB6 != 0) {
        goto block_1585;
    }
    goto block_1603;
block_1585:
    if (d368_sub_0800CD8C() == 0) {
        goto block_1587;
    }
    goto block_1603;
block_1587:
    if (sp15C != 1) {
        goto block_1603;
    }
    temp_r8 = d368_sub_08007290(M2C_FIELD(d368_gUnk_030034E0, u16 *, 0x132) | 0x110000);
    temp_r1_55 = ((struct PlayerD368 *)arg0)->f148;
    if (((u8) M2C_FIELD(temp_r1_55, u8 *, 6) >> 3) != 6) {
        goto block_1590;
    }
    var_r5_12 = 1;
    var_r6_8 = 0;
    goto block_1591;
block_1590:
    var_r5_12 = 0;
    var_r6_8 = (u32) (M2C_FIELD(temp_r1_55, s32 *, 4) << 0xD) >> 0x18;
block_1591:
    var_r4_11 = 0;
    var_r3_12 = 0;
    goto loop_1599;
block_1592:
    temp_r1_56 = 0x14C * sp128;
    temp_r2_63 = *(void * *)(temp_r1_56 + ((u8 *)&d368_gUnk_03003CE0 + 0x148));
    if (((u32) (M2C_FIELD(temp_r2_63, u8 *, 0) << 0x1C) >> 0x1C) != 0xE) {
        goto block_1598;
    }
    if (M2C_FIELD((temp_r1_56 + (u8 *)&d368_gUnk_03003CE0), u16 *, 0xB6) == 0) {
        goto block_1598;
    }
    if (((u8) M2C_FIELD(temp_r2_63, u8 *, 6) >> 3) != 6) {
        goto block_1597;
    }
    var_r4_11 += 1;
    if (var_r5_12 == 0) {
        goto block_1598;
    }
    var_r6_8 += (u32) (M2C_FIELD(temp_r2_63, s32 *, 4) << 0xD) >> 0x18;
    goto block_1598;
block_1597:
    var_r4_11 += 1;
block_1598:
    var_r3_12 = sp128 + 1;
loop_1599:
    sp128 = var_r3_12;
    if (sp128 < d368_sub_08002164()) {
        goto block_1592;
    }
    if (var_r4_11 != d368_sub_0800CBCC()) {
        goto block_1603;
    }
    d368_sub_08067F94((u32) M2C_FIELD(temp_r8, u32 *, 0xA4) >> 4, var_r6_8, var_r4_11);
    d368_sub_0800CBEC();
    goto block_1603;
sw19_15:
    d368_sub_08065158(&sp10, *(u32 *)((((struct PlayerD368 *)arg0)->f64 * 0x58) + (u8 *)&d368_gUnk_08479140), 0, -1, (0));
    sp114 = (u32) (M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C;
    ((struct PlayerD368 *)arg0)->fB0 = 0x21U;
    M2C_FIELD((arg0 + 0xB0), s16 *, 8) = 0x21;
    sp124 = 1;
block_1603:
    if (((u32) (M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C) == 0xC) {
        goto block_1608;
    }
    temp_r5_12 = sp118 - sp11C;
    sp118 = temp_r5_12;
    sp11C += 0x20;
    if ((s32) (temp_r5_12 >> 8) > 0) {
        goto block_1606;
    }
    sp11C = 0 - (0x200 >> sp120);
    sp120 += 1;
    sp118 = 0x200;
    ((struct PlayerD368 *)arg0)->f30 = (u32) (((struct PlayerD368 *)arg0)->f30 & ~0x40);
block_1606:
    if (sp120 <= 2) {
        goto block_1608;
    }
    sp120 = 3;
    sp118 = 0;
block_1608:
    d368_sub_0800BC08((u16) M2C_FIELD(sp180, u16 *, 0) >> 4, (u32) (M2C_FIELD(sp180, u16 *, 2) << 0x14) >> 0x14, sp1C0, sp1C4, (0x30), ((u32) (M2C_FIELD(sp180, u8 *, 4) << 0x1A) >> 0x1A));
    temp_r4_48 = ((struct PlayerD368 *)arg0)->f30 & 2;
    if (temp_r4_48 == 0) {
        goto block_1610;
    }
    goto block_1866;
block_1610:
    sp10.f1C = (s8) ((struct PlayerD368 *)arg0)->f0;
    if (0x200 & M2C_FIELD(d368_gUnk_03005CF4, u16 *, 4)) {
        goto block_1612;
    }
    ((struct PlayerD368 *)arg0)->fB6 = (u16) d368_sub_08065370(&sp10, ((struct PlayerD368 *)arg0)->fB0, arg0 + 0xB2, arg0 + 0xB4, (sp124));
block_1612:
    if (((struct PlayerD368 *)arg0)->f20 != 0xD) {
        goto block_1614;
    }
    goto block_1706;
block_1614:
    if (((struct PlayerD368 *)arg0)->f11E == 0) {
        goto block_1622;
    }
    if (sp1A0 == 0) {
        goto block_1617;
    }
    sp1A0 = 0;
block_1617:
    if (d368_sub_08065370(&sp78, ((struct PlayerD368 *)arg0)->f11E, &coordF4, &coordF6, (temp_r4_48)) == 0) {
        goto block_1619;
    }
    ((struct PlayerD368 *)arg0)->f11E = (u16) temp_r4_48;
    coordF4 = (u16) temp_r4_48;
    coordF6 = (s16) temp_r4_48;
    sp1A0 = 1;
    goto block_1622;
block_1619:
    if (d368_sub_0800CC98() != 0) {
        goto block_1622;
    }
    if (d368_sub_0800CD8C() != 0) {
        goto block_1622;
    }
    d368_sub_08065230(&sp78.f0, *sp1C0, *sp1C4 - 0x2A, ((struct PlayerD368 *)arg0)->f11E, ((s32) coordF4));
block_1622:
    if (d368_sub_0800CC98() != 0) {
        goto block_1636;
    }
    sp160 = (s32) (u8) d368_sub_0800BC44((u16) M2C_FIELD(sp180, u16 *, 0) >> 4, (u32) (M2C_FIELD(sp180, u16 *, 2) << 0x14) >> 0x14, (u32) (M2C_FIELD(sp180, u8 *, 4) << 0x1A) >> 0x1F);
    if (d368_sub_0800CC38() == 0) {
        goto block_1625;
    }
    sp160 = (s32) d368_gUnk_030034D8;
block_1625:
    temp_r1_57 = ((struct PlayerD368 *)arg0)->f30;
    if (0x40000 & temp_r1_57) {
        goto block_1632;
    }
    if (!(0x80000 & temp_r1_57)) {
        goto block_1628;
    }
    goto block_1644;
block_1628:
    if (temp_r1_57 & 0x2000) {
        goto block_1630;
    }
    var_r0_35 = *sp1C0;
    var_r1_24 = *sp1C4 - (sp118 >> 8);
    var_r2_16 = ((struct PlayerD368 *)arg0)->fB0;
    var_r3_13 = ((struct PlayerD368 *)arg0)->fB2;
    stackArg0 = sp160;
    goto block_1635;
block_1630:
    if (!(d368_gUnk_03002344 & 1)) {
        goto block_1644;
    }
    var_r0_35 = *sp1C0;
    goto block_1634;
block_1632:
    if (!(d368_gUnk_03002344 & 1)) {
        goto block_1644;
    }
    var_r0_35 = *sp1C0;
block_1634:
    var_r1_24 = *sp1C4 - (sp118 >> 8);
    var_r2_16 = ((struct PlayerD368 *)arg0)->fB0;
    var_r3_13 = ((struct PlayerD368 *)arg0)->fB2;
    stackArg0 = sp160;
block_1635:
    d368_sub_08007870(var_r0_35, var_r1_24, var_r2_16, var_r3_13, stackArg0, (&sp10.f1C), (sp10.f8), (sp10.f0));
    goto block_1644;
block_1636:
    temp_r0_160 = M2C_FIELD(d368_gUnk_03006440, u32 *, 0);
    if (temp_r0_160 > 4U) {
        goto block_1640;
    }
    if (temp_r0_160 >= 2U) {
        goto block_1643;
    }
    if (temp_r0_160 == 1) {
        goto block_1642;
    }
    goto block_1644;
block_1640:
    if (temp_r0_160 == 6) {
        goto block_1643;
    }
    goto block_1644;
block_1642:
    d368_sub_08007870(0x5C, 0x48, ((struct PlayerD368 *)arg0)->fB0, M2C_FIELD((arg0 + 0xB0), u16 *, 2), (3), (&sp10.f1C), (sp10.f8), (sp10.f0));
    goto block_1644;
block_1643:
    d368_sub_08007870(0x24, 0x54, ((struct PlayerD368 *)arg0)->fB0, M2C_FIELD((arg0 + 0xB0), u16 *, 2), (3), (&sp10.f1C), (sp10.f8), (sp10.f0));
block_1644:
    if (!(((struct PlayerD368 *)arg0)->f30 & 0x2000)) {
        goto block_1648;
    }
    if (!(0x200 & M2C_FIELD(d368_gUnk_03005CF4, u16 *, 4))) {
        goto block_1647;
    }
    goto block_1782;
block_1647:
    d368_sub_08000AF0(((struct PlayerD368 *)arg0)->f0 + 0x10, sp10.fC + 0x1C0, 1);
    goto block_1782;
block_1648:
    if (!(0x200 & M2C_FIELD(d368_gUnk_03005CF4, u16 *, 4))) {
        goto block_1650;
    }
    goto block_1678;
block_1650:
    sp128 = sp1A4;
    if ((u32) ((struct PlayerD368 *)arg0)->f64 <= 9U) {
        goto block_1652;
    }
    sp128 = 0;
block_1652:
    if (d368_sub_0800CC98() != 0) {
        goto block_1664;
    }
    if (sp128 == 0xC) {
        goto block_1659;
    }
    if (sp128 > 0xCU) {
        goto block_1657;
    }
    if (sp128 == 0xA) {
        goto block_1661;
    }
    goto block_1662;
block_1657:
    if (sp128 == 0xD) {
        goto block_1660;
    }
    goto block_1662;
block_1659:
    var_r0_36 = ((struct PlayerD368 *)arg0)->f0 + 0x10;
    var_r1_25 = sp10.fC + 0x1E0;
    goto block_1676;
block_1660:
    var_r0_36 = ((struct PlayerD368 *)arg0)->f0 + 0x10;
    var_r1_25 = sp10.fC + 0x1A0;
    goto block_1676;
block_1661:
    var_r0_36 = ((struct PlayerD368 *)arg0)->f0 + 0x10;
    var_r1_25 = sp10.fC + 0x180;
    goto block_1676;
block_1662:
    if (((struct PlayerD368 *)arg0)->f64 == 9) {
        goto block_1675;
    }
    var_r0_36 = ((struct PlayerD368 *)arg0)->f0 + 0x10;
    var_r1_25 = sp10.fC + (((struct PlayerD368 *)arg0)->f66 << 5);
    goto block_1676;
block_1664:
    if (M2C_FIELD(d368_gUnk_03006440, s32 *, 0x28) & 1) {
        goto block_1678;
    }
    if (sp128 == 0xC) {
        goto block_1671;
    }
    if (sp128 > 0xCU) {
        goto block_1669;
    }
    if (sp128 == 0xA) {
        goto block_1673;
    }
    goto block_1674;
block_1669:
    if (sp128 == 0xD) {
        goto block_1672;
    }
    goto block_1674;
block_1671:
    var_r0_36 = ((struct PlayerD368 *)arg0)->f0 + 0x10;
    var_r1_25 = sp10.fC + 0x1E0;
    goto block_1676;
block_1672:
    var_r0_36 = ((struct PlayerD368 *)arg0)->f0 + 0x10;
    var_r1_25 = sp10.fC + 0x1A0;
    goto block_1676;
block_1673:
    var_r0_36 = ((struct PlayerD368 *)arg0)->f0 + 0x10;
    var_r1_25 = sp10.fC + 0x180;
    goto block_1676;
block_1674:
    if (((struct PlayerD368 *)arg0)->f64 != 9) {
        goto block_1677;
    }
block_1675:
    var_r0_36 = ((struct PlayerD368 *)arg0)->f0 + 0x10;
    var_r1_25 = sp10.fC;
block_1676:
    d368_sub_08000AF0(var_r0_36, var_r1_25, 1);
    goto block_1678;
block_1677:
    d368_sub_08000AF0(((struct PlayerD368 *)arg0)->f0 + 0x10, sp10.fC + (((struct PlayerD368 *)arg0)->f66 << 5), 1);
block_1678:
    sp164 = (u32) (0x7F000000 & ((sp164 + 2) << 0x18)) >> 0x18;
    *(u16 *)(((((struct PlayerD368 *)arg0)->f0 + 0x10) << 5) + ((u8 *)&d368_gUnk_03001F40 + 0x1E)) = 0;
    temp_r0_161 = sp128 - 1;
    if (temp_r0_161 <= 0xDU) {
        goto block_1680;
    }
    goto block_1781;
block_1680:
    switch (temp_r0_161) { case 0: goto sw26_0; case 1: goto sw26_1; case 2: goto sw26_2; case 4: goto sw26_4; case 5: goto sw26_5; case 12: goto sw26_12; case 6: goto sw26_6; case 8: goto sw26_8; case 11: goto sw26_11; case 3: goto sw26_3; case 10: goto sw26_10; case 13: goto sw26_13; case 7: goto sw26_7; case 9: goto sw26_9; }
sw26_0:
    temp_r3_56 = *(s16 *)((sp164 * 2) + (u8 *)&d368_gUnk_080B9704);
    temp_r0_162 = ((u32) (temp_r3_56 * 0x1F00) >> 0x10) & 0x1F;
    sp110 = (((((sp110 & ~0x1F) | (((u32) (temp_r3_56 << 0xC) >> 0x10) & 0x1F)) & 0xFFFFFC1F) | (temp_r0_162 << 5)) & 0xFFFF83FF) | (temp_r0_162 << 0xA);
    *(u16 *)(((((struct PlayerD368 *)arg0)->f0 + 0x10) << 5) + ((u8 *)&d368_gUnk_03001F40 + 0x1E)) = *(u16 *)&sp110;
    goto block_1782;
sw26_1:
    temp_r5_13 = *(s16 *)((sp164 * 2) + (u8 *)&d368_gUnk_080B9704);
    temp_r3_57 = ((s32) (temp_r5_13 * 5) >> 8) & 0x1F;
    temp_r1_58 = (sp110 & 0xFFFFFF00) | ((-0x20 & *(u8 *)&sp110) | temp_r3_57);
    sp110 = temp_r1_58;
    sp110 = (temp_r1_58 & 0xFFFF0000) | ((0xFFFFFC1F & *(u16 *)&sp110) | (temp_r3_57 << 5));
    var_r3_14 = &sp110;
    var_r1_26 = ((s32) (temp_r5_13 * 0x1F) >> 8) & 0x1F;
    goto block_1764;
sw26_2:
    temp_r3_58 = *(s16 *)((sp164 * 2) + (u8 *)&d368_gUnk_080B9704);
    temp_r1_59 = ((s32) (temp_r3_58 * 0x1F) >> 8) & 0x1F;
    *(u8 *)&sp110 = (u8) ((-0x20 & *(u8 *)&sp110) | temp_r1_59);
    *(u16 *)&sp110 = (s16) ((0xFFFFFC1F & (u16) *(u16 *)&sp110) | (temp_r1_59 << 5));
    var_r3_14 = &sp110;
    var_r1_26 = ((s32) (temp_r3_58 * 5) >> 7) & 0x1F;
    goto block_1764;
sw26_4:
    temp_r3_59 = *(s16 *)((sp164 * 2) + (u8 *)&d368_gUnk_080B9704);
    *(u8 *)&sp110 = (u8) ((-0x20 & *(u8 *)&sp110) | (((s32) (0x16 * temp_r3_59) >> 8) & 0x1F));
    *(u16 *)&sp110 = (s16) ((0xFFFFFC1F & (u16) *(u16 *)&sp110) | ((((s32) (temp_r3_59 * 0x1F) >> 8) & 0x1F) << 5));
    var_r3_14 = &sp110;
    var_r1_26 = ((s32) (temp_r3_59 * 5) >> 7) & 0x1F;
    goto block_1764;
sw26_5:
    var_r0_37 = *(s16 *)((sp164 * 2) + (u8 *)&d368_gUnk_080B9704);
    goto block_1762;
sw26_12:
    if (d368_sub_0800CC98() == 0) {
        goto block_1688;
    }
    goto block_1782;
block_1688:
    d368_sub_08065370(&sp44, 0xDU, (u16 *) &coordF8, &coordFA, (1));
    if ((d368_gUnk_03002344 & 1) == (1 & ((struct PlayerD368 *)arg0)->f0)) {
        goto block_1690;
    }
    goto block_1782;
block_1690:
    var_r1_27 = *sp1C0;
    var_r2_17 = *sp1C4;
    var_r0_38 = (u16) coordF8;
    goto block_1768;
sw26_6:
    if (d368_sub_0800CC98() == 0) {
        goto block_1693;
    }
    goto block_1782;
block_1693:
    d368_sub_08065370(&sp44, 0xFU, (u16 *) &coordF8, &coordFA, (1));
    if ((d368_gUnk_03002344 & 1) == (1 & ((struct PlayerD368 *)arg0)->f0)) {
        goto block_1695;
    }
    goto block_1782;
block_1695:
    var_r1_28 = *sp1C0;
    goto block_1771;
sw26_8:
    if (d368_sub_0800CC98() == 0) {
        goto block_1698;
    }
    goto block_1782;
block_1698:
    goto block_1772;
sw26_11:
    temp_r0_163 = d368_sub_0800CC98();
    if (temp_r0_163 == 0) {
        goto block_1701;
    }
    goto block_1782;
block_1701:
    if (d368_sub_08065370(&sp44, 0xCU, (u16 *) &coordF8, &coordFA, (temp_r0_163)) == 0) {
        goto block_1703;
    }
    goto block_1782;
block_1703:
    if ((d368_gUnk_03002344 & 1) == (1 & ((struct PlayerD368 *)arg0)->f0)) {
        goto block_1705;
    }
    goto block_1782;
block_1705:
    goto block_1776;
block_1706:
    sp160 = (s32) (u8) d368_sub_0800BC44((u16) M2C_FIELD(sp180, u16 *, 0) >> 4, (u32) (M2C_FIELD(sp180, u16 *, 2) << 0x14) >> 0x14, (u32) (M2C_FIELD(sp180, u8 *, 4) << 0x1A) >> 0x1F);
    d368_sub_0800BC08((u16) M2C_FIELD(sp180, u16 *, 0) >> 4, (u32) (M2C_FIELD(sp180, u16 *, 2) << 0x14) >> 0x14, sp1C0, sp1C4, (0x30), ((u32) (M2C_FIELD(sp180, u8 *, 4) << 0x1A) >> 0x1A));
    if (!(((u32) (M2C_FIELD(sp180, u8 *, 4) << 0x1A) >> 0x1A) & 0x20)) {
        goto block_1711;
    }
    if (d368_sub_0800CCCC() == 0) {
        goto block_1710;
    }
    sp128 = 0;
    if ((((u32) (M2C_FIELD(sp180, u8 *, 4) << 0x1A) >> 0x1A) & ~0x20) != M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x90)) {
        goto block_1714;
    }
    sp128 = 1;
    goto block_1716;
block_1710:
    sp128 = 0;
    goto block_1782;
block_1711:
    temp_r0_164 = d368_sub_0800CCCC();
    sp128 = 0;
    if (temp_r0_164 != 0) {
        goto block_1714;
    }
    if ((((u32) (M2C_FIELD(sp180, u8 *, 4) << 0x1A) >> 0x1A) & ~0x20) != M2C_FIELD((u8 *)&d368_gUnk_03003170, u16 *, 0x90)) {
        goto block_1714;
    }
    sp128 = 1;
block_1714:
    if (sp128 != 0) {
        goto block_1716;
    }
    goto block_1782;
block_1716:
    if (((struct PlayerD368 *)arg0)->f11E == 0) {
        goto block_1724;
    }
    if (sp1A0 == 0) {
        goto block_1719;
    }
    sp1A0 = 0;
block_1719:
    if (d368_sub_08065370(&sp78, ((struct PlayerD368 *)arg0)->f11E, &coordF4, &coordF6, (0)) == 0) {
        goto block_1721;
    }
    ((struct PlayerD368 *)arg0)->f11E = 0U;
    coordF4 = 0;
    coordF6 = 0;
    sp1A0 = 1;
    goto block_1724;
block_1721:
    if (d368_sub_0800CC98() != 0) {
        goto block_1724;
    }
    if (d368_sub_0800CD8C() != 0) {
        goto block_1724;
    }
    d368_sub_08065230(&sp78.f0, *sp1C0, *sp1C4 - 0x2A, ((struct PlayerD368 *)arg0)->f11E, ((s32) coordF4));
block_1724:
    if (d368_sub_0800CC38() == 0) {
        goto block_1726;
    }
    sp160 = (s32) d368_gUnk_030034D8;
block_1726:
    if (d368_sub_0800CC98() == 0) {
        goto block_1728;
    }
    goto block_1782;
block_1728:
    if (d368_sub_0800CD8C() == 0) {
        goto block_1730;
    }
    goto block_1782;
block_1730:
    temp_r1_60 = ((struct PlayerD368 *)arg0)->f30;
    if (!(0x2000 & temp_r1_60)) {
        goto block_1736;
    }
    if (0x200 & M2C_FIELD(d368_gUnk_03005CF4, u16 *, 4)) {
        goto block_1733;
    }
    d368_sub_08000AF0(((struct PlayerD368 *)arg0)->f0 + 0x10, sp10.fC + 0x1C0, 1);
block_1733:
    if (d368_gUnk_03002344 & 1) {
        goto block_1735;
    }
    goto block_1782;
block_1735:
    d368_sub_08007870(*sp1C0, *sp1C4 - (sp118 >> 8), ((struct PlayerD368 *)arg0)->fB0, ((struct PlayerD368 *)arg0)->fB2, (sp160), (&sp10.f1C), (sp10.f8), (sp10.f0));
    goto block_1782;
block_1736:
    if (temp_r1_60 & 0x80000) {
        goto block_1753;
    }
    d368_sub_08007870(*sp1C0, *sp1C4 - (sp118 >> 8), ((struct PlayerD368 *)arg0)->fB0, ((struct PlayerD368 *)arg0)->fB2, (sp160), (&sp10.f1C), (sp10.f8), (sp10.f0));
    if (0x200 & M2C_FIELD(d368_gUnk_03005CF4, u16 *, 4)) {
        goto block_1753;
    }
    sp128 = sp1A4;
    if ((u32) ((struct PlayerD368 *)arg0)->f64 <= 9U) {
        goto block_1740;
    }
    sp128 = 0;
block_1740:
    if (sp128 == 0xC) {
        goto block_1746;
    }
    if (sp128 > 0xCU) {
        goto block_1744;
    }
    if (sp128 == 0xA) {
        goto block_1748;
    }
    goto block_1749;
block_1744:
    if (sp128 == 0xD) {
        goto block_1747;
    }
    goto block_1749;
block_1746:
    var_r0_39 = ((struct PlayerD368 *)arg0)->f0 + 0x10;
    var_r1_29 = sp10.fC + 0x1E0;
    goto block_1751;
block_1747:
    var_r0_39 = ((struct PlayerD368 *)arg0)->f0 + 0x10;
    var_r1_29 = sp10.fC + 0x1A0;
    goto block_1751;
block_1748:
    var_r0_39 = ((struct PlayerD368 *)arg0)->f0 + 0x10;
    var_r1_29 = sp10.fC + 0x180;
    goto block_1751;
block_1749:
    if (((struct PlayerD368 *)arg0)->f64 != 9) {
        goto block_1752;
    }
    var_r0_39 = ((struct PlayerD368 *)arg0)->f0 + 0x10;
    var_r1_29 = sp10.fC;
block_1751:
    d368_sub_08000AF0(var_r0_39, var_r1_29, 1);
    goto block_1753;
block_1752:
    d368_sub_08000AF0(((struct PlayerD368 *)arg0)->f0 + 0x10, sp10.fC + (((struct PlayerD368 *)arg0)->f66 << 5), 1);
block_1753:
    sp164 = (u32) (0x7F000000 & ((sp164 + 2) << 0x18)) >> 0x18;
    *(u16 *)(((((struct PlayerD368 *)arg0)->f0 + 0x10) << 5) + ((u8 *)&d368_gUnk_03001F40 + 0x1E)) = 0;
    temp_r0_165 = sp128 - 1;
    if (temp_r0_165 <= 0xDU) {
        goto block_1755;
    }
    goto block_1781;
block_1755:
    switch (temp_r0_165) { case 0: goto sw27_0; case 1: goto sw27_1; case 2: goto sw27_2; case 3: goto sw27_3; case 4: goto sw27_4; case 5: goto sw27_5; case 12: goto sw27_12; case 6: goto sw27_6; case 8: goto sw27_8; case 11: goto sw27_11; case 10: goto sw27_10; case 13: goto sw27_13; case 7: goto sw27_7; case 9: goto sw27_9; }
sw27_0:
    temp_r3_60 = *(s16 *)((sp164 * 2) + (u8 *)&d368_gUnk_080B9704);
    *(u8 *)&sp110 = (u8) ((-0x20 & *(u8 *)&sp110) | ((temp_r3_60 >> 4) & 0x1F));
    var_r1_26 = ((s32) (temp_r3_60 * 0x1F) >> 8) & 0x1F;
    goto block_1763;
sw27_1:
    temp_r3_61 = *(s16 *)((sp164 * 2) + (u8 *)&d368_gUnk_080B9704);
    temp_r1_61 = ((s32) (temp_r3_61 * 5) >> 8) & 0x1F;
    *(u8 *)&sp110 = (u8) ((-0x20 & *(u8 *)&sp110) | temp_r1_61);
    *(u16 *)&sp110 = (s16) ((0xFFFFFC1F & (u16) *(u16 *)&sp110) | (temp_r1_61 << 5));
    var_r3_14 = &sp110;
    var_r1_26 = ((s32) (temp_r3_61 * 0x1F) >> 8) & 0x1F;
    goto block_1764;
sw27_2:
    temp_r3_62 = *(s16 *)((sp164 * 2) + (u8 *)&d368_gUnk_080B9704);
    temp_r1_62 = ((s32) (temp_r3_62 * 0x1F) >> 8) & 0x1F;
    *(u8 *)&sp110 = (u8) ((-0x20 & *(u8 *)&sp110) | temp_r1_62);
    *(u16 *)&sp110 = (s16) ((0xFFFFFC1F & (u16) *(u16 *)&sp110) | (temp_r1_62 << 5));
    var_r3_14 = &sp110;
    var_r1_26 = ((s32) (temp_r3_62 * 5) >> 7) & 0x1F;
    goto block_1764;
sw27_3:
    var_r0_37 = *(s16 *)((sp164 * 2) + (u8 *)&d368_gUnk_080B9704);
    goto block_1762;
sw27_4:
    temp_r3_63 = *(s16 *)((sp164 * 2) + (u8 *)&d368_gUnk_080B9704);
    *(u8 *)&sp110 = (u8) ((-0x20 & *(u8 *)&sp110) | (((s32) (0x16 * temp_r3_63) >> 8) & 0x1F));
    *(u16 *)&sp110 = (s16) ((0xFFFFFC1F & (u16) *(u16 *)&sp110) | ((((s32) (temp_r3_63 * 0x1F) >> 8) & 0x1F) << 5));
    var_r3_14 = &sp110;
    var_r1_26 = ((s32) (temp_r3_63 * 5) >> 7) & 0x1F;
    goto block_1764;
sw26_3:
sw27_5:
    var_r0_37 = *(s16 *)((sp164 * 2) + (u8 *)&d368_gUnk_080B9704);
block_1762:
    var_r1_26 = ((s32) (var_r0_37 * 0x1F) >> 8) & 0x1F;
    *(u8 *)&sp110 = (u8) ((-0x20 & *(u8 *)&sp110) | var_r1_26);
block_1763:
    *(u16 *)&sp110 = (u16) ((0xFFFFFC1F & *(u16 *)&sp110) | (var_r1_26 << 5));
    var_r3_14 = &sp110;
block_1764:
    M2C_FIELD(var_r3_14, u8 *, 1) = (u8) ((-0x7D & M2C_FIELD(var_r3_14, u8 *, 1)) | (var_r1_26 * 4));
    *(u16 *)(((((struct PlayerD368 *)arg0)->f0 + 0x10) << 5) + ((u8 *)&d368_gUnk_03001F40 + 0x1E)) = *(u16 *)&sp110;
    goto block_1782;
sw27_12:
    d368_sub_08065370(&sp44, 0xDU, (u16 *) &coordF8, &coordFA, (1));
    if ((d368_gUnk_03002344 & 1) == (1 & ((struct PlayerD368 *)arg0)->f0)) {
        goto block_1767;
    }
    goto block_1782;
block_1767:
    var_r1_27 = *sp1C0;
    var_r2_17 = *sp1C4;
    var_r0_38 = (u16) coordF8;
block_1768:
    d368_sub_08065230(&sp44.f0, var_r1_27, var_r2_17, 0xDU, ((s32) var_r0_38));
    goto block_1782;
sw27_6:
    d368_sub_08065370(&sp44, 0xFU, (u16 *) &coordF8, &coordFA, (1));
    if (!(d368_gUnk_03002344 & 1)) {
        goto block_1782;
    }
    var_r1_28 = *sp1C0;
block_1771:
    d368_sub_080659BC(&sp44, var_r1_28, *sp1C4, 0xF, ((s32) (u16) coordF8), (1));
    goto block_1782;
sw27_8:
block_1772:
    d368_sub_08065370(&sp44, 0xAU, (u16 *) &coordF8, &coordFA, (1));
    if ((d368_gUnk_03002344 & 1) != (1 & ((struct PlayerD368 *)arg0)->f0)) {
        goto block_1782;
    }
    d368_sub_08065230(&sp44.f0, *sp1C0, *sp1C4, 0xAU, ((s32) (u16) coordF8));
    goto block_1782;
sw27_11:
    if (d368_sub_08065370(&sp44, 0xCU, (u16 *) &coordF8, &coordFA, (0)) != 0) {
        goto block_1782;
    }
    if (!(d368_gUnk_03002344 & 1)) {
        goto block_1782;
    }
block_1776:
    d368_sub_08065230(&sp44.f0, *sp1C0, *sp1C4, 0xCU, ((s32) (u16) coordF8));
    goto block_1782;
sw26_10:
sw27_10:
    if (d368_sub_0800CC98() != 0) {
        goto block_1782;
    }
    d368_sub_08022180(((struct PlayerD368 *)arg0)->f0);
    goto block_1782;
sw26_13:
sw27_13:
    if (d368_sub_0800CC98() != 0) {
        goto block_1782;
    }
    d368_sub_08021DC4(((struct PlayerD368 *)arg0)->f0);
    goto block_1782;
sw26_7:
sw26_9:
sw27_7:
sw27_9:
block_1781:
    coordF8 = 0;
    coordFA = 0;
block_1782:
    temp_r0_166 = ((struct PlayerD368 *)arg0)->fC;
    if (temp_r0_166 == 6) {
        goto block_1788;
    }
    if ((s32) temp_r0_166 > 6) {
        goto block_1786;
    }
    if (temp_r0_166 == 1) {
        goto block_1788;
    }
    goto block_1836;
block_1786:
    if (temp_r0_166 == 8) {
        goto block_1788;
    }
    goto block_1836;
block_1788:
    if (((struct PlayerD368 *)arg0)->f10 == 9) {
        goto block_1790;
    }
    goto block_1836;
block_1790:
    if ((u32) (((u32) (M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C) - 3) <= 1U) {
        goto block_1792;
    }
    goto block_1836;
block_1792:
    if ((s32) ((u32) (M2C_FIELD(sp180, u32 *, 4) << 0xD) >> 0x18) > 0) {
        goto block_1794;
    }
    goto block_1836;
block_1794:
    temp_r0_167 = ((u8) M2C_FIELD(sp180, u8 *, 6) >> 3) - 1;
    if (temp_r0_167 > 0x14U) {
        goto block_1814;
    }
    switch (temp_r0_167) { case 0: goto sw28_0; case 15: goto sw28_15; case 18: goto sw28_18; case 19: goto sw28_19; case 12: goto sw28_12; case 13: goto sw28_13; case 1: goto sw28_1; case 6: goto sw28_6; case 5: goto sw28_5; case 7: goto sw28_7; case 8: goto sw28_8; case 9: goto sw28_9; case 10: goto sw28_10; case 11: goto sw28_11; case 16: goto sw28_16; case 20: goto sw28_20; case 2: goto sw28_2; case 14: goto sw28_14; case 17: goto sw28_17; case 3: goto sw28_3; case 4: goto sw28_4; }
sw28_0:
sw28_15:
sw28_18:
sw28_19:
    sp138 = 0x16;
    goto block_1814;
sw28_12:
sw28_13:
    sp138 = 0x1B;
    goto block_1814;
sw28_1:
    var_r5_13 = 0x17;
    goto block_1813;
sw28_6:
    sp138 = 0x19;
    goto block_1814;
sw28_5:
    sp138 = 0x1A;
    goto block_1814;
sw28_7:
    sp138 = 0x1A;
    goto block_1814;
sw28_8:
    sp138 = 0x1A;
    goto block_1814;
sw28_9:
    sp138 = 0x1A;
    goto block_1814;
sw28_10:
    sp138 = 0x1A;
    goto block_1814;
sw28_11:
    var_r5_13 = 0x1A;
    goto block_1813;
sw28_16:
    sp138 = 0x1B;
    goto block_1814;
sw28_20:
    sp138 = 0x19;
    goto block_1814;
sw28_2:
    sp138 = 0x18;
    goto block_1814;
sw28_14:
    sp138 = 0x1B;
    goto block_1814;
sw28_17:
    sp138 = 0x1B;
    goto block_1814;
sw28_3:
    sp138 = 0x19;
    goto block_1814;
sw28_4:
    var_r5_13 = 0x16;
block_1813:
    sp138 = var_r5_13;
block_1814:
    d368_sub_08065370(&sp44, (u16) sp138, &coordFC, &coordFE, (1));
    if (d368_sub_0800CC98() == 0) {
        goto block_1816;
    }
    goto block_1836;
block_1816:
    if (d368_sub_0800CCCC() == 0) {
        goto block_1818;
    }
    goto block_1836;
block_1818:
    if (d368_sub_0800CD34() == 0) {
        goto block_1820;
    }
    goto block_1836;
block_1820:
    temp_r0_168 = (u8) M2C_FIELD(sp180, u8 *, 3) >> 4;
    if (temp_r0_168 > 7U) {
        goto block_1831;
    }
    switch (temp_r0_168) { case 0: goto sw29_0; case 1: goto sw29_1; case 2: goto sw29_2; case 3: goto sw29_3; case 4: goto sw29_4; case 5: goto sw29_5; case 6: goto sw29_6; case 7: goto sw29_7; }
sw29_0:
    *sp1C4 = (u16) *sp1C4 + 2;
    goto block_1831;
sw29_1:
    *sp1C4 = (u16) *sp1C4 + 2;
    *sp1C0 = (s16) ((u16) *sp1C0 - 2);
    goto block_1831;
sw29_2:
    *sp1C0 = (s16) ((u16) *sp1C0 - 0xA);
    *sp1C4 = (u16) *sp1C4 + 2;
    goto block_1831;
sw29_3:
    *sp1C4 = (u16) *sp1C4 - 2;
    *sp1C0 = (s16) ((u16) *sp1C0 - 2);
    goto block_1831;
sw29_4:
    var_r0_40 = (u16) *sp1C4 - 0xA;
    goto block_1830;
sw29_5:
    *sp1C4 = (u16) *sp1C4 - 2;
    *sp1C0 = (s16) ((u16) *sp1C0 + 2);
    goto block_1831;
sw29_6:
    *sp1C0 = (s16) ((u16) *sp1C0 + 0xA);
    *sp1C4 = (u16) *sp1C4 + 2;
    goto block_1831;
sw29_7:
    *sp1C0 = (s16) ((u16) *sp1C0 + 2);
    var_r0_40 = (u16) *sp1C4 + 2;
block_1830:
    *sp1C4 = var_r0_40;
block_1831:
    if ((d368_gUnk_03002344 & 1) != (1 & ((struct PlayerD368 *)arg0)->f0)) {
        goto block_1833;
    }
    d368_sub_08007870(*sp1C0, *sp1C4, sp138, coordFC, (sp160), (&sp44.f1C), (sp44.f8), (sp44.f0));
block_1833:
    if (coordFC != 0) {
        goto block_1836;
    }
    if (coordFE != 1) {
        goto block_1836;
    }
    d368_sub_08000AF0(0x17, sp44.fC, 2);
block_1836:
    temp_r0_169 = (u32) (M2C_FIELD(sp180, u8 *, 0) << 0x1C) >> 0x1C;
    if ((s32) temp_r0_169 <= 1) {
        goto block_1838;
    }
    goto block_1866;
block_1838:
    if ((s32) temp_r0_169 >= 0) {
        goto block_1840;
    }
    goto block_1866;
block_1840:
    if ((s32) (M2C_FIELD(sp180, u8 *, 5) << 0x1D) < 0) {
        goto block_1842;
    }
    goto block_1866;
block_1842:
    if (d368_sub_0800CFF0() == 0) {
        goto block_1844;
    }
    goto block_1866;
block_1844:
    sp138 = 0x1A;
    d368_sub_08065370(&sp44, 0x1AU, &coordFC, &coordFE, (1));
    if (d368_sub_0800CC98() == 0) {
        goto block_1846;
    }
    goto block_1866;
block_1846:
    if (d368_sub_0800CCCC() == 0) {
        goto block_1848;
    }
    goto block_1866;
block_1848:
    if (d368_sub_0800CD34() == 0) {
        goto block_1850;
    }
    goto block_1866;
block_1850:
    temp_r0_170 = (u8) M2C_FIELD(sp180, u8 *, 3) >> 4;
    if (temp_r0_170 > 7U) {
        goto block_1861;
    }
    switch (temp_r0_170) { case 0: goto sw30_0; case 1: goto sw30_1; case 2: goto sw30_2; case 3: goto sw30_3; case 4: goto sw30_4; case 5: goto sw30_5; case 6: goto sw30_6; case 7: goto sw30_7; }
sw30_0:
    *sp1C4 = (u16) *sp1C4 + 2;
    goto block_1861;
sw30_1:
    *sp1C4 = (u16) *sp1C4 + 2;
    *sp1C0 = (s16) ((u16) *sp1C0 - 2);
    goto block_1861;
sw30_2:
    *sp1C0 = (s16) ((u16) *sp1C0 - 0xA);
    *sp1C4 = (u16) *sp1C4 - 6;
    goto block_1861;
sw30_3:
    *sp1C4 = (u16) *sp1C4 - 2;
    *sp1C0 = (s16) ((u16) *sp1C0 - 2);
    goto block_1861;
sw30_4:
    var_r0_41 = (u16) *sp1C4 - 0xA;
    goto block_1860;
sw30_5:
    *sp1C4 = (u16) *sp1C4 - 2;
    *sp1C0 = (s16) ((u16) *sp1C0 + 2);
    goto block_1861;
sw30_6:
    *sp1C0 = (s16) ((u16) *sp1C0 + 0xA);
    *sp1C4 = (u16) *sp1C4 - 6;
    goto block_1861;
sw30_7:
    *sp1C0 = (s16) ((u16) *sp1C0 + 2);
    var_r0_41 = (u16) *sp1C4 + 2;
block_1860:
    *sp1C4 = var_r0_41;
block_1861:
    if ((d368_gUnk_03002344 & 1) != (1 & ((struct PlayerD368 *)arg0)->f0)) {
        goto block_1863;
    }
    d368_sub_08007870(*sp1C0, *sp1C4, sp138, coordFC, (sp160), (&sp44.f1C), (sp44.f8), (sp44.f0));
block_1863:
    if (coordFC != 0) {
        goto block_1866;
    }
    if (coordFE != 1) {
        goto block_1866;
    }
    d368_sub_08000AF0(0x17, sp44.fC, 2);
block_1866:
    d368_sub_080003F0();
loop_1867:
    if (d368_sub_0800CB78() != 0) {
        goto block_1869;
    }
    goto block_10;
block_1869:
    d368_sub_080688F8(((struct PlayerD368 *)arg0)->f0);
    if (((struct PlayerD368 *)arg0)->f20 == 0xD) {
        goto block_1871;
    }
    d368_sub_08001538(((struct PlayerD368 *)arg0)->f34);
    ((struct PlayerD368 *)arg0)->f34 = NULL;
    d368_sub_08001538(((struct PlayerD368 *)arg0)->fAC);
block_1871:
    d368_sub_08001538(((struct PlayerD368 *)arg0)->f13C);
    ((struct PlayerD368 *)arg0)->f13C = NULL;
    d368_sub_08000420(0x18A92);
    d368_sub_08000420(0x18A93);
    d368_sub_0800035C();
    return;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_0800D368);
#endif
#ifdef NONMATCHING
/* Create the player entity for a link slot `id` (0..3). struct Player (0x14C bytes): +0 id, +0x20 state (0 local, 0xD remote),
 * +0x34 -> 8 x 0x28 byte slots, +0xAC -> 0x100 byte buffer, +0x13C/+0x140 -> local player template data,
 * +0x144 -> this slot's link SEND block (sub_08002118), +0x148 -> RECV block (sub_08002238).
 * The entity runs as task sub_0800D368 (per-player update), stack 0x680 (remote) or gUnk_03003590 (local). */
extern u8 *gPlayerTemplate asm("gUnk_030034E0");
extern u8 gTaskArr[] asm("gUnk_030034F0");
extern u8 gLocalTaskStack[] asm("gUnk_03003590");
extern u8 *sub_08002118();
extern void sub_0800D368();
void sub_080135C4(u16 id)
{
    u8 stk_buf[0x13C];
    u16 zero;
    u32 stackBase;
    u8 *pl;
    u8 *task;
    u8 *p;
    u32 i;

    pl = (u8 *)gUnk_03003CE0 + id * 0x14C;
    *(u32 *)(pl + 0x144) = (u32)sub_08002118(id);
    *(u32 *)(pl + 0x148) = (u32)sub_08002238(id);
    *(u16 *)pl = id;
    task = gTaskArr + id * 0x28;
    if (id == sub_080020F4()) {
        *(u32 *)(pl + 0x140) = (u32)gPlayerTemplate;
        *(u16 *)(pl + 0x20) = 0;
        *(u32 *)(task + 8) = 0x31;
        stackBase = (u32)gLocalTaskStack;
        *(u32 *)(task + 0x20) = 0;
        *(u32 *)(pl + 0x13C) = (u32)sub_08001494(10);
        CpuSet(gPlayerTemplate, pl + 2, 10);
        *(u16 *)(pl + 0xC) = *(u16 *)(gPlayerTemplate + 10);
        *(u16 *)(pl + 0xE) = *(u16 *)(gPlayerTemplate + 12);
    } else {
        *(u16 *)(pl + 0x20) = 0xD;
        *(u32 *)(task + 8) = 0x32;
        stackBase = (u32)sub_08001494(0x680);
        *(u32 *)(task + 0x20) = stackBase;
        *(u32 *)(pl + 0x13C) = 0;
        pl[2] = 0xFE;
    }
    *(u32 *)(pl + 0xAC) = (u32)sub_08001494(0x100);
    p = (u8 *)sub_08001494(0x140);
    *(u32 *)(pl + 0x34) = (u32)p;
    for (i = 0; i < 8; i++) {
        *(s16 *)(p + i * 0x28) = -1;
        zero = 0;
        CpuSet(&zero, p + i * 0x28 + 8, 0x1000010);
    }
    *(u16 *)(pl + 0x136) = 0;
    if (id == sub_080020F4()) {
        memcpy(stk_buf, pl + 0x10, 0x13C);
        ((void (*)(u32, u32, u32, u32))sub_0801E024)(*(u32 *)pl, *(u32 *)(pl + 4), *(u32 *)(pl + 8), *(u32 *)(pl + 0xC));
    }
    *(u32 *)(task + 0xC) = (u32)sub_0800D368;
    *(u32 *)(task + 0x10) = stackBase + 0x67C;
    *(u32 *)(task + 0x24) = 0;
    sub_08000274_(task, (u32)pl, 0);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_080135C4);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_080137A0);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08013850);
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
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08013CEC);
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
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08014170);
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
#ifdef NONMATCHING
void sub_08014C8C(void) {
    struct PlayerW12 *p = (struct PlayerW12 *)&gUnk_03003CE0[sub_080020F4()];
    u16 value = p->w26;
    u32 next;

    if (sub_0800CCCC() == 0 && sub_0800CD34() == 0) {
        if (sub_0801DE60() == 0) {
            sub_0805865C(value + 0x100);
        } else {
            sub_0805865C(value + 0xF9);
        }
    }
    next = 0x50;
    if (p->wB6 == 0 && p->state == 5) {
        u32 step = 1;
        do {
            if ((*(u16 *)((u8 *)p + 0xB2)) == next || (*(u16 *)((u8 *)p + 0xB2)) == step) {
                next = (*(u16 *)((u8 *)p + 0xB2));
                (*(u16 *)((u8 *)p + 0xDC))++;
                step = (step + 3) & 0xFFFF;
            }
            sub_080003F0();
        } while (p->wB6 == 0 && p->state == 5);
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
#else
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08014C8C);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08014D60);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08014E68);
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
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08015090);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08015150);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_080151E0);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_080152CC);
