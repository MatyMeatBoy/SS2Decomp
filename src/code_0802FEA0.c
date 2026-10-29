#include "global.h"

extern u8 *gState2FEA0 asm("gUnk_03005CF4");
struct Cmd2FEA0 { u16 kind, value; u8 data[12]; };
extern void cb2FEA0(void) asm("sub_0805990C");
extern void emit2FEA0(struct Cmd2FEA0 *) asm("sub_0805AB20");
static inline u32 count2FEA0(u32 n) { return n; }
void sub_0802FEA0(s32 arg)
{
    register u32 offset asm("r2");
    struct Player *p;
    u8 *base;
    register u32 field asm("r4");
    struct Cmd2FEA0 cmdA;
    u8 unused[16];
    register s32 idx asm("r4");
    register s32 flag asm("r5");
    register u32 one asm("r6");
    s32 shifted;
    register u32 n asm("r4");
    u32 send;
    s32 mode;
    register s32 result asm("r0");
    register u32 off asm("r1");
    register u32 a asm("r1");
    register u32 v asm("r2");
    register struct Cmd2FEA0 *cmd asm("r0");
    register u32 ok asm("r1");
    u32 dialog;
    register u32 value asm("r4");
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (struct Player *)((u8 *)gUnk_03003CE0 + offset);
    p->flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg, 0);
    if (sub_0800CE30()) field = *(u32 *)(gState2FEA0 + 0x7C);
    else field = *(u32 *)(gState2FEA0 + 0x74);
    if (field & 256) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310924);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 128) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310923);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 64) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310922);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 32) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310921);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 16) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310920);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 8) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310919);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 4) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310918);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310917);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    idx = sub_080020F4();
    one = 1;
    if (sub_0800CE30()) { base = gState2FEA0; off = 0x1C4; }
    else { base = gState2FEA0; off = 0x1B8; }
    base += off; shifted = *base;
    flag = (shifted >> 7) & one;
    one = 1;
    if (sub_0800CE30()) { base = gState2FEA0; off = 0x1C4; }
    else { base = gState2FEA0; off = 0x1B8; }
    base += off; shifted = *base;
    if (idx + ((shifted >> 3) & one) == 0 && flag != 0) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310925);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
        result = sub_0805CFA0();
        ok = 1;
        if (result < 0) ok = 0;
        if (!ok) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310928);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
        } else {
        dialog = sub_0800CE30();
        if (dialog == 0) {
            if (!(gUnk_030027D0 & 0x20)) sub_08006D08(0x33);
            a = 7; v = 11; cmd = &cmdA; cmd->kind = a; cmd->value = v;
            n = 0;
            do { cmdA.data[n] = 0; n++; } while (n <= 11);
            send = 0;
            do { emit2FEA0(&cmdA); send++; } while (send < count2FEA0(1));
            sub_08068070((u32)cb2FEA0, 11);
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310926);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
        } else {
            if (!(gUnk_030027D0 & 0x20)) sub_08006D08(0x33);
            a = 1; v = 99; cmd = &cmdA; cmd->kind = a; cmd->value = v;
            n = 0;
            do { cmdA.data[n] = 0; n++; } while (n <= 11);
            send = 0;
            do { emit2FEA0(&cmdA); send++; } while (send < count2FEA0(1));
            sub_08068070((u32)cb2FEA0, 11);
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310927);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
        }
    }
    }
    sub_08029788(arg);
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (struct Player *)((u8 *)gUnk_03003CE0 + offset);
    p->flags &= ~1;
    sub_0800D108();
}






extern u8 *gState30480 asm("gUnk_03005CF4");
void sub_08030480(s32 arg)
{
    register u32 offset asm("r2");
    struct Player *p;
    u8 *base;
    u32 field;
    u32 dialog;
    register u32 value asm("r4");
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (struct Player *)((u8 *)gUnk_03003CE0 + offset);
    p->flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg, 0);
    if (sub_0800CE30()) field = *(u32 *)(gState30480 + 0x7C);
    else field = *(u32 *)(gState30480 + 0x74);
    if (field & 256) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310939);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 128) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310938);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 64) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310937);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 32) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310936);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 16) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310935);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 8) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310934);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 4) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310933);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 2) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310932);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 1) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310931);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else  {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310930);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    sub_08029788(arg);
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (struct Player *)((u8 *)gUnk_03003CE0 + offset);
    p->flags &= ~1;
    sub_0800D108();
}

extern u8 *gState308B4 asm("gUnk_03005CF4");
void sub_080308B4(void)
{
    register u32 offset asm("r2");
    struct Player *p;
    u8 *base;
    u32 field;
    u32 dialog;
    register u32 value asm("r4");
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (struct Player *)((u8 *)gUnk_03003CE0 + offset);
    p->flags |= 1;
    sub_0800D0F4();
    if (sub_0800CE30()) { base = gState308B4; field = 0x1BE; }
    else { base = gState308B4; field = 0x1B2; }
    switch (base[field]) {
    case 0:
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310940);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
        break;
    case 1:
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310941);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
        break;
    case 2:
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310942);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
        break;
    case 3:
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310943);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
        value = 3;
        if (sub_0800CE30()) { base = gState308B4; field = 0x1BF; }
        else { base = gState308B4; field = 0x1B3; }
        base += field; *base = value;
        break;
    case 4:
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310944);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
        break;
    }
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (struct Player *)((u8 *)gUnk_03003CE0 + offset);
    p->flags &= ~1;
    sub_0800D108();
}

extern u8 *gState30B28 asm("gUnk_03005CF4");
void sub_08030B28(s32 arg)
{
    register u32 offset asm("r2");
    struct Player *p;
    u8 *base;
    u32 field;
    u32 dialog;
    register u32 value asm("r4");
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (struct Player *)((u8 *)gUnk_03003CE0 + offset);
    p->flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg, 0);
    if (sub_0800CE30()) field = *(u32 *)(gState30B28 + 0x7C);
    else field = *(u32 *)(gState30B28 + 0x74);
    if (field & 256) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1311074);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 128) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1311073);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 64) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1311072);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 32) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1311071);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 16) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1311070);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 8) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1311069);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 4) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1311068);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 2) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1311067);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 1) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1311066);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else  {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1311065);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (struct Player *)((u8 *)gUnk_03003CE0 + offset);
    p->flags &= ~1;
    sub_0800D108();
}

INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08030F54);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_0803145C);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08031580);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_080316A4);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_0803188C);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_080319F0);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08031B54);
extern u8 gS03003170[] asm("gUnk_03003170");
static inline void Keep31CB8(u8 *b, u32 n)
{
    s16 *px = (s16 *)(b + 0x7C);
    s32 x = *px;
    s16 *py = (s16 *)(b + 0x7E);
    s32 y = *py;
    sub_08084F9C(n);
    sub_080003F4(0x11201100);
    *px = x;
    *py = y;
}
void sub_08031CB8(void)
{
    {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags |= 1;
    }
    sub_0800D0F4();
    sub_0800CE40();
    sub_0801ABE8(6);
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB54();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_0800CCA8();
    Keep31CB8(gS03003170, 9);
    sub_0800CCB8();
    sub_08000420(0x514C8);
    sub_0800CE54();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags &= ~1;
    }
    sub_0800D108();
}
void sub_08031D88(void)
{
    {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags |= 1;
    }
    sub_0800D0F4();
    sub_0800CE40();
    sub_0801ABE8(6);
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB54();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_0800CCA8();
    Keep31CB8(gS03003170, 8);
    sub_0800CCB8();
    sub_08000420(0x514C8);
    sub_0800CE54();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags &= ~1;
    }
    sub_0800D108();
}
void sub_08031E58(void)
{
    {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags |= 1;
    }
    sub_0800D0F4();
    sub_0800CE40();
    sub_0801ABE8(6);
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB54();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_0800CCA8();
    Keep31CB8(gS03003170, 7);
    sub_0800CCB8();
    sub_08000420(0x514C8);
    sub_0800CE54();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags &= ~1;
    }
    sub_0800D108();
}
void sub_08031F28(void)
{
    {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags |= 1;
    }
    sub_0800D0F4();
    sub_0800CE40();
    sub_0801ABE8(6);
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB54();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_0800CCA8();
    Keep31CB8(gS03003170, 2);
    sub_0800CCB8();
    sub_08000420(0x514C8);
    sub_0800CE54();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags &= ~1;
    }
    sub_0800D108();
}
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08031FF8);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08032598);
extern u8 *state3294C asm("gUnk_03005CF4");
void sub_0803294C(u32 arg0) {
 register u32 arg asm("r5")=arg0;
 register u32 field asm("r1");
 u32 dialog;
 {register struct Player *p asm("r2");register u32 idx asm("r2");idx=sub_080020F4();idx*=0x14C;p=(struct Player *)((u8 *)gUnk_03003CE0+idx);p->flags |= 1;}
 sub_0800D0F4();sub_0802949C(arg,0);
 if(sub_0800CE30()) field=*(u32 *)(state3294C+0x7C);
 else field=*(u32 *)(state3294C+0x74);
 if (field & 512) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x1401A4);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 else if (field & 256) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x1401A3);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 else if (field & 128) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x1401A2);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 else if (field & 64) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x1401A1);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 else if (field & 32) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x1401A0);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 else if (field & 16) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14019F);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 else if (field & 8) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14019E);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 else if (field & 4) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14019D);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 else if (field & 2) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14019C);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 else if ((field &= 1)) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14019B);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 else {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14019A);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 sub_08029788(arg);
 {register struct Player *p asm("r2");register u32 idx asm("r2");idx=sub_080020F4();idx*=0x14C;p=(struct Player *)((u8 *)gUnk_03003CE0+idx);p->flags &= ~1;}
 sub_0800D108();
}
struct Item32DE4 { u16 kind,id; u8 data[12]; };
extern u8 *state32DE4 asm("gUnk_03005CF4");
extern u8 *items32DE4 asm("gUnk_030034E0");
static inline u32 load32DE4(u16 *p) {register u32 v asm("r0")=*p;return v;}
static inline u32 count32DE4(u32 n) { return n; }
static inline u8 *find32DE4(u32 actor) { register u8 *p asm("r1");register u32 i asm("r3");register s32 raw asm("r0")=(s32)state32DE4;register u32 off asm("r3")=0x7A4;p=(u8 *)raw+off;i=0;do{if(*(u32 *)p==actor)return p;i++;p+=0x70;}while(i<=14);sub_080003F0();return 0; }
extern void sub_0805990C(void); void sub_08032DE4(u32 arg0) {
 register u32 arg asm("r5")=arg0;
 register s32 flag asm("r4");
 register s32 count asm("r3"); register u32 i asm("r2"); register struct Item32DE4 *item asm("r1");
 u32 task; register u8 *found asm("r0"); register u32 j asm("r3"); register s32 left asm("r4");
 u8 *slot; register u32 actor asm("r2"); register u8 **itemsbase asm("r6"); register u32 v1 asm("r1");
 register u32 off asm("r3"); register s32 raw asm("r0"); register u32 zero asm("r5");
 u8 *selected;
 {register struct Player *p asm("r2"); register u32 idx asm("r2");idx=sub_080020F4();idx*=0x14C;p=(struct Player *)((u8 *)gUnk_03003CE0+idx);p->flags|=1;}
 sub_0800D0F4();sub_0802949C(arg,0);
 if(sub_0800CE30()) {raw=(s32)(state32DE4+0x80);v1=16;raw=*(u32 *)raw;}
 else {raw=(s32)state32DE4;v1=16;raw=*(u32 *)(raw+0x78);}
 raw &= v1;
 if(!raw) goto unavailable;
 if(sub_0800CE30()) selected=state32DE4+0x1C3;else {off=0x1B7;selected=state32DE4+off;}
 raw=*selected;asm("" : "+r"(raw));v1=raw>>2;raw=1;v1&=raw;
 if(v1) goto already;
 flag=1;
 if(sub_0800CE30()) selected=state32DE4+0x1C3;else {off=0x1B7;selected=state32DE4+off;}
 raw=*selected;asm("" : "+r"(raw));raw>>=1;raw&=flag;
 if(raw) goto stateOne;
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 task=sub_0805DF38(1,15,2,0,-1,0x140220);
 while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 if(sub_080020F4()) goto done;
 count=0;i=0;raw=(s32)items32DE4;flag=0x150;item=(struct Item32DE4 *)(raw+flag);
 do {if(load32DE4(&item->kind)==1 && item->id==0x29)count++;item++;i++;}while(i<=24);
 if(count<=0)goto done;
 sub_08028D98(arg,0,-3,3);sub_08028D98(arg,0,3,3);
 actor=arg;flag=3;if(actor>0x100000) {
 found=find32DE4(actor);
 if(found) *(u16 *)(found+0x42)=flag;
 } else if(arg) {actor=arg-1;if(actor<=4){register u8 **base asm("r1")=(u8 **)&gUnk_030056F4;raw=actor*0x2E0;base=(u8 **)((u8 *)*base+raw);sub_08019EB8(*(u16 *)((u8 *)base+2),3);}}
 else {raw=sub_080020F4()*0x14C;{register u8 *base asm("r1")=(u8 *)gUnk_03003CE0;raw+=(s32)base;v1=0x11E;raw+=v1;*(u16 *)raw=flag;}}
 sub_08068070((u32)sub_0805990C,1);
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 task=sub_0805DF38(1,15,2,0,-1,0x140221);
 while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 left=1;j=0;itemsbase=&items32DE4;zero=0;
 loopRemove:raw=(s32)*itemsbase;asm("" : "+r"(raw));slot=(u8 *)raw+j*16;
 if(*(u16 *)(slot+0x150)!=1 || *(u16 *)(slot+0x152)!=0x29 || (left--,*(u16 *)(slot+0x150)=zero,*(u16 *)(slot+0x152)=zero,left!=0)) {j++;if(j<=24)goto loopRemove;}
 goto done;
 stateOne:
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 task=sub_0805DF38(1,15,2,0,-1,0x140222);
 while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 goto done;
already:
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 task=sub_0805DF38(1,15,2,0,-1,0x140223);
 while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 goto done;
unavailable:
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 task=sub_0805DF38(1,15,2,0,-1,0x14021F);
 while(!sub_0805EEFC((void *)task)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
done:
 {register struct Player *p asm("r2");register u32 idx asm("r2");idx=sub_080020F4();idx*=0x14C;p=(struct Player *)((u8 *)gUnk_03003CE0+idx);p->flags &= ~1;}sub_0800D108();
}
extern u8 *state33198 asm("gUnk_03005CF4");
struct Cmd33198 { u16 kind, value; u8 data[12]; };
extern void emit33198(struct Cmd33198 *) asm("sub_0805AB20");
static inline u32 count33198(u32 n) { return n; }
static inline s32 shift33198(s32 v) { register s32 t asm("r0"); t = v; asm("" : "+r"(t)); return t >> 3; }
static inline s32 result33198(void) {
    register s32 r asm("r1");
    s32 v = sub_0805CFA0();
    r = 1;
    if (v < 0) r = 0;
    return r;
}
void sub_08033198(void) {
    struct Cmd33198 cmd;
    u8 unused[16];
    register u32 i asm("r4");
    register u32 one asm("r4");
    struct Player *p;
    register struct Player *start asm("r1");
    register u32 first asm("r0");
    register u32 last asm("r2");
    register u32 offset asm("r1");
    register u8 *base asm("r0");
    register u32 off asm("r1");
    register u32 v asm("r0");
    register u8 *field asm("r2");
    register u32 byte asm("r1");
    register struct Cmd33198 *c asm("r0");
    register u32 a asm("r1");
    register u32 b asm("r2");
    u32 dialog;
    first = sub_080020F4();
    offset = 0x14C;
    offset *= first;
    start = (struct Player *)((u8 *)gUnk_03003CE0 + offset);
    first = start->flags;
    one = 1;
    first |= one;
    start->flags = first;
    sub_0800D0F4();
    if (sub_080020F4() != 0) goto otherPlayer;
    if (sub_0800CE30()) { base = state33198; off = 0x1C3; }
    else { base = state33198; off = 0x1B7; }
    v = base[off];
    v = shift33198(v);
    if (v & one) goto already;
    while (sub_0805F184()) sub_080003F0();
    while (sub_0805EF90()) sub_080003F0();
    dialog = sub_0805DF38(1, 15, 2, 0, -1, 0x140224);
    while (!sub_0805EEFC((void *)dialog)) {
        if (sub_0800CDF8()) { sub_0805EFBC(); break; }
        sub_080003F0();
    }
    if (result33198() <= 0) goto rejected;
    if (sub_0800CE30()) goto modeB;
    if (!(gUnk_030027D0 & 0x20)) sub_08006D08(0x33);
    a = 1;
    b = 8;
    c = &cmd;
    c->kind = a;
    c->value = b;
    i = 0;
    do { cmd.data[i] = 0; i++; } while (i <= 11);
    i = 0;
    do { emit33198(&cmd); i++; } while (i < count33198(1));
    if (sub_0800CE30()) { base = state33198; off = 0x1C3; }
    else { base = state33198; off = 0x1B7; }
    field = base + off;
    byte = *field;
    v = 8;
    v |= byte;
    *field = v;
    while (sub_0805F184()) sub_080003F0();
    while (sub_0805EF90()) sub_080003F0();
    dialog = sub_0805DF38(1, 15, 2, 0, -1, 0x140225);
    while (!sub_0805EEFC((void *)dialog)) {
        if (sub_0800CDF8()) { sub_0805EFBC(); break; }
        sub_080003F0();
    }
    goto done;
modeB:
    if (!(gUnk_030027D0 & 0x20)) sub_08006D08(0x33);
    a = 1;
    b = 9;
    c = &cmd;
    c->kind = a;
    c->value = b;
    i = 0;
    do { cmd.data[i] = 0; i++; } while (i <= 11);
    i = 0;
    do { emit33198(&cmd); i++; } while (i < count33198(1));
    if (sub_0800CE30()) { base = state33198; off = 0x1C3; }
    else { base = state33198; off = 0x1B7; }
    field = base + off;
    byte = *field;
    v = 8;
    v |= byte;
    *field = v;
    while (sub_0805F184()) sub_080003F0();
    while (sub_0805EF90()) sub_080003F0();
    dialog = sub_0805DF38(1, 15, 2, 0, -1, 0x140226);
    while (!sub_0805EEFC((void *)dialog)) {
        if (sub_0800CDF8()) { sub_0805EFBC(); break; }
        sub_080003F0();
    }
    goto done;
rejected:
    while (sub_0805F184()) sub_080003F0();
    while (sub_0805EF90()) sub_080003F0();
    dialog = sub_0805DF38(1, 15, 2, 0, -1, 0x140227);
    while (!sub_0805EEFC((void *)dialog)) {
        if (sub_0800CDF8()) { sub_0805EFBC(); break; }
        sub_080003F0();
    }
    goto done;
already:
    while (sub_0805F184()) sub_080003F0();
    while (sub_0805EF90()) sub_080003F0();
    dialog = sub_0805DF38(1, 15, 2, 0, -1, 0x140228);
    while (!sub_0805EEFC((void *)dialog)) {
        if (sub_0800CDF8()) { sub_0805EFBC(); break; }
        sub_080003F0();
    }
    goto done;
otherPlayer:
    while (sub_0805F184()) sub_080003F0();
    while (sub_0805EF90()) sub_080003F0();
    dialog = sub_0805DF38(1, 15, 2, 0, -1, 0x140229);
    while (!sub_0805EEFC((void *)dialog)) {
        if (sub_0800CDF8()) { sub_0805EFBC(); break; }
        sub_080003F0();
    }
done:
    last = sub_080020F4();
    last *= 0x14C;
    p = (struct Player *)((u8 *)gUnk_03003CE0 + last);
    p->flags &= ~1;
    sub_0800D108();
}
extern void sub_08045764(void);

void sub_08033520(s32 arg0)
{
  s32 r4;
  struct Player *pl;
  long new_var2;
  s32 new_var;
  pl = &gUnk_03003CE0[sub_080020F4()];
  pl->flags |= 1;
  sub_0800D0F4();
  sub_0802949C(arg0, 0);
  while (sub_0805F184() != 0)
  {
    sub_080003F0();
  }

  r4 = sub_0805DF38(1, 0xF, 2, 0, -2, 0x001404EB);
  while (sub_0805EEFC(r4) == 0)
  {
    sub_080003F0();
  }

  if (sub_0805EF14(r4) != 0)
  {
    if (!(gUnk_030027D0 & 0x20))
    {
      sub_08006D08(0x32);
    }
    sub_08068070((u32) (&sub_08045764), 0);
  }
  while (sub_0805F184() != 0)
  {
    sub_080003F0();
  }

  r4 = (new_var = sub_0805DF38(1, 0xF, 2, 0, -2, 0x001404EC));
  while (sub_0805EEFC(r4) == 0)
  {
    sub_080003F0();
  }

  new_var2 = sub_0805EF14(r4);
  if (new_var2 != 0)
  {
    if (!(gUnk_030027D0 & 0x20))
    {
      sub_08006D08(0x32);
    }
    sub_08068070((u32) (&sub_08045764), 1);
  }
  sub_08029788(arg0);
  ;
  (&gUnk_03003CE0[sub_080020F4()])->flags &= ~1;
  sub_0800D108();
}
struct Cmd33650 { u16 kind,value;u8 data[12]; };
extern u8 *state33650 asm("gUnk_03005CF4");
extern void emit33650(struct Cmd33650 *) asm("sub_0805AB20");
static inline u32 count33650(u32 n){return n;}
static inline s32 result33650(void){register s32 r asm("r1");s32 v=sub_0805CFA0();r=1;if(v<0)r=0;return r;}
void sub_08033650(u32 arg0) {
 struct Cmd33650 cmd;u8 unused[16];
 register u32 arg asm("r4")=arg0;
 register u32 one asm("r5");
 register u32 i asm("r4");
 register u32 off asm("r1");
 register u8 *base asm("r0");
 register s32 raw asm("r0");
 register u32 a asm("r1");
 register u32 b asm("r2");
 register struct Cmd33650 *c asm("r0");
 u32 dialog;
 {register u32 idx asm("r1"); register u32 v asm("r0");register struct Player *p asm("r1");v=sub_080020F4();idx=0x14C;idx*=v;p=(struct Player *)((u8 *)gUnk_03003CE0+idx);v=p->flags;one=1;p->flags=v|one;}
 sub_0800D0F4();sub_0802949C(arg,0);
 arg=sub_080020F4();
 if(sub_0800CE30()){base=state33650;off=0x1C6;}else{base=state33650;off=0x1BA;}
 raw=base[off];asm("" : "+r"(raw));raw>>=1;raw&=one;
 if(raw)goto already;
 if(sub_0800CE30()){base=state33650;a=0x20000;raw=*(u32 *)(base+0x7C);}
 else{base=state33650;a=0x20000;raw=*(u32 *)(base+0x74);}
 raw&=a;if(!raw)goto unavailable;
 if(arg) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x140272);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 goto done;
 }
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14026D);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 if(!result33650())goto rejected;
 if(!(gUnk_030027D0&0x20))sub_08006D08(0x33);
 arg=sub_0800CE30();a=sub_080008C8();
 if(!arg)goto random;
 a=1;b=10;c=&cmd;c->kind=a;c->value=b;
 i=0;do{cmd.data[i]=0;i++;}while(i<=11);
 i=0;do{emit33650(&cmd);i++;}while(i<count33650(1));
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x140270);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 if(!sub_0800CE30())goto flagFalse;
 base=state33650;off=0x1C6;asm("" : "+r"(base));goto flagStore;
