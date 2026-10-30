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
extern u8 *state32 asm("gUnk_03005CF4");
extern u8 players32[] asm("gUnk_03003CE0");
void sub_0803145C(void)
{
    u8 *player;
    register u8 *firstPlayer asm("r1");
    u32 flags;
    u8 *flag;
    u32 message;
    register s32 stride asm("r1");
    register s32 firstIndex asm("r0");
    register s32 lastOffset asm("r2");
    register s32 raw asm("r0");
    register s32 one asm("r4");
    firstIndex = sub_080020F4();
    stride = 0x14C;
    stride *= firstIndex;
    firstPlayer = players32 + stride;
    flags = *(u32 *)(firstPlayer + 0x30);
    one = 1;
    flags |= one;
    *(u32 *)(firstPlayer + 0x30) = flags;
    sub_0800D0F4();
    if (sub_0800CE30()) flag = state32 + 0x1C6;
    else flag = state32 + 0x1BA;
    raw = *flag;
    asm("" : "+r"(raw));
    raw >>= 2;
    if (!(raw & one)) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        message = sub_0805DF38(1,15,2,0,-1,0x14016F);
        while (sub_0805EEFC((void *)message) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    } else {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        message = sub_0805DF38(1,15,2,0,-1,0x140170);
        while (sub_0805EEFC((void *)message) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    lastOffset = sub_080020F4();
    stride = 0x14C;
    lastOffset *= stride;
    player = players32 + lastOffset;
    *(u32 *)(player + 0x30) &= ~1;
    sub_0800D108();
}
void sub_08031580(void)
{
    u8 *player;
    register u8 *firstPlayer asm("r1");
    u32 flags;
    u8 *flag;
    u32 message;
    register s32 stride asm("r1");
    register s32 firstIndex asm("r0");
    register s32 lastOffset asm("r2");
    register s32 raw asm("r0");
    register s32 one asm("r4");
    firstIndex = sub_080020F4();
    stride = 0x14C;
    stride *= firstIndex;
    firstPlayer = players32 + stride;
    flags = *(u32 *)(firstPlayer + 0x30);
    one = 1;
    flags |= one;
    *(u32 *)(firstPlayer + 0x30) = flags;
    sub_0800D0F4();
    if (sub_0800CE30()) flag = state32 + 0x1C6;
    else flag = state32 + 0x1BA;
    raw = *flag;
    asm("" : "+r"(raw));
    raw >>= 2;
    if (!(raw & one)) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        message = sub_0805DF38(1,15,2,0,-1,0x140171);
        while (sub_0805EEFC((void *)message) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    } else {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        message = sub_0805DF38(1,15,2,0,-1,0x140172);
        while (sub_0805EEFC((void *)message) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    lastOffset = sub_080020F4();
    stride = 0x14C;
    lastOffset *= stride;
    player = players32 + lastOffset;
    *(u32 *)(player + 0x30) &= ~1;
    sub_0800D108();
}
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
static inline u8 *t034FindBound34488(u32 key) {
 register u32 keyreg asm("r8") = key;
 u8 *p=t034State34488+0x7A4;
 u32 i;
 for(i=0;i<15;i++,p+=0x70) if(*(u32 *)p==keyreg) return p;
 sub_080003F0(); return 0;
}
static inline void t034Move34488(s32 a,s32 b,s32 c,s32 d) { register s32 rb asm("r9")=b; register s32 ra asm("r0")=a; sub_08028D98(ra,rb,c,d); }
void sub_08034488(s32 arg0) {
    u8 *var_r0_2;
    u8 *var_r1;
    u8 *var_r1_2;
    u8 *var_r1_3;
    u8 *var_r1_4;
    u8 *var_r2_2;
    s32 temp_r0;

    register s32 temp_r8 asm("r8");
    s32 var_r7;
    u16 ticks;
    s32 shiftByte;
    register s32 minus3 asm("r9");
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
    shiftByte = *var_r0;
    var_r7 = shiftByte >> 5;
    var_r7 &= 1;
    if (var_r7 == 0) goto loop_73;
    temp_r8 = sub_080289C0(6, 0x138, 0xFA);
    var_r2_2 = t034FindBound34488(temp_r8);
    if (var_r2_2 != NULL) {
        *(u16 *)(var_r2_2 + 0x18) = 8;
        *(u16 *)(var_r2_2 + 0x1A) = 4;
        *(u32 *)(var_r2_2 + 0x3C) = (s32) (*(u32 *)(var_r2_2 + 0x3C) | 0x10);
    }
    callback = sub_080376CC;
    var_r0_2 = t034FindBound34488(temp_r8);
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
#ifdef NONMATCHING
extern s32 t034Range(s32 *, s32 *, u16 *, u16 *) asm("sub_08021FE0");
extern void sub_080290E4(s32,s32);
extern u8 *t034State asm("gUnk_03005CF4");
struct T034Pos { s32 x,y; };
static inline void t034Move34900(s32 a,s32 b,s32 c,s32 d) { sub_08028D98(a,b,c,d); }
void sub_08034900(void) {
    u32 lowValue = 0x20;
    u32 lowMask = 0xFFFF0000;
    u32 highMask = 0xFFFF;
    struct { struct T034Pos pos; s32 sp10; u32 bits; } frame;
    struct Player *temp_r5;
    u32 temp_r4;
    u8 *var_r0;
    struct Player *temp_r2;
    struct Player *temp_r2_2;

loop_1:
    frame.sp10 = 0;
    frame.pos.x = 0x10000;
    frame.pos.y = 0x1C000;
    {
        register u32 value asm("r0");
        register u32 highValue asm("r1");
        register u32 mask asm("r2");

        value = frame.bits;
        value &= lowMask;
        mask = lowValue;
        value |= mask;
        highValue = 0x100000;
        mask = highMask;
        value &= mask;
        value |= highValue;
        frame.bits = value;
    }
    temp_r5 = &gUnk_03003CE0[sub_080020F4()];
goto test3;
loop_3:
    sub_080003F0();
test3:
    if (t034Range((s32 *)((u8 *)temp_r5 + 0x8C), &frame.pos.x, (u16 *)&frame.sp10, (u16 *)&frame.bits) == 0) {
        goto loop_3;
    }
    if (sub_0800CE30() != 0) {
        var_r0 = t034State + 0x1BF;
    } else {
        register u32 offset asm("r2") = 0x1B3;
        var_r0 = t034State + offset;
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

extern void sub_08029174(s32, s32);
void sub_08035914(s32 arg0) {
    u16 timer;
    for (;;) {
        sub_08029174(arg0, 0);
        timer = 200;
        for (; timer != 0; timer--) { sub_080003F0(); if (sub_080021A8() != 0) break; }
        sub_08029174(arg0, 1);
        timer = 180;
        for (; timer != 0; timer--) { sub_080003F0(); if (sub_080021A8() != 0) break; }
        sub_08029174(arg0, 0);
        timer = 120;
        for (; timer != 0; timer--) { sub_080003F0(); if (sub_080021A8() != 0) break; }
        sub_08029174(arg0, 1);
        timer = 360;
        for (; timer != 0; timer--) { sub_080003F0(); if (sub_080021A8() != 0) break; }
        sub_08029174(arg0, 0);
        timer = 180;
        for (; timer != 0; timer--) { sub_080003F0(); if (sub_080021A8() != 0) break; }
        sub_08029174(arg0, 1);
        timer = 240;
        for (; timer != 0; timer--) { sub_080003F0(); if (sub_080021A8() != 0) break; }
    }
}
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
extern void sub_08029174(s32, s32);
void sub_08035A88(s32 arg0) {
    u16 timer;
    for (;;) {
        sub_08029174(arg0, 0);
        timer = 240;
        for (; timer != 0; timer--) { sub_080003F0(); if (sub_080021A8() != 0) break; }
        sub_08029174(arg0, 1);
        timer = 240;
        for (; timer != 0; timer--) { sub_080003F0(); if (sub_080021A8() != 0) break; }
        sub_08029174(arg0, 2);
        timer = 180;
        for (; timer != 0; timer--) { sub_080003F0(); if (sub_080021A8() != 0) break; }
        sub_08029174(arg0, 3);
        timer = 60;
        for (; timer != 0; timer--) { sub_080003F0(); if (sub_080021A8() != 0) break; }
    }
}
struct Cmd35B18 { u16 unk0, unk2; u8 data[12]; };
struct Inv35B18 { u8 pad[0x150]; u16 unk150, unk152; };
extern u8 *inv35B18 asm("gUnk_030034E0");
extern u8 *state35B18 asm("gUnk_03005CF4");
extern u32 flags35B18 asm("gUnk_030027D0");
extern void sub_0802949C(s32, s32);
extern void sub_08029788(s32);
extern void emit35B18(struct Cmd35B18 *) asm("sub_0805AB20");

static inline u32 count35B18(u32 n) { return n; }
void sub_08035B18(s32 input) {
    register s32 arg0 asm("r8") = input;
    register u8 *base asm("r0");
    register s32 raw asm("r0");
    struct Cmd35B18 sp8;
    u8 unused[16];
    register u8 *row asm("r1");
    register u8 *data asm("r6");
    register u32 left asm("r4");
    register u32 scan asm("r3");
    u8 **inventory;
    register u32 zero asm("r5");
    register u32 a asm("r1");
    register u32 b asm("r2");
    register struct Cmd35B18 *cmd asm("r0");
    register u32 n asm("r4");
    register s32 temp_r4 asm("r4");
    register s32 var_r1 asm("r1");
    s32 var_r1_3;
    s32 var_r1_5;
    s32 var_r1_7;
    s32 var_r1_9;
    s32 var_r3;
    s32 var_r3_3;
    s32 var_r3_5;
    s32 var_r3_7;
    s32 var_r3_9;
    s32 var_r4;
    s32 var_r4_10;
    s32 var_r4_13;
    s32 var_r4_4;
    s32 var_r4_7;
    u32 temp_r4_10;
    u32 temp_r4_11;
    u32 temp_r4_12;
    u32 temp_r4_13;
    u32 temp_r4_14;
    u32 temp_r4_15;
    u32 temp_r4_16;
    u32 temp_r4_17;
    u32 temp_r4_18;
    u32 temp_r4_19;
    u32 temp_r4_20;
    u32 temp_r4_21;
    u32 temp_r4_22;
    u32 temp_r4_23;
    u32 temp_r4_24;
    u32 temp_r4_25;
    u32 temp_r4_26;
    u32 temp_r4_27;
    u32 temp_r4_28;
    u32 temp_r4_2;
    u32 temp_r4_3;
    u32 temp_r4_4;
    u32 temp_r4_5;
    u32 temp_r4_6;
    u32 temp_r4_7;
    u32 temp_r4_8;
    u32 temp_r4_9;
    u32 var_r2;
    u32 var_r2_2;
    u32 var_r2_3;
    u32 var_r2_4;
    u32 var_r2_5;
    u32 var_r3_10;
    u32 var_r3_2;
    u32 var_r3_4;
    u32 var_r3_6;
    u32 var_r3_8;
    u32 var_r4_11;
    u32 var_r4_12;
    u32 var_r4_14;
    u32 var_r4_15;
    u32 var_r4_2;
    u32 var_r4_3;
    u32 var_r4_5;
    u32 var_r4_6;
    u32 var_r4_8;
    u32 var_r4_9;
    s32 stage;
    struct Inv35B18 *temp_r1;
    struct Inv35B18 *temp_r1_2;
    struct Inv35B18 *temp_r1_3;
    struct Inv35B18 *temp_r1_4;
    struct Inv35B18 *temp_r1_5;
    struct Player *temp_r2;
    struct Player *temp_r2_2;
    struct Cmd35B18 *var_r1_10;
    struct Cmd35B18 *var_r1_2;
    struct Cmd35B18 *var_r1_4;
    struct Cmd35B18 *var_r1_6;
    struct Cmd35B18 *var_r1_8;

    temp_r2 = &gUnk_03003CE0[sub_080020F4()];
    temp_r2->flags = (s32) (temp_r2->flags | 1);
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    temp_r4 = sub_080020F4();
    if (sub_0800CE30() != 0) {
        base = state35B18;
        var_r1 = 0x1BC;
    } else {
        base = state35B18;
        var_r1 = 0x1B0;
    }
    raw = *(base + var_r1); asm("" : "+r"(raw)); stage = raw;
    if ((s32) stage <= 4) {
        if (temp_r4 == 0) {
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
            temp_r4_2 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140237U);
while (sub_0805EEFC((void *) temp_r4_2) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
            switch (stage) {
            case 0:
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                temp_r4_3 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140238U);
while (sub_0805EEFC((void *) temp_r4_3) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                var_r3 = 0;
                var_r2 = 0;
                var_r1_2 = (struct Cmd35B18 *)(inv35B18 + 0x150);
                do {
                    if ((*(u16 *)var_r1_2 == 8) && (*(u16 *)((u8 *)var_r1_2 + 2) == 6)) {
                        var_r3 += 1;
                    }
                    var_r1_2++;
                    var_r2 += 1;
                } while (var_r2 <= 0x18U);
                if (var_r3 <= 2) {

                } else {
while (sub_0805F184() != 0) { sub_080003F0(); }
                    temp_r4_4 = sub_0805DF38(1U, 0xFU, 2U, 0U, -2, 0x14023FU);
while (sub_0805EEFC((void *) temp_r4_4) == 0) { sub_080003F0(); }
                    if (sub_0805EF14((u8 *) temp_r4_4) == 0) {

                    } else {
                        left=3;scan=0;data=sp8.data;inventory=&inv35B18;asm("" : "+r"(inventory));zero=0;
                        do {
                            register u8 *slot asm("r1"); register u8 *v asm("r0"); register u32 k asm("r0"); register u16 *kind asm("r2");
                            v=*inventory;slot=v+scan*16;k=0x150;asm("" : "+r"(k));kind=(u16 *)(slot+k);
                            if(*kind!=8)goto next1;
                            { register u16 *value asm("r1"); k=0x152;asm("" : "+r"(k));value=(u16 *)(slot+k);if(*value!=6)goto next1;left--;*kind=zero;*value=zero;if(!left)goto removed1; }
next1: scan++;
                        }while(scan<=24);
removed1:
                        a=8;b=0x1A;cmd=&sp8;cmd->unk0=a;cmd->unk2=b;
                        {register u8 *v asm("r1");register u32 z asm("r2");n=0;v=data;z=0;do{v[n]=z;n++;}while(n<=11);}
                        n=0;do{emit35B18(&sp8);n++;}while(n<count35B18(1));
                        n=1;
                        if(sub_0800CE30()){base=state35B18;var_r1=0x1BC;}else{base=state35B18;var_r1=0x1B0;}
                        base[var_r1]=n;
                        if (!(flags35B18 & 0x20)) {
                            sub_08006D08(0x33U);
                        }
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                        temp_r4_5 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140242U);
while (sub_0805EEFC((void *) temp_r4_5) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                    }
                }
                sub_08029788(arg0);
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                temp_r4_6 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14023EU);
while (sub_0805EEFC((void *) temp_r4_6) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                break;
            case 1:
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                temp_r4_7 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140239U);
while (sub_0805EEFC((void *) temp_r4_7) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                var_r3_3 = 0;
                var_r2_2 = 0;
                var_r1_4 = (struct Cmd35B18 *)(inv35B18 + 0x150);
                do {
                    if ((*(u16 *)var_r1_4 == 8) && (*(u16 *)((u8 *)var_r1_4 + 2) == 0x23)) {
                        var_r3_3 += 1;
                    }
                    var_r1_4++;
                    var_r2_2 += 1;
                } while (var_r2_2 <= 0x18U);
                if (var_r3_3 <= 2) {

                } else {
while (sub_0805F184() != 0) { sub_080003F0(); }
                    temp_r4_8 = sub_0805DF38(1U, 0xFU, 2U, 0U, -2, 0x14023FU);
while (sub_0805EEFC((void *) temp_r4_8) == 0) { sub_080003F0(); }
                    if (sub_0805EF14((u8 *) temp_r4_8) == 0) {

                    } else {
                        left=3;scan=0;data=sp8.data;inventory=&inv35B18;asm("" : "+r"(inventory));zero=0;
                        do {
                            register u8 *slot asm("r1"); register u8 *v asm("r0"); register u32 k asm("r0"); register u16 *kind asm("r2");
                            v=*inventory;slot=v+scan*16;k=0x150;asm("" : "+r"(k));kind=(u16 *)(slot+k);
                            if(*kind!=8)goto next2;
                            { register u16 *value asm("r1"); k=0x152;asm("" : "+r"(k));value=(u16 *)(slot+k);if(*value!=0x23)goto next2;left--;*kind=zero;*value=zero;if(!left)goto removed2; }
next2: scan++;
                        }while(scan<=24);
removed2:
                        a=8;b=0x2F;cmd=&sp8;cmd->unk0=a;cmd->unk2=b;
                        {register u8 *v asm("r1");register u32 z asm("r2");n=0;v=data;z=0;do{v[n]=z;n++;}while(n<=11);}
                        n=0;do{emit35B18(&sp8);n++;}while(n<count35B18(1));
                        n=2;
                        if(sub_0800CE30()){base=state35B18;var_r1=0x1BC;}else{base=state35B18;var_r1=0x1B0;}
                        base[var_r1]=n;
                        if (!(flags35B18 & 0x20)) {
                            sub_08006D08(0x33U);
                        }
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                        temp_r4_9 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140243U);
while (sub_0805EEFC((void *) temp_r4_9) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                    }
                }
                sub_08029788(arg0);
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                temp_r4_10 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14023EU);
while (sub_0805EEFC((void *) temp_r4_10) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                break;
            case 2:
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                temp_r4_11 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14023AU);
while (sub_0805EEFC((void *) temp_r4_11) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                var_r3_5 = 0;
                var_r2_3 = 0;
                var_r1_6 = (struct Cmd35B18 *)(inv35B18 + 0x150);
                do {
                    if ((*(u16 *)var_r1_6 == 8) && (*(u16 *)((u8 *)var_r1_6 + 2) == 0x41)) {
                        var_r3_5 += 1;
                    }
                    var_r1_6++;
                    var_r2_3 += 1;
                } while (var_r2_3 <= 0x18U);
                if (var_r3_5 <= 2) {

                } else {
while (sub_0805F184() != 0) { sub_080003F0(); }
                    temp_r4_12 = sub_0805DF38(1U, 0xFU, 2U, 0U, -2, 0x14023FU);
while (sub_0805EEFC((void *) temp_r4_12) == 0) { sub_080003F0(); }
                    if (sub_0805EF14((u8 *) temp_r4_12) == 0) {

                    } else {
                        left=3;scan=0;data=sp8.data;inventory=&inv35B18;asm("" : "+r"(inventory));zero=0;
                        do {
                            register u8 *slot asm("r1"); register u8 *v asm("r0"); register u32 k asm("r0"); register u16 *kind asm("r2");
                            v=*inventory;slot=v+scan*16;k=0x150;asm("" : "+r"(k));kind=(u16 *)(slot+k);
                            if(*kind!=8)goto next3;
                            { register u16 *value asm("r1"); k=0x152;asm("" : "+r"(k));value=(u16 *)(slot+k);if(*value!=0x41)goto next3;left--;*kind=zero;*value=zero;if(!left)goto removed3; }
next3: scan++;
                        }while(scan<=24);
removed3:
                        a=8;b=0x72;cmd=&sp8;cmd->unk0=a;cmd->unk2=b;
                        {register u8 *v asm("r1");register u32 z asm("r2");n=0;v=data;z=0;do{v[n]=z;n++;}while(n<=11);}
                        n=0;do{emit35B18(&sp8);n++;}while(n<count35B18(1));
                        n=3;
                        if(sub_0800CE30()){base=state35B18;var_r1=0x1BC;}else{base=state35B18;var_r1=0x1B0;}
                        base[var_r1]=n;
                        if (!(flags35B18 & 0x20)) {
                            sub_08006D08(0x33U);
                        }
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                        temp_r4_13 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140244U);
while (sub_0805EEFC((void *) temp_r4_13) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                    }
                }
                sub_08029788(arg0);
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                temp_r4_14 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14023EU);
while (sub_0805EEFC((void *) temp_r4_14) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                break;
            case 3:
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                temp_r4_15 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14023BU);
while (sub_0805EEFC((void *) temp_r4_15) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                var_r3_7 = 0;
                var_r2_4 = 0;
                var_r1_8 = (struct Cmd35B18 *)(inv35B18 + 0x150);
                do {
                    if ((*(u16 *)var_r1_8 == 8) && (*(u16 *)((u8 *)var_r1_8 + 2) == 0x59)) {
                        var_r3_7 += 1;
                    }
                    var_r1_8++;
                    var_r2_4 += 1;
                } while (var_r2_4 <= 0x18U);
                if (var_r3_7 <= 2) {

                } else {
while (sub_0805F184() != 0) { sub_080003F0(); }
                    temp_r4_16 = sub_0805DF38(1U, 0xFU, 2U, 0U, -2, 0x14023FU);
while (sub_0805EEFC((void *) temp_r4_16) == 0) { sub_080003F0(); }
                    if (sub_0805EF14((u8 *) temp_r4_16) == 0) {

                    } else {
                        left=3;scan=0;data=sp8.data;inventory=&inv35B18;asm("" : "+r"(inventory));zero=0;
                        do {
                            register u8 *slot asm("r1"); register u8 *v asm("r0"); register u32 k asm("r0"); register u16 *kind asm("r2");
                            v=*inventory;slot=v+scan*16;k=0x150;asm("" : "+r"(k));kind=(u16 *)(slot+k);
                            if(*kind!=8)goto next4;
                            { register u16 *value asm("r1"); k=0x152;asm("" : "+r"(k));value=(u16 *)(slot+k);if(*value!=0x59)goto next4;left--;*kind=zero;*value=zero;if(!left)goto removed4; }
next4: scan++;
                        }while(scan<=24);
removed4:
                        a=8;b=0x68;cmd=&sp8;cmd->unk0=a;cmd->unk2=b;
                        {register u8 *v asm("r1");register u32 z asm("r2");n=0;v=data;z=0;do{v[n]=z;n++;}while(n<=11);}
                        n=0;do{emit35B18(&sp8);n++;}while(n<count35B18(1));
                        n=4;
                        if(sub_0800CE30()){base=state35B18;var_r1=0x1BC;}else{base=state35B18;var_r1=0x1B0;}
                        base[var_r1]=n;
                        if (!(flags35B18 & 0x20)) {
                            sub_08006D08(0x33U);
                        }
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                        temp_r4_17 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140245U);
while (sub_0805EEFC((void *) temp_r4_17) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                    }
                }
                sub_08029788(arg0);
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                temp_r4_18 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14023EU);
while (sub_0805EEFC((void *) temp_r4_18) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                break;
            case 4:
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                temp_r4_19 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14023CU);
while (sub_0805EEFC((void *) temp_r4_19) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                var_r3_9 = 0;
                var_r2_5 = 0;
                var_r1_10 = (struct Cmd35B18 *)(inv35B18 + 0x150);
                do {
                    if ((*(u16 *)var_r1_10 == 8) && (*(u16 *)((u8 *)var_r1_10 + 2) == 0x6F)) {
                        var_r3_9 += 1;
                    }
                    var_r1_10++;
                    var_r2_5 += 1;
                } while (var_r2_5 <= 0x18U);
if (var_r3_9 <= 2) goto missing5;

while (sub_0805F184() != 0) { sub_080003F0(); }
                    temp_r4_21 = sub_0805DF38(1U, 0xFU, 2U, 0U, -2, 0x14023FU);
while (sub_0805EEFC((void *) temp_r4_21) == 0) { sub_080003F0(); }
                    if (sub_0805EF14((u8 *)temp_r4_21)==0) goto rejected5;

                        left=3;scan=0;data=sp8.data;inventory=&inv35B18;asm("" : "+r"(inventory));zero=0;
                        do {
                            register u8 *slot asm("r1"); register u8 *v asm("r0"); register u32 k asm("r0"); register u16 *kind asm("r2");
                            v=*inventory;slot=v+scan*16;k=0x150;asm("" : "+r"(k));kind=(u16 *)(slot+k);
                            if(*kind!=8)goto next5;
                            { register u16 *value asm("r1"); k=0x152;asm("" : "+r"(k));value=(u16 *)(slot+k);if(*value!=0x6F)goto next5;left--;*kind=zero;*value=zero;if(!left)goto removed5; }
next5: scan++;
                        }while(scan<=24);
removed5:
                        a=8;b=0x78;cmd=&sp8;cmd->unk0=a;cmd->unk2=b;
                        {register u8 *v asm("r1");register u32 z asm("r2");n=0;v=data;z=0;do{v[n]=z;n++;}while(n<=11);}
                        n=0;do{emit35B18(&sp8);n++;}while(n<count35B18(1));
                        sub_08068070((u32) sub_0805921C, 5U);
                        if (!(flags35B18 & 0x20)) {
                            sub_08006D08(0x33U);
                        }
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                        temp_r4_23 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140246U);
while (sub_0805EEFC((void *) temp_r4_23) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                        sub_08029788(arg0);
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                        temp_r4_24 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140241U);
while (sub_0805EEFC((void *) temp_r4_24) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }

goto done;
rejected5:

                        sub_08029788(arg0);
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                        temp_r4_22 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14023EU);
while (sub_0805EEFC((void *) temp_r4_22) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }

goto done;
missing5:

                    sub_08029788(arg0);
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                    temp_r4_20 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14023EU);
while (sub_0805EEFC((void *) temp_r4_20) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }

goto done;
                break;
            }
        } else {
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
            temp_r4_25 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14023DU);
while (sub_0805EEFC((void *) temp_r4_25) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
            sub_08029788(arg0);
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
            temp_r4_26 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14023EU);
while (sub_0805EEFC((void *) temp_r4_26) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
        }
    } else {
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_27 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140240U);
while (sub_0805EEFC((void *) temp_r4_27) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
        sub_08029788(arg0);
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_28 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140241U);
while (sub_0805EEFC((void *) temp_r4_28) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    }
done:
    temp_r2_2 = &gUnk_03003CE0[sub_080020F4()];
    temp_r2_2->flags = (s32) (temp_r2_2->flags & ~1);
    sub_0800D108();
}
struct Cmd368F4 { u16 unk0, unk2; u8 data[12]; };
struct Inv368F4 { u8 pad[0x150]; u16 unk150, unk152; };
extern u8 *inv368F4 asm("gUnk_030034E0");
extern u8 *state368F4 asm("gUnk_03005CF4");
extern u32 flags368F4 asm("gUnk_030027D0");
extern void sub_0802949C(s32, s32);
extern void sub_08029788(s32);
extern void emit368F4(struct Cmd368F4 *) asm("sub_0805AB20");

static inline u32 count368F4(u32 n) { return n; }
void sub_080368F4(s32 input) {
    register s32 arg0 asm("r8") = input;
    register u8 *base asm("r0");
    register s32 raw asm("r0");
    struct Cmd368F4 sp8;
    u8 unused[16];
    register u8 *row asm("r1");
    register u8 *data asm("r6");
    register u32 left asm("r4");
    register u32 scan asm("r3");
    u8 **inventory;
    register u8 **inventoryFirst asm("r5");
    register u32 zero asm("r5");
    register u32 a asm("r1");
    register u32 b asm("r2");
    register struct Cmd368F4 *cmd asm("r0");
    register u32 n asm("r4");
    register s32 temp_r4 asm("r4");
    register s32 var_r1 asm("r1");
    s32 var_r1_3;
    s32 var_r1_5;
    s32 var_r1_7;
    s32 var_r1_9;
    s32 var_r3;
    s32 var_r3_3;
    s32 var_r3_5;
    s32 var_r3_7;
    s32 var_r3_9;
    s32 var_r4;
    s32 var_r4_10;
    s32 var_r4_13;
    s32 var_r4_4;
    s32 var_r4_7;
    u32 temp_r4_10;
    u32 temp_r4_11;
    u32 temp_r4_12;
    u32 temp_r4_13;
    u32 temp_r4_14;
    u32 temp_r4_15;
    u32 temp_r4_16;
    u32 temp_r4_17;
    u32 temp_r4_18;
    u32 temp_r4_19;
    u32 temp_r4_20;
    u32 temp_r4_21;
    u32 temp_r4_22;
    u32 temp_r4_23;
    u32 temp_r4_24;
    u32 temp_r4_25;
    u32 temp_r4_26;
    u32 temp_r4_27;
    u32 temp_r4_28;
    u32 temp_r4_2;
    u32 temp_r4_3;
    u32 temp_r4_4;
    u32 temp_r4_5;
    u32 temp_r4_6;
    u32 temp_r4_7;
    u32 temp_r4_8;
    u32 temp_r4_9;
    u32 var_r2;
    u32 var_r2_2;
    u32 var_r2_3;
    u32 var_r2_4;
    u32 var_r2_5;
    u32 var_r3_10;
    u32 var_r3_2;
    u32 var_r3_4;
    u32 var_r3_6;
    u32 var_r3_8;
    u32 var_r4_11;
    u32 var_r4_12;
    u32 var_r4_14;
    u32 var_r4_15;
    u32 var_r4_2;
    u32 var_r4_3;
    u32 var_r4_5;
    u32 var_r4_6;
    u32 var_r4_8;
    u32 var_r4_9;
    s32 stage;
    struct Inv368F4 *temp_r1;
    struct Inv368F4 *temp_r1_2;
    struct Inv368F4 *temp_r1_3;
    struct Inv368F4 *temp_r1_4;
    struct Inv368F4 *temp_r1_5;
    struct Player *temp_r2;
    struct Player *temp_r2_2;
    struct Cmd368F4 *var_r1_10;
    struct Cmd368F4 *var_r1_2;
    struct Cmd368F4 *var_r1_4;
    struct Cmd368F4 *var_r1_6;
    struct Cmd368F4 *var_r1_8;

    temp_r2 = &gUnk_03003CE0[sub_080020F4()];
    temp_r2->flags = (s32) (temp_r2->flags | 1);
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    temp_r4 = sub_080020F4();
    if (sub_0800CE30() != 0) {
        base = state368F4;
        var_r1 = 0x1BC;
    } else {
        base = state368F4;
        var_r1 = 0x1B0;
    }
    raw = *(base + var_r1); asm("" : "+r"(raw)); stage = raw;
    if ((s32) stage <= 4) {
        if (temp_r4 == 0) {
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
            temp_r4_2 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140237U);
while (sub_0805EEFC((void *) temp_r4_2) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
            switch (stage) {
            case 0:
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                temp_r4_3 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140247U);
while (sub_0805EEFC((void *) temp_r4_3) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                var_r3 = 0;
                var_r2 = 0;
                var_r1_2 = (struct Cmd368F4 *)(inv368F4 + 0x150);
                do {
                    if ((*(u16 *)var_r1_2 == 8) && (*(u16 *)((u8 *)var_r1_2 + 2) == 0)) {
                        var_r3 += 1;
                    }
                    var_r1_2++;
                    var_r2 += 1;
                } while (var_r2 <= 0x18U);
                if (var_r3 <= 2) {

                } else {
while (sub_0805F184() != 0) { sub_080003F0(); }
                    temp_r4_4 = sub_0805DF38(1U, 0xFU, 2U, 0U, -2, 0x14023FU);
while (sub_0805EEFC((void *) temp_r4_4) == 0) { sub_080003F0(); }
                    if (sub_0805EF14((u8 *) temp_r4_4) == 0) {

                    } else {
                        left=3;scan=0;data=sp8.data;inventoryFirst=&inv368F4;asm("" : "+r"(inventoryFirst));
                        do {
                            register u8 *slot asm("r1"); register u8 *v asm("r0"); register u32 k asm("r0"); register u16 *kind asm("r2");
                            v=*inventoryFirst;slot=v+scan*16;k=0x150;asm("" : "+r"(k));kind=(u16 *)(slot+k);
                            if(*kind!=8)goto next1;
                            { register u16 *value asm("r1"); k=0x152;asm("" : "+r"(k));value=(u16 *)(slot+k);k=*value;asm("" : "+r"(k));if(k!=0)goto next1;left--;*kind=k;*value=k;if(!left)goto removed1; }
next1: scan++;
                        }while(scan<=24);
removed1:
                        a=8;b=9;cmd=&sp8;cmd->unk0=a;cmd->unk2=b;
                        {register u8 *v asm("r1");register u32 z asm("r2");n=0;v=data;z=0;do{v[n]=z;n++;}while(n<=11);}
                        n=0;do{emit368F4(&sp8);n++;}while(n<count368F4(1));
                        n=1;
                        if(sub_0800CE30()){base=state368F4;var_r1=0x1BC;}else{base=state368F4;var_r1=0x1B0;}
                        base[var_r1]=n;
                        if (!(flags368F4 & 0x20)) {
                            sub_08006D08(0x33U);
                        }
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                        temp_r4_5 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14024CU);
while (sub_0805EEFC((void *) temp_r4_5) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                    }
                }
                sub_08029788(arg0);
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                temp_r4_6 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14023EU);
while (sub_0805EEFC((void *) temp_r4_6) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                break;
            case 1:
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                temp_r4_7 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140248U);
while (sub_0805EEFC((void *) temp_r4_7) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                var_r3_3 = 0;
                var_r2_2 = 0;
                var_r1_4 = (struct Cmd368F4 *)(inv368F4 + 0x150);
                do {
                    if ((*(u16 *)var_r1_4 == 8) && (*(u16 *)((u8 *)var_r1_4 + 2) == 0x2B)) {
                        var_r3_3 += 1;
                    }
                    var_r1_4++;
                    var_r2_2 += 1;
                } while (var_r2_2 <= 0x18U);
                if (var_r3_3 <= 2) {

                } else {
while (sub_0805F184() != 0) { sub_080003F0(); }
                    temp_r4_8 = sub_0805DF38(1U, 0xFU, 2U, 0U, -2, 0x14023FU);
while (sub_0805EEFC((void *) temp_r4_8) == 0) { sub_080003F0(); }
                    if (sub_0805EF14((u8 *) temp_r4_8) == 0) {

                    } else {
                        left=3;scan=0;data=sp8.data;inventory=&inv368F4;asm("" : "+r"(inventory));zero=0;
                        do {
                            register u8 *slot asm("r1"); register u8 *v asm("r0"); register u32 k asm("r0"); register u16 *kind asm("r2");
                            v=*inventory;slot=v+scan*16;k=0x150;asm("" : "+r"(k));kind=(u16 *)(slot+k);
                            if(*kind!=8)goto next2;
                            { register u16 *value asm("r1"); k=0x152;asm("" : "+r"(k));value=(u16 *)(slot+k);if(*value!=0x2B)goto next2;left--;*kind=zero;*value=zero;if(!left)goto removed2; }
next2: scan++;
                        }while(scan<=24);
removed2:
                        a=8;b=0x45;cmd=&sp8;cmd->unk0=a;cmd->unk2=b;
                        {register u8 *v asm("r1");register u32 z asm("r2");n=0;v=data;z=0;do{v[n]=z;n++;}while(n<=11);}
                        n=0;do{emit368F4(&sp8);n++;}while(n<count368F4(1));
                        n=2;
                        if(sub_0800CE30()){base=state368F4;var_r1=0x1BC;}else{base=state368F4;var_r1=0x1B0;}
                        base[var_r1]=n;
                        if (!(flags368F4 & 0x20)) {
                            sub_08006D08(0x33U);
                        }
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                        temp_r4_9 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14024DU);
while (sub_0805EEFC((void *) temp_r4_9) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                    }
                }
                sub_08029788(arg0);
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                temp_r4_10 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14023EU);
while (sub_0805EEFC((void *) temp_r4_10) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                break;
            case 2:
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                temp_r4_11 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140249U);
while (sub_0805EEFC((void *) temp_r4_11) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                var_r3_5 = 0;
                var_r2_3 = 0;
                var_r1_6 = (struct Cmd368F4 *)(inv368F4 + 0x150);
                do {
                    if ((*(u16 *)var_r1_6 == 8) && (*(u16 *)((u8 *)var_r1_6 + 2) == 0x50)) {
                        var_r3_5 += 1;
                    }
                    var_r1_6++;
                    var_r2_3 += 1;
                } while (var_r2_3 <= 0x18U);
                if (var_r3_5 <= 2) {

                } else {
while (sub_0805F184() != 0) { sub_080003F0(); }
                    temp_r4_12 = sub_0805DF38(1U, 0xFU, 2U, 0U, -2, 0x14023FU);
while (sub_0805EEFC((void *) temp_r4_12) == 0) { sub_080003F0(); }
                    if (sub_0805EF14((u8 *) temp_r4_12) == 0) {

                    } else {
                        left=3;scan=0;data=sp8.data;inventory=&inv368F4;asm("" : "+r"(inventory));zero=0;
                        do {
                            register u8 *slot asm("r1"); register u8 *v asm("r0"); register u32 k asm("r0"); register u16 *kind asm("r2");
                            v=*inventory;slot=v+scan*16;k=0x150;asm("" : "+r"(k));kind=(u16 *)(slot+k);
                            if(*kind!=8)goto next3;
                            { register u16 *value asm("r1"); k=0x152;asm("" : "+r"(k));value=(u16 *)(slot+k);if(*value!=0x50)goto next3;left--;*kind=zero;*value=zero;if(!left)goto removed3; }
next3: scan++;
                        }while(scan<=24);
removed3:
                        a=8;b=0x5F;cmd=&sp8;cmd->unk0=a;cmd->unk2=b;
                        {register u8 *v asm("r1");register u32 z asm("r2");n=0;v=data;z=0;do{v[n]=z;n++;}while(n<=11);}
                        n=0;do{emit368F4(&sp8);n++;}while(n<count368F4(1));
                        n=3;
                        if(sub_0800CE30()){base=state368F4;var_r1=0x1BC;}else{base=state368F4;var_r1=0x1B0;}
                        base[var_r1]=n;
                        if (!(flags368F4 & 0x20)) {
                            sub_08006D08(0x33U);
                        }
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                        temp_r4_13 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14024EU);
while (sub_0805EEFC((void *) temp_r4_13) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                    }
                }
                sub_08029788(arg0);
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                temp_r4_14 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14023EU);
while (sub_0805EEFC((void *) temp_r4_14) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                break;
            case 3:
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                temp_r4_15 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14024AU);
while (sub_0805EEFC((void *) temp_r4_15) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                var_r3_7 = 0;
                var_r2_4 = 0;
                var_r1_8 = (struct Cmd368F4 *)(inv368F4 + 0x150);
                do {
                    if ((*(u16 *)var_r1_8 == 8) && (*(u16 *)((u8 *)var_r1_8 + 2) == 0x5C)) {
                        var_r3_7 += 1;
                    }
                    var_r1_8++;
                    var_r2_4 += 1;
                } while (var_r2_4 <= 0x18U);
                if (var_r3_7 <= 2) {

                } else {
while (sub_0805F184() != 0) { sub_080003F0(); }
                    temp_r4_16 = sub_0805DF38(1U, 0xFU, 2U, 0U, -2, 0x14023FU);
while (sub_0805EEFC((void *) temp_r4_16) == 0) { sub_080003F0(); }
                    if (sub_0805EF14((u8 *) temp_r4_16) == 0) {

                    } else {
                        left=3;scan=0;data=sp8.data;inventory=&inv368F4;asm("" : "+r"(inventory));zero=0;
                        do {
                            register u8 *slot asm("r1"); register u8 *v asm("r0"); register u32 k asm("r0"); register u16 *kind asm("r2");
                            v=*inventory;slot=v+scan*16;k=0x150;asm("" : "+r"(k));kind=(u16 *)(slot+k);
                            if(*kind!=8)goto next4;
                            { register u16 *value asm("r1"); k=0x152;asm("" : "+r"(k));value=(u16 *)(slot+k);if(*value!=0x5C)goto next4;left--;*kind=zero;*value=zero;if(!left)goto removed4; }
next4: scan++;
                        }while(scan<=24);
removed4:
                        a=8;b=0x6D;cmd=&sp8;cmd->unk0=a;cmd->unk2=b;
                        {register u8 *v asm("r1");register u32 z asm("r2");n=0;v=data;z=0;do{v[n]=z;n++;}while(n<=11);}
                        n=0;do{emit368F4(&sp8);n++;}while(n<count368F4(1));
                        n=4;
                        if(sub_0800CE30()){base=state368F4;var_r1=0x1BC;}else{base=state368F4;var_r1=0x1B0;}
                        base[var_r1]=n;
                        if (!(flags368F4 & 0x20)) {
                            sub_08006D08(0x33U);
                        }
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                        temp_r4_17 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14024FU);
while (sub_0805EEFC((void *) temp_r4_17) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                    }
                }
                sub_08029788(arg0);
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                temp_r4_18 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14023EU);
while (sub_0805EEFC((void *) temp_r4_18) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                break;
            case 4:
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                temp_r4_19 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14024BU);
while (sub_0805EEFC((void *) temp_r4_19) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                var_r3_9 = 0;
                var_r2_5 = 0;
                var_r1_10 = (struct Cmd368F4 *)(inv368F4 + 0x150);
                do {
                    if ((*(u16 *)var_r1_10 == 8) && (*(u16 *)((u8 *)var_r1_10 + 2) == 0x65)) {
                        var_r3_9 += 1;
                    }
                    var_r1_10++;
                    var_r2_5 += 1;
                } while (var_r2_5 <= 0x18U);
if (var_r3_9 <= 2) goto missing5;

while (sub_0805F184() != 0) { sub_080003F0(); }
                    temp_r4_21 = sub_0805DF38(1U, 0xFU, 2U, 0U, -2, 0x14023FU);
while (sub_0805EEFC((void *) temp_r4_21) == 0) { sub_080003F0(); }
                    if (sub_0805EF14((u8 *)temp_r4_21)==0) goto rejected5;

                        left=3;scan=0;data=sp8.data;inventory=&inv368F4;asm("" : "+r"(inventory));zero=0;
                        do {
                            register u8 *slot asm("r1"); register u8 *v asm("r0"); register u32 k asm("r0"); register u16 *kind asm("r2");
                            v=*inventory;slot=v+scan*16;k=0x150;asm("" : "+r"(k));kind=(u16 *)(slot+k);
                            if(*kind!=8)goto next5;
                            { register u16 *value asm("r1"); k=0x152;asm("" : "+r"(k));value=(u16 *)(slot+k);if(*value!=0x65)goto next5;left--;*kind=zero;*value=zero;if(!left)goto removed5; }
next5: scan++;
                        }while(scan<=24);
removed5:
                        a=8;b=0x89;cmd=&sp8;cmd->unk0=a;cmd->unk2=b;
                        {register u8 *v asm("r1");register u32 z asm("r2");n=0;v=data;z=0;do{v[n]=z;n++;}while(n<=11);}
                        n=0;do{emit368F4(&sp8);n++;}while(n<count368F4(1));
                        sub_08068070((u32) sub_0805921C, 5U);
                        if (!(flags368F4 & 0x20)) {
                            sub_08006D08(0x33U);
                        }
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                        temp_r4_23 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140250U);
while (sub_0805EEFC((void *) temp_r4_23) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
                        sub_08029788(arg0);
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                        temp_r4_24 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140241U);
while (sub_0805EEFC((void *) temp_r4_24) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }

goto done;
rejected5:

                        sub_08029788(arg0);
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                        temp_r4_22 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14023EU);
while (sub_0805EEFC((void *) temp_r4_22) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }

goto done;
missing5:

                    sub_08029788(arg0);
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
                    temp_r4_20 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14023EU);
while (sub_0805EEFC((void *) temp_r4_20) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }

goto done;
                break;
            }
        } else {
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
            temp_r4_25 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14023DU);
while (sub_0805EEFC((void *) temp_r4_25) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
            sub_08029788(arg0);
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
            temp_r4_26 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14023EU);
while (sub_0805EEFC((void *) temp_r4_26) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
        }
    } else {
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_27 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140240U);
while (sub_0805EEFC((void *) temp_r4_27) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
        sub_08029788(arg0);
while (sub_0805F184() != 0) { sub_080003F0(); }
while (sub_0805EF90() != 0) { sub_080003F0(); }
        temp_r4_28 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140241U);
while (sub_0805EEFC((void *) temp_r4_28) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    }
done:
    temp_r2_2 = &gUnk_03003CE0[sub_080020F4()];
    temp_r2_2->flags = (s32) (temp_r2_2->flags & ~1);
    sub_0800D108();
}
struct T36ACmd { u16 unk0, unk2; u8 data[12]; };
struct T36AItem { u16 unk0, unk2; u8 data[12]; };
struct T36AActor { u32 id; u8 pad4[0x3E]; u16 unk42; u8 pad44[0x2C]; };
extern u8 *t36AState asm("gUnk_03005CF4");
extern u8 *t36AInventory asm("gUnk_030034E0");
extern u8 *t36AOther asm("gUnk_030056F4");
extern void t36AEmit(struct T36ACmd *) asm("sub_0805AB20");
extern void sub_0805990C(void);
extern void sub_08019EB8(u16, s32);
static inline u32 t36ATest(u8 *p, u32 one) { register s32 v asm("r0") = *p; asm("" : "+r"(v)); return (v >> 7) & one; }
static inline u32 t36AHalf(u16 *p) { register u32 v asm("r0") = *p; asm("" : "+r"(v)); return v; }
static inline void t36AInit(struct T36ACmd *pp, u32 aa, u32 bb) { register struct T36ACmd *p asm("r0"); register u32 a asm("r1")=aa; register u32 b asm("r2")=bb; asm("" : "+r"(a), "+r"(b)); p=pp; asm("" : "+r"(p)); p->unk0=a; p->unk2=b; }
static inline u32 t36ALock(u32 idx) {
 register u32 off asm("r1") = idx * 0x14C;
 register u32 base asm("r0");
 register struct Player *p asm("r1");
 register u32 flags asm("r0");
 register u32 one asm("r4");
 asm("" : "+r"(off));
 base=(u32)gUnk_03003CE0;
 asm("" : "+r"(base));
 p=(struct Player *)(off+base);
 flags=p->flags;
 asm("" : "+r"(flags));
 one=1;
 asm("" : "+r"(one));
 p->flags=flags|one;
 return one;
}
static inline u32 t36AMask(u32 *p) { register u32 m asm("r1")=0x100000; asm("" : "+r"(m)); return *p & m; }
static inline void t36ASet80(void) { register u32 *p asm("r1")=(u32 *)(t36AState+0x80); register u32 m asm("r2")=0x100000; asm("" : "+r"(p), "+r"(m)); *p |= m; }
static inline void t36ASet78(void) { register u8 *p asm("r2")=t36AState; register u32 m asm("r1")=0x100000; asm("" : "+r"(p), "+r"(m)); *(u32 *)(p+0x78) |= m; }
static inline void t36APose(u32 idx, u32 value) { register u32 scaled asm("r0")=idx*0x14C; register u8 *p asm("r0"); register u32 off asm("r1"); asm("" : "+r"(scaled)); p=(u8 *)gUnk_03003CE0+scaled; asm("" : "+r"(p)); off=0x11E; asm("" : "+r"(p), "+r"(off)); *(u16 *)(p+off)=value; }
static inline void t36AOtherPose(u32 idx) { register u8 **pp asm("r1")=&t36AOther; register u32 off asm("r0"); register u8 *p asm("r1"); asm("" : "+r"(pp)); off=idx*0x2E0; asm("" : "+r"(off)); p=*pp; p=p+off; asm("" : "+r"(p)); sub_08019EB8(*(u16 *)(p+2), 3); }
static inline u32 t36ACount(u32 n) { return n; }
static inline void t36AEmitMany(struct T36ACmd *p,u32 n) { u32 i=0; do { t36AEmit(p); i++; } while (i<n); }
static inline u8 *t36AItemAddr(u8 *base,u32 idx) { register u8 *p asm("r0")=base; register u32 off asm("r1"); asm("" : "+r"(p)); off=idx*16; asm("" : "+r"(off)); return p+off; }
void t36AScript(u32 input) asm("sub_080376CC");
void t36AScript(u32 input) {
    register u32 arg0 asm("r5") = input;
    register u32 one asm("r4");
    register u32 three asm("r4");
    register u32 zero asm("r5");
    register u32 ci asm("r4");
    u8 **inventory;
    register u8 *fill asm("r1");
    register u32 fillzero asm("r2");
    register u8 *data asm("r6");
    struct T36ACmd sp8;
    u8 extra[16];
    struct T36AActor *var_r0_3;
    struct T36AActor *var_r1_2;
    s32 var_r0_2;
    s32 var_r3;
    s32 var_r4;
    register struct Player *temp_r1 asm("r1");
    register u32 temp_r2 asm("r2");
    register u32 actorKey asm("r2");
    u32 temp_r4;
    u32 temp_r4_2;
    u32 temp_r4_3;
    u32 temp_r4_4;
    u32 temp_r4_5;
    u32 var_r2;
    register u32 var_r3_2 asm("r3");
    u32 var_r3_3;
    u32 var_r4_2;
    u32 var_r4_3;
    u32 var_r4_4;
    u32 var_r4_5;
    u8 *var_r0;
    u8 *temp_r1_2;
    struct Player *temp_r2_2;
    struct T36AItem *var_r1;

    one = t36ALock(sub_080020F4());
    asm("" : "+r"(one));
    sub_0800D0F4();
    if (sub_0800CE30() != 0) {
        var_r0 = t36AState + 0x1C3;
    } else {
        var_r0 = t36AState + 0x1B7;
    }
    if (!t36ATest(var_r0, one)) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_2 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140286U);
    while (sub_0805EEFC((void *)temp_r4_2) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
        if (sub_0800CE30() != 0) {
            var_r0_2 = t36AMask((u32 *)(t36AState + 0x80));
        } else {
            var_r0_2 = t36AMask((u32 *)(t36AState + 0x78));
        }
        if (!var_r0_2) {
            if (!(gUnk_030027D0 & 0x20)) {
                sub_08006D08(0x32U);
            }
            if (sub_0800CE30() != 0) {
                t36ASet80();
            } else {
                goto set78;
actor_found:
                var_r0_3 = var_r1_2;
                goto actor_done;
set78:
                t36ASet78();
            }
        }
        var_r3 = 0;
        var_r2 = 0;
        var_r1 = (struct T36AItem *)(t36AInventory + 0x150);
        do {
            if ((t36AHalf(&var_r1->unk0) == 1) && (var_r1->unk2 == 0x2D)) {
                var_r3 += 1;
            }
            var_r1++;
            var_r2 += 1;
        } while (var_r2 <= 0x18U);
        if (var_r3 <= 0) {

        } else if (sub_080020F4() != 0) {

        } else {
            actorKey = arg0;
            asm("" : "+r"(actorKey));
            three = 3;
            if (actorKey > 0x100000U) {
                var_r1_2 = (struct T36AActor *)(t36AState + 0x7A4);
                var_r3_2 = 0;
                do {
                    if (var_r1_2->id == actorKey) goto actor_found;
                    var_r3_2++;
                    var_r1_2++;
                } while (var_r3_2 <= 14);
                sub_080003F0();
                var_r0_3 = NULL;
actor_done:
                if (var_r0_3 != NULL) {
                    var_r0_3->unk42 = three;
                }
            } else if (arg0 != 0) {
                temp_r2 = arg0 - 1;
                if (temp_r2 <= 4U) {
                    t36AOtherPose(temp_r2);
                }
            } else {
                t36APose(sub_080020F4(), three);
            }
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
            temp_r4_3 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140287U);
    while (sub_0805EEFC((void *)temp_r4_3) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
            data = sp8.data;
            var_r4 = 1;
            var_r3_3 = 0;
            inventory=&t36AInventory;
            asm("" : "+r"(inventory));
            zero = 0;
loop_57:
            temp_r1_2 = t36AItemAddr(*inventory, var_r3_3);
            if (((*(u16 *)(temp_r1_2 + 0x150)) != 1) || ((*(u16 *)(temp_r1_2 + 0x152)) != 0x2D) || (var_r4 -= 1, (*(u16 *)(temp_r1_2 + 0x150)) = zero, (*(u16 *)(temp_r1_2 + 0x152)) = zero, (var_r4 != 0))) {
                var_r3_3 += 1;
                if (var_r3_3 <= 0x18U) {
                    goto loop_57;
                }
            }
            if (sub_0800CE30() == 0) {
                t36AInit(&sp8, 6, 0x37);
                ci = 0;
                fill=data;
                fillzero=0;
                asm("" : "+r"(fill), "+r"(fillzero));
                do {
                    fill[ci] = fillzero;
                    ci += 1;
                } while (ci <= 0xBU);
                var_r4_3=0; do { t36AEmit(&sp8); var_r4_3++; } while (var_r4_3 < t36ACount(1));
                sub_08068070((u32) &sub_0805990C, 7U);
                if (!(gUnk_030027D0 & 0x20)) {
                    sub_08006D08(0x33U);
                }
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
                temp_r4_4 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140288U);
                while (sub_0805EEFC((void *)temp_r4_4) == 0) {
                    if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
                    sub_080003F0();
                }
            } else {
                t36AInit(&sp8, 6, 0x38);
                ci = 0;
                fill=data;
                fillzero=0;
                asm("" : "+r"(fill), "+r"(fillzero));
                do {
                    fill[ci] = fillzero;
                    ci += 1;
                } while (ci <= 0xBU);
                var_r4_5=0; do { t36AEmit(&sp8); var_r4_5++; } while (var_r4_5 < t36ACount(1));
                sub_08068070((u32) &sub_0805990C, 7U);
                if (!(gUnk_030027D0 & 0x20)) {
                    sub_08006D08(0x33U);
                }
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
                temp_r4_5 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140289U);
    while (sub_0805EEFC((void *)temp_r4_5) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
            }
        }
    } else {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14028AU);
    while (sub_0805EEFC((void *)temp_r4) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    }
    temp_r2_2 = &gUnk_03003CE0[sub_080020F4()];
    temp_r2_2->flags = (s32) (temp_r2_2->flags & ~1);
    sub_0800D108();
}


