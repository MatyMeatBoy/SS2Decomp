#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804D330);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804DA44);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804DB48);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804DDBC);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804E360);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804E628);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804E7B8);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804EABC);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804ED18);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804EE20);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804EEA8);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804F128);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804F390);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804F998);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804FA68);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804FB0C);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804FC3C);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804FF04);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_080502DC);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08050454);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08050524);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_080505C8);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08050688);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_080509A8);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08050E48);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08051A78);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08051BFC);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08051CE4);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08051DF0);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08051E98);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08052060);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_080523D8);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0805247C);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_080526B4);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_080529E0);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08052D0C);
extern u8 *gGS2FE8 asm("gUnk_03005CF4");
extern void sub_0805990C();
extern void sub_0803E5D8();
static inline u8 *Sel2FE8(void)
{
    if (sub_0800CE30())
        return gGS2FE8 + 0x1C7;
    return gGS2FE8 + 0x1BB;
}
void sub_08052FE8(void)
{
    u8 mode;
    u32 a, b;
    {
        u8 *q = Sel2FE8();
        s32 m = ~1;
        *q = m & *q;
    }
    mode = sub_0801DE60();
    b = sub_0800CCCC();
    a = 0;
    if (mode == 6)
        a = 1;
    {
        u32 c = 0;
        if (b == 0)
            c = 1;
        if (a & c)
            sub_08068070((u32)sub_0805990C, 0x20);
    }
    sub_08068070((u32)sub_0803E5D8, 0);
}
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08053060);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08053120);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_080531C4);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08053510);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_080537DC);
extern u32 gW03005CF8 asm("gUnk_03005CF8");
extern u32 gW030027D0 asm("gUnk_030027D0");
extern u8 *gP030056F4 asm("gUnk_030056F4");
extern u32 gM030056FC asm("gUnk_030056FC");
struct E2E0a { u8 b[0xC]; u16 hC; u8 r[0x2E0 - 0xE]; };
static inline void SetMode53A80(u32 m)
{
    gW03005CF8 = m;
    if ((gW030027D0 & 0x20) == 0)
        sub_08006CB4(m);
}
static inline void Clr53A80(u8 *p)
{
    u32 i;
    for (i = 0; i <= 4; i++, p += 0x2E0)
        if ((gM030056FC & (1 << i)) && *(u16 *)(p + 0xC) == 0xC)
            *(u16 *)(p + 0xC) = 0;
}
void sub_08053A80(void)
{
    struct E2E0a *p;
    u32 i;
    u32 one;
    u32 z;
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
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
        while (sub_0801AAE0() == 0)
            sub_080003F0();
    }
    SetMode53A80(0xB);
    Clr53A80(gP030056F4);
    sub_08019F04();
}
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08053B24);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08053C5C);
void sub_08053CF4(void)
{
    struct E2E0a *p;
    u32 i;
    u32 one;
    u32 z;
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
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
        while (sub_0801AAE0() == 0)
            sub_080003F0();
    }
    SetMode53A80(0xB);
    Clr53A80(gP030056F4);
    sub_08019F04();
}
void sub_08053D98(void)
{
    struct E2E0a *p;
    u32 i;
    u32 one;
    u32 z;
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
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
        while (sub_0801AAE0() == 0)
            sub_080003F0();
    }
    SetMode53A80(0xB);
    Clr53A80(gP030056F4);
    sub_08019F04();
}
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08053E3C);