random:
 if(a&1)goto randomB;
 a=7;b=15;c=&cmd;c->kind=a;c->value=b;
 i=0;do{cmd.data[i]=0;i++;}while(i<=11);
 i=0;do{emit33650(&cmd);i++;}while(i<count33650(1));
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14026E);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 if(!sub_0800CE30())goto flagFalse;
 base=state33650;off=0x1C6;asm("" : "+r"(base));goto flagStore;
randomB:
 a=7;b=5;c=&cmd;c->kind=a;c->value=b;
 i=0;do{cmd.data[i]=0;i++;}while(i<=11);
 i=0;do{emit33650(&cmd);i++;}while(i<count33650(1));
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14026F);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 if(sub_0800CE30()){base=state33650;off=0x1C6;goto flagStore;}
 flagFalse:base=state33650;off=0x1BA;
 flagStore:
 {register u8 *p asm("r2")=base+off;register u32 byte asm("r1")=*p;raw=2;raw|=byte;*p=raw;}
 goto done;
rejected:
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x140271);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 goto done;
unavailable:
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14026C);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 if(sub_0800CE30()){raw=(s32)(state33650+0x80);a=0x20000;raw=*(u32 *)raw;}
 else{raw=(s32)state33650;a=0x20000;raw=*(u32 *)(raw+0x78);}
 raw&=a;if(raw)goto done;
 if(!(gUnk_030027D0&0x20))sub_08006D08(0x32);
 if(sub_0800CE30()){register u8 *p asm("r1")=state33650+0x80;b=0x20000;raw=*(u32 *)p;raw|=b;*(u32 *)p=raw;}
 else{register u8 *p asm("r2")=state33650;a=0x20000;raw=*(u32 *)(p+0x78);raw|=a;*(u32 *)(p+0x78)=raw;}
 goto done;
 already:
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x140273);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
done:
 {register struct Player *p asm("r2");register u32 idx asm("r2");idx=sub_080020F4();idx*=0x14C;p=(struct Player *)((u8 *)gUnk_03003CE0+idx);p->flags &= ~1;}sub_0800D108();
}
void sub_08033B3C(void)
{
  s32 r4;
  u8 *p;
  s32 idx;
  struct Player *new_var2[2];
  new_var2[0] = &gUnk_03003CE0[sub_080020F4()];
  new_var2[1] = new_var2[0];
  new_var2[1]->flags = new_var2[1]->flags | 1;
  sub_0800D0F4();
  if ((*((s32 *) (gUnk_030034E0 + 0x20))) > 0xC6)
  {
    while (sub_0805F184() != 0)
    {
      sub_080003F0();
    }

 do { while (sub_0805EF90() != 0) { sub_080003F0(); } r4 = sub_0805DF38(1, 0xF, 2, 0, -1, 0x001401A9); while (sub_0805EEFC(r4) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); } } while (0);
  }
  else
  {
    while (sub_0805F184() != 0)
    {
      sub_080003F0();
    }

    while (sub_0805EF90() != 0)
    {
      sub_080003F0();
    }

    r4 = sub_0805DF38(1, 0xF, 2, 0, -1, 0x001401A8);
    while (sub_0805EEFC(r4) == 0)
    {
      if (sub_0800CDF8() != 0)
      {
        sub_0805EFBC();
        break;
      }
      sub_080003F0();
    }

  }
  new_var2[1] = &gUnk_03003CE0[sub_080020F4()];
  new_var2[1]->flags = new_var2[1]->flags & (~1);
  sub_0800D108();
}
struct Cmd33C40 {u16 kind,value;u8 data[12];};
extern u8 *state33C40 asm("gUnk_03005CF4");
void sub_08033C40(u32 arg0){
 struct Cmd33C40 cmd;
 register u32 arg asm("r5")=arg0;
 register u32 field asm("r1");
 register u32 off asm("r2");
 register s32 raw asm("r0");
 register u8 *base asm("r0");
 register struct Cmd33C40 *c asm("r0");
 register u32 a asm("r1");register u32 b asm("r2");
 register u32 i asm("r1");
 register u8 *data asm("r4");
 u32 dialog;
 register u8 *selected asm("r0");register u32 value asm("r4");
 {register struct Player *p asm("r2");register u32 idx asm("r2");idx=sub_080020F4();idx*=0x14C;p=(struct Player *)((u8 *)gUnk_03003CE0+idx);p->flags|=1;}
 sub_0800D0F4();
 if(sub_0800CE30()){base=state33C40;field=0x1BF;selected=base+field;}else{off=0x1B3;selected=state33C40+off;}
 switch(*selected){case 0:goto case0;case 1:goto case1;case 2:goto case2;case 3:goto case3;case 4:goto case4;case 5:goto case5;default:goto done;}
 case0:
 if(sub_0800CE30())field=*(u32 *)(state33C40+0x7C);else field=*(u32 *)(state33C40+0x74);
if (field & 256) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x1401BF);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
}
else if (field & 128) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x1401BE);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
}
else if (field & 64) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x1401BD);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
}
else if (field & 32) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x1401BC);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
}
else if (field & 16) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x1401BB);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
}
else if (field & 8) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x1401BA);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
}
else if (field & 4) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x1401B9);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
}
else if (field & 2) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x1401B8);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
}
else if (field & 1) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x1401B7);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
}
else {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x1401B6);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
}
goto done;
case1:
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x1401C0);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 value=2;
 if(sub_0800CE30()){base=state33C40;field=0x1BF;selected=base+field;}else{off=0x1B3;selected=state33C40+off;}
 *selected=value;
 value=3;
 if(sub_0800CE30()){base=state33C40;field=0x1BE;selected=base+field;*selected=value;}
 else{base=state33C40;off=0x1B2;selected=base+off;*selected=value;}
 goto done;
 case2:
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x1401C1);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
goto done;
case3:
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x1401C2);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 sub_0802939C(arg,11);sub_080290E4(arg,0);sub_08028AAC(arg,0x110,0x88,0x3C);
 {register u8 *p asm("r1");register u32 n asm("r2");raw=(s32)state33C40;off=0x7A4;p=(u8 *)raw+off;n=0;
 do{if(*(u32 *)p==arg)goto found;n++;p+=0x70;}while(n<=14);sub_080003F0();p=0;
 found:if(p)*(u16 *)(p+0x36)=4;}
 {register u32 value asm("r4")=4;
 if(sub_0800CE30()){base=state33C40;field=0x1BF;selected=base+field;}else{off=0x1B3;selected=state33C40+off;}
 *selected=value;}
 a=sub_080020F4();asm("" : "+r"(a));if(a)goto done;
 if(!sub_0800CE30())goto modeB;
 a=2;b=55;c=&cmd;c->kind=a;c->value=b;
 i=0;
 data=cmd.data;{register u8 *p asm("r3")=data; b=0;do{p[i]=b;i++;}while(i<=11);}
 while(!sub_08067B9C(0x2000,0x4800,&cmd))sub_080003F0();
 a=3;b=44;c=&cmd;c->kind=a;c->value=b;
 i=0;
 {register u8 *p asm("r2")=data;register u32 z asm("r3")=0;do{p[i]=z;i++;}while(i<=11);}
 while(!sub_08067B9C(0x3000,0x5800,&cmd))sub_080003F0();
 a=4;b=39;c=&cmd;c->kind=a;c->value=b;
 i=0;
 {register u8 *p asm("r2")=data;register u32 z asm("r3")=0;do{p[i]=z;i++;}while(i<=11);}
 while(!sub_08067B9C(0x4000,0x4800,&cmd))sub_080003F0();