struct T36Player { u8 pad0[0x20]; u16 unk20; u8 pad22[14]; u32 unk30; u8 pad34[0x118]; };
struct T36Task { u32 f0, f4, unk8, unkC; u8 *unk10; u32 f14, f18, f1c; u8 *unk20; u32 unk24; };
struct T36Actor { s32 id; u8 pad4[0x40]; u32 unk44; u8 pad48[0x28]; };
extern struct T36Player t36Players[] asm("gUnk_03003CE0");
extern u8 *t36State asm("gUnk_03005CF4");
extern void sub_08059250(void);
extern void sub_080290E4(s32, s32);
extern void sub_08029174(s32, s32);
extern void sub_0802939C(s32, s32);
extern void sub_0802949C(s32, s32);
extern void sub_0802996C(void);
void sub_08037B04(s32 input) {
    register s32 arg0 asm("r8") = input;
    struct T36Actor *var_r0;
    struct T36Actor *var_r1;
    register s32 temp_r0 asm("r1");
    register s32 raw asm("r0");
    register u32 taskArg asm("r0");
    u32 callback;
    u16 var_r4_2;
    u16 var_r5_2;
    u16 var_r5_3;
    u16 var_r5_4;
    u16 var_r5_5;
    u16 var_r5_6;
    u16 var_r5_7;
    u16 var_r5_8;
    u32 temp_r4;
    u32 var_r2;
    u32 endCallback;
    u32 var_r4;
    struct T36Task *var_r5;
    u32 var_r6;
    u8 *temp_r0_2;
    struct T36Player *temp_r2;
    struct T36Player *temp_r2_2;

    temp_r2 = &t36Players[sub_080020F4()];
    temp_r2->unk30 = (s32) (temp_r2->unk30 | 1);
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    temp_r4 = sub_0805DF38(1U, 0xFU, 2U, 0U, -2, 0x1401DFU);
    while (sub_0805EEFC((void *)temp_r4) == 0) sub_080003F0();
    var_r4 = sub_0805EF14((u8 *) temp_r4);
    if (var_r4 != 1) {

    } else {
        raw = sub_080020F4();
        temp_r0 = raw;
        asm("" : "+r"(temp_r0), "+r"(raw));
        if (raw == 1) goto mode1;
        if (raw > 1) goto upper_modes;
        if (raw == 0) goto mode0;
        goto mode_done;
upper_modes:
        if (temp_r0 == 2) goto mode2;
        if (temp_r0 == 3) goto mode3;
        goto mode_done;
mode0: var_r4 = 0x12C; goto mode_done;
mode1: var_r4 = 0x121; goto mode_done;
mode2: var_r4 = 0x137; goto mode_done;
found_actor:
        var_r0 = var_r1;
        goto actor_done;
mode3: var_r4 = 0x116;
mode_done:
        sub_0802939C(0, 8);
        sub_080290E4(0, 2);
        sub_08028AAC(0, (s32) (u16) var_r4, 0x54, 0x3C);
        callback = (u32)sub_0805A9F4;
        var_r5 = (struct T36Task *)(t36State + 0xE34);
        var_r6 = 0;
        goto task_check;
task_next:
        var_r6++;
        var_r5++;
task_check:
        if (var_r6 <= 29) {
            if (sub_08000470((u32)var_r5) != 0) goto task_next;
            while ((var_r5->unk20 = sub_08001494(0x400U)) == NULL) sub_080003F0();
            temp_r0_2 = var_r5->unk20;
            var_r5->unk8 = 0x3C;
            var_r5->unkC = callback;
            var_r5->unk10 = temp_r0_2 + 0x3FC;
            var_r5->unk24 = 0;
            taskArg = (u32)var_r5;
            asm("" : "+r"(taskArg));
            sub_08000274(taskArg, 0x01E00042);
        }
        sub_080290E4(0, 0);
        sub_08029174(0, 0x23);
        var_r5_2 = 0x3C;
        goto wait_30;
dec_30:
        var_r5_2--;
        if (var_r5_2 == 0) goto done_30;
wait_30:
        sub_080003F0();
        if (sub_080021A8() == 0) goto dec_30;
done_30:;

        sub_08028AAC(0, (s32) (u16) var_r4, 0x51, 0x3C);
        var_r5_3 = 0x1E;
        goto wait_33;
dec_33:
        var_r5_3--;
        if (var_r5_3 == 0) goto done_33;
wait_33:
        sub_080003F0();
        if (sub_080021A8() == 0) goto dec_33;
done_33:;

        sub_08028AAC(0, (s32) (u16) var_r4, 0x54, 0x3C);
        var_r5_4 = 0x1E;
        goto wait_36;
dec_36:
        var_r5_4--;
        if (var_r5_4 == 0) goto done_36;
wait_36:
        sub_080003F0();
        if (sub_080021A8() == 0) goto dec_36;
done_36:;

        sub_08028AAC(0, (s32) (u16) var_r4, 0x51, 0x3C);
        var_r5_5 = 0x1E;
        goto wait_39;
dec_39:
        var_r5_5--;
        if (var_r5_5 == 0) goto done_39;
wait_39:
        sub_080003F0();
        if (sub_080021A8() == 0) goto dec_39;
done_39:;

        sub_08028AAC(0, (s32) (u16) var_r4, 0x54, 0x3C);
        var_r5_6 = 0x1E;
        goto wait_42;
dec_42:
        var_r5_6--;
        if (var_r5_6 == 0) goto done_42;
wait_42:
        sub_080003F0();
        if (sub_080021A8() == 0) goto dec_42;
done_42:;

        sub_0802996C();
        if (!(gUnk_030027D0 & 0x20)) {
            sub_08006D08(0x91U);
        }
        var_r5_7 = 0x1E;
        goto wait_47;
dec_47:
        var_r5_7--;
        if (var_r5_7 == 0) goto done_47;
wait_47:
        sub_080003F0();
        if (sub_080021A8() == 0) goto dec_47;
done_47:;

        sub_08029174(0, 0);
        sub_080290E4(0, 1);
        sub_08028AAC(0, (s32) (u16) var_r4, 0x4C, 0);
        var_r5_8 = 3;
        goto wait_50;
dec_50:
        var_r5_8--;
        if (var_r5_8 == 0) goto done_50;
wait_50:
        sub_080003F0();
        if (sub_080021A8() == 0) goto dec_50;
done_50:;

        sub_08028AAC(0, (s32) (u16) var_r4, 0x4E, 0);
        var_r4_2 = 0x14;
        goto wait_53;
dec_53:
        var_r4_2--;
        if (var_r4_2 == 0) goto done_53;
wait_53:
        sub_080003F0();
        if (sub_080021A8() == 0) goto dec_53;
done_53:;

        endCallback = (u32)sub_08059250;
        var_r1 = (struct T36Actor *)(t36State + 0x7A4);
        var_r2 = 0;
        do {
            if (var_r1->id == arg0) goto found_actor;
            var_r2++;
            var_r1++;
        } while (var_r2 <= 14);
        sub_080003F0();
        var_r0 = NULL;
actor_done:
        if (var_r0 != NULL) {
            var_r0->unk44 = endCallback;
        }
    }
    temp_r2_2 = &t36Players[sub_080020F4()];
    temp_r2_2->unk30 = (s32) (temp_r2_2->unk30 & ~1);
    sub_0800D108();
    t36Players[sub_080020F4()].unk20 = 0;
}