goto done;
modeB:
 a=2;b=48;c=&cmd;c->kind=a;c->value=b;
 i=0;
 data=cmd.data;{register u8 *p asm("r3")=data; b=0;do{p[i]=b;i++;}while(i<=11);}
 while(!sub_08067B9C(0x2000,0x4800,&cmd))sub_080003F0();
 a=3;b=32;c=&cmd;c->kind=a;c->value=b;
 i=0;
 {register u8 *p asm("r2")=data;register u32 z asm("r3")=0;do{p[i]=z;i++;}while(i<=11);}
 while(!sub_08067B9C(0x3000,0x5800,&cmd))sub_080003F0();
 a=4;b=27;c=&cmd;c->kind=a;c->value=b;
 i=0;
 {register u8 *p asm("r2")=data;register u32 z asm("r3")=0;do{p[i]=z;i++;}while(i<=11);}
 while(!sub_08067B9C(0x4000,0x4800,&cmd))sub_080003F0();
goto done;
case4:
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x1401C3);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
goto done;
case5:
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x1401C5);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
done:
 {register struct Player *p asm("r2");register u32 idx asm("r2");idx=sub_080020F4();idx*=0x14C;p=(struct Player *)((u8 *)gUnk_03003CE0+idx);p->flags &= ~1;}sub_0800D108();
}
#ifdef NONMATCHING
extern void sub_08029174(s32,s32);
extern void sub_0802926C(s32,s32);
extern void sub_0802939C(s32,s32);
extern void sub_080376CC(void);
extern u8 *t034State34488 asm("gUnk_03005CF4");
static inline u8 *t034Find34488(u32 key) {
 u8 *p=t034State34488+0x7A4;
 u32 i;
 for(i=0;i<15;i++,p+=0x70) if(*(u32 *)p==key) return p;
 sub_080003F0(); return 0;
}
static inline void t034Move34488(s32 a,s32 b,s32 c,s32 d) { sub_08028D98(a,b,c,d); }
void sub_08034488(s32 arg0) {
    u8 *var_r0_2;
    u8 *var_r1;
    u8 *var_r1_2;
    u8 *var_r1_3;
    u8 *var_r1_4;
    u8 *var_r2_2;
    s32 temp_r0;

    s32 temp_r8;
    s32 var_r7;
    u16 ticks;
    s32 shiftByte;
    s32 minus3;
    void (*callback)(void);
    u32 var_r2;
    u32 var_r2_3;
    u32 var_r2_4;
    u32 var_r2_5;
    u8 *var_r0;

    if (sub_0800CE30() != 0) {
        var_r0 = t034State34488 + 0x1C5;
    } else {
        var_r0 = t034State34488 + 0x1B9;
    }
    var_r7 = *var_r0;
    var_r7 >>= 5;
    var_r7 &= 1;
    if (var_r7 == 0) goto loop_73;
    temp_r8 = sub_080289C0(6, 0x138, 0xFA);
    var_r2_2 = t034Find34488(temp_r8);
    if (var_r2_2 != NULL) {
        *(u16 *)(var_r2_2 + 0x18) = 8;
        *(u16 *)(var_r2_2 + 0x1A) = 4;
        *(u32 *)(var_r2_2 + 0x3C) = (s32) (*(u32 *)(var_r2_2 + 0x3C) | 0x10);
    }
    callback = sub_080376CC;
    var_r0_2 = t034Find34488(temp_r8);
    if (var_r0_2 != NULL) {
        *(u32 *)(var_r0_2 + 0x44) = (u32)callback;
    }
    sub_0802939C(temp_r8, 0xB);
    minus3 = -3;
loop_20:
    sub_0802939C(arg0, 0);
    ticks = 0x190;
    goto test_loop_22;
loop_22:
    ticks -= 1;
    if (ticks == 0) goto end_loop_22;
test_loop_22:
    sub_080003F0();
    if (sub_080021A8() == 0) goto loop_22;
end_loop_22:;
    sub_0802939C(arg0, 1);
    ticks = 0x190;
    goto test_loop_25;
loop_25:
    ticks -= 1;
    if (ticks == 0) goto end_loop_25;
test_loop_25:
    sub_080003F0();
    if (sub_080021A8() == 0) goto loop_25;
end_loop_25:;
    sub_0802939C(arg0, 8);
    sub_08028AAC(arg0, 0xF3, 0xE9, 0x3C);
    sub_0802939C(arg0, 2);
    ticks = 0x1E;
    goto test_loop_28;
loop_28:
    ticks -= 1;
    if (ticks == 0) goto end_loop_28;
test_loop_28:
    sub_080003F0();
    if (sub_080021A8() == 0) goto loop_28;
end_loop_28:;
    sub_0802939C(arg0, 3);
    ticks = 0x78;
    goto test_loop_31;
loop_31:
    ticks -= 1;
    if (ticks == 0) goto end_loop_31;
test_loop_31:
    sub_080003F0();
    if (sub_080021A8() == 0) goto loop_31;
end_loop_31:;
    sub_0802939C(arg0, 2);
    ticks = 0x1E;
    goto test_loop_34;
loop_34:
    ticks -= 1;
    if (ticks == 0) goto end_loop_34;
test_loop_34:
    sub_080003F0();
    if (sub_080021A8() == 0) goto loop_34;
end_loop_34:;
    sub_0802939C(arg0, 7);
    sub_08028AAC(arg0, 0xDA, 0xE9, 0x3C);
    sub_0802939C(arg0, 0);
    ticks = 0xC8;
    goto test_loop_37;
loop_37:
    ticks -= 1;
    if (ticks == 0) goto end_loop_37;
test_loop_37:
    sub_080003F0();
    if (sub_080021A8() == 0) goto loop_37;
end_loop_37:;
    sub_0802939C(arg0, 4);
    ticks = 0x1E;
    goto test_loop_40;
loop_40:
    ticks -= 1;
    if (ticks == 0) goto end_loop_40;
test_loop_40:
    sub_080003F0();
    if (sub_080021A8() == 0) goto loop_40;
end_loop_40:;
    sub_0802939C(arg0, 0);
    ticks = 0x50;
    goto test_loop_43;
loop_43:
    ticks -= 1;
    if (ticks == 0) goto end_loop_43;
test_loop_43:
    sub_080003F0();
    if (sub_080021A8() == 0) goto loop_43;
end_loop_43:;
    sub_0802939C(arg0, 4);
    ticks = 0x64;
    goto test_loop_46;
loop_46:
    ticks -= 1;
    if (ticks == 0) goto end_loop_46;
test_loop_46:
    sub_080003F0();
    if (sub_080021A8() == 0) goto loop_46;
end_loop_46:;
    sub_08029174(arg0, 5);
    ticks = 0xD;
    goto test_loop_49;
loop_49:
    ticks -= 1;
    if (ticks == 0) goto end_loop_49;
test_loop_49:
    sub_080003F0();
    if (sub_080021A8() == 0) goto loop_49;
end_loop_49:;
    if (3 & var_r7) {
        temp_r0 = sub_080289C0(0x6000C, 0xE2, 0xE9);
        sub_08028AAC(temp_r0, 0x144, 0xF0, 0x32);
        var_r1_3 = t034Find34488(temp_r0);
        if (var_r1_3 != NULL) {
            *(u16 *)(var_r1_3 + 0x36) = 4;
        }
        sub_0802926C(temp_r8, 0xA);
        ticks = 0x1E;
    goto test_loop_59;
loop_59:
    ticks -= 1;
    if (ticks == 0) goto end_loop_59;
test_loop_59:
    sub_080003F0();
    if (sub_080021A8() == 0) goto loop_59;
end_loop_59:;
        sub_0802939C(temp_r8, 0xB);
    } else {
        temp_r0 = sub_080289C0(0x6000C, 0xE2, 0xE9);
        sub_08028AAC(temp_r0, 0x15E, 0xF0, 0x3C);
        if (!(gUnk_030027D0 & 0x20)) {
            sub_08006D08(0x35U);
        }
        ticks = 2;
    goto test_loop_65;
loop_65:
    ticks -= 1;
    if (ticks == 0) goto end_loop_65;
test_loop_65:
    sub_080003F0();
    if (sub_080021A8() == 0) goto loop_65;
end_loop_65:;
        t034Move34488(temp_r0, minus3, -4, 2);
        t034Move34488(temp_r0, minus3, -2, 2);
        t034Move34488(temp_r0, minus3, -1, 2);
        t034Move34488(temp_r0, minus3, 0, 2);
        t034Move34488(temp_r0, minus3, 1, 2);
        t034Move34488(temp_r0, minus3, 2, 2);
        t034Move34488(temp_r0, minus3, 4, 2);
        var_r1_4 = t034Find34488(temp_r0);
        if (var_r1_4 != NULL) {
            *(u16 *)(var_r1_4 + 0x36) = 4;
        }
    }
    var_r7 += 1;
    goto loop_20;
loop_73:
        sub_0802939C(arg0, 0);
        ticks = 0x190;
    goto test_loop_75;
loop_75:
    ticks -= 1;
    if (ticks == 0) goto end_loop_75;
test_loop_75:
    sub_080003F0();
    if (sub_080021A8() == 0) goto loop_75;
end_loop_75:;
        sub_0802939C(arg0, 1);
        ticks = 0x190;
    goto test_loop_78;
loop_78:
    ticks -= 1;
    if (ticks == 0) goto end_loop_78;
test_loop_78:
    sub_080003F0();
    if (sub_080021A8() == 0) goto loop_78;
end_loop_78:;
        sub_0802939C(arg0, 8);
        sub_08028AAC(arg0, 0xF3, 0xE9, 0x3C);
        sub_0802939C(arg0, 2);
        ticks = 0x1E;
    goto test_loop_81;
loop_81:
    ticks -= 1;
    if (ticks == 0) goto end_loop_81;
test_loop_81:
    sub_080003F0();
    if (sub_080021A8() == 0) goto loop_81;
end_loop_81:;
        sub_0802939C(arg0, 3);
        ticks = 0x78;
    goto test_loop_84;
loop_84:
    ticks -= 1;
    if (ticks == 0) goto end_loop_84;
test_loop_84:
    sub_080003F0();
    if (sub_080021A8() == 0) goto loop_84;
end_loop_84:;
        sub_0802939C(arg0, 2);
        ticks = 0x1E;
    goto test_loop_87;
loop_87:
    ticks -= 1;
    if (ticks == 0) goto end_loop_87;
test_loop_87:
    sub_080003F0();
    if (sub_080021A8() == 0) goto loop_87;
end_loop_87:;
        sub_0802939C(arg0, 7);
        sub_08028AAC(arg0, 0xDA, 0xE9, 0x3C);
        goto loop_73;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08034488);
#endif
#ifdef NONMATCHING
extern s32 t034Range(s32 *, s32 *, u16 *, u16 *) asm("sub_08021FE0");
extern void sub_080290E4(s32,s32);
extern u8 *t034State asm("gUnk_03005CF4");
struct T034Pos { s32 x,y; };
static inline void t034Move34900(s32 a,s32 b,s32 c,s32 d) { sub_08028D98(a,b,c,d); }
void sub_08034900(void) {
    struct T034Pos pos;
    s32 sp10;
    u32 bits;
    struct Player *temp_r5;
    u32 temp_r4;
    u8 *var_r0;
    struct Player *temp_r2;
    struct Player *temp_r2_2;

loop_1:
    sp10 = 0;
    pos.x = 0x10000;
    pos.y = 0x1C000;
    bits = 0x100020;
    temp_r5 = &gUnk_03003CE0[sub_080020F4()];
goto test3;
loop_3:
    sub_080003F0();
test3:
    if (t034Range((s32 *)((u8 *)temp_r5 + 0x8C), &pos.x, (u16 *)&sp10, (u16 *)&bits) == 0) {
        goto loop_3;
    }
    if (sub_0800CE30() != 0) {
        var_r0 = t034State + 0x1BF;
    } else {
        var_r0 = t034State + 0x1B3;
    }
    if (*var_r0 != 2) {
        temp_r2 = &gUnk_03003CE0[sub_080020F4()];
        temp_r2->flags = (s32) (temp_r2->flags | 1);
        sub_0800D0F4();
goto test10;
loop_10:
        sub_080003F0();
test10:
        if (sub_0805F184() != 0) {
            goto loop_10;
        }
goto test13;
loop_13:
        sub_080003F0();
test13:
        if (sub_0805EF90() != 0) {
            goto loop_13;
        }
        temp_r4 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401C7U);
goto test16;
loop_16:
        sub_080003F0();
test16:
        if (sub_0805EEFC((void *) temp_r4) == 0) {
            if (sub_0800CDF8() != 0) {
                sub_0805EFBC();
            } else {
                goto loop_16;
            }
        }
        sub_080290E4(0, 4);
        t034Move34900(0, 0, -0xA, 4);
        temp_r2_2 = &gUnk_03003CE0[sub_080020F4()];
        temp_r2_2->flags = (s32) (temp_r2_2->flags & ~1);
        sub_0800D108();
        goto loop_1;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08034900);