struct T36CCmd { u16 unk0,unk2; u8 data[12]; };
extern u8 *t36CState asm("gUnk_03005CF4");
extern u8 *t36CInventory asm("gUnk_030034E0");
extern void t36CEmit(struct T36CCmd *) asm("sub_0805AB20");
extern void sub_0805990C(void);
extern void sub_0802949C(s32,s32);
static inline u32 t36CTest2(u8 *p) { register s32 v asm("r0")=*p; register s32 shifted asm("r6"); register u32 mask asm("r0"); asm("" : "+r"(v)); shifted=v>>2; asm("" : "+r"(shifted)); mask=1; return shifted&mask; }
static inline u32 t36CTest6(u8 *p) { register s32 v asm("r0")=*p; register s32 shifted asm("r4"); register u32 mask asm("r0"); asm("" : "+r"(v)); shifted=v>>6; asm("" : "+r"(shifted)); mask=1; return shifted&mask; }
static inline u32 t36CAvailable(void) { register s32 v asm("r0")=sub_0805CFA0(); register u32 ok asm("r1")=1; if(v<0)ok=0; return ok; }
static inline u32 t36CCount(u32 n) { return n; }
static inline void t36CInit(struct T36CCmd *pp,u32 aa,u32 bb) { register struct T36CCmd *p asm("r0"); register u32 a asm("r1")=aa; register u32 b asm("r2")=bb; asm("" : "+r"(a), "+r"(b)); p=pp; asm("" : "+r"(p)); p->unk0=a; p->unk2=b; }
static inline u8 *t36CInvBase(u8 *base) { register u8 *p asm("r0")=base; u32 off; asm("" : "+r"(p)); off=0xC10; return p+off; }
void sub_08037DFC(s32 arg0) {
    struct T36CCmd sp8;
    u8 unused[16];
    register s32 temp_r1 asm("r1");
    register s32 temp_r4 asm("r4");
    register s32 temp_r6 asm("r6");
    s32 var_r1_2;
    register s32 var_r2 asm("r2");
    register s32 var_r5 asm("r5");
    s32 var_r7;
    u32 temp_r4_10;
    u32 temp_r4_11;
    u32 temp_r4_12;
    u32 temp_r4_13;
    u32 temp_r4_14;
    u32 temp_r4_15;
    u32 temp_r4_16;
    u32 temp_r4_2;
    u32 temp_r4_3;
    u32 temp_r4_4;
    u32 temp_r4_5;
    u32 temp_r4_6;
    u32 temp_r4_7;
    u32 temp_r4_8;
    u32 temp_r4_9;
    register u32 var_r1 asm("r1");
    register u8 *inventory asm("r3");
    register u32 var_r4 asm("r4");
    register u8 *fill asm("r1");
    register u32 fillzero asm("r2");
    u32 var_r4_2;
    u8 *var_r0;
    u8 *var_r0_2;
    struct Player *temp_r2;
    struct Player *temp_r2_2;

    temp_r2 = &gUnk_03003CE0[sub_080020F4()];
    temp_r2->flags = (s32) (temp_r2->flags | 1);
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    if (sub_0800CE30() != 0) {
        var_r5 = (*(u32 *)(t36CState+0x7C));
    } else {
        var_r5 = (*(u32 *)(t36CState+0x74));
    }
    if (sub_0800CE30() != 0) {
        var_r0 = t36CState + 0x1C6;
    } else {
        var_r0 = t36CState + 0x1BA;
    }
    temp_r6 = t36CTest2(var_r0);
    if (sub_0800CE30() != 0) {
        var_r0_2 = t36CState + 0x1C7;
    } else {
        var_r0_2 = t36CState + 0x1BB;
    }
    temp_r4 = t36CTest6(var_r0_2);
    var_r2 = 0;
    var_r1 = 0;
    inventory=t36CInvBase(t36CInventory);
    asm("" : "+r"(inventory));
    do {
        if (*(inventory + var_r1) != 0) {
            var_r2 += 1;
        }
        var_r1 += 1;
    } while (var_r1 <= 0x90U);
    var_r7 = 0;
    if (var_r2 == 0x91) {
        var_r7 = 1;
    }
    temp_r1 = sub_080020F4();
    if (temp_r4 == 0 && var_r7 != 0 && temp_r1 == 0) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_13 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140113U);
    while (sub_0805EEFC((void *)temp_r4_13) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
        var_r1_2 = t36CAvailable();
        if (var_r1_2 != 0) {
            t36CInit(&sp8, 6, 0x1E);
            var_r4 = 0;
            fill=sp8.data;
            fillzero=0;
            asm("" : "+r"(fill), "+r"(fillzero));
            do {
                fill[var_r4] = fillzero;
                var_r4 += 1;
            } while (var_r4 <= 0xBU);
            var_r4_2 = 0;
            do {
                t36CEmit(&sp8);
                var_r4_2 += 1;
            } while (var_r4_2 < t36CCount(1));
            if (!(gUnk_030027D0 & 0x20)) {
                sub_08006D08(0x33U);
            }
            sub_08068070((u32) &sub_0805990C, 0x26U);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
            temp_r4_15 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140114U);
    while (sub_0805EEFC((void *)temp_r4_15) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
            temp_r4_16 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140115U);
    while (sub_0805EEFC((void *)temp_r4_16) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
        } else {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
            temp_r4_14 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140116U);
    while (sub_0805EEFC((void *)temp_r4_14) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
        }
    } else {
        if (temp_r6 != 0) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
            temp_r4_2 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140112U);
    while (sub_0805EEFC((void *)temp_r4_2) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
        } else if (0x100 & var_r5) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
            temp_r4_3 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140111U);
    while (sub_0805EEFC((void *)temp_r4_3) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
        } else if (0x80 & var_r5) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
            temp_r4_4 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140110U);
    while (sub_0805EEFC((void *)temp_r4_4) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
        } else if (0x40 & var_r5) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
            temp_r4_5 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14010FU);
    while (sub_0805EEFC((void *)temp_r4_5) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
        } else if (0x20 & var_r5) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
            temp_r4_6 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14010EU);
    while (sub_0805EEFC((void *)temp_r4_6) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
        } else if (0x10 & var_r5) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
            temp_r4_7 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14010DU);
    while (sub_0805EEFC((void *)temp_r4_7) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
        } else if (8 & var_r5) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
            temp_r4_8 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14010CU);
    while (sub_0805EEFC((void *)temp_r4_8) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
        } else if (4 & var_r5) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
            temp_r4_9 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14010BU);
    while (sub_0805EEFC((void *)temp_r4_9) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
        } else if (2 & var_r5) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
            temp_r4_10 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14010AU);
    while (sub_0805EEFC((void *)temp_r4_10) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
        } else if ((var_r5 &= 1) != 0) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
            temp_r4_11 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140109U);
    while (sub_0805EEFC((void *)temp_r4_11) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
        } else {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
            temp_r4_12 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140108U);
    while (sub_0805EEFC((void *)temp_r4_12) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
        }
    }
    temp_r2_2 = &gUnk_03003CE0[sub_080020F4()];
    temp_r2_2->flags = (s32) (temp_r2_2->flags & ~1);
    sub_0800D108();
}


extern u8 *t36DState asm("gUnk_03005CF4");
extern void sub_0802949C(s32,s32);
extern void sub_08029788(s32);
static inline u32 t36DTest(u8 *p) { register s32 v asm("r0")=*p; register s32 shifted asm("r1"); register u32 mask asm("r0"); asm("" : "+r"(v)); shifted=v>>2; asm("" : "+r"(shifted)); mask=1; return shifted&mask; }
void sub_080384D4(s32 arg0) {
    register s32 var_r1 asm("r1");
    register u8 *base asm("r0");
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
    sub_0802949C(arg0, 0);
    if (sub_0800CE30() != 0) {
        var_r4 = (*(u32 *)(t36DState+0x7C));
    } else {
        var_r4 = (*(u32 *)(t36DState+0x74));
    }
    if (sub_0800CE30() != 0) {
        base=t36DState;
        asm("" : "+r"(base));
        var_r1 = 0x1C6;
    } else {
        base=t36DState;
        asm("" : "+r"(base));
        var_r1 = 0x1BA;
    }
    if (t36DTest(base + var_r1)) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140121U);
    while (sub_0805EEFC((void *)temp_r4) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (0x100 & var_r4) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_2 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140120U);
    while (sub_0805EEFC((void *)temp_r4_2) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (0x80 & var_r4) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_3 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14011FU);
    while (sub_0805EEFC((void *)temp_r4_3) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (0x40 & var_r4) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_4 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14011EU);
    while (sub_0805EEFC((void *)temp_r4_4) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (0x20 & var_r4) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_5 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14011DU);
    while (sub_0805EEFC((void *)temp_r4_5) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (0x10 & var_r4) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_6 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14011CU);
    while (sub_0805EEFC((void *)temp_r4_6) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (8 & var_r4) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_7 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14011BU);
    while (sub_0805EEFC((void *)temp_r4_7) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (4 & var_r4) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_8 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x14011AU);
    while (sub_0805EEFC((void *)temp_r4_8) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (2 & var_r4) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_9 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140119U);
    while (sub_0805EEFC((void *)temp_r4_9) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else if (var_r4 & 1) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_10 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140118U);
    while (sub_0805EEFC((void *)temp_r4_10) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    } else {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_11 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140117U);
    while (sub_0805EEFC((void *)temp_r4_11) == 0) { if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; } sub_080003F0(); }
    }
    sub_08029788(arg0);
    temp_r2_2 = &gUnk_03003CE0[sub_080020F4()];
    temp_r2_2->flags = (s32) (temp_r2_2->flags & ~1);
    sub_0800D108();
}


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
struct Cmd38D18 {u16 kind,value;u8 data[12];};
extern u8 *state38D18 asm("gUnk_03005CF4");
extern u8 *items38D18 asm("gUnk_030034E0");
extern void emit38D18(struct Cmd38D18 *) asm("sub_0805AB20");
extern void cb38D18(void) asm("sub_0805990C");
static inline u32 count38D18(u32 n){return n;}
static inline u8 *find38D18(u32 actor) { register u8 *p asm("r1");register u32 i asm("r3");register s32 raw asm("r0")=(s32)state38D18;register u32 off asm("r3")=0x7A4;p=(u8 *)raw+off;i=0;do{if(*(u32 *)p==actor)return p;i++;p+=0x70;}while(i<=14);sub_080003F0();return 0; }
void sub_08038D18(u32 arg){
 struct Cmd38D18 cmd;u8 unused[16];
 register u32 one asm("r4");register s32 raw asm("r0");
 register u32 offset asm("r1");register struct Player *p asm("r1");
 register u32 off1 asm("r1"); register u32 off3 asm("r3");
 u8 *selected;register u32 flag asm("r4");
 register s32 count asm("r3");register u32 i asm("r2");register u8 *item asm("r1");
 register u32 actor asm("r2"); register u8 *found asm("r0");
 register u8 *data asm("r6");register u32 left asm("r4");register u32 j asm("r3");u8 **inventory;register u32 zero asm("r5");
 register u32 a asm("r1");register u32 b asm("r2");register struct Cmd38D18 *c asm("r0");register u32 n asm("r4");
 u32 dialog;
 raw=sub_080020F4();offset=0x14C;offset*=raw;p=(struct Player *)((u8 *)gUnk_03003CE0+offset);raw=p->flags;one=1;raw|=one;p->flags=raw;
 sub_0800D0F4();
 if(sub_0800CE30()){raw=(s32)state38D18;off1=0x1C4;selected=(u8 *)raw+off1;}else{raw=(s32)state38D18;off3=0x1B8;selected=(u8 *)raw+off3;}
 raw=*selected;asm("" : "+r"(raw));raw>>=5;raw&=one;if(raw)goto progressed;
 while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14022C);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 count=0;i=0;{register u8 *v asm("r0");v=items38D18;one=0x150;item=v+one;}
 do{if(*(u16 *)item==1 && *(u16 *)(item+2)==0x2A)count++;item+=16;i++;}while(i<=24);
 if(count<=0)goto done;
 if(sub_080020F4())goto other;
 actor=arg;flag=3;
 if(actor>0x100000){found=find38D18(actor);if(found)*(u16 *)(found+0x42)=flag;}
 else if(arg){actor=arg-1;if(actor<=4){register u8 **base asm("r1")=(u8 **)&gUnk_030056F4;raw=actor*0x2E0;base=(u8 **)((u8 *)*base+raw);sub_08019EB8(*(u16 *)((u8 *)base+2),3);}}
 else{raw=sub_080020F4()*0x14C;{register u8 *base asm("r1")=(u8 *)gUnk_03003CE0;raw+=(s32)base;off1=0x11E;raw+=off1;*(u16 *)raw=flag;}}
 data=cmd.data;
 while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14022D);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 left=1;j=0;inventory=&items38D18;asm("" : "+r"(inventory));zero=0;
 do{
 register u8 *slot asm("r1");register u8 *v asm("r0");register u32 k asm("r0");register u16 *kind asm("r2");
 v=*inventory;slot=v+j*16;k=0x150;asm("" : "+r"(k));kind=(u16 *)(slot+k);
 if(*kind!=1)goto next;
 {register u16 *value asm("r1");k=0x152;asm("" : "+r"(k));value=(u16 *)(slot+k);if(*value!=0x2A)goto next;left--;*kind=zero;*value=zero;if(!left)goto removed;}
next:j++;
 }while(j<=24);