#endif
extern u8 *t034State34A5C asm("gUnk_03005CF4");
void sub_08034A5C(void) {
    s32 var_r1;
    u8 *state;
    s32 byteValue;
    s32 flag;
    s32 var_r4;
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
    struct Player *temp_r2;
    struct Player *temp_r2_2;

    temp_r2 = &gUnk_03003CE0[sub_080020F4()];
    temp_r2->flags = (s32) (temp_r2->flags | 1);
    sub_0800D0F4();
    if (sub_0800CE30() != 0) {
        var_r4 = *(s32 *)(t034State34A5C + 0x7C);
    } else {
        var_r4 = *(s32 *)(t034State34A5C + 0x74);
    }
    if (sub_0800CE30() != 0) {
        state = t034State34A5C;
        var_r1 = 0x1C6;
    } else {
        state = t034State34A5C;
        var_r1 = 0x1BA;
    }
    byteValue = *(state + var_r1);
    var_r1 = byteValue >> 2;
    var_r1 &= 1;
    if (var_r1) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401DEU);
        while (sub_0805EEFC((void *)temp_r4) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (0x200 & var_r4) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_2 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401DDU);
        while (sub_0805EEFC((void *)temp_r4_2) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (0x100 & var_r4) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_3 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401DCU);
        while (sub_0805EEFC((void *)temp_r4_3) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (0x80 & var_r4) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_4 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401DBU);
        while (sub_0805EEFC((void *)temp_r4_4) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (0x40 & var_r4) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_5 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401DAU);
        while (sub_0805EEFC((void *)temp_r4_5) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (0x20 & var_r4) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_6 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401D9U);
        while (sub_0805EEFC((void *)temp_r4_6) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (0x10 & var_r4) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_7 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401D8U);
        while (sub_0805EEFC((void *)temp_r4_7) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (8 & var_r4) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_8 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401D7U);
        while (sub_0805EEFC((void *)temp_r4_8) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (4 & var_r4) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_9 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401D6U);
        while (sub_0805EEFC((void *)temp_r4_9) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (2 & var_r4) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_10 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401D5U);
        while (sub_0805EEFC((void *)temp_r4_10) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (var_r4 & 1) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_11 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401D4U);
        while (sub_0805EEFC((void *)temp_r4_11) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_12 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401D3U);
        while (sub_0805EEFC((void *)temp_r4_12) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    }
    temp_r2_2 = &gUnk_03003CE0[sub_080020F4()];
    temp_r2_2->flags = (s32) (temp_r2_2->flags & ~1);
    sub_0800D108();
}

extern u8 *t034State34F64 asm("gUnk_03005CF4");
void sub_08034F64(void) {
    s32 var_r1;
    u8 *state;
    s32 byteValue;
    s32 flag;
    s32 var_r4;
    u32 temp_r4;
    u32 temp_r4_10;
    u32 temp_r4_11;
    u32 temp_r4_2;
    u32 temp_r4_3;
    u32 temp_r4_4;
    u32 temp_r4_5;
    u32 temp_r4_6;
    u32 temp_r4_7;
    u32 temp_r4_8;
    u32 temp_r4_9;
    struct Player *temp_r2;
    struct Player *temp_r2_2;

    temp_r2 = &gUnk_03003CE0[sub_080020F4()];
    temp_r2->flags = (s32) (temp_r2->flags | 1);
    sub_0800D0F4();
    if (sub_0800CE30() != 0) {
        var_r4 = *(s32 *)(t034State34F64 + 0x7C);
    } else {
        var_r4 = *(s32 *)(t034State34F64 + 0x74);
    }
    if (sub_0800CE30() != 0) {
        state = t034State34F64;
        var_r1 = 0x1C6;
    } else {
        state = t034State34F64;
        var_r1 = 0x1BA;
    }
    byteValue = *(state + var_r1);
    var_r1 = byteValue >> 2;
    var_r1 &= 1;
    if (var_r1) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401D2U);
        while (sub_0805EEFC((void *)temp_r4) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (0x200 & var_r4) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_2 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401D1U);
        while (sub_0805EEFC((void *)temp_r4_2) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (0x100 & var_r4) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_3 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401D0U);
        while (sub_0805EEFC((void *)temp_r4_3) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (0x80 & var_r4) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_4 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401CFU);
        while (sub_0805EEFC((void *)temp_r4_4) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (0x40 & var_r4) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_5 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401CEU);
        while (sub_0805EEFC((void *)temp_r4_5) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (0x20 & var_r4) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_6 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401CDU);
        while (sub_0805EEFC((void *)temp_r4_6) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (0x10 & var_r4) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_7 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401CCU);
        while (sub_0805EEFC((void *)temp_r4_7) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (8 & var_r4) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_8 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401CBU);
        while (sub_0805EEFC((void *)temp_r4_8) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (4 & var_r4) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_9 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401CAU);
        while (sub_0805EEFC((void *)temp_r4_9) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (var_r4 & 2) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_10 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401C9U);
        while (sub_0805EEFC((void *)temp_r4_10) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_11 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401C8U);
        while (sub_0805EEFC((void *)temp_r4_11) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    }
    temp_r2_2 = &gUnk_03003CE0[sub_080020F4()];
    temp_r2_2->flags = (s32) (temp_r2_2->flags & ~1);
    sub_0800D108();
}