removed:
 if(sub_0800CE30())goto modeB;
 a=1;b=43;c=&cmd;c->kind=a;c->value=b;
 {register u8 *v asm("r1");register u32 z asm("r2");n=0;v=data;z=0;do{v[n]=z;n++;}while(n<=11);}
 n=0;do{emit38D18(&cmd);n++;}while(n<count38D18(1));
 sub_08068070((u32)cb38D18,13);if(!(gUnk_030027D0&0x20))sub_08006D08(0x33);
 while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14022E);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 goto done;
modeB:
 a=1;b=50;c=&cmd;c->kind=a;c->value=b;
 {register u8 *v asm("r1");register u32 z asm("r2");n=0;v=data;z=0;do{v[n]=z;n++;}while(n<=11);}
 n=0;do{emit38D18(&cmd);n++;}while(n<count38D18(1));
 sub_08068070((u32)cb38D18,13);if(!(gUnk_030027D0&0x20))sub_08006D08(0x33);
 while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14022F);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 goto done;
other:
 while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x140231);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 goto done;
progressed:
 if(sub_0800CE30()){raw=(s32)state38D18;raw+=0x80;off1=0x80;flag=*(u32 *)raw;}else{raw=(s32)state38D18;off1=0x80;flag=*(u32 *)(raw+0x78);}flag &=off1;
 if(sub_0800CE30()){raw=(s32)state38D18;off1=0x1C3;asm("" : "+r"(off1));selected=(u8 *)raw+off1;}else{raw=(s32)state38D18;off3=0x1B7;asm("" : "+r"(off3));selected=(u8 *)raw+off3;}
 raw=*selected;asm("" : "+r"(raw));off1=raw>>5;off1 &=1;
 if(!off1)goto progressCheck;
 while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14027A);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 goto done;