extern u8 *t034State3540C asm("gUnk_03005CF4");
void sub_0803540C(void) {
    s32 var_r1;
    u8 *state;
    s32 byteValue;
    s32 flag;
    s32 var_r4;
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
    struct Player *temp_r2;
    struct Player *temp_r2_2;

    temp_r2 = &gUnk_03003CE0[sub_080020F4()];
    temp_r2->flags = (s32) (temp_r2->flags | 1);
    sub_0800D0F4();
    if (sub_0800CE30() != 0) {
        var_r4 = *(s32 *)(t034State3540C + 0x7C);
    } else {
        var_r4 = *(s32 *)(t034State3540C + 0x74);
    }
    if (sub_0800CE30() != 0) {
        state = t034State3540C;
        var_r1 = 0x1C6;
    } else {
        state = t034State3540C;
        var_r1 = 0x1BA;
    }
    byteValue = *(state + var_r1);
    var_r1 = byteValue >> 2;
    var_r1 &= 1;
    if (var_r1) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401B5U);
        while (sub_0805EEFC((void *)temp_r4) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (0x200 & var_r4) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_2 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401B4U);
        while (sub_0805EEFC((void *)temp_r4_2) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (0x100 & var_r4) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_3 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401B3U);
        while (sub_0805EEFC((void *)temp_r4_3) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (0x80 & var_r4) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_4 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401B2U);
        while (sub_0805EEFC((void *)temp_r4_4) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (0x40 & var_r4) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_5 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401B1U);
        while (sub_0805EEFC((void *)temp_r4_5) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (0x20 & var_r4) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_6 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401B0U);
        while (sub_0805EEFC((void *)temp_r4_6) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (0x10 & var_r4) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_7 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401AFU);
        while (sub_0805EEFC((void *)temp_r4_7) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (8 & var_r4) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_8 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401AEU);
        while (sub_0805EEFC((void *)temp_r4_8) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (4 & var_r4) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_9 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401ADU);
        while (sub_0805EEFC((void *)temp_r4_9) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (2 & var_r4) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_10 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401ACU);
        while (sub_0805EEFC((void *)temp_r4_10) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (var_r4 & 1) {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_11 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401ABU);
        while (sub_0805EEFC((void *)temp_r4_11) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else {
        while (sub_0805F184() != 0) { sub_080003F0(); }
        while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_12 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401AAU);
        while (sub_0805EEFC((void *)temp_r4_12) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    }
    temp_r2_2 = &gUnk_03003CE0[sub_080020F4()];
    temp_r2_2->flags = (s32) (temp_r2_2->flags & ~1);
    sub_0800D108();
}

INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08035914);
void sub_080359E8(s32 arg0) {
    u16 count;
start:
    sub_0802939C(arg0, 0);
    count = 0xF0;
    goto wait1;
dec1:
    count--;
    if (count == 0) goto stage2;
wait1:
    sub_080003F0();
    if (sub_080021A8() == 0) goto dec1;
stage2:
    sub_0802926C(arg0, 1);
    sub_0802926C(arg0, 1);
    sub_0802926C(arg0, 1);
    count = 0x64;
    goto wait2;
dec2:
    count--;
    if (count == 0) goto stage3;
wait2:
    sub_080003F0();
    if (sub_080021A8() == 0) goto dec2;
stage3:
    sub_08029174(arg0, 2);
    count = 0xC8;
    goto wait3;
dec3:
    count--;
    if (count == 0) goto stage4;
wait3:
    sub_080003F0();
    if (sub_080021A8() == 0) goto dec3;
stage4:
    sub_08029174(arg0, 3);
    count = 0xB4;
    goto wait4;
dec4:
    count--;
    if (count == 0) goto start;
    goto wait4;
wait4:
    sub_080003F0();
    if (sub_080021A8() == 0) goto dec4;
    goto start;
}
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08035A88);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08035B18);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_080368F4);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_080376CC);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08037B04);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08037DFC);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_080384D4);
extern u8 *state3898C asm("gUnk_03005CF4");
struct Cmd3898C { u16 kind, value; u8 data[12]; };
extern void emit3898C(struct Cmd3898C *) asm("sub_0805AB20");
extern void cb3898C(void) asm("sub_0805990C");
static inline u32 count3898C(u32 n) { return n; }
static inline s32 shift3898C(s32 v, u32 n) { register s32 t asm("r0"); t=v; asm("" : "+r"(t)); return t >> n; }
void sub_0803898C(s32 arg) {
    struct Cmd3898C cmd;
    u8 unused[16];
    register u32 one asm("r4");
    register s32 flag6 asm("r5");
    register s32 flag5 asm("r4");
    register u8 *base asm("r0");
    register u32 off asm("r1");
    register u32 offset asm("r1");
    register struct Player *start asm("r1");
    register u32 first asm("r0");
    register s32 player asm("r1");
    register s32 ok asm("r1");
    register u32 i asm("r4");
    register u32 a asm("r1");
    register u32 b asm("r2");
    register struct Cmd3898C *c asm("r0");
    register u32 last asm("r2");
    struct Player *p;
    u32 dialog;
    first=sub_080020F4(); offset=0x14C; offset*=first;
    start=(struct Player *)((u8 *)gUnk_03003CE0+offset);
    first=start->flags; one=1; first|=one; start->flags=first;
    sub_0800D0F4(); sub_0802949C(arg,0);
    if(sub_0800CE30()) { base=state3898C; off=0x1C3; } else { base=state3898C; off=0x1B7; }
    flag6=shift3898C(base[off],6); flag6 &= one;
    if(sub_0800CE30()) { base=state3898C; off=0x1C3; } else { base=state3898C; off=0x1B7; }
    flag5=shift3898C(base[off],5); flag5 &= 1;
    player=sub_080020F4();
    if(player!=0 && flag5!=0) goto already;
    if(flag6==0) goto offerCheck;
already:
    while(sub_0805F184()) sub_080003F0();
    while(sub_0805EF90()) sub_080003F0();
    dialog=sub_0805DF38(1,15,2,0,-1,0x14027E);
    while(!sub_0805EEFC((void *)dialog)) {
        if(sub_0800CDF8()) { sub_0805EFBC(); break; }
        sub_080003F0();
    }
    goto done;
offerCheck:
    if(flag5==0) goto other;
    if(player!=0) goto other;
    while(sub_0805F184()) sub_080003F0();
    while(sub_0805EF90()) sub_080003F0();
    dialog=sub_0805DF38(1,15,2,0,-1,0x14027F);
    while(!sub_0805EEFC((void *)dialog)) {
        if(sub_0800CDF8()) { sub_0805EFBC(); break; }
        sub_080003F0();
    }
    { s32 result=sub_0805CFA0(); ok=1; if(result<0) ok=0; }
    if(ok) goto accepted;
    while(sub_0805F184()) sub_080003F0();
    while(sub_0805EF90()) sub_080003F0();
    dialog=sub_0805DF38(1,15,2,0,-1,0x140282);
    while(!sub_0805EEFC((void *)dialog)) {
        if(sub_0800CDF8()) { sub_0805EFBC(); break; }
        sub_080003F0();
    }
    goto done;
accepted:
    flag6=sub_0800CE30(); asm("" : "+r"(flag6));
    if(flag6!=0) goto modeB;
    if(!(gUnk_030027D0 & 0x20)) sub_08006D08(0x33);
    a=1; b=21; c=&cmd; c->kind=a; c->value=b;
    i=0; do { cmd.data[i]=0; i++; } while(i<=11);
    i=0; do { emit3898C(&cmd); i++; } while(i<count3898C(1));
    sub_08068070((u32)cb3898C,6);
    while(sub_0805F184()) sub_080003F0();
    while(sub_0805EF90()) sub_080003F0();
    dialog=sub_0805DF38(1,15,2,0,-1,0x140280);
    while(!sub_0805EEFC((void *)dialog)) {
        if(sub_0800CDF8()) { sub_0805EFBC(); break; }
        sub_080003F0();
    }
    goto done;
modeB:
    if(!(gUnk_030027D0 & 0x20)) sub_08006D08(0x33);
    a=1; b=19; c=&cmd; c->kind=a; c->value=b;
    i=0; do { cmd.data[i]=0; i++; } while(i<=11);
    i=0; do { emit3898C(&cmd); i++; } while(i<count3898C(1));
    sub_08068070((u32)cb3898C,6);
    while(sub_0805F184()) sub_080003F0();
    while(sub_0805EF90()) sub_080003F0();
    dialog=sub_0805DF38(1,15,2,0,-1,0x140281);
    while(!sub_0805EEFC((void *)dialog)) {
        if(sub_0800CDF8()) { sub_0805EFBC(); break; }
        sub_080003F0();
    }
    goto done;
other:
    while(sub_0805F184()) sub_080003F0();
    while(sub_0805EF90()) sub_080003F0();
    dialog=sub_0805DF38(1,15,2,0,-1,0x14027D);
    while(!sub_0805EEFC((void *)dialog)) {
        if(sub_0800CDF8()) { sub_0805EFBC(); break; }
        sub_080003F0();
    }
done:
    sub_08029788(arg);
    last=sub_080020F4(); last*=0x14C;
    p=(struct Player *)((u8 *)gUnk_03003CE0+last); p->flags &= ~1;
    sub_0800D108();
}
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08038D18);
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_080392B4);
extern u8 *state399E4 asm("gUnk_03005CF4");
void sub_080399E4(u32 arg0) {
 register u32 arg asm("r5")=arg0;
 register u32 field asm("r4");
 register u8 *base asm("r0");
 register u32 off asm("r1");
 register s32 flag asm("r1");
 u32 dialog;
 {register struct Player *p asm("r2");register u32 idx asm("r2");idx=sub_080020F4();idx*=0x14C;p=(struct Player *)((u8 *)gUnk_03003CE0+idx);p->flags |= 1;}
 sub_0800D0F4();sub_0802949C(arg,0);
 if(sub_0800CE30()) field=*(u32 *)(state399E4+0x7C);
 else field=*(u32 *)(state399E4+0x74);
 if(sub_0800CE30()){base=state399E4;off=0x1C6;}else{base=state399E4;off=0x1BA;}
 {register s32 v asm("r0");v=base[off];asm("" : "+r"(v));flag=v>>2;} flag &= 1;
 if(flag) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14017E);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 else if (field & 512) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14017D);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 else if (field & 256) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14017C);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 else if (field & 128) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14017B);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 else if (field & 64) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14017A);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 else if (field & 32) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x140179);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 else if (field & 16) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x140178);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 else if (field & 8) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x140177);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 else if (field & 4) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x140176);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 else if (field & 2) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x140175);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 else if ((field &= 1)) {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x140174);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 else {
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x140173);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
 sub_08029788(arg);
 {register struct Player *p asm("r2");register u32 idx asm("r2");idx=sub_080020F4();idx*=0x14C;p=(struct Player *)((u8 *)gUnk_03003CE0+idx);p->flags &= ~1;}
 sub_0800D108();
}
INCLUDE_ASM("asm/nonmatchings/code_0802FEA0", sub_08039F00);
void sub_0803A460(s32 arg0) {
    register u32 offset asm("r2");
    u8 *p;
    u32 flags;
    u32 msg;
    offset=sub_080020F4();offset*=0x14C;
    p=(u8 *)gUnk_03003CE0+offset;
    *(u32 *)(p+0x30)|=1;
    sub_0800D0F4();
    sub_0802949C(arg0,0);
    if(sub_0800CE30()) flags=*(u32 *)((u8 *)gUnk_03005CF4+0x7C);
    else flags=*(u32 *)((u8 *)gUnk_03005CF4+0x74);
    if(flags & 0x200) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x14013A);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 256) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140139);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 128) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140138);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 64) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140137);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 32) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140136);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 16) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140135);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 8) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140134);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 4) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140133);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 2) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140132);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 1) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140131);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140130);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    }
    offset=sub_080020F4();offset*=0x14C;
    p=(u8 *)gUnk_03003CE0+offset;
    *(u32 *)(p+0x30)&=~1;
    sub_0800D108();
}
void sub_0803A8F0(void) {
    register u32 offset asm("r2");
    u8 *p;
    u32 flags;
    u32 msg;
    offset=sub_080020F4();offset*=0x14C;
    p=(u8 *)gUnk_03003CE0+offset;
    *(u32 *)(p+0x30)|=1;
    sub_0800D0F4();
    if(sub_0800CE30()) flags=*(u32 *)((u8 *)gUnk_03005CF4+0x7C);
    else flags=*(u32 *)((u8 *)gUnk_03005CF4+0x74);
    if(flags & 0x200) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x14012F);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 256) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x14012E);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 128) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x14012D);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 64) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x14012C);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 32) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x14012B);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 16) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x14012A);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 8) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140129);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 4) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140128);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 2) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140127);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 1) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140126);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140125);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    }
    offset=sub_080020F4();offset*=0x14C;
    p=(u8 *)gUnk_03003CE0+offset;
    *(u32 *)(p+0x30)&=~1;
    sub_0800D108();
}
void sub_0803AD74(void) {
    u8 *p;
    u32 msg;
    register u32 offset asm("r2");
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (u8 *)gUnk_03003CE0 + offset;
    *(u32 *)(p + 0x30) |= 1;
    sub_0800D0F4();
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    msg = sub_0805DF38(1, 15, 2, 0, -1, 0x140122);
    while (sub_0805EEFC((void *)msg) == 0) {
        if (sub_0800CDF8() != 0) {
            sub_0805EFBC();
            break;
        }
        sub_080003F0();
    }
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    msg = sub_0805DF38(1, 15, 2, 0, -1, 0x140123);
    while (sub_0805EEFC((void *)msg) == 0) {
        if (sub_0800CDF8() != 0) {
            sub_0805EFBC();
            break;
        }
        sub_080003F0();
    }
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (u8 *)gUnk_03003CE0 + offset;
    *(u32 *)(p + 0x30) &= ~1;
    sub_0800D108();
}
static inline u32 t38_getAE6C(u32 mask) {
    register u8 *base asm("r0");
    register u32 bits asm("r0");
    register u32 m asm("r1");
    if (sub_0800CE30()) {base=(u8 *)gUnk_03005CF4 + 0x80; m=mask; bits=*(u32 *)base;}
    else {base=(u8 *)gUnk_03005CF4; m=mask; bits=*(u32 *)(base+0x78);}
    return bits & m;
}
static inline u8 *t38_findAE6C(u32 arg) {
    register u32 key asm("r2")=arg;
    u8 *p=(u8 *)gUnk_03005CF4+0x7A4;
    u32 i;
    for(i=0;i<15;i++,p+=0x70) if(*(u32 *)p==key) return p;
    sub_080003F0(); return 0;
}
static inline void t38_setAE6C(u32 arg) {
    register u32 value asm("r4");
    register u32 key asm("r2")=arg;
    register u8 *p asm("r0");
    u32 idx;
    value=3;
    if(arg>0x100000) {p=t38_findAE6C(key);if(p) *(u16 *)(p+0x42)=value;}
    else if(arg!=0) {
        register u8 **address asm("r1");
        register u8 *entry asm("r1");
        register u32 off asm("r0");
        idx=arg-1;
        if(idx<5) {address=(u8 **)&gUnk_030056F4;off=idx*0x2E0;entry=*address;entry+=off;sub_08019EB8(*(u16 *)(entry+2),3);}
    }
    else {register u32 off asm("r0");off=sub_080020F4()*0x14C;p=(u8 *)gUnk_03003CE0+off;*(u16 *)(p+0x11E)=value;}
}
static inline u32 t38_getFirstAE6C(u32 mask) {
    register u8 *base asm("r0");
    register u32 bits asm("r4");
    register u32 m asm("r1");
    if (sub_0800CE30()) {base=(u8 *)gUnk_03005CF4 + 0x80; m=mask << 14; bits=*(u32 *)base;}
    else {base=(u8 *)gUnk_03005CF4; m=mask << 14; bits=*(u32 *)(base+0x78);}
    return bits & m;
}
void sub_0803AE6C(u32 arg0) {
    s32 var_r0;
    s32 var_r4;
    register u8 *temp_r1 asm("r1");
    register u32 one asm("r4");
    u32 temp_r4;
    u32 temp_r4_2;
    u32 temp_r4_3;
    u32 temp_r4_4;
    u32 temp_r4_5;
    u8 *temp_r2_2;
    register u32 endOffset asm("r2");

    {register u32 off asm("r1");register u32 bits asm("r0");register u8 *base asm("r0");
    off=0x14C * sub_080020F4();base=(u8 *)gUnk_03003CE0;temp_r1=(u8 *)off;temp_r1+= (u32)base;
    bits=*(u32 *)(temp_r1+0x30);one=1;bits|=one;*(u32 *)(temp_r1+0x30)=bits;}
    sub_0800D0F4();
    var_r4=t38_getFirstAE6C(one);
    var_r0=t38_getAE6C(0x100);
    if (var_r0 && !var_r4) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140278U);
    while (sub_0805EEFC((void *) temp_r4) == 0) {
            if (sub_0800CDF8() != 0) {sub_0805EFBC(); break;}
            sub_080003F0();
        }
        if(sub_0800CE30()) {
            register u8 *p asm("r1");register u32 mask asm("r2");register u32 bits asm("r0");
            p=(u8 *)gUnk_03005CF4+0x80; mask=0x4000;bits=*(u32 *)p;*(u32 *)p=bits|mask;
        } else {
            register u8 *p asm("r2");register u32 mask asm("r1");register u32 bits asm("r0");
            p=(u8 *)gUnk_03005CF4;mask=0x4000;bits=*(u32 *)(p+0x78);*(u32 *)(p+0x78)=bits|mask;
        }
        if (!(gUnk_030027D0 & 0x20)) {
            sub_08006D08(0x32U);
        }
    } else {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_2 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140274U);
    while (sub_0805EEFC((void *) temp_r4_2) == 0) {
            if (sub_0800CDF8() != 0) {sub_0805EFBC(); break;}
            sub_080003F0();
        }
    }
    sub_0802939C(arg0, 0);
    sub_0802949C(arg0, 0);
    t38_setAE6C(arg0);
    while (sub_0805F184() != 0) sub_080003F0();
    temp_r4_3 = sub_0805DF38(1U, 0xFU, 2U, 0U, -2, 0x140275U);
    while (sub_0805EEFC((void *) temp_r4_3) == 0) sub_080003F0();
    if (sub_0805EF14((u8 *) temp_r4_3) != 0) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_4 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140276U);
    while (sub_0805EEFC((void *) temp_r4_4) == 0) {
            if (sub_0800CDF8() != 0) {sub_0805EFBC(); break;}
            sub_080003F0();
        }
    } else {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_5 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140277U);
    while (sub_0805EEFC((void *) temp_r4_5) == 0) {
            if (sub_0800CDF8() != 0) {sub_0805EFBC(); break;}
            sub_080003F0();
        }
    }
    sub_08029788(arg0);
    sub_0802939C(arg0, 3);
    endOffset = sub_080020F4();
    endOffset *= 0x14C;
    temp_r2_2 = (u8 *)gUnk_03003CE0 + endOffset;
    (*(u32 *)(temp_r2_2 + 0x30)) = (s32) ((*(u32 *)(temp_r2_2 + 0x30)) & ~1);
    sub_0800D108();
}
void sub_0803B194(void) {
    register u32 offset asm("r2");
    u8 *p;
    u32 flags;
    u32 msg;
    register u32 off asm("r1");
    register u8 *base asm("r0");
    register s32 raw asm("r0");
    s32 shifted;
    register u32 one asm("r0");
    offset=sub_080020F4();offset*=0x14C;
    p=(u8 *)gUnk_03003CE0+offset;
    *(u32 *)(p+0x30)|=1;
    sub_0800D0F4();
    if(sub_0800CE30()) flags=*(u32 *)((u8 *)gUnk_03005CF4+0x7C);
    else flags=*(u32 *)((u8 *)gUnk_03005CF4+0x74);
    if(sub_0800CE30()) {base=(u8 *)gUnk_03005CF4;off=0x1C6;}
    else {base=(u8 *)gUnk_03005CF4;off=0x1BA;}
    raw=*(base+off);shifted=raw >> 2;one=1;
    if(shifted & one) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x14014C);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 0x200) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x14014B);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 256) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x14014A);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 128) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140149);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 64) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140148);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 32) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140147);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 16) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140146);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 8) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140145);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 4) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140144);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 2) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140143);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 1) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140142);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140141);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    }
    offset=sub_080020F4();offset*=0x14C;
    p=(u8 *)gUnk_03003CE0+offset;
    *(u32 *)(p+0x30)&=~1;
    sub_0800D108();
}