progressCheck:
 if(!flag)goto idle;
 while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x140279);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 if(sub_0800CE30()){raw=(s32)state38D18;raw+=0x80;off1=0x40000;raw=*(u32 *)raw;}else{raw=(s32)state38D18;off1=0x40000;raw=*(u32 *)(raw+0x78);}
 raw &=off1;if(raw)goto done;
 if(!(gUnk_030027D0&0x20))sub_08006D08(0x32);
 if(sub_0800CE30()){
 register u32 *v asm("r1");register u32 bit asm("r2");v=(u32 *)(state38D18+0x80);bit=0x40000;*v |=bit;
 }else{
 register u8 *v asm("r2");v=state38D18;off1=0x40000;*(u32 *)(v+0x78)|=off1;
 }goto done;
idle:
 while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x140230);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
done:
 {register struct Player *v asm("r2");register u32 index asm("r2");index=sub_080020F4();index*=0x14C;v=(struct Player *)((u8 *)gUnk_03003CE0+index);v->flags &=~1;}sub_0800D108();
}

extern u8 *state392B4 asm("gUnk_03005CF4");
extern u8 *items392B4 asm("gUnk_030034E0");
extern void emit392B4(s16 *) asm("sub_0805AB20");
extern void cb392B4(void) asm("sub_0805990C");
static inline u32 count392B4(u32 n){return n;}
static inline u8 *find392B4(u32 actor) { register u8 *p asm("r1");register u32 i asm("r3");register s32 raw asm("r0")=(s32)state392B4;register u32 off asm("r3")=0x7A4;p=(u8 *)raw+off;i=0;do{if(*(u32 *)p==actor)return p;i++;p+=0x70;}while(i<=14);sub_080003F0();return 0; }
void sub_080392B4(u32 arg){
 u8 unused[16];s16 cmd[2];volatile u32 amount;u8 tail[8];
 register u32 one asm("r4");register s32 raw asm("r0");
 register u32 offset asm("r1");register struct Player *p asm("r1");
 register u32 off1 asm("r1"); register u32 off3 asm("r3");
 u8 *selected;register u32 flag asm("r4");
 register s32 count asm("r3");register u32 i asm("r2");register u8 *item asm("r1");
 register u32 actor asm("r2"); register u8 *found asm("r0");
 register s16 *data asm("r6");register s16 *out asm("r4");register u32 value asm("r7");register u32 kind asm("r6");register u32 sends asm("r5");register u32 left asm("r4");register u32 j asm("r3");u8 **inventory;register u32 zero asm("r5");
 register u32 a asm("r1");register u32 b asm("r2");register struct Cmd392B4 *c asm("r0");register u32 n asm("r4");
 register u8 **inventoryFirst asm("r6");u32 dialog;register u32 callback asm("r7");
 {register struct Player *v asm("r2");register u32 index asm("r2");index=sub_080020F4();index*=0x14C;v=(struct Player *)((u8 *)gUnk_03003CE0+index);v->flags |=1;}
 sub_0800D0F4();sub_0802949C(arg,0);
 if(sub_0800CE30()){raw=(s32)state392B4;raw+=0x80;off1=8;raw=*(u32 *)raw;}else{raw=(s32)state392B4;off1=8;raw=*(u32 *)(raw+0x78);}raw &=off1;if(raw)goto enabled;
 while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x140263);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 goto done;
enabled:
 if(sub_0800CE30()){raw=(s32)state392B4;off1=0x1C3;selected=(u8 *)raw+off1;}else{raw=(s32)state392B4;off3=0x1B7;selected=(u8 *)raw+off3;}
 raw=*selected;asm("" : "+r"(raw));off1=raw>>4;off1 &=1;if(off1)goto progressed;
 while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x140264);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 count=0;i=0;{register u8 *v asm("r0");v=items392B4;one=0x150;item=v+one;}
 do{if(*(u16 *)item==1 && *(u16 *)(item+2)==0x2F)count++;item+=16;i++;}while(i<=24);
 if(count<=0)goto done;
 if(sub_080020F4())goto other;
 actor=arg;flag=3;
 if(actor>0x100000){found=find392B4(actor);if(found)*(u16 *)(found+0x42)=flag;}
 else if(arg){actor=arg-1;if(actor<=4){register u8 **base asm("r1")=(u8 **)&gUnk_030056F4;raw=actor*0x2E0;base=(u8 **)((u8 *)*base+raw);sub_08019EB8(*(u16 *)((u8 *)base+2),3);}}
 else{raw=sub_080020F4()*0x14C;{register u8 *base asm("r1")=(u8 *)gUnk_03003CE0;raw+=(s32)base;off1=0x11E;raw+=off1;*(u16 *)raw=flag;}}

 while(sub_0805F184())sub_080003F0();dialog=sub_0805DF38(1,15,2,0,-2,0x140265);
 while(!sub_0805EEFC((void *)dialog))sub_080003F0();flag=sub_0805EF14((u8 *)dialog);asm("" : "+r"(flag));if(!flag)goto rejected;
 while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x140267);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 left=1;j=0;callback=(u32)cb392B4;asm("" : "+r"(callback));
inventoryFirst=&items392B4;asm("" : "+r"(inventoryFirst));zero=0;
 do{
 register u8 *slot asm("r1");register u8 *v asm("r0");register u32 k asm("r0");register u16 *kind asm("r2");
 v=*inventoryFirst;slot=v+j*16;k=0x150;asm("" : "+r"(k));kind=(u16 *)(slot+k);
 if(*kind!=1)goto next;
 {register u16 *value asm("r1");k=0x152;asm("" : "+r"(k));value=(u16 *)(slot+k);if(*value!=0x2F)goto next;left--;*kind=zero;*value=zero;if(!left)goto removed;}
next:j++;
 }while(j<=24);
removed: sub_08068070(callback,4);goto done;
rejected:
 data=cmd;
 while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x140268);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 if(sub_0800CE30())goto modeB;
 left=1;j=0;inventory=&items392B4;asm("" : "+r"(inventory));zero=0;
 do{
 register u8 *slot asm("r1");register u8 *v asm("r0");register u32 k asm("r0");register u16 *kind asm("r2");
 v=*inventory;slot=v+j*16;k=0x150;asm("" : "+r"(k));kind=(u16 *)(slot+k);
 if(*kind!=1)goto nextA;
 {register u16 *value asm("r1");k=0x152;asm("" : "+r"(k));value=(u16 *)(slot+k);if(*value!=0x2F)goto nextA;left--;*kind=zero;*value=zero;if(!left)goto removedA;}
nextA:j++;
 }while(j<=24);
removedA: value=3000;sends=0;out=data;kind=10;
 do{*out=kind;amount=value;emit392B4(out);sends++;}while(sends<count392B4(1));
 sub_08068070((u32)cb392B4,4);if(!(gUnk_030027D0&0x20))sub_08006D08(0x33);
 while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x140269);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 goto done;
modeB:
 left=1;j=0;inventory=&items392B4;asm("" : "+r"(inventory));zero=0;
 do{
 register u8 *slot asm("r1");register u8 *v asm("r0");register u32 k asm("r0");register u16 *kind asm("r2");
 v=*inventory;slot=v+j*16;k=0x150;asm("" : "+r"(k));kind=(u16 *)(slot+k);
 if(*kind!=1)goto nextB;
 {register u16 *value asm("r1");k=0x152;asm("" : "+r"(k));value=(u16 *)(slot+k);if(*value!=0x2F)goto nextB;left--;*kind=zero;*value=zero;if(!left)goto removedB;}
nextB:j++;
 }while(j<=24);
removedB: value=10000;sends=0;out=data;kind=10;
 do{*out=kind;amount=value;emit392B4(out);sends++;}while(sends<count392B4(1));
 sub_08068070((u32)cb392B4,4);if(!(gUnk_030027D0&0x20))sub_08006D08(0x33);
 while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14026B);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 goto done;
other:
 while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x140266);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 goto done;
progressed:
 if(sub_0800CE30()){raw=(s32)state392B4;raw+=0x80;off1=0x80;flag=*(u32 *)raw;}else{raw=(s32)state392B4;off1=0x80;flag=*(u32 *)(raw+0x78);}flag &=off1;
 if(sub_0800CE30()){raw=(s32)state392B4;off1=0x1C3;asm("" : "+r"(off1));selected=(u8 *)raw+off1;}else{raw=(s32)state392B4;off3=0x1B7;asm("" : "+r"(off3));selected=(u8 *)raw+off3;}
 raw=*selected;asm("" : "+r"(raw));off1=raw>>5;off1 &=1;
 if(!off1)goto progressCheck;
 while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14027C);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 goto done;
progressCheck:
 if(!flag)goto idle;
 while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14027B);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 if(sub_0800CE30()){raw=(s32)state392B4;raw+=0x80;off1=0x40000;raw=*(u32 *)raw;}else{raw=(s32)state392B4;off1=0x40000;raw=*(u32 *)(raw+0x78);}
 raw &=off1;if(raw)goto done;
 if(!(gUnk_030027D0&0x20))sub_08006D08(0x32);
 if(sub_0800CE30()){
 register u32 *v asm("r1");register u32 bit asm("r2");v=(u32 *)(state392B4+0x80);bit=0x40000;*v |=bit;
 }else{
 register u8 *v asm("r2");v=state392B4;off1=0x40000;*(u32 *)(v+0x78)|=off1;
 }goto done;
idle:
 while(sub_0805F184())sub_080003F0();while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x140263);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
done:
 {register struct Player *v asm("r2");register u32 index asm("r2");index=sub_080020F4();index*=0x14C;v=(struct Player *)((u8 *)gUnk_03003CE0+index);v->flags &=~1;}sub_0800D108();
}
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
extern u8 *state39F00 asm("gUnk_03005CF4");
extern u8 *inv39F00 asm("gUnk_030034E0");
struct Cmd39F00 { u16 kind,value; u8 data[12]; };
extern void emit39F00(struct Cmd39F00 *) asm("sub_0805AB20");
static inline u32 count39F00(u32 n){return n;}
void sub_08039F00(s32 arg) {
 struct Cmd39F00 cmd; u8 unused[16];
 register s32 player asm("r4");
 register s32 total asm("r5");
 register s32 count asm("r3");
 register s32 saved asm("r6");
 register s32 sum asm("r8");
 register u32 idx asm("r2");
 register u8 *item asm("r1");
 register u8 *base asm("r0");
 register u32 off asm("r1");
 register s32 left asm("r4");
 register u32 scan asm("r3");
 register u32 zero asm("r5");
 register u8 **inventory asm("r6");
 register u8 *data asm("r6");
 register u32 i asm("r4");
 register u32 a asm("r1"); register u32 b asm("r2");
 register struct Cmd39F00 *c asm("r0");
 u32 dialog;
 {register struct Player *p asm("r2"); register u32 index asm("r2"); index=sub_080020F4();index*=0x14C;p=(struct Player *)((u8 *)gUnk_03003CE0+index);p->flags |=1;}
 sub_0800D0F4(); sub_08028AAC(arg,0x6F,0xDD,0);sub_0802949C(arg,0);
 player=sub_080020F4();
 if(sub_0800CE30()){base=state39F00;off=0x1BD;}else{base=state39F00;off=0x1B1;}
 {register u32 v asm("r0");v=base[off];asm("" : "+r"(v));total=v;}
 if(total>9) goto complete;
 if(player) goto other;
 count=0;idx=0;{register u8 *v asm("r0");register u32 n asm("r4");v=inv39F00;n=0x150;item=v+n;}
 do {if(*(u16 *)item==1 && *(u16 *)(item+2)==0x2E) count++;item+=16;idx++;}while(idx<=24);
 saved=count; if(saved<=0) goto missing;
 while(sub_0805F184())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-2,0x14025B);
 while(!sub_0805EEFC((void *)dialog))sub_080003F0();
 if(!sub_0805EF14((u8 *)dialog))goto rejected;
 total+=saved;sum=total;
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14025C);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 left=saved;scan=0;inventory=&inv39F00;zero=0;
 do {
  register u8 *slot asm("r1");register u8 *v asm("r0");register u32 n asm("r0");register u16 *kind asm("r2");
  v=*inventory;slot=v+scan*16;n=0x150;asm("" : "+r"(n));kind=(u16 *)(slot+n);
  if(*kind!=1)goto next;
  {register u16 *value asm("r1");n=0x152;asm("" : "+r"(n));value=(u16 *)(slot+n);if(*value!=0x2E)goto next;left--;*kind=zero;*value=zero;if(left==0)goto removed;}
next: scan++;
 }while(scan<=24);
removed:
 total=sum;{register u32 v asm("r0");v=total<<24;asm("" : "+r"(v));i=v>>24;}
 if(sub_0800CE30()){base=state39F00;off=0x1BD;}else{base=state39F00;off=0x1B1;}
 base[off]=i;
 if(total<=9)goto restore;
 data=cmd.data;
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14025E);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 sub_08068070((u32)sub_08059340,total);
 i=sub_0800CE30();asm("" : "+r"(i));if(i)goto modeB;
 if(!(gUnk_030027D0&0x20))sub_08006D08(0x33);
 a=6;b=88;c=&cmd;c->kind=a;c->value=b;
 {register u8 *v asm("r1");register u32 z asm("r2");i=0;v=data;z=0;do{v[i]=z;i++;}while(i<=11);}
 i=0;do{emit39F00(&cmd);i++;}while(i<count39F00(1));
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14025F);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 goto rewardDone;
modeB:
 if(!(gUnk_030027D0&0x20))sub_08006D08(0x33);
 a=6;b=35;c=&cmd;c->kind=a;c->value=b;
 {register u8 *v asm("r1");register u32 z asm("r2");i=0;v=data;z=0;do{v[i]=z;i++;}while(i<=11);}
 i=0;do{emit39F00(&cmd);i++;}while(i<count39F00(1));
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x140260);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
rewardDone:
 {register struct Player *p asm("r2"); register u32 index asm("r2"); index=sub_080020F4();index*=0x14C;p=(struct Player *)((u8 *)gUnk_03003CE0+index);p->flags &=~1;}
 sub_0800D108();
 goto end;
rejected:
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14025D);
 goto rejectedPoll;
rejectedYield: sub_080003F0();
rejectedPoll:
 if(sub_0805EEFC((void *)dialog))goto restore;
 if(!sub_0800CDF8())goto rejectedYield;
 goto cancelRestore;
 goto restore;
missing:
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x140259);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){cancelRestore: sub_0805EFBC();break;}sub_080003F0();}
restore:
 sub_080290E4(arg,0);sub_08028D98(arg,0,3,4);goto done;
other:
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x14025A);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 goto done;
complete:
 if(player==0){
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x140261);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }else{
 while(sub_0805F184())sub_080003F0();
 while(sub_0805EF90())sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-1,0x140262);
 while(!sub_0805EEFC((void *)dialog)){if(sub_0800CDF8()){sub_0805EFBC();break;}sub_080003F0();}
 }
done:
 {register struct Player *p asm("r2"); register u32 index asm("r2"); index=sub_080020F4();index*=0x14C;p=(struct Player *)((u8 *)gUnk_03003CE0+index);p->flags &=~1;}
 sub_0800D108();
end:;
}
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
