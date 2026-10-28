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

INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0807A5D4);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0807B7B4);
void sub_0807BD78(u32 kind, u32 index)
{
    switch (kind) {
    case 0: {
        register u8 *base asm("r0") = (u8 *)gUnk_030034E0;
        register u32 offset asm("r1") = index * 16;
        *(u16 *)(base + offset + 0x150) = 0;
        break; }
    case 1: {
        register u8 *base asm("r2") = (u8 *)gUnk_030034E0;
        register u8 *dest asm("r0") = base + index * 16;
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
        { register u8 *base asm("r0") = (u8 *)gUnk_03006440;
        register u32 offset asm("r1") = index * 16;
        *(u16 *)(base + offset + 0x104) = 0;
        break; }
    }
}
struct Copy7BEA0 { u32 words[4]; };
void sub_0807BEA0(u32 kind, u32 index, struct Copy7BEA0 *item)
{
    switch (kind) {
    case 0:
        { register u8 *base asm("r1") = (u8 *)gUnk_030034E0;
        register u32 offset asm("r0") = index * 16;
        base += offset;
        base += 0x150;
        *(struct Copy7BEA0 *)base = *item; } break;
    case 1:
        { register u8 *base asm("r1") = (u8 *)gUnk_030034E0;
        register u32 offset asm("r0") = index * 16;
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
        { register u8 *base asm("r1") = (u8 *)gUnk_03006440;
        register u32 offset asm("r0") = index * 16;
        base += offset;
        base += 0x104;
        *(struct Copy7BEA0 *)base = *item; } break;
    }
}
struct Item7C014 { u16 kind; u16 pad; u32 count; u32 rest[2]; };
void sub_0807C014(u32 arg0)
{
    register u32 amount asm("r4") = arg0;
    register u32 minimum asm("r5");
    register u32 selected asm("r6");
    register u32 i asm("r3");
    u32 remaining;
    register u8 *base asm("r0");
    register u32 offset asm("r7");
    register s32 *ptr1 asm("r1");
    register s32 *ptr7 asm("r7");
    register struct Item7C014 *chosen asm("r10");
    register s32 *inventory asm("r8") = &gUnk_030034E0;
    register s32 *inventory2 asm("r9") = inventory;
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
            register u32 *item asm("r0");
            register u32 value asm("r1");
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
                register struct Item7C014 *p asm("r1") = chosen;
                register u32 zero asm("r0");
                amount -= p->count;
                zero = 0;
                p->count = zero;
                p->kind = zero;
                goto loop;
            }
            {
                register struct Item7C014 *p asm("r2") = chosen;
                register u32 result asm("r0") = p->count - amount;
                p->count = result;
                if (result == 0) p->kind = result;
            }
        }
    }
}
struct Item7C114 { u16 kind; u16 pad; u32 count; u8 flag; u8 rest[7]; };
struct Manager7C114 { u32 kind; u32 f4; u32 f8; u8 padC[12]; u32 f18; u32 f1C; u32 f20; u8 pad24[0xD0]; struct Item7C114 item; };
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
    { register u32 *zp asm("r0") = &zero;
    register void *dst asm("r1");
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
#ifdef NONMATCHING
// Generated full control-flow draft; field types and register allocation remain unverified.
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
void sub_0807C29C(void) {
    s32 sp4[4];
    u32 sp14;
    s32 sp18[4];
    s32 sp28;
    s32 sp2C;
    u32 sp30;
    u32 sp34;
    u32 sp38;
    s16 var_r0_10;
    u32 temp_r0_59;
    u32 temp_r0_62;
    u32 temp_r0_63;
    u32 temp_r0_67;
    u32 temp_r0_8;
    u32 temp_r1_16;
    u32 temp_r1_39;
    u32 temp_r2_10;
    u32 temp_r2_38;
    u32 temp_r2_42;
    u32 temp_r2_43;
    u32 temp_r2_6;
    u32 temp_r2_9;
    u32 temp_r3_37;
    u32 temp_r3_5;
    u32 temp_r4_20;
    u32 temp_r4_22;
    u32 var_r1_11;
    u32 var_r1_12;
    u32 var_r1_15;
    u32 var_r2_10;
    u32 var_r2_12;
    u32 var_r2_13;
    u32 var_r2_2;
    u32 var_r2_3;
    u32 var_r2_4;
    u32 var_r2_5;
    u32 var_r2_6;
    u32 var_r3_3;
    u32 var_r4_3;
    s32 temp_r0;
    s32 temp_r0_100;
    s32 temp_r0_102;
    s32 temp_r0_103;
    s32 temp_r0_113;
    s32 temp_r0_115;
    s32 temp_r0_119;
    s32 temp_r0_120;
    s32 temp_r0_99;
    s32 temp_r0_9;
    s32 temp_r1_17;
    s32 temp_r1_34;
    s32 temp_r1_37;
    s32 temp_r1_38;
    s32 temp_r1_3;
    s32 temp_r1_41;
    s32 temp_r1_42;
    s32 temp_r1_48;
    s32 temp_r1_51;
    s32 temp_r1_52;
    s32 temp_r1_53;
    s32 temp_r1_62;
    s32 temp_r1_6;
    s32 temp_r2_39;
    s32 temp_r2_45;
    s32 temp_r2_46;
    s32 temp_r2_47;
    s32 temp_r2_4;
    s32 temp_r2_60;
    s32 temp_r2_61;
    s32 temp_r2_63;
    s32 temp_r3_26;
    s32 temp_r3_28;
    s32 temp_r3_29;
    s32 temp_r3_38;
    s32 temp_r3_3;
    s32 temp_r3_40;
    s32 temp_r3_4;
    s32 temp_r3_6;
    s32 temp_r3_7;
    s32 temp_r3_8;
    s32 temp_r3_9;
    s32 temp_r4_19;
    s32 temp_r4_21;
    s32 temp_r5;
    s32 temp_r5_12;
    s32 temp_r5_13;
    s32 temp_r5_16;
    s32 temp_r5_17;
    s32 temp_r6_9;
    s32 temp_r7;
    s32 temp_r7_4;
    s32 var_r0_11;
    s32 var_r0_12;
    s32 var_r0_13;
    s32 var_r0_14;
    s32 var_r0_15;
    s32 var_r0_16;
    s32 var_r0_17;
    s32 var_r0_8;
    s32 var_r1_14;
    s32 var_r1_16;
    s32 var_r1_17;
    s32 var_r1_18;
    s32 var_r1_9;
    s32 var_r2_11;
    s32 var_r2_14;
    s32 var_r2_8;
    s32 var_r2_9;
    s32 var_r5;
    s8 var_r6;
    u32 temp_r0_108;
    u32 temp_r1;
    u32 temp_r1_29;
    u32 temp_r1_63;
    u32 temp_r3_45;
    u32 var_r1_7;
    u32 var_r1_8;
    u16 temp_r0_109;
    u16 temp_r0_122;
    u16 temp_r0_123;
    u16 temp_r0_125;
    u16 temp_r0_126;
    u16 temp_r0_12;
    u16 temp_r0_21;
    u16 temp_r0_41;
    u16 temp_r0_4;
    u16 temp_r0_52;
    u16 temp_r0_5;
    u16 temp_r0_74;
    u16 temp_r0_7;
    u16 temp_r1_36;
    u16 temp_r2_13;
    u16 temp_r2_16;
    u16 temp_r2_20;
    u16 temp_r2_24;
    u16 temp_r2_26;
    u16 temp_r2_34;
    u16 temp_r2_35;
    u16 temp_r2_37;
    u16 temp_r2_3;
    u16 temp_r2_41;
    u16 temp_r2_44;
    u16 temp_r3_10;
    u16 temp_r3_13;
    u16 temp_r3_14;
    u16 temp_r3_15;
    u16 temp_r3_16;
    u16 temp_r3_17;
    u16 temp_r3_18;
    u16 temp_r3_21;
    u16 temp_r3_22;
    u16 temp_r3_23;
    u16 temp_r3_24;
    u16 temp_r3_25;
    u16 temp_r3_34;
    u16 temp_r3_35;
    u16 temp_r4_12;
    u16 temp_r4_13;
    u16 temp_r4_4;
    u16 temp_r4_5;
    u16 temp_r4_6;
    u16 temp_r5_15;
    u16 temp_r5_7;
    u16 temp_r6_10;
    u16 temp_r6_3;
    u16 temp_r6_4;
    u16 temp_r7_2;
    u16 temp_r7_3;
    u16 var_r1_6;
    u16 var_r5_2;
    u32 temp_r1_40;
    u32 temp_r2_62;
    u32 temp_r2_8;
    u32 temp_r3_33;
    u32 temp_r4_18;
    u32 var_r4;
    u32 var_r4_2;
    u32 temp_r0_101;
    u32 temp_r0_104;
    u32 temp_r0_105;
    u32 temp_r0_106;
    u32 temp_r0_107;
    u32 temp_r0_110;
    u32 temp_r0_111;
    u32 temp_r0_112;
    u32 temp_r0_114;
    u32 temp_r0_116;
    u32 temp_r0_117;
    u32 temp_r0_118;
    u32 temp_r0_11;
    u32 temp_r0_121;
    u32 temp_r0_124;
    u32 temp_r0_13;
    u32 temp_r0_14;
    u32 temp_r0_15;
    u32 temp_r0_16;
    u32 temp_r0_17;
    u32 temp_r0_18;
    u32 temp_r0_19;
    u32 temp_r0_20;
    u32 temp_r0_22;
    u32 temp_r0_23;
    u32 temp_r0_24;
    u32 temp_r0_25;
    u32 temp_r0_27;
    u32 temp_r0_2;
    u32 temp_r0_30;
    u32 temp_r0_32;
    u32 temp_r0_33;
    u32 temp_r0_35;
    u32 temp_r0_37;
    u32 temp_r0_3;
    u32 temp_r0_40;
    u32 temp_r0_42;
    u32 temp_r0_43;
    u32 temp_r0_44;
    u32 temp_r0_45;
    u32 temp_r0_46;
    u32 temp_r0_47;
    u32 temp_r0_48;
    u32 temp_r0_51;
    u32 temp_r0_53;
    u32 temp_r0_54;
    u32 temp_r0_55;
    u32 temp_r0_56;
    u32 temp_r0_57;
    u32 temp_r0_60;
    u32 temp_r0_61;
    u32 temp_r0_65;
    u32 temp_r0_66;
    u32 temp_r0_77;
    u32 temp_r0_78;
    u32 temp_r0_79;
    u32 temp_r0_80;
    u32 temp_r0_97;
    u32 temp_r0_98;
    u32 temp_r1_18;
    u32 temp_r1_19;
    u32 temp_r1_20;
    u32 temp_r1_27;
    u32 temp_r1_28;
    u32 temp_r1_31;
    u32 temp_r1_32;
    u32 temp_r1_35;
    u32 temp_r1_44;
    u32 temp_r1_45;
    u32 temp_r1_49;
    u32 temp_r1_4;
    u32 temp_r1_50;
    u32 temp_r1_54;
    u32 temp_r1_55;
    u32 temp_r1_56;
    u32 temp_r1_57;
    u32 temp_r1_58;
    u32 temp_r1_59;
    u32 temp_r1_5;
    u32 temp_r1_60;
    u32 temp_r1_61;
    u32 temp_r1_64;
    u32 temp_r1_7;
    u32 temp_r2;
    u32 temp_r2_11;
    u32 temp_r2_12;
    u32 temp_r2_14;
    u32 temp_r2_15;
    u32 temp_r2_17;
    u32 temp_r2_18;
    u32 temp_r2_21;
    u32 temp_r2_22;
    u32 temp_r2_25;
    u32 temp_r2_27;
    u32 temp_r2_28;
    u32 temp_r2_2;
    u32 temp_r2_31;
    u32 temp_r2_32;
    u32 temp_r2_33;
    u32 temp_r2_36;
    u32 temp_r2_40;
    u32 temp_r2_49;
    u32 temp_r2_50;
    u32 temp_r2_51;
    u32 temp_r2_53;
    u32 temp_r2_54;
    u32 temp_r2_55;
    u32 temp_r2_56;
    u32 temp_r2_57;
    u32 temp_r2_58;
    u32 temp_r2_59;
    u32 temp_r2_5;
    u32 temp_r3;
    u32 temp_r3_11;
    u32 temp_r3_12;
    u32 temp_r3_19;
    u32 temp_r3_2;
    u32 temp_r3_30;
    u32 temp_r3_31;
    u32 temp_r3_36;
    u32 temp_r3_39;
    u32 temp_r3_41;
    u32 temp_r3_42;
    u32 temp_r3_44;
    u32 temp_r4;
    u32 temp_r4_10;
    u32 temp_r4_11;
    u32 temp_r4_14;
    u32 temp_r4_15;
    u32 temp_r4_23;
    u32 temp_r4_3;
    u32 temp_r4_7;
    u32 temp_r4_8;
    u32 temp_r4_9;
    u32 temp_r5_10;
    u32 temp_r5_11;
    u32 temp_r5_14;
    u32 temp_r5_2;
    u32 temp_r5_3;
    u32 temp_r5_4;
    u32 temp_r5_5;
    u32 temp_r5_8;
    u32 temp_r5_9;
    u32 temp_r6;
    u32 temp_r6_11;
    u32 temp_r6_7;
    u32 temp_r6_8;
    u32 temp_r7_5;
    u32 var_r0;
    u32 var_r0_2;
    u32 var_r0_3;
    u32 var_r0_4;
    u32 var_r0_5;
    u32 var_r0_6;
    u32 var_r0_7;
    u32 var_r0_9;
    u32 var_r1;
    u32 var_r1_10;
    u32 var_r1_2;
    u32 var_r1_3;
    u32 var_r1_4;
    u32 var_r1_5;
    u32 var_r2;
    u32 var_r2_7;
    u32 var_r3;
    u32 var_r3_2;
    u32 var_r5_10;
    u32 var_r5_3;
    u32 var_r5_4;
    u32 var_r5_5;
    u32 var_r5_6;
    u32 var_r5_7;
    u32 var_r5_8;
    u32 var_r5_9;
    u32 var_r7;
    u32 temp_r4_16;
    u32 temp_r4_17;
    u8 temp_r2_29;
    u8 temp_r2_30;
    u8 temp_r6_12;
    u8 temp_r6_5;
    u8 temp_r6_6;
    void *temp_r0_10;
    void *temp_r0_26;
    void *temp_r0_28;
    void *temp_r0_29;
    void *temp_r0_31;
    void *temp_r0_34;
    void *temp_r0_36;
    void *temp_r0_38;
    void *temp_r0_39;
    void *temp_r0_49;
    void *temp_r0_50;
    void *temp_r0_58;
    void *temp_r0_64;
    void *temp_r0_68;
    void *temp_r0_69;
    void *temp_r0_6;
    void *temp_r0_70;
    void *temp_r0_71;
    void *temp_r0_72;
    void *temp_r0_73;
    void *temp_r0_75;
    void *temp_r0_76;
    void *temp_r0_81;
    void *temp_r0_82;
    void *temp_r0_83;
    void *temp_r0_84;
    void *temp_r0_85;
    void *temp_r0_86;
    void *temp_r0_87;
    void *temp_r0_88;
    void *temp_r0_89;
    void *temp_r0_90;
    void *temp_r0_91;
    void *temp_r0_92;
    void *temp_r0_93;
    void *temp_r0_94;
    void *temp_r0_95;
    void *temp_r0_96;
    void *temp_r1_10;
    void *temp_r1_11;
    void *temp_r1_12;
    void *temp_r1_13;
    void *temp_r1_14;
    void *temp_r1_15;
    void *temp_r1_21;
    void *temp_r1_22;
    void *temp_r1_23;
    void *temp_r1_24;
    void *temp_r1_25;
    void *temp_r1_26;
    void *temp_r1_2;
    void *temp_r1_30;
    void *temp_r1_33;
    void *temp_r1_43;
    void *temp_r1_46;
    void *temp_r1_47;
    void *temp_r1_8;
    void *temp_r1_9;
    void *temp_r2_19;
    void *temp_r2_23;
    void *temp_r2_48;
    void *temp_r2_52;
    void *temp_r2_7;
    void *temp_r3_20;
    void *temp_r3_27;
    void *temp_r3_32;
    void *temp_r3_43;
    void *temp_r4_2;
    void *temp_r5_6;
    void *temp_r6_2;
    void *var_r0_18;
    void *var_r0_19;
    void *var_r1_13;

    if (M2C_FIELD(gUnk_03006440, s32 *, 0x28) & 1) {
        keys29_03001308 = 0;
        keys29_03001324 &= 0xFFFE;
    }
    temp_r0 = sub_0801AAE0();
    if (temp_r0 == 0) {
        keys29_03001324 = (u16) temp_r0;
    }
    if (sub_0800CD8C() != 0) {
        keys29_0300130C = 0;
        keys29_03001324 = 0;
        keys29_03001308 = 0;
    }
    if (((sub_0800CF10() != 0) || (sub_0805F184() != 0) || (sub_0800CDF8() != 0) || (sub_0800D060() != 0)) && (sub_0801AAE0() != 0) && (sub_0801AC78() != 0)) {
        M2C_FIELD(gUnk_03006440, s32 *, 0x24) = 0;
    }
    temp_r0_2 = M2C_FIELD(gUnk_03006440, u32 *, 0x18);
    switch (temp_r0_2) {                            /* switch 1 */
    case 0:                                         /* switch 1 */
        if (!(0x10 & keys29_03001308)) {
            if (!(0x20 & keys29_03001308)) {
                if (0x40 & keys29_03001308) {
                    temp_r0_3 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                    if (temp_r0_3 > 4U) {
                        M2C_FIELD(gUnk_03006440, u32 *, 8) = temp_r0_3;
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r0_3 - 5);
                        goto block_828;
                    }
                } else {
                    temp_r0_4 = 0x80 & keys29_03001308;
                    sp30 = (u32) temp_r0_4;
                    if (temp_r0_4 != 0) {
                        temp_r2 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                        if (temp_r2 <= 0x13U) {
                            M2C_FIELD(gUnk_03006440, u32 *, 8) = temp_r2;
                            M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r2 + 5);
                            goto block_828;
                        }
                        if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0x16) {
                            M2C_FIELD(gUnk_03006440, u32 *, 8) = 0x14U;
                            M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 7U;
                            if (temp_r2 >= 0x14U) {
                                if (temp_r2 <= 0x15U) {
                                    M2C_FIELD(gUnk_03006440, u32 *, 4) = 1U;
                                    goto block_828;
                                }
                                if (temp_r2 <= 0x18U) {
                                    M2C_FIELD(gUnk_03006440, u32 *, 4) = 2U;
                                    goto block_828;
                                }
                            }
                        }
                    } else {
                        temp_r2_2 = 1 & keys29_03001324;
                        if (temp_r2_2 != 0) {
                            M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                            if (M2C_FIELD(gUnk_03006440, u32 *, 0) == 5) {
                                temp_r1 = M2C_FIELD(gUnk_03006440, u16 **, 0xF0);
                                temp_r0_5 = M2C_FIELD(temp_r1, u16 *, 0);
                                if ((temp_r0_5 != 0) && ((s32) temp_r0_5 <= 5) && ((s32) temp_r0_5 >= 2) && (M2C_FIELD(temp_r1, u8 *, 8) != 0)) {
                                    temp_r4 = sub_0805B0F0();
                                    if (temp_r4 >= sub_0805B068(M2C_FIELD(gUnk_03006440, u16 **, 0xF0))) {
                                        M2C_FIELD(M2C_FIELD(gUnk_03006440, u16 **, 0xF0), s8 *, 8) = 0;
                                        M2C_FIELD(gUnk_03006440, s16 *, 0x68) = 6;
                                        M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                                        sub_0807C014(sub_0805B068(M2C_FIELD((gUnk_03006440 + 0x6A), u16 **, 0x86)));
                                        goto block_213;
                                    }
                                    goto block_771;
                                }
                            } else {
                                temp_r6 = M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                                if (temp_r6 == 0x16) {
                                    temp_r3 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                                    temp_r0_6 = gUnk_030034E0 + (temp_r3 * 0x10);
                                    temp_r4_2 = temp_r0_6 + 0x150;
                                    temp_r2_3 = M2C_FIELD(temp_r0_6, u16 *, 0x150);
                                    if (temp_r2_3 != 0) {
                                        if (temp_r2_3 != 0xA) {
                                            M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x18);
                                            M2C_FIELD(gUnk_03006440, u32 *, 0x20) = temp_r3;
                                            temp_r1_2 = gUnk_03006440 + 0xF4;
                                            M2C_FIELD(gUnk_03006440, s32 *, 0xF4) = (s32) M2C_FIELD(temp_r0_6, u32 *, 0x150);
                                            M2C_FIELD(temp_r1_2, s32 *, 4) = (s32) M2C_FIELD(temp_r4_2, s32 *, 4);
                                            M2C_FIELD(temp_r1_2, s32 *, 8) = (s32) M2C_FIELD(temp_r4_2, s32 *, 8);
                                            M2C_FIELD(temp_r1_2, s32 *, 0xC) = (s32) M2C_FIELD(temp_r4_2, s32 *, 0xC);
                                        } else {
                                            M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x18);
                                            M2C_FIELD(gUnk_03006440, u32 *, 0x20) = temp_r3;
                                            M2C_FIELD(gUnk_03006440, s32 *, 0xF4) = temp_r2_3;
                                            temp_r1_3 = gUnk_030034E0 + 0x154;
                                            M2C_FIELD(gUnk_03006440, u32 *, 0xF8) = (u32) *(u32 *)(temp_r1_3 + (M2C_FIELD(gUnk_03006440, u32 *, 4) * 0x10));
                                            M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0x14U;
                                            M2C_FIELD(gUnk_03006440, u32 *, 0xC) = sp30;
                                            temp_r1_4 = *(u32 *)(temp_r1_3 + (M2C_FIELD(gUnk_03006440, u32 *, 4) * 0x10));
                                            var_r3 = 6;
                                            var_r2 = 4;
                                            if ((u32) M2C_FIELD(((u32)gUnk_084EBD4C), u32 *, 0x10) > temp_r1_4) {
                                                var_r4 = ((u32)gUnk_084EBD4C) + 0x10;
loop_120:
                                                var_r4 += 4;
                                                var_r2 += 1;
                                                var_r3 -= 1;
                                                if (var_r2 <= 9U) {
                                                    if ((u32) *(u32 *)var_r4 > temp_r1_4) {
                                                        goto loop_120;
                                                    }
                                                }
                                            }
                                            M2C_FIELD(gUnk_03006440, u32 *, 0x14) = var_r3;
                                            M2C_FIELD(gUnk_03006440, s32 *, 0x10) = (s32) (var_r3 - 1);
                                        }
block_743:
                                        sub_0805865C(0x5E);
                                    }
                                } else {
                                    temp_r0_7 = *M2C_FIELD(gUnk_03006440, u16 **, 0xF0);
                                    if (temp_r0_7 != 0) {
                                        sp34 = gUnk_03006440 + 0xF4;
                                        if ((u16) M2C_FIELD(gUnk_03006440, s32 *, 0xF4) == 0xA) {
                                            temp_r4_3 = M2C_FIELD(gUnk_03006440, u32 *, 0x20);
                                            temp_r2_4 = gUnk_030034E0 + 0x154;
                                            temp_r0_8 = (temp_r4_3 * 0x10) + temp_r2_4;
                                            sp38 = temp_r0_8;
                                            temp_r7 = *(s32 *)temp_r0_8;
                                            temp_r2_5 = M2C_FIELD(gUnk_03006440, u32 *, 0xF8);
                                            if (temp_r7 != temp_r2_5) {
                                                if (temp_r0_7 == 0xA) {
                                                    temp_r3_2 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                                                    temp_r1_5 = *(u32 *)((temp_r3_2 * 0x10) + temp_r2_4) + temp_r2_5;
                                                    if (temp_r1_5 <= 0x186A0U) {
                                                        switch (temp_r6) { /* switch 10; irregular */
                                                        case 0: /* switch 10 */
                                                            *(s32 *)sp38 = temp_r7 - temp_r2_5;
                                                            temp_r1_6 = M2C_FIELD(gUnk_03006440, u32 *, 0x20) * 0x10;
                                                            if (*(u32 *)(temp_r2_4 + temp_r1_6) == 0) {
                                                                M2C_FIELD((gUnk_030034E0 + temp_r1_6), s16 *, 0x150) = (s16) temp_r6;
                                                            }
                                                            break;
                                                        case 13: /* switch 10 */
                                                            temp_r3_3 = gUnk_03006440 + 0x108;
                                                            temp_r2_6 = temp_r3_3 + (M2C_FIELD(gUnk_03006440, u32 *, 0x20) * 0x10);
                                                            *(s32 *)temp_r2_6 -= M2C_FIELD(gUnk_03006440, u32 *, 0xF8);
                                                            temp_r0_9 = M2C_FIELD(gUnk_03006440, u32 *, 0x20) * 0x10;
                                                            temp_r3_4 = *(u32 *)(temp_r3_3 + temp_r0_9);
                                                            if (temp_r3_4 == 0) {
                                                                M2C_FIELD((gUnk_03006440 + temp_r0_9), s16 *, 0x104) = (s16) temp_r3_4;
                                                            }
                                                            break;
                                                        }
                                                        temp_r3_5 = gUnk_030034E0 + 0x154 + (M2C_FIELD(gUnk_03006440, u32 *, 4) * 0x10);
                                                        *(s32 *)temp_r3_5 += M2C_FIELD(gUnk_03006440, u32 *, 0xF8);
                                                        sp14 = 0;
                                                        CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                                        M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                                        M2C_FIELD(gUnk_03006440, u32 *, 0x20) = 0U;
                                                    } else {
                                                        if (temp_r4_3 != temp_r3_2) {
                                                            temp_r5 = temp_r1_5 + 0xFFFE7960;
                                                            switch (temp_r6) { /* switch 11; irregular */
                                                            case 0: /* switch 11 */
                                                                M2C_FIELD(gUnk_03006440, u32 *, 0xF8) = (u32) ((temp_r7 - temp_r2_5) + temp_r5);
                                                                break;
                                                            case 13: /* switch 11 */
                                                                M2C_FIELD(gUnk_03006440, u32 *, 0xF8) = (u32) ((*(u32 *)(gUnk_03006440 + 0x108 + (M2C_FIELD(gUnk_03006440, u32 *, 0x20) * 0x10)) - M2C_FIELD(gUnk_03006440, u32 *, 0xF8)) + temp_r5);
                                                                break;
                                                            }
                                                            *(u32 *)(gUnk_030034E0 + 0x154 + (M2C_FIELD(gUnk_03006440, u32 *, 4) * 0x10)) = 0x186A0;
                                                            sub_0807BEA0(0U, M2C_FIELD(gUnk_03006440, u32 *, 0x20), gUnk_03006440 + 0xF4);
                                                        }
                                                        sp14 = 0;
                                                        goto block_776;
                                                    }
                                                    goto block_777;
                                                }
                                                goto block_771;
                                            }
                                            temp_r1_7 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                                            temp_r3_6 = temp_r1_7 * 0x10;
                                            temp_r0_10 = gUnk_030034E0 + temp_r3_6;
                                            temp_r2_7 = temp_r0_10 + 0x150;
                                            if (M2C_FIELD(temp_r0_10, u16 *, 0x150) == 0xA) {
                                                temp_r2_8 = temp_r2_4 + temp_r3_6;
                                                temp_r0_11 = *(u32 *)temp_r2_8 + temp_r7;
                                                if (temp_r0_11 <= 0x186A0U) {
                                                    if (temp_r4_3 != temp_r1_7) {
                                                        *(u32 *)temp_r2_8 = temp_r0_11;
                                                        sub_0807BD78(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20));
                                                    }
                                                    sp14 = 0;
                                                    CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                                    M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                                    M2C_FIELD(gUnk_03006440, u32 *, 0x20) = 0U;
                                                } else {
                                                    if (temp_r4_3 != temp_r1_7) {
                                                        M2C_FIELD(gUnk_03006440, u32 *, 0xF8) = (u32) (temp_r0_11 + 0xFFFE7960);
                                                        *(u32 *)((M2C_FIELD(gUnk_03006440, u32 *, 4) * 0x10) + temp_r2_4) = 0x186A0;
                                                        sub_0807BEA0(0U, M2C_FIELD(gUnk_03006440, u32 *, 0x20), sp34);
                                                    }
                                                    sp14 = 0;
                                                    CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                                    M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                                    M2C_FIELD(gUnk_03006440, u32 *, 0x20) = 0U;
                                                }
                                            } else {
                                                M2C_FIELD(&sp4, s32 *, 0) = (s32) M2C_FIELD(temp_r0_10, u32 *, 0x150);
                                                M2C_FIELD(&sp4, s32 *, 4) = (s32) M2C_FIELD(temp_r2_7, s32 *, 4);
                                                M2C_FIELD(&sp4, s32 *, 8) = (s32) M2C_FIELD(temp_r2_7, s32 *, 8);
                                                M2C_FIELD(&sp4, s32 *, 0xC) = (s32) M2C_FIELD(temp_r2_7, s32 *, 0xC);
                                                sub_0807BEA0(0U, M2C_FIELD(gUnk_03006440, u32 *, 4), sp34);
                                                sub_0807BEA0(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20), &sp4);
                                                sp14 = sp30;
                                                CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                                M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                                M2C_FIELD(gUnk_03006440, u32 *, 0x20) = sp30;
                                            }
                                            goto block_777;
                                        }
                                        if (temp_r6 != 0xB) {
                                            if (*(s32 *)sp34 == 0xC0001) {
                                                temp_r1_8 = gUnk_030034E0 + (M2C_FIELD(gUnk_03006440, u32 *, 4) * 0x10);
                                                temp_r6_2 = temp_r1_8 + 0x150;
                                                temp_r0_12 = M2C_FIELD(temp_r1_8, u16 *, 0x150);
                                                if (((s32) temp_r0_12 <= 5) && ((s32) temp_r0_12 >= 2)) {
                                                    if (M2C_FIELD(temp_r1_8, u8 *, 0x158) != 0) {
                                                        M2C_FIELD(temp_r1_8, u8 *, 0x158) = 0U;
                                                        M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                                                        sub_0807BD78(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20));
                                                        sp14 = sp30;
                                                        CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                                        M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                                        M2C_FIELD(gUnk_03006440, u32 *, 0x20) = sp30;
block_213:
                                                        sub_0805865C(0x18C);
                                                    } else {
                                                        M2C_FIELD(&sp4, s32 *, 0) = (s32) M2C_FIELD(temp_r1_8, u32 *, 0x150);
                                                        M2C_FIELD(&sp4, s32 *, 4) = (s32) M2C_FIELD(temp_r6_2, s32 *, 4);
                                                        M2C_FIELD(&sp4, s32 *, 8) = (s32) M2C_FIELD(temp_r6_2, s32 *, 8);
                                                        M2C_FIELD(&sp4, s32 *, 0xC) = (s32) M2C_FIELD(temp_r6_2, s32 *, 0xC);
                                                        sub_0807BEA0(0U, M2C_FIELD(gUnk_03006440, u32 *, 4), sp34);
                                                        sub_0807BEA0(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20), &sp4);
                                                        sp14 = sp30;
                                                        CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                                        M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                                        M2C_FIELD(gUnk_03006440, u32 *, 0x20) = sp30;
                                                        goto block_777;
                                                    }
                                                } else {
                                                    temp_r1_9 = gUnk_030034E0 + (M2C_FIELD(gUnk_03006440, u32 *, 4) * 0x10);
                                                    temp_r1_10 = temp_r1_9 + 0x150;
                                                    M2C_FIELD(&sp4, s32 *, 0) = M2C_FIELD(temp_r1_9, s32 *, 0x150);
                                                    M2C_FIELD(&sp4, s32 *, 4) = (s32) M2C_FIELD(temp_r1_10, s32 *, 4);
                                                    M2C_FIELD(&sp4, s32 *, 8) = (s32) M2C_FIELD(temp_r1_10, s32 *, 8);
                                                    M2C_FIELD(&sp4, s32 *, 0xC) = (s32) M2C_FIELD(temp_r1_10, s32 *, 0xC);
                                                    var_r1 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                                                    var_r2_2 = gUnk_03006440 + 0xF4;
                                                    var_r0 = 0;
                                                    goto block_773;
                                                }
                                            } else {
                                                switch (temp_r6) { /* switch 7; irregular */
                                                case 6: /* switch 7 */
                                                    break;
                                                case 13: /* switch 7 */
                                                case 0: /* switch 7 */
                                                    temp_r1_11 = gUnk_030034E0 + (M2C_FIELD(gUnk_03006440, u32 *, 4) * 0x10);
                                                    temp_r1_12 = temp_r1_11 + 0x150;
                                                    M2C_FIELD(&sp4, s32 *, 0) = M2C_FIELD(temp_r1_11, s32 *, 0x150);
                                                    M2C_FIELD(&sp4, s32 *, 4) = (s32) M2C_FIELD(temp_r1_12, s32 *, 4);
                                                    M2C_FIELD(&sp4, s32 *, 8) = (s32) M2C_FIELD(temp_r1_12, s32 *, 8);
                                                    M2C_FIELD(&sp4, s32 *, 0xC) = (s32) M2C_FIELD(temp_r1_12, s32 *, 0xC);
                                                    var_r1 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                                                    var_r2_2 = gUnk_03006440 + 0xF4;
                                                    var_r0 = 0;
block_773:
                                                    sub_0807BEA0(var_r0, var_r1, var_r2_2);
block_774:
                                                    var_r0_2 = M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                                                    var_r1_2 = M2C_FIELD(gUnk_03006440, u32 *, 0x20);
                                                    var_r2_3 = &sp4;
block_775:
                                                    sub_0807BEA0(var_r0_2, var_r1_2, var_r2_3);
                                                    sp14 = 0;
block_776:
                                                    CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                                    M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                                    M2C_FIELD(gUnk_03006440, u32 *, 0x20) = 0U;
                                                    goto block_777;
                                                default: /* switch 7 */
                                                    temp_r1_13 = gUnk_030034E0 + (M2C_FIELD(gUnk_03006440, u32 *, 4) * 0x10);
                                                    if ((u16) M2C_FIELD(gUnk_03006440, s32 *, 0xF4) == M2C_FIELD(temp_r1_13, u16 *, 0x150)) {
                                                        var_r5 = 0;
                                                        temp_r0_13 = M2C_FIELD(temp_r1_13, u16 *, 0x150) - 2;
                                                        switch (temp_r0_13) { /* switch 8 */
                                                        case 0: /* switch 8 */
                                                            var_r0_3 = sub_0805AE34(gUnk_030034E0 + ((M2C_FIELD(gUnk_03006440, u32 *, 4) * 0x10) + 0x150));
block_165:
                                                            if (var_r0_3 != 0) {
                                                                goto block_169;
                                                            }
                                                        default: /* switch 8 */
block_168:
                                                            if (var_r5 != 0) {
block_169:
                                                                temp_r1_14 = gUnk_030034E0 + (M2C_FIELD(gUnk_03006440, u32 *, 4) * 0x10);
                                                                temp_r1_15 = temp_r1_14 + 0x150;
                                                                M2C_FIELD(&sp4, s32 *, 0) = M2C_FIELD(temp_r1_14, s32 *, 0x150);
                                                                M2C_FIELD(&sp4, s32 *, 4) = (s32) M2C_FIELD(temp_r1_15, s32 *, 4);
                                                                M2C_FIELD(&sp4, s32 *, 8) = (s32) M2C_FIELD(temp_r1_15, s32 *, 8);
                                                                M2C_FIELD(&sp4, s32 *, 0xC) = (s32) M2C_FIELD(temp_r1_15, s32 *, 0xC);
                                                                sub_0807BEA0(0U, M2C_FIELD(gUnk_03006440, u32 *, 4), gUnk_03006440 + 0xF4);
                                                                sub_0807BEA0(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20), &sp4);
                                                                temp_r0_14 = (u16) M2C_FIELD(&sp4, s32 *, 0) - 2;
                                                                switch (temp_r0_14) { /* switch 9 */
                                                                case 0: /* switch 9 */
                                                                    sub_0805AD78(M2C_FIELD(gUnk_030034E0, u16 *, 0x68));
                                                                    break;
                                                                case 3: /* switch 9 */
                                                                    sub_0805D13C();
                                                                    break;
                                                                case 1: /* switch 9 */
                                                                    sub_0805D0E8();
                                                                    break;
                                                                case 2: /* switch 9 */
                                                                    sub_0805D094();
                                                                    break;
                                                                case 4: /* switch 9 */
                                                                    sub_0805D1E0();
                                                                    break;
                                                                case 5: /* switch 9 */
                                                                    sub_0805D190();
                                                                    break;
                                                                }
                                                                sp14 = 0;
                                                                goto block_776;
                                                            }
                                                            goto block_771;
                                                        case 3: /* switch 8 */
                                                            var_r0_3 = sub_0805D2E0(gUnk_030034E0 + ((M2C_FIELD(gUnk_03006440, u32 *, 4) * 0x10) + 0x150));
                                                            goto block_165;
                                                        case 1: /* switch 8 */
                                                            var_r0_3 = sub_0805D278(gUnk_030034E0 + ((M2C_FIELD(gUnk_03006440, u32 *, 4) * 0x10) + 0x150));
                                                            goto block_165;
                                                        case 2: /* switch 8 */
                                                            var_r0_3 = sub_0805D210(gUnk_030034E0 + ((M2C_FIELD(gUnk_03006440, u32 *, 4) * 0x10) + 0x150));
                                                            goto block_165;
                                                        case 4: /* switch 8 */
                                                        case 5: /* switch 8 */
                                                            var_r5 = 1;
                                                            goto block_168;
                                                        }
                                                    } else {
block_771:
                                                        sub_0805865C(0x61);
                                                    }
                                                    break;
                                                }
                                            }
                                        }
                                    } else if ((u16) M2C_FIELD(gUnk_03006440, s32 *, 0xF4) != 0xA) {
                                        if (temp_r6 != 0xB) {
                                            sub_0807BD78(temp_r6, M2C_FIELD(gUnk_03006440, u32 *, 0x20));
                                            sub_0807BEA0(0U, M2C_FIELD(gUnk_03006440, u32 *, 4), gUnk_03006440 + 0xF4);
                                            sp14 = (u32) temp_r0_7;
                                            CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                            M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                            M2C_FIELD(gUnk_03006440, u32 *, 0x20) = (u32) temp_r0_7;
                                            goto block_777;
                                        }
                                        sub_0807C014(sub_0805AE94(gUnk_03006440 + 0xF4));
                                        sub_0807BEA0(0U, M2C_FIELD(gUnk_03006440, u32 *, 4), gUnk_03006440 + 0xF4);
                                        if ((u32) M2C_FIELD(gUnk_03006440, u32 *, 0x20) > 8U) {
                                            sub_0807BD78(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20));
                                        }
                                        temp_r0_15 = M2C_FIELD(gUnk_03006440, u32 *, 0x20);
                                        M2C_FIELD(gUnk_03006440, u32 *, 4) = temp_r0_15;
                                        M2C_FIELD(gUnk_03006440, u32 *, 8) = (u32) (temp_r0_15 + 1);
                                        M2C_FIELD(gUnk_03006440, u32 *, 0x18) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                                        sp14 = (u32) temp_r0_7;
                                        CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                        M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                        M2C_FIELD(gUnk_03006440, u32 *, 0x20) = (u32) temp_r0_7;
block_800:
                                        sub_0805865C(0x63);
                                    } else {
                                        switch (temp_r6) { /* switch 6; irregular */
                                        case 0:     /* switch 6 */
                                            temp_r3_7 = gUnk_030034E0 + 0x154;
                                            temp_r2_9 = temp_r3_7 + (M2C_FIELD(gUnk_03006440, u32 *, 0x20) * 0x10);
                                            *(s32 *)temp_r2_9 -= M2C_FIELD(gUnk_03006440, u32 *, 0xF8);
                                            temp_r1_16 = temp_r3_7 + (M2C_FIELD(gUnk_03006440, u32 *, 0x20) * 0x10);
                                            if ((s32) *(s32 *)temp_r1_16 < 0) {
                                                *(s32 *)temp_r1_16 = (s32) temp_r6;
                                            }
                                            temp_r3_8 = M2C_FIELD(gUnk_03006440, u32 *, 0x20) * 0x10;
                                            if (*(u32 *)(gUnk_030034E0 + 0x154 + temp_r3_8) == 0) {
                                                M2C_FIELD((gUnk_030034E0 + temp_r3_8), s16 *, 0x150) = (s16) temp_r6;
                                            }
                                            sub_0807BEA0(0U, M2C_FIELD(gUnk_03006440, u32 *, 4), gUnk_03006440 + 0xF4);
                                            sp14 = temp_r6;
                                            CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                            M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                            M2C_FIELD(gUnk_03006440, u32 *, 0x20) = temp_r6;
block_777:
                                            sub_0805865C(0x5F);
                                            break;
                                        case 13:    /* switch 6 */
                                            temp_r3_9 = gUnk_03006440 + 0x108;
                                            temp_r2_10 = temp_r3_9 + (M2C_FIELD(gUnk_03006440, u32 *, 0x20) * 0x10);
                                            *(s32 *)temp_r2_10 -= M2C_FIELD(gUnk_03006440, u32 *, 0xF8);
                                            temp_r1_17 = M2C_FIELD(gUnk_03006440, u32 *, 0x20) * 0x10;
                                            if (*(u32 *)(temp_r3_9 + temp_r1_17) == 0) {
                                                M2C_FIELD((gUnk_03006440 + temp_r1_17), u16 *, 0x104) = temp_r0_7;
                                            }
                                            sub_0807BEA0(0U, M2C_FIELD(gUnk_03006440, u32 *, 4), gUnk_03006440 + 0xF4);
                                            sp14 = (u32) temp_r0_7;
                                            CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                            M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                            M2C_FIELD(gUnk_03006440, u32 *, 0x20) = (u32) temp_r0_7;
                                            goto block_777;
                                        }
                                    }
                                }
                            }
                        } else if (0x100 & keys29_03001324) {
                            temp_r0_16 = M2C_FIELD(gUnk_03006440, u32 *, 0);
                            if ((temp_r0_16 != 2) && (temp_r0_16 == 3)) {
                                temp_r0_17 = M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                                if ((temp_r0_17 != 0xB) && (temp_r0_17 != 0x16)) {
                                    M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0xCU;
                                    M2C_FIELD(gUnk_03006440, u32 *, 4) = temp_r2_2;
                                    M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
block_828:
                                    sub_0805865C(0x62);
                                }
                            }
                        }
                    }
                }
            } else {
                sub_0805865C(0x62);
                temp_r5_2 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                if ((temp_r5_2 % 5U) != 0) {
                    M2C_FIELD(gUnk_03006440, u32 *, 8) = temp_r5_2;
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r5_2 - 1);
                } else {
                    if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) != 0x16) {
                        temp_r0_18 = (u16) M2C_FIELD(gUnk_03006440, s32 *, 0xF4) - 1;
                        switch (temp_r0_18) {       /* switch 4 */
                        case 0:                     /* switch 4 */
                            M2C_FIELD(gUnk_03006440, u32 *, 4) = 0x64U;
                            break;
                        case 1:                     /* switch 4 */
                            M2C_FIELD(gUnk_03006440, u32 *, 4) = 0U;
                            break;
                        case 3:                     /* switch 4 */
                            M2C_FIELD(gUnk_03006440, u32 *, 4) = 5U;
                            break;
                        case 4:                     /* switch 4 */
                            M2C_FIELD(gUnk_03006440, u32 *, 4) = 0x14U;
                            break;
                        case 2:                     /* switch 4 */
                            M2C_FIELD(gUnk_03006440, u32 *, 4) = 0xAU;
                            break;
                        case 6:                     /* switch 4 */
                            M2C_FIELD(gUnk_03006440, u32 *, 4) = 0x65U;
                            break;
                        case 5:                     /* switch 4 */
                            M2C_FIELD(gUnk_03006440, u32 *, 4) = 0x66U;
                            break;
                        default:                    /* switch 4 */
                            M2C_FIELD(gUnk_03006440, u32 *, 4) = 0x67U;
                            break;
                        }
                    }
                    if (M2C_FIELD(gUnk_03006440, u32 *, 0) == 5) {
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = 0x67U;
                    }
                    temp_r5_3 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                    switch (temp_r5_3) {            /* switch 5; irregular */
                    case 0x0:                       /* switch 5 */
                        M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 1U;
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = temp_r5_3;
                        M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                        M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                        break;
                    case 0x5:                       /* switch 5 */
                        var_r0_4 = 2;
block_97:
                        M2C_FIELD(gUnk_03006440, u32 *, 0x18) = var_r0_4;
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = 0U;
                        M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                        break;
                    case 0xA:                       /* switch 5 */
                    case 0xF:                       /* switch 5 */
                        var_r0_4 = 4;
                        goto block_97;
                    case 0x14:                      /* switch 5 */
                        var_r0_4 = 3;
                        goto block_97;
                    case 0x64:                      /* switch 5 */
                        var_r0_4 = 9;
                        goto block_97;
                    case 0x65:                      /* switch 5 */
                        var_r0_4 = 5;
                        goto block_97;
                    case 0x66:                      /* switch 5 */
                        var_r0_4 = 6;
                        goto block_97;
                    case 0x67:                      /* switch 5 */
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = temp_r5_2;
                        break;
                    }
                }
            }
        } else {
            sub_0805865C(0x62);
            temp_r5_4 = M2C_FIELD(gUnk_03006440, u32 *, 4);
            if ((u32) (temp_r5_4 % 5U) <= 3U) {
                M2C_FIELD(gUnk_03006440, u32 *, 8) = temp_r5_4;
                M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r5_4 + 1);
            } else {
                temp_r1_18 = M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                if (temp_r1_18 != 0x16) {
                    temp_r0_19 = M2C_FIELD(gUnk_03006440, u32 *, 0);
                    switch (temp_r0_19) {           /* switch 2; irregular */
                    case 2:                         /* switch 2 */
                        temp_r6_3 = (u16) M2C_FIELD(gUnk_03006440, s32 *, 0xF4);
                        if (temp_r6_3 == 1) {
                            if (temp_r5_4 <= 0xEU) {
                                if (M2C_FIELD((void *) sub_08007290(M2C_FIELD((gUnk_03006440 + 0xF4), u16 *, 2) | 0x100000), s32 *, 0xA4) != 0) {
                                    M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 8U;
                                    M2C_FIELD(gUnk_03006440, u32 *, 4) = 0U;
                                    M2C_FIELD(gUnk_03006440, u32 *, 8) = (u32) temp_r6_3;
                                }
                            } else {
                                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0xAU;
                                M2C_FIELD(gUnk_03006440, u32 *, 4) = 0U;
                                M2C_FIELD(gUnk_03006440, u32 *, 8) = (u32) temp_r6_3;
                            }
                        } else {
                            M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0xAU;
                            goto block_55;
                        }
                        break;
                    case 3:                         /* switch 2 */
                        if (temp_r1_18 != 0xB) {
                            M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0xCU;
                            goto block_55;
                        }
                        break;
                    case 4:                         /* switch 2 */
                        M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0xDU;
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) ((temp_r5_4 / 5U) * 3);
                        goto block_56;
                    case 6:                         /* switch 2 */
                        if ((u16) M2C_FIELD(gUnk_03006440, s32 *, 0xF4) == 0xA) {
                            if (M2C_FIELD(gUnk_03006440, s32 *, 0x28) & 4) {
                                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0x11U;
                                M2C_FIELD(gUnk_03006440, u32 *, 4) = 0x64U;
                            }
                        } else if ((u16) M2C_FIELD(gUnk_03006440, s32 *, 0xF4) == 9) {
                            goto block_54;
                        }
                        break;
                    }
                } else {
                    temp_r0_20 = M2C_FIELD(gUnk_03006440, u32 *, 0);
                    switch (temp_r0_20) {           /* switch 3; irregular */
                    case 2:                         /* switch 3 */
                        if (temp_r5_4 > 0xEU) {
                            M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0xAU;
                        } else {
                            M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 8U;
                        }
block_55:
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = 0U;
block_56:
                        M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                        break;
                    case 3:                         /* switch 3 */
                        M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0xBU;
                        temp_r1_19 = (temp_r5_4 / 5U) * 3;
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = temp_r1_19;
                        M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                        if (temp_r1_19 == 0xC) {
                            M2C_FIELD(gUnk_03006440, u32 *, 4) = 9U;
                        }
                        break;
                    case 4:                         /* switch 3 */
                        M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0xDU;
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) ((temp_r5_4 / 5U) * 3);
                        goto block_56;
                    case 6:                         /* switch 3 */
block_54:
                        M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0x10U;
                        goto block_55;
                    }
                }
            }
        }
        break;
    case 1:                                         /* switch 1 */
        temp_r0_21 = (u16) ((u16) M2C_FIELD(gUnk_030034E0, u16 *, 0x68) / 3U);
        temp_r3_10 = temp_r0_21 * 3;
        temp_r5_5 = (u32) ((temp_r0_21 * 0x30000) + 0x30000) >> 0x10;
        temp_r0_22 = M2C_FIELD(gUnk_03006440, u32 *, 4);
        if ((u32) temp_r3_10 >= temp_r0_22) {
            M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) temp_r3_10;
        } else if (temp_r5_5 <= temp_r0_22) {
            M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r5_5 - 1);
        }
        if (0x10 & keys29_03001308) {
            temp_r0_23 = M2C_FIELD(gUnk_03006440, u32 *, 4);
            if (temp_r0_23 == temp_r3_10) {
                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0U;
                M2C_FIELD(gUnk_03006440, u32 *, 4) = 0U;
                M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
            } else {
                M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r0_23 - 1);
            }
            goto block_828;
        }
        temp_r6_4 = 0x20 & keys29_03001308;
        if (temp_r6_4 != 0) {
            temp_r2_11 = M2C_FIELD(gUnk_03006440, u32 *, 4);
            if (temp_r2_11 < (u32) (temp_r5_5 - 1)) {
                M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r2_11 + 1);
                goto block_828;
            }
        } else {
            temp_r7_2 = 0x80 & keys29_03001308;
            if (temp_r7_2 != 0) {
                if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0x16) {
                    if (M2C_FIELD(gUnk_03006440, u32 *, 0) != 5) {
                        M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                        temp_r0_24 = (u32) M2C_FIELD(gUnk_03006440, u32 *, 4) % 3U;
                        switch (temp_r0_24) {       /* switch 12; irregular */
                        default:                    /* switch 12 */
                            M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 2U;
                            M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) temp_r6_4;
                            M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                            goto block_828;
                        case 1:                     /* switch 12 */
                            M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 9U;
                            M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) temp_r6_4;
                            M2C_FIELD(gUnk_03006440, u32 *, 8) = temp_r0_24;
                            goto block_828;
                        case 2:                     /* switch 12 */
                            M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 5U;
                            M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) temp_r6_4;
                            M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                            goto block_828;
                        }
                    } else {
                        M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 7U;
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) temp_r6_4;
                        M2C_FIELD(gUnk_03006440, u32 *, 8) = 2U;
                        goto block_828;
                    }
                }
            } else {
                temp_r3_11 = 1 & keys29_03001324;
                if (temp_r3_11 == 0) {
                    if (0x100 & keys29_03001324) {
                        temp_r0_25 = M2C_FIELD(gUnk_03006440, u32 *, 0);
                        if ((temp_r0_25 != 2) && (temp_r0_25 == 3)) {
                            temp_r2_12 = M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                            if (temp_r2_12 == 1) {
                                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0xCU;
                                M2C_FIELD(gUnk_03006440, u32 *, 4) = temp_r3_11;
                                M2C_FIELD(gUnk_03006440, u32 *, 8) = temp_r2_12;
                                goto block_828;
                            }
                        }
                    }
                } else {
                    temp_r1_20 = M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                    if (temp_r1_20 == 0x16) {
                        temp_r3_12 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                        temp_r0_26 = gUnk_030034E0 + (temp_r3_12 * 0x10);
                        temp_r5_6 = temp_r0_26 + 0x70;
                        if (M2C_FIELD(temp_r0_26, u16 *, 0x70) != 0) {
                            M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x18);
                            M2C_FIELD(gUnk_03006440, u32 *, 0x20) = temp_r3_12;
                            temp_r1_21 = gUnk_03006440 + 0xF4;
                            M2C_FIELD(gUnk_03006440, s32 *, 0xF4) = (s32) M2C_FIELD(temp_r0_26, u32 *, 0x70);
                            M2C_FIELD(temp_r1_21, s32 *, 4) = (s32) M2C_FIELD(temp_r5_6, s32 *, 4);
                            M2C_FIELD(temp_r1_21, s32 *, 8) = (s32) M2C_FIELD(temp_r5_6, s32 *, 8);
                            M2C_FIELD(temp_r1_21, s32 *, 0xC) = (s32) M2C_FIELD(temp_r5_6, s32 *, 0xC);
                            M2C_FIELD(gUnk_03006440, s8 *, 0xFD) = (s8) temp_r7_2;
                            sub_0805AD78(M2C_FIELD(gUnk_030034E0, u16 *, 0x68));
                            goto block_743;
                        }
                    } else if (*M2C_FIELD(gUnk_03006440, u16 **, 0xF0) == 0) {
                        if (temp_r1_20 != 0xB) {
                            if (sub_0805AE34(gUnk_03006440 + 0xF4) != 0) {
                                sub_0807BD78(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20));
                                sub_0807BEA0(1U, M2C_FIELD(gUnk_03006440, u32 *, 4), gUnk_03006440 + 0xF4);
                                sp14 = (u32) temp_r7_2;
                                CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                M2C_FIELD(gUnk_03006440, u32 *, 0x20) = (u32) temp_r7_2;
                                sub_0805865C(0x5F);
                            } else {
                                sub_0805865C(0x61);
                            }
                            sub_0805AD78(M2C_FIELD(gUnk_030034E0, u16 *, 0x68));
                            M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                        } else if ((u16) M2C_FIELD(gUnk_03006440, s32 *, 0xF4) == 2) {
                            if (sub_0805AE34(gUnk_03006440 + 0xF4) != 0) {
                                sub_0807C014(sub_0805AE94(gUnk_03006440 + 0xF4));
                                sub_0807BEA0(1U, M2C_FIELD(gUnk_03006440, u32 *, 4), gUnk_03006440 + 0xF4);
                                if ((u32) M2C_FIELD(gUnk_03006440, u32 *, 0x20) > 8U) {
                                    sub_0807BD78(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20));
                                }
                                temp_r0_27 = M2C_FIELD(gUnk_03006440, u32 *, 0x20);
                                M2C_FIELD(gUnk_03006440, u32 *, 4) = temp_r0_27;
                                M2C_FIELD(gUnk_03006440, u32 *, 8) = (u32) (temp_r0_27 + 1);
                                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                                sp14 = (u32) temp_r7_2;
                                CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                M2C_FIELD(gUnk_03006440, u32 *, 0x20) = (u32) temp_r7_2;
                                sub_0805865C(0x63);
                                goto block_262;
                            }
                            goto block_771;
                        }
                    } else if (temp_r1_20 != 0xB) {
                        if (sub_0805AE34(gUnk_03006440 + 0xF4) != 0) {
                            temp_r0_28 = gUnk_030034E0 + (M2C_FIELD(gUnk_03006440, u32 *, 4) * 0x10);
                            temp_r0_29 = temp_r0_28 + 0x70;
                            M2C_FIELD(&sp4, s32 *, 0) = M2C_FIELD(temp_r0_28, s32 *, 0x70);
                            M2C_FIELD(&sp4, s32 *, 4) = (s32) M2C_FIELD(temp_r0_29, s32 *, 4);
                            M2C_FIELD(&sp4, s32 *, 8) = (s32) M2C_FIELD(temp_r0_29, s32 *, 8);
                            M2C_FIELD(&sp4, s32 *, 0xC) = (s32) M2C_FIELD(temp_r0_29, s32 *, 0xC);
                            sub_0807BEA0(1U, M2C_FIELD(gUnk_03006440, u32 *, 4), gUnk_03006440 + 0xF4);
                            sub_0807BEA0(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20), &sp4);
                            sp14 = (u32) temp_r7_2;
                            CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                            M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                            M2C_FIELD(gUnk_03006440, u32 *, 0x20) = (u32) temp_r7_2;
                            sub_0805865C(0x5F);
                        } else {
                            sub_0805865C(0x61);
                        }
block_262:
                        sub_0805AD78(M2C_FIELD(gUnk_030034E0, u16 *, 0x68));
                    } else {
                        goto block_771;
                    }
                }
            }
        }
        break;
    case 2:                                         /* switch 1 */
        temp_r3_13 = 0x40 & keys29_03001308;
        if (temp_r3_13 != 0) {
            if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0x16) {
                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 1U;
                M2C_FIELD(gUnk_03006440, u32 *, 4) = 0U;
                M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                goto block_828;
            }
        } else {
            temp_r2_13 = 0x80 & keys29_03001308;
            if (temp_r2_13 != 0) {
                if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0x16) {
                    M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 4U;
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) temp_r3_13;
                    M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                    M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                    goto block_828;
                }
            } else {
                temp_r3_14 = 0x10 & keys29_03001308;
                if (temp_r3_14 != 0) {
                    M2C_FIELD(gUnk_03006440, u32 *, 0x18) = (u32) temp_r2_13;
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = 5U;
                    M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                    goto block_828;
                }
                var_r5_2 = 0x20 & keys29_03001308;
                if (var_r5_2 != 0) {
                    if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0x16) {
                        M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 9U;
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) temp_r3_14;
                        M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                        M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                        goto block_828;
                    }
                } else {
                    temp_r2_14 = 1 & keys29_03001324;
                    if (temp_r2_14 == 0) {
                        if (0x100 & keys29_03001324) {
                            temp_r0_30 = M2C_FIELD(gUnk_03006440, u32 *, 0);
                            if ((temp_r0_30 != 2) && (temp_r0_30 == 3) && (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 2)) {
                                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0xCU;
                                M2C_FIELD(gUnk_03006440, u32 *, 4) = temp_r2_14;
                                M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                                goto block_828;
                            }
                        }
                    } else {
                        M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                        temp_r2_15 = M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                        if (temp_r2_15 == 0x16) {
                            if (M2C_FIELD(gUnk_030034E0, u16 *, 0x100) != 0) {
                                M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x18);
                                M2C_FIELD(gUnk_03006440, u32 *, 0x20) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 4);
                                temp_r1_22 = gUnk_03006440 + 0xF4;
                                M2C_FIELD(gUnk_03006440, s32 *, 0xF4) = (s32) M2C_FIELD(gUnk_030034E0, u32 *, 0x100);
                                M2C_FIELD(temp_r1_22, s32 *, 4) = (s32) M2C_FIELD(gUnk_030034E0, s32 *, 0x104);
                                M2C_FIELD(temp_r1_22, s32 *, 8) = (s32) M2C_FIELD(gUnk_030034E0, s32 *, 0x108);
                                M2C_FIELD(temp_r1_22, s32 *, 0xC) = (s32) M2C_FIELD((gUnk_030034E0 + 0x100), s32 *, 0xC);
                                M2C_FIELD(gUnk_03006440, s8 *, 0xFD) = 0;
                                sub_0805D094();
block_435:
                                sub_0805865C(0x5E);
                            }
                        } else if (*M2C_FIELD(gUnk_03006440, u16 **, 0xF0) == 0) {
                            if (temp_r2_15 != 0xB) {
                                if (sub_0805D210(gUnk_03006440 + 0xF4) != 0) {
                                    sub_0807BD78(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20));
                                    var_r1_3 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                                    var_r2_4 = gUnk_03006440 + 0xF4;
                                    var_r0_5 = 2;
                                    goto block_298;
                                }
                                goto block_462;
                            }
                            if ((u16) M2C_FIELD(gUnk_03006440, s32 *, 0xF4) == 4) {
                                if (sub_0805D210(gUnk_03006440 + 0xF4) != 0) {
                                    sub_0807C014(sub_0805AE94(gUnk_03006440 + 0xF4));
                                    var_r1_4 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                                    var_r2_5 = gUnk_03006440 + 0xF4;
                                    var_r0_6 = 2;
block_291:
                                    sub_0807BEA0(var_r0_6, var_r1_4, var_r2_5);
                                    if ((u32) M2C_FIELD(gUnk_03006440, u32 *, 0x20) > 8U) {
                                        sub_0807BD78(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20));
                                    }
                                    M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x20);
                                    M2C_FIELD(gUnk_03006440, u32 *, 0x18) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                                    sp14 = (u32) var_r5_2;
                                    CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                    M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                    M2C_FIELD(gUnk_03006440, u32 *, 0x20) = (u32) var_r5_2;
                                    sub_0805865C(0x63);
                                } else {
                                    goto block_462;
                                }
                            }
                        } else if (temp_r2_15 != 0xB) {
                            if (sub_0805D210(gUnk_03006440 + 0xF4) != 0) {
                                M2C_FIELD(&sp4, s32 *, 0) = (s32) M2C_FIELD(gUnk_030034E0, u32 *, 0x100);
                                M2C_FIELD(&sp4, s32 *, 4) = (s32) M2C_FIELD(gUnk_030034E0, s32 *, 0x104);
                                M2C_FIELD(&sp4, s32 *, 8) = (s32) M2C_FIELD(gUnk_030034E0, s32 *, 0x108);
                                M2C_FIELD(&sp4, s32 *, 0xC) = (s32) M2C_FIELD((gUnk_030034E0 + 0x100), s32 *, 0xC);
                                var_r1_5 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                                var_r2_6 = gUnk_03006440 + 0xF4;
                                var_r0_7 = 2;
block_297:
                                sub_0807BEA0(var_r0_7, var_r1_5, var_r2_6);
                                var_r0_5 = M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                                var_r1_3 = M2C_FIELD(gUnk_03006440, u32 *, 0x20);
                                var_r2_4 = &sp4;
block_298:
                                sub_0807BEA0(var_r0_5, var_r1_3, var_r2_4);
                                sp14 = (u32) var_r5_2;
                                CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                M2C_FIELD(gUnk_03006440, u32 *, 0x20) = (u32) var_r5_2;
                                sub_0805865C(0x5F);
                            } else {
block_462:
                                sub_0805865C(0x61);
                            }
                        } else {
block_463:
                            sub_0805865C(0x61);
                        }
block_464:
                        sub_0805AD78(M2C_FIELD(gUnk_030034E0, u16 *, 0x68));
                        sub_0805D094();
                        sub_0805D0E8();
                        sub_0805D13C();
                    }
                }
            }
        }
        break;
    case 3:                                         /* switch 1 */
        temp_r3_15 = 0x40 & keys29_03001308;
        if (temp_r3_15 != 0) {
            if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0x16) {
                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 4U;
                M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                M2C_FIELD(gUnk_03006440, u32 *, 4) = 0U;
                M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                goto block_828;
            }
        } else {
            temp_r2_16 = 0x80 & keys29_03001308;
            if (temp_r2_16 != 0) {
                if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0x16) {
                    M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 7U;
                    M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) temp_r3_15;
                    M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                    goto block_828;
                }
            } else {
                temp_r3_16 = 0x10 & keys29_03001308;
                if (temp_r3_16 != 0) {
                    M2C_FIELD(gUnk_03006440, u32 *, 0x18) = (u32) temp_r2_16;
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = 0x14U;
                    M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                    goto block_828;
                }
                var_r5_2 = 0x20 & keys29_03001308;
                if (var_r5_2 != 0) {
                    if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0x16) {
                        M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 6U;
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) temp_r3_16;
                        M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                        M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                        goto block_828;
                    }
                } else {
                    temp_r2_17 = 1 & keys29_03001324;
                    if (temp_r2_17 != 0) {
                        M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                        temp_r2_18 = M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                        if (temp_r2_18 == 0x16) {
                            temp_r2_19 = gUnk_030034E0 + 0x120;
                            if (M2C_FIELD(gUnk_030034E0, u16 *, 0x120) != 0) {
                                M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x18);
                                M2C_FIELD(gUnk_03006440, u32 *, 0x20) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 4);
                                temp_r1_23 = gUnk_03006440 + 0xF4;
                                M2C_FIELD(gUnk_03006440, s32 *, 0xF4) = (s32) M2C_FIELD(gUnk_030034E0, u32 *, 0x120);
                                M2C_FIELD(temp_r1_23, s32 *, 4) = (s32) M2C_FIELD(temp_r2_19, s32 *, 4);
                                M2C_FIELD(temp_r1_23, s32 *, 8) = (s32) M2C_FIELD(temp_r2_19, s32 *, 8);
                                M2C_FIELD(temp_r1_23, s32 *, 0xC) = (s32) M2C_FIELD(temp_r2_19, s32 *, 0xC);
                                M2C_FIELD(gUnk_03006440, s8 *, 0xFD) = 0;
                                sub_0805D13C();
                                goto block_435;
                            }
                        } else if (*M2C_FIELD(gUnk_03006440, u16 **, 0xF0) == 0) {
                            if (temp_r2_18 != 0xB) {
                                if (sub_0805D2E0(gUnk_03006440 + 0xF4) != 0) {
                                    sub_0807BD78(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20));
                                    var_r1_3 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                                    var_r2_4 = gUnk_03006440 + 0xF4;
                                    var_r0_5 = 3;
                                    goto block_298;
                                }
                                goto block_462;
                            }
                            if ((u16) M2C_FIELD(gUnk_03006440, s32 *, 0xF4) == 5) {
                                if (sub_0805D2E0(gUnk_03006440 + 0xF4) != 0) {
                                    sub_0807C014(sub_0805AE94(gUnk_03006440 + 0xF4));
                                    var_r1_4 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                                    var_r2_5 = gUnk_03006440 + 0xF4;
                                    var_r0_6 = 3;
                                    goto block_291;
                                }
                                goto block_462;
                            }
                        } else {
                            if (temp_r2_18 != 0xB) {
                                if (sub_0805D2E0(gUnk_03006440 + 0xF4) != 0) {
                                    temp_r0_31 = gUnk_030034E0 + 0x120;
                                    M2C_FIELD(&sp4, s32 *, 0) = (s32) M2C_FIELD(gUnk_030034E0, u32 *, 0x120);
                                    M2C_FIELD(&sp4, s32 *, 4) = (s32) M2C_FIELD(temp_r0_31, s32 *, 4);
                                    M2C_FIELD(&sp4, s32 *, 8) = (s32) M2C_FIELD(temp_r0_31, s32 *, 8);
                                    M2C_FIELD(&sp4, s32 *, 0xC) = (s32) M2C_FIELD(temp_r0_31, s32 *, 0xC);
                                    var_r1_5 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                                    var_r2_6 = gUnk_03006440 + 0xF4;
                                    var_r0_7 = 3;
                                    goto block_297;
                                }
                                goto block_462;
                            }
                            goto block_463;
                        }
                        goto block_464;
                    }
                    if (0x100 & keys29_03001324) {
                        temp_r0_32 = M2C_FIELD(gUnk_03006440, u32 *, 0);
                        if ((temp_r0_32 != 2) && (temp_r0_32 == 3) && (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 2)) {
                            M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0xCU;
                            M2C_FIELD(gUnk_03006440, u32 *, 4) = temp_r2_17;
                            M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                            goto block_828;
                        }
                    }
                }
            }
        }
        break;
    case 4:                                         /* switch 1 */
        if (0x40 & keys29_03001308) {
            if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0x16) {
                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 2U;
                M2C_FIELD(gUnk_03006440, u32 *, 4) = 0U;
                M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                goto block_828;
            }
        } else {
            temp_r2_20 = 0x80 & keys29_03001308;
            if (temp_r2_20 != 0) {
                if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0x16) {
                    M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 3U;
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = 1U;
                    M2C_FIELD(gUnk_03006440, u32 *, 8) = 2U;
                    M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                    goto block_828;
                }
            } else {
                temp_r3_17 = 0x10 & keys29_03001308;
                if (temp_r3_17 != 0) {
                    M2C_FIELD(gUnk_03006440, u32 *, 0x18) = (u32) temp_r2_20;
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = 0xAU;
                    M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                    goto block_828;
                }
                temp_r5_7 = 0x20 & keys29_03001308;
                if (temp_r5_7 != 0) {
                    if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0x16) {
                        M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 9U;
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) temp_r3_17;
                        M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                        M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                        goto block_828;
                    }
                } else {
                    temp_r2_21 = 1 & keys29_03001324;
                    if (temp_r2_21 == 0) {
                        if (0x100 & keys29_03001324) {
                            temp_r0_33 = M2C_FIELD(gUnk_03006440, u32 *, 0);
                            if ((temp_r0_33 != 2) && (temp_r0_33 == 3) && (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 4)) {
                                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0xCU;
                                M2C_FIELD(gUnk_03006440, u32 *, 4) = temp_r2_21;
                                M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                                goto block_828;
                            }
                        }
                    } else {
                        M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                        temp_r2_22 = M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                        if (temp_r2_22 == 0x16) {
                            temp_r2_23 = gUnk_030034E0 + 0x110;
                            if (M2C_FIELD(gUnk_030034E0, u16 *, 0x110) == 0) {

                            } else {
                                M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x18);
                                M2C_FIELD(gUnk_03006440, u32 *, 0x20) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 4);
                                temp_r1_24 = gUnk_03006440 + 0xF4;
                                M2C_FIELD(gUnk_03006440, s32 *, 0xF4) = (s32) M2C_FIELD(gUnk_030034E0, u32 *, 0x110);
                                M2C_FIELD(temp_r1_24, s32 *, 4) = (s32) M2C_FIELD(temp_r2_23, s32 *, 4);
                                M2C_FIELD(temp_r1_24, s32 *, 8) = (s32) M2C_FIELD(temp_r2_23, s32 *, 8);
                                M2C_FIELD(temp_r1_24, s32 *, 0xC) = (s32) M2C_FIELD(temp_r2_23, s32 *, 0xC);
                                M2C_FIELD(gUnk_03006440, s8 *, 0xFD) = 0;
                                sub_0805D0E8();
                                goto block_435;
                            }
                        } else if (*M2C_FIELD(gUnk_03006440, u16 **, 0xF0) == 0) {
                            if (temp_r2_22 != 0xB) {
                                if (sub_0805D278(gUnk_03006440 + 0xF4) != 0) {
                                    sub_0807BD78(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20));
                                    sub_0807BEA0(4U, M2C_FIELD(gUnk_03006440, u32 *, 4), gUnk_03006440 + 0xF4);
                                    sp14 = (u32) temp_r5_7;
                                    CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                    M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                    M2C_FIELD(gUnk_03006440, u32 *, 0x20) = (u32) temp_r5_7;
                                    sub_0805865C(0x5F);
                                } else {
                                    sub_0805865C(0x61);
                                }
                            } else if ((u16) M2C_FIELD(gUnk_03006440, s32 *, 0xF4) == 3) {
                                if (sub_0805D278(gUnk_03006440 + 0xF4) != 0) {
                                    sub_0807C014(sub_0805AE94(gUnk_03006440 + 0xF4));
                                    sub_0807BEA0(4U, M2C_FIELD(gUnk_03006440, u32 *, 4), gUnk_03006440 + 0xF4);
                                    if ((u32) M2C_FIELD(gUnk_03006440, u32 *, 0x20) > 8U) {
                                        sub_0807BD78(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20));
                                    }
                                    M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x20);
                                    M2C_FIELD(gUnk_03006440, u32 *, 0x18) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                                    sp14 = (u32) temp_r5_7;
                                    CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                    M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                    M2C_FIELD(gUnk_03006440, u32 *, 0x20) = (u32) temp_r5_7;
                                    sub_0805865C(0x63);
                                } else {
                                    sub_0805865C(0x61);
                                }
                            }
                            sub_0805D0E8();
                        } else {
                            if (temp_r2_22 != 0xB) {
                                if (sub_0805D278(gUnk_03006440 + 0xF4) != 0) {
                                    temp_r0_34 = gUnk_030034E0 + 0x110;
                                    M2C_FIELD(&sp4, s32 *, 0) = (s32) M2C_FIELD(gUnk_030034E0, u32 *, 0x110);
                                    M2C_FIELD(&sp4, s32 *, 4) = (s32) M2C_FIELD(temp_r0_34, s32 *, 4);
                                    M2C_FIELD(&sp4, s32 *, 8) = (s32) M2C_FIELD(temp_r0_34, s32 *, 8);
                                    M2C_FIELD(&sp4, s32 *, 0xC) = (s32) M2C_FIELD(temp_r0_34, s32 *, 0xC);
                                    sub_0807BEA0(4U, M2C_FIELD(gUnk_03006440, u32 *, 4), gUnk_03006440 + 0xF4);
                                    sub_0807BEA0(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20), &sp4);
                                    sp14 = (u32) temp_r5_7;
                                    CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                    M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                    M2C_FIELD(gUnk_03006440, u32 *, 0x20) = (u32) temp_r5_7;
                                    sub_0805865C(0x5F);
                                } else {
                                    sub_0805865C(0x61);
                                }
                            } else {
                                sub_0805865C(0x61);
                            }
                            sub_0805D0E8();
                        }
                        goto block_464;
                    }
                }
            }
        }
        break;
    case 5:                                         /* switch 1 */
        temp_r3_18 = 0x40 & keys29_03001308;
        if (temp_r3_18 != 0) {
            if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0x16) {
                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 1U;
                M2C_FIELD(gUnk_03006440, u32 *, 4) = 2U;
                M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                goto block_828;
            }
        } else {
            temp_r2_24 = 0x80 & keys29_03001308;
            if (temp_r2_24 != 0) {
                if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0x16) {
                    M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 6U;
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) temp_r3_18;
                    M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                    M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                    goto block_828;
                }
            } else {
                temp_r4_4 = 0x10 & keys29_03001308;
                if (temp_r4_4 != 0) {
                    if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0x16) {
                        M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 9U;
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) temp_r2_24;
                        M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                        M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                    } else {
                        M2C_FIELD(gUnk_03006440, u32 *, 0x18) = (u32) temp_r2_24;
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = 0xAU;
                        M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                    }
                    goto block_828;
                }
                temp_r2_25 = 1 & keys29_03001324;
                if (temp_r2_25 == 0) {
                    if (0x100 & keys29_03001324) {
                        temp_r0_35 = M2C_FIELD(gUnk_03006440, u32 *, 0);
                        if ((temp_r0_35 != 2) && (temp_r0_35 == 3) && (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 5)) {
                            M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0xCU;
                            M2C_FIELD(gUnk_03006440, u32 *, 4) = temp_r2_25;
                            M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                            goto block_828;
                        }
                    }
                } else {
                    M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                    temp_r3_19 = M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                    if (temp_r3_19 == 0x16) {
                        temp_r3_20 = gUnk_030034E0 + 0x130;
                        if (M2C_FIELD(gUnk_030034E0, u16 *, 0x130) != 0) {
                            M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x18);
                            M2C_FIELD(gUnk_03006440, u32 *, 0x20) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 4);
                            temp_r1_25 = gUnk_03006440 + 0xF4;
                            M2C_FIELD(gUnk_03006440, s32 *, 0xF4) = (s32) M2C_FIELD(gUnk_030034E0, u32 *, 0x130);
                            M2C_FIELD(temp_r1_25, s32 *, 4) = (s32) M2C_FIELD(temp_r3_20, s32 *, 4);
                            M2C_FIELD(temp_r1_25, s32 *, 8) = (s32) M2C_FIELD(temp_r3_20, s32 *, 8);
                            M2C_FIELD(temp_r1_25, s32 *, 0xC) = (s32) M2C_FIELD(temp_r3_20, s32 *, 0xC);
                            M2C_FIELD(gUnk_03006440, s8 *, 0xFD) = 0;
                            sub_0805D190();
                            goto block_743;
                        }
                    } else {
                        if (*M2C_FIELD(gUnk_03006440, u16 **, 0xF0) == 0) {
                            if (temp_r3_19 != 0xB) {
                                sub_0807BD78(temp_r3_19, M2C_FIELD(gUnk_03006440, u32 *, 0x20));
                                sub_0807BEA0(5U, M2C_FIELD(gUnk_03006440, u32 *, 4), gUnk_03006440 + 0xF4);
                                sp14 = (u32) temp_r4_4;
                            } else {
                                sub_0807C014(sub_0805AE94(gUnk_03006440 + 0xF4));
                                sub_0807BEA0(5U, M2C_FIELD(gUnk_03006440, u32 *, 4), gUnk_03006440 + 0xF4);
                                if ((u32) M2C_FIELD(gUnk_03006440, u32 *, 0x20) > 8U) {
                                    sub_0807BD78(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20));
                                }
                                M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x20);
                                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                                sp14 = (u32) temp_r4_4;
                            }
                            CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                            M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                            M2C_FIELD(gUnk_03006440, u32 *, 0x20) = (u32) temp_r4_4;
                            M2C_FIELD(((0x14C * sub_080020F4()) + gUnk_03003CE0), s16 *, 0xC6) = 0;
                            sub_0805D190();
                            goto block_777;
                        }
                        if (temp_r3_19 != 0xB) {
                            temp_r0_36 = gUnk_030034E0 + 0x130;
                            M2C_FIELD(&sp4, s32 *, 0) = (s32) M2C_FIELD(gUnk_030034E0, u32 *, 0x130);
                            M2C_FIELD(&sp4, s32 *, 4) = (s32) M2C_FIELD(temp_r0_36, s32 *, 4);
                            M2C_FIELD(&sp4, s32 *, 8) = (s32) M2C_FIELD(temp_r0_36, s32 *, 8);
                            M2C_FIELD(&sp4, s32 *, 0xC) = (s32) M2C_FIELD(temp_r0_36, s32 *, 0xC);
                            sub_0807BEA0(5U, M2C_FIELD(gUnk_03006440, u32 *, 4), gUnk_03006440 + 0xF4);
                            sub_0807BEA0(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20), &sp4);
                            sp14 = (u32) temp_r4_4;
                            CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                            M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                            M2C_FIELD(gUnk_03006440, u32 *, 0x20) = (u32) temp_r4_4;
                            sub_0805865C(0x5F);
                            sub_0805D190();
                            M2C_FIELD(((0x14C * sub_080020F4()) + gUnk_03003CE0), u16 *, 0xC6) = temp_r4_4;
                        } else {
                            goto block_771;
                        }
                    }
                }
            }
        }
        break;
    case 6:                                         /* switch 1 */
        temp_r3_21 = 0x40 & keys29_03001308;
        if (temp_r3_21 != 0) {
            if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0x16) {
                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 5U;
                M2C_FIELD(gUnk_03006440, u32 *, 4) = 0U;
                M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                goto block_828;
            }
        } else {
            temp_r2_26 = 0x80 & keys29_03001308;
            if (temp_r2_26 != 0) {
                if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0x16) {
                    M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 7U;
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) temp_r3_21;
                    M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                    M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                    goto block_828;
                }
            } else {
                if (0x10 & keys29_03001308) {
                    if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0x16) {
                        M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 3U;
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) temp_r2_26;
                        M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                    } else {
                        M2C_FIELD(gUnk_03006440, u32 *, 0x18) = (u32) temp_r2_26;
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = 0x14U;
                        M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                    }
                    goto block_828;
                }
                temp_r2_27 = 1 & keys29_03001324;
                if (temp_r2_27 == 0) {
                    if (0x100 & keys29_03001324) {
                        temp_r0_37 = M2C_FIELD(gUnk_03006440, u32 *, 0);
                        if ((temp_r0_37 != 2) && (temp_r0_37 == 3) && (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 6)) {
                            M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0xCU;
                            M2C_FIELD(gUnk_03006440, u32 *, 4) = temp_r2_27;
                            M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                            goto block_828;
                        }
                    }
                } else {
                    M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                    temp_r2_28 = M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                    if (temp_r2_28 == 0x16) {
                        if (M2C_FIELD(gUnk_030034E0, u16 *, 0x140) == 0) {

                        } else {
                            var_r6 = 0;
                            if ((u32) M2C_FIELD(((0x14C * sub_080020F4()) + gUnk_03003CE0), u8 *, 0x77) > 3U) {
                                temp_r2_29 = M2C_FIELD(((0x14C * sub_080020F4()) + gUnk_03003CE0), u8 *, 0x77);
                                var_r5_3 = 3;
                                if ((u32) temp_r2_29 > 3U) {
                                    if (M2C_FIELD(gUnk_030034E0, u16 *, 0xA0) == 2) {
                                        goto block_462;
                                    }
loop_422:
                                    var_r5_3 += 1;
                                    if (var_r5_3 < (u32) temp_r2_29) {
                                        if (M2C_FIELD((gUnk_030034E0 + (var_r5_3 * 0x10)), u16 *, 0x70) == 2) {
                                            goto block_431;
                                        }
                                        goto loop_422;
                                    }
                                    goto block_432;
                                }
                                goto block_432;
                            }
                            if ((u32) M2C_FIELD(((0x14C * sub_080020F4()) + gUnk_03003CE0), u8 *, 0x78) > 3U) {
                                temp_r2_30 = M2C_FIELD(((0x14C * sub_080020F4()) + gUnk_03003CE0), u8 *, 0x78);
                                var_r5_4 = 3;
                                if ((u32) temp_r2_30 > 3U) {
                                    if (M2C_FIELD(gUnk_030034E0, u16 *, 0x5C) != 0) {
                                        goto block_462;
                                    }
loop_429:
                                    var_r5_4 += 1;
                                    if (var_r5_4 < (u32) temp_r2_30) {
                                        if (*(u16 *)(gUnk_030034E0 + 0x56 + (var_r5_4 * 2)) != 0) {
block_431:
                                            var_r6 = 1;
                                        } else {
                                            goto loop_429;
                                        }
                                    }
                                    goto block_432;
                                }
                            }
block_432:
                            if (var_r6 != 0) {
                                goto block_462;
                            }
                            M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x18);
                            M2C_FIELD(gUnk_03006440, u32 *, 0x20) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 4);
                            temp_r1_26 = gUnk_03006440 + 0xF4;
                            temp_r0_38 = gUnk_030034E0 + 0x140;
                            M2C_FIELD(gUnk_03006440, s32 *, 0xF4) = (s32) M2C_FIELD(gUnk_030034E0, u32 *, 0x140);
                            M2C_FIELD(temp_r1_26, s32 *, 4) = (s32) M2C_FIELD(temp_r0_38, s32 *, 4);
                            M2C_FIELD(temp_r1_26, s32 *, 8) = (s32) M2C_FIELD(temp_r0_38, s32 *, 8);
                            M2C_FIELD(temp_r1_26, s32 *, 0xC) = (s32) M2C_FIELD(temp_r0_38, s32 *, 0xC);
                            M2C_FIELD(gUnk_03006440, s8 *, 0xFD) = var_r6;
                            sub_0805D1E0();
                            goto block_435;
                        }
                    } else {
                        temp_r4_5 = *M2C_FIELD(gUnk_03006440, u16 **, 0xF0);
                        if (temp_r4_5 == 0) {
                            if (temp_r2_28 != 0xB) {
                                sub_0807BD78(temp_r2_28, M2C_FIELD(gUnk_03006440, u32 *, 0x20));
                                sub_0807BEA0(6U, M2C_FIELD(gUnk_03006440, u32 *, 4), gUnk_03006440 + 0xF4);
                                sp14 = (u32) temp_r4_5;
                                CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                M2C_FIELD(gUnk_03006440, u32 *, 0x20) = (u32) temp_r4_5;
                                goto block_460;
                            }
                            if ((u16) M2C_FIELD(gUnk_03006440, s32 *, 0xF4) != 6) {

                            } else {
                                sub_0807C014(sub_0805AE94(gUnk_03006440 + 0xF4));
                                sub_0807BEA0(6U, M2C_FIELD(gUnk_03006440, u32 *, 4), gUnk_03006440 + 0xF4);
                                if ((u32) M2C_FIELD(gUnk_03006440, u32 *, 0x20) > 8U) {
                                    sub_0807BD78(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20));
                                }
                                M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x20);
                                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                                sp14 = (u32) temp_r4_5;
                                CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                M2C_FIELD(gUnk_03006440, u32 *, 0x20) = (u32) temp_r4_5;
                                var_r0_8 = 0x63;
                                goto block_461;
                            }
                        } else {
                            if (temp_r2_28 == 0xB) {
                                goto block_463;
                            }
                            var_r7 = 0;
                            if ((u32) M2C_FIELD(((0x14C * sub_080020F4()) + gUnk_03003CE0), u8 *, 0x77) > 3U) {
                                temp_r6_5 = M2C_FIELD(((0x14C * sub_080020F4()) + gUnk_03003CE0), u8 *, 0x77);
                                var_r5_5 = 3;
                                if ((u32) temp_r6_5 > 3U) {
                                    if (M2C_FIELD(gUnk_030034E0, u16 *, 0xA0) != 2) {
loop_449:
                                        var_r5_5 += 1;
                                        if (var_r5_5 < (u32) temp_r6_5) {
                                            if (M2C_FIELD((gUnk_030034E0 + (var_r5_5 * 0x10)), u16 *, 0x70) == 2) {
                                                goto block_457;
                                            }
                                            goto loop_449;
                                        }
                                        goto block_458;
                                    }
                                    goto block_462;
                                }
                                goto block_458;
                            }
                            if ((u32) M2C_FIELD(((0x14C * sub_080020F4()) + gUnk_03003CE0), u8 *, 0x78) > 3U) {
                                temp_r6_6 = M2C_FIELD(((0x14C * sub_080020F4()) + gUnk_03003CE0), u8 *, 0x78);
                                var_r5_6 = 3;
                                if ((u32) temp_r6_6 > 3U) {
                                    if (M2C_FIELD(gUnk_030034E0, u16 *, 0x5C) == 0) {
loop_455:
                                        var_r5_6 += 1;
                                        if (var_r5_6 < (u32) temp_r6_6) {
                                            if (*(u16 *)(gUnk_030034E0 + 0x56 + (var_r5_6 * 2)) != 0) {
block_457:
                                                var_r7 = 1;
                                            } else {
                                                goto loop_455;
                                            }
                                        }
                                        goto block_458;
                                    }
                                    goto block_462;
                                }
                            }
block_458:
                            if (var_r7 == 0) {
                                temp_r0_39 = gUnk_030034E0 + 0x140;
                                M2C_FIELD(&sp4, s32 *, 0) = (s32) M2C_FIELD(gUnk_030034E0, u32 *, 0x140);
                                M2C_FIELD(&sp4, s32 *, 4) = (s32) M2C_FIELD(temp_r0_39, s32 *, 4);
                                M2C_FIELD(&sp4, s32 *, 8) = (s32) M2C_FIELD(temp_r0_39, s32 *, 8);
                                M2C_FIELD(&sp4, s32 *, 0xC) = (s32) M2C_FIELD(temp_r0_39, s32 *, 0xC);
                                sub_0807BEA0(6U, M2C_FIELD(gUnk_03006440, u32 *, 4), gUnk_03006440 + 0xF4);
                                sub_0807BEA0(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20), &sp4);
                                sp14 = var_r7;
                                CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                M2C_FIELD(gUnk_03006440, u32 *, 0x20) = var_r7;
block_460:
                                var_r0_8 = 0x5F;
block_461:
                                sub_0805865C(var_r0_8);
                                sub_0805D1E0();
                            } else {
                                goto block_462;
                            }
                        }
                    }
                    goto block_464;
                }
            }
        }
        break;
    case 7:                                         /* switch 1 */
        if (0x10 & keys29_03001308) {
            temp_r1_27 = M2C_FIELD(gUnk_03006440, u32 *, 4);
            if ((u32) (3 & temp_r1_27) <= 2U) {
                M2C_FIELD(gUnk_03006440, u32 *, 8) = temp_r1_27;
                M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r1_27 + 1);
                goto block_828;
            }
        } else {
            temp_r3_22 = 0x20 & keys29_03001308;
            if (temp_r3_22 != 0) {
                temp_r1_28 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                if (3 & temp_r1_28) {
                    M2C_FIELD(gUnk_03006440, u32 *, 8) = temp_r1_28;
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r1_28 - 1);
                    goto block_828;
                }
            } else if (0x40 & keys29_03001308) {
                temp_r2_31 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                if (temp_r2_31 > 3U) {
                    M2C_FIELD(gUnk_03006440, u32 *, 8) = temp_r2_31;
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r2_31 - 4);
                    goto block_828;
                }
                switch (temp_r2_31) {               /* switch 13; irregular */
                default:                            /* switch 13 */
                    if (M2C_FIELD(gUnk_03006440, u32 *, 0) != 5) {
                        M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 6U;
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) temp_r3_22;
                        M2C_FIELD(gUnk_03006440, u32 *, 8) = 2U;
                        M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                        goto block_828;
                    }
                    break;
                case 1:                             /* switch 13 */
                    M2C_FIELD(gUnk_03006440, u32 *, 0x18) = (u32) temp_r3_22;
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = 0x14U;
                    M2C_FIELD(gUnk_03006440, u32 *, 8) = temp_r2_31;
                    M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                    goto block_828;
                case 2:                             /* switch 13 */
                    M2C_FIELD(gUnk_03006440, u32 *, 0x18) = (u32) temp_r3_22;
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = 0x18U;
                    M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                    M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                    goto block_828;
                case 3:                             /* switch 13 */
                    temp_r2_32 = M2C_FIELD(gUnk_03006440, u32 *, 0);
                    switch (temp_r2_32) {           /* switch 14; irregular */
                    case 2:                         /* switch 14 */
                        M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 8U;
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = temp_r2_32;
                        M2C_FIELD(gUnk_03006440, u32 *, 8) = 0U;
                        M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                        goto block_828;
                    case 3:                         /* switch 14 */
                        M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0xBU;
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = 0xAU;
                        M2C_FIELD(gUnk_03006440, u32 *, 8) = (u32) temp_r3_22;
                        M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                        goto block_828;
                    case 5:                         /* switch 14 */
                        M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0U;
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = 0x18U;
                        M2C_FIELD(gUnk_03006440, u32 *, 8) = 0U;
                        M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                        goto block_828;
                    case 4:                         /* switch 14 */
                        M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0xDU;
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = 0xDU;
                        M2C_FIELD(gUnk_03006440, u32 *, 8) = 0U;
                        M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                        goto block_828;
                    }
                    break;
                }
            } else if (0x80 & keys29_03001308) {
                temp_r0_40 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                if (temp_r0_40 <= 7U) {
                    M2C_FIELD(gUnk_03006440, u32 *, 8) = temp_r0_40;
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r0_40 + 4);
                    goto block_828;
                }
            }
        }
        break;
    case 8:                                         /* switch 1 */
        temp_r0_41 = (u16) ((u16) M2C_FIELD(gUnk_030034E0, u16 *, 0x54) / 3U);
        temp_r3_23 = temp_r0_41 * 3;
        temp_r5_8 = (u32) ((temp_r0_41 * 0x30000) + 0x30000) >> 0x10;
        temp_r0_42 = M2C_FIELD(gUnk_03006440, u32 *, 4);
        if ((u32) temp_r3_23 >= temp_r0_42) {
            M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) temp_r3_23;
        } else if (temp_r5_8 <= temp_r0_42) {
            M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r5_8 - 1);
        }
        if (0x20 & keys29_03001308) {
            temp_r0_43 = M2C_FIELD(gUnk_03006440, u32 *, 4);
            if (temp_r0_43 == temp_r3_23) {
                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0U;
                M2C_FIELD(gUnk_03006440, u32 *, 4) = 4U;
                M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
            } else {
                M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r0_43 - 1);
            }
            goto block_828;
        }
        temp_r3_24 = 0x10 & keys29_03001308;
        if (temp_r3_24 != 0) {
            temp_r2_33 = M2C_FIELD(gUnk_03006440, u32 *, 4);
            if (temp_r2_33 < (u32) (temp_r5_8 - 1)) {
                M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r2_33 + 1);
                goto block_828;
            }
        } else {
            temp_r2_34 = 0x80 & keys29_03001308;
            if (temp_r2_34 != 0) {
                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0xAU;
                M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) temp_r3_24;
                M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                goto block_828;
            }
            if (1 & keys29_03001324) {
                temp_r6_7 = M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                if (temp_r6_7 == 0x16) {
                    temp_r1_29 = gUnk_030034E0 + 0x56 + (M2C_FIELD(gUnk_03006440, u32 *, 4) * 2);
                    if (*(u16 *)temp_r1_29 != 0) {
                        *(u16 *)temp_r1_29 = temp_r2_34;
                        goto block_771;
                    }
                } else if (temp_r6_7 == 0) {
                    *(u16 *)(gUnk_030034E0 + 0x56 + (M2C_FIELD(gUnk_03006440, u32 *, 4) * 2)) = M2C_FIELD(gUnk_03006440, u16 *, 0xF6) + 1;
                    sp14 = temp_r6_7;
                    CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                    M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                    M2C_FIELD(gUnk_03006440, u32 *, 0x20) = temp_r6_7;
                    goto block_777;
                }
            }
        }
        break;
    case 9:                                         /* switch 1 */
        if (0x40 & keys29_03001308) {
            if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0x16) {
                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 1U;
                M2C_FIELD(gUnk_03006440, u32 *, 4) = 1U;
                M2C_FIELD(gUnk_03006440, u32 *, 8) = 2U;
                M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                goto block_828;
            }
        } else {
            temp_r2_35 = 0x80 & keys29_03001308;
            if (temp_r2_35 != 0) {
                if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0x16) {
                    M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 6U;
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = 1U;
                    M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                    M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                    goto block_828;
                }
            } else {
                temp_r3_25 = 0x10 & keys29_03001308;
                if (temp_r3_25 != 0) {
                    if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0x16) {
                        M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 4U;
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) temp_r2_35;
                        M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                        M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                    } else {
                        M2C_FIELD(gUnk_03006440, u32 *, 0x18) = (u32) temp_r2_35;
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = 0xAU;
                        M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                    }
                    goto block_828;
                }
                if (0x20 & keys29_03001308) {
                    if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0x16) {
                        M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 5U;
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) temp_r3_25;
                        M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                        M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                        goto block_828;
                    }
                } else if ((1 & keys29_03001324) && (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) != 0x16)) {
                    if ((sub_0801DE60() << 0x18) == 0) {
                        var_r1_6 = sub_0801E0AC(gUnk_030034E0 + 0x30, 5);
                    } else {
                        var_r1_6 = 0;
                    }
                    if ((sub_0805BD5C(gUnk_03006440 + 0xF4, var_r1_6) != 0) && ((u16) M2C_FIELD(gUnk_03006440, s32 *, 0xF4) == 1)) {
                        if (M2C_FIELD(gUnk_03006440, u16 *, 0xF6) == 6) {
                            M2C_FIELD(gUnk_03006440, s32 *, 0x24) = 0;
                        }
                        temp_r2_36 = M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                        if (temp_r2_36 != 0xB) {
                            sub_0807BD78(temp_r2_36, M2C_FIELD(gUnk_03006440, u32 *, 0x20));
                            sub_0805865C(0x5F);
                        } else {
                            sub_0807C014(sub_0805AE94(gUnk_03006440 + 0xF4));
                            sub_0805865C(0x63);
                        }
                        sp14 = 0;
                        CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                        M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                        M2C_FIELD(gUnk_03006440, u32 *, 0x20) = 0U;
                    }
                }
            }
        }
        break;
    case 10:                                        /* switch 1 */
        if (0x40 & keys29_03001308) {
            if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0x16) {
                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 8U;
                M2C_FIELD(gUnk_03006440, u32 *, 4) = 0U;
                M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                goto block_828;
            }
            temp_r4_6 = (u16) M2C_FIELD(gUnk_03006440, s32 *, 0xF4);
            if ((temp_r4_6 != 0xA) && (temp_r4_6 == 1) && (M2C_FIELD((void *) sub_08007290(M2C_FIELD((gUnk_03006440 + 0xF4), u16 *, 2) | 0x100000), s32 *, 0xA4) != 0)) {
                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 8U;
                M2C_FIELD(gUnk_03006440, u32 *, 4) = 0U;
                M2C_FIELD(gUnk_03006440, u32 *, 8) = (u32) temp_r4_6;
                goto block_828;
            }
        } else {
            temp_r2_37 = 0x80 & keys29_03001308;
            if (temp_r2_37 != 0) {
                if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0x16) {
                    M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 7U;
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = 3U;
                    M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                    goto block_828;
                }
            } else {
                if (0x20 & keys29_03001308) {
                    M2C_FIELD(gUnk_03006440, u32 *, 0x18) = (u32) temp_r2_37;
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = 0x18U;
                    M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                    goto block_828;
                }
                if (1 & keys29_03001324) {
                    M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                    if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) != 0x16) {
                        sp28 = *(s32 *)((0x14C * sub_080020F4()) + ((u32)gUnk_03003CE0 + 0x8C));
                        sp2C = *(s32 *)((0x14C * sub_080020F4()) + ((u32)gUnk_03003CE0 + 0x90));
                        sub_0805B4CC(&sp28, &sp2C);
                        if ((sp28 != 0) && (sp2C != 0)) {
                            temp_r4_7 = *(s32 *)((0x14C * sub_080020F4()) + ((u32)gUnk_03003CE0 + 0x8C));
                            sub_08066490(temp_r4_7, *(s32 *)((0x14C * sub_080020F4()) + ((u32)gUnk_03003CE0 + 0x90)), gUnk_03006440 + 0xF4);
                            if ((u16) M2C_FIELD(gUnk_03006440, s32 *, 0xF4) == 0xA) {
                                temp_r3_26 = gUnk_030034E0 + 0x154;
                                temp_r2_38 = temp_r3_26 + (M2C_FIELD(gUnk_03006440, u32 *, 0x20) * 0x10);
                                *(s32 *)temp_r2_38 -= M2C_FIELD(gUnk_03006440, u32 *, 0xF8);
                                if (*(u32 *)(temp_r3_26 + (M2C_FIELD(gUnk_03006440, u32 *, 0x20) * 0x10)) == 0) {
                                    sub_0807BD78(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20));
                                }
                            } else {
                                sub_0807BD78(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20));
                            }
                            sp14 = 0;
                            CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                            M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                            M2C_FIELD(gUnk_03006440, u32 *, 0x20) = 0U;
                            sub_0805865C(0x60);
                            M2C_FIELD(gUnk_03006440, u32 *, 0x70) = 0U;
                            M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0x15U;
                        } else {
                            goto block_771;
                        }
                    }
                }
            }
        }
        break;
    case 21:                                        /* switch 1 */
        temp_r0_44 = M2C_FIELD(gUnk_03006440, u32 *, 0x70);
        M2C_FIELD(gUnk_03006440, u32 *, 0x70) = (u32) (temp_r0_44 + 1);
        if (temp_r0_44 > 0x28U) {
            M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0xAU;
            M2C_FIELD(gUnk_03006440, u32 *, 4) = 0U;
            M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
        }
        break;
    case 11:                                        /* switch 1 */
        if (0x10 & keys29_03001308) {
            temp_r4_8 = M2C_FIELD(gUnk_03006440, u32 *, 4);
            if ((u32) (temp_r4_8 % 3U) <= 1U) {
                M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r4_8 + 1);
                goto block_828;
            }
        } else {
            if (0x20 & keys29_03001308) {
                temp_r4_9 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                temp_r0_45 = temp_r4_9 % 3U;
                if (temp_r0_45 != 0) {
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r4_9 - 1);
                } else {
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (((temp_r4_9 / 3U) * 5) + 4);
                    M2C_FIELD(gUnk_03006440, u32 *, 0x18) = temp_r0_45;
                }
                goto block_828;
            }
            if (0x40 & keys29_03001308) {
                temp_r0_46 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                if (temp_r0_46 > 2U) {
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r0_46 - 3);
                    goto block_828;
                }
            } else {
                temp_r7_3 = 0x80 & keys29_03001308;
                if (temp_r7_3 != 0) {
                    temp_r0_47 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                    if (temp_r0_47 <= 8U) {
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r0_47 + 3);
                        goto block_828;
                    }
                } else {
                    temp_r5_9 = 1 & keys29_03001324;
                    if (temp_r5_9 != 0) {
                        if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0x16) {
                            temp_r2_39 = M2C_FIELD(gUnk_03006440, u32 *, 4) * 0x10;
                            if (M2C_FIELD((gUnk_03006440 + temp_r2_39), u16 *, 0x104) != 0) {
                                temp_r4_10 = sub_0805AE94(gUnk_03006440 + (temp_r2_39 + 0x104));
                                if (temp_r4_10 <= sub_0805B0F0()) {
                                    M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x18);
                                    temp_r0_48 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                                    M2C_FIELD(gUnk_03006440, u32 *, 0x20) = temp_r0_48;
                                    temp_r0_49 = gUnk_03006440 + (temp_r0_48 * 0x10);
                                    temp_r1_30 = gUnk_03006440 + 0xF4;
                                    temp_r0_50 = temp_r0_49 + 0x104;
                                    M2C_FIELD(gUnk_03006440, s32 *, 0xF4) = (s32) M2C_FIELD(temp_r0_49, s32 *, 0x104);
                                    M2C_FIELD(temp_r1_30, s32 *, 4) = (s32) M2C_FIELD(temp_r0_50, s32 *, 4);
                                    M2C_FIELD(temp_r1_30, s32 *, 8) = (s32) M2C_FIELD(temp_r0_50, s32 *, 8);
                                    M2C_FIELD(temp_r1_30, s32 *, 0xC) = (s32) M2C_FIELD(temp_r0_50, s32 *, 0xC);
                                    M2C_FIELD(gUnk_03006440, s8 *, 0xFD) = (s8) temp_r7_3;
                                    goto block_743;
                                }
                                goto block_771;
                            }
                        }
                    } else if ((0x100 & keys29_03001324) && (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) != 0x16)) {
                        M2C_FIELD(gUnk_03006440, u32 *, 0x18) = temp_r5_9;
                        temp_r0_51 = (u32) sub_0805CFA0();
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = temp_r0_51;
                        if (temp_r0_51 == -1U) {
                            M2C_FIELD(gUnk_03006440, u32 *, 4) = temp_r5_9;
                        }
                        M2C_FIELD(gUnk_03006440, u32 *, 8) = (u32) (M2C_FIELD(gUnk_03006440, u32 *, 4) + 1);
                        goto block_828;
                    }
                }
            }
        }
        break;
    case 12:                                        /* switch 1 */
        if (0x20 & keys29_03001308) {
            M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0U;
            M2C_FIELD(gUnk_03006440, u32 *, 4) = 0x18U;
            goto block_828;
        }
        if (1 & keys29_03001324) {
            M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
            if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) != 0x16) {
                temp_r0_52 = (u16) M2C_FIELD(gUnk_03006440, s32 *, 0xF4);
                if ((temp_r0_52 != 0) && (temp_r0_52 != 0xA)) {
                    sub_0807C114();
                }
            }
        }
        break;
    case 13:                                        /* switch 1 */
        if (0x10 & keys29_03001308) {
            temp_r5_10 = M2C_FIELD(gUnk_03006440, u32 *, 4);
            if ((u32) (temp_r5_10 % 3U) <= 1U) {
                M2C_FIELD(gUnk_03006440, u32 *, 8) = temp_r5_10;
                M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r5_10 + 1);
                goto block_828;
            }
            if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0x16) {
                M2C_FIELD(gUnk_03006440, u32 *, 8) = 5U;
                temp_r0_53 = temp_r5_10 / 3U;
                M2C_FIELD(gUnk_03006440, u32 *, 4) = temp_r0_53;
                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0xEU;
                temp_r1_31 = M2C_FIELD(gUnk_03006440, u32 *, 0x48);
                if (temp_r0_53 > temp_r1_31) {
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = temp_r1_31;
                }
            }
        } else {
            if (0x20 & keys29_03001308) {
                temp_r4_11 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                temp_r0_54 = temp_r4_11 % 3U;
                if (temp_r0_54 != 0) {
                    M2C_FIELD(gUnk_03006440, u32 *, 8) = temp_r4_11;
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r4_11 - 1);
                } else {
                    M2C_FIELD(gUnk_03006440, u32 *, 8) = temp_r4_11;
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (((temp_r4_11 / 3U) * 5) + 4);
                    M2C_FIELD(gUnk_03006440, u32 *, 0x18) = temp_r0_54;
                }
                goto block_828;
            }
            if (0x40 & keys29_03001308) {
                temp_r0_55 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                if (temp_r0_55 > 2U) {
                    M2C_FIELD(gUnk_03006440, u32 *, 8) = temp_r0_55;
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r0_55 - 3);
                    goto block_828;
                }
            } else if (0x80 & keys29_03001308) {
                temp_r5_11 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                if ((u32) (temp_r5_11 % 15U) <= 0xBU) {
                    M2C_FIELD(gUnk_03006440, u32 *, 8) = temp_r5_11;
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r5_11 + 3);
                    goto block_828;
                }
                if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0x16) {
                    M2C_FIELD(gUnk_03006440, u32 *, 8) = 0x14U;
                    M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 7U;
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = 3U;
                    goto block_828;
                }
            } else {
                temp_r2_40 = 1 & keys29_03001324;
                if (temp_r2_40 == 0) {
                    if (0x100 & keys29_03001324) {
                        temp_r0_56 = M2C_FIELD(gUnk_03006440, u32 *, 0);
                        if ((temp_r0_56 != 2) && (temp_r0_56 == 3)) {
                            temp_r0_57 = M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                            if ((temp_r0_57 != 0xB) && (temp_r0_57 != 0x16)) {
                                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0xCU;
                                M2C_FIELD(gUnk_03006440, u32 *, 4) = temp_r2_40;
                                M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                                goto block_828;
                            }
                        }
                    }
                } else {
                    M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
                    temp_r6_8 = M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                    if (temp_r6_8 == 0x16) {
                        temp_r1_32 = M2C_FIELD(gUnk_03006440, u32 *, 4) + (M2C_FIELD(gUnk_03006440, u32 *, 0x44) * 0xF);
                        temp_r0_58 = gUnk_03006440 + (temp_r1_32 * 0x10);
                        temp_r3_27 = temp_r0_58 + 0x104;
                        temp_r2_41 = M2C_FIELD(temp_r0_58, u16 *, 0x104);
                        if (temp_r2_41 != 0) {
                            if (temp_r2_41 != 0xA) {
                                M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x18);
                                M2C_FIELD(gUnk_03006440, u32 *, 0x20) = temp_r1_32;
                                temp_r1_33 = gUnk_03006440 + 0xF4;
                                M2C_FIELD(gUnk_03006440, s32 *, 0xF4) = (s32) M2C_FIELD(temp_r0_58, u32 *, 0x104);
                                M2C_FIELD(temp_r1_33, s32 *, 4) = (s32) M2C_FIELD(temp_r3_27, s32 *, 4);
                                M2C_FIELD(temp_r1_33, s32 *, 8) = (s32) M2C_FIELD(temp_r3_27, s32 *, 8);
                                M2C_FIELD(temp_r1_33, s32 *, 0xC) = (s32) M2C_FIELD(temp_r3_27, s32 *, 0xC);
                            } else {
                                M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x18);
                                M2C_FIELD(gUnk_03006440, u32 *, 0x20) = temp_r1_32;
                                M2C_FIELD(gUnk_03006440, s32 *, 0xF4) = temp_r2_41;
                                temp_r1_34 = gUnk_03006440 + 0x108;
                                M2C_FIELD(gUnk_03006440, u32 *, 0xF8) = (u32) *(u32 *)(temp_r1_34 + (M2C_FIELD(gUnk_03006440, u32 *, 0x20) * 0x10));
                                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0x14U;
                                M2C_FIELD(gUnk_03006440, u32 *, 0xC) = 0U;
                                temp_r1_35 = *(u32 *)(temp_r1_34 + (M2C_FIELD(gUnk_03006440, u32 *, 0x20) * 0x10));
                                var_r3_2 = 6;
                                var_r2_7 = 4;
                                if ((u32) M2C_FIELD(((u32)gUnk_084EBD4C), u32 *, 0x10) > temp_r1_35) {
                                    var_r4_2 = ((u32)gUnk_084EBD4C) + 0x10;
loop_626:
                                    var_r4_2 += 4;
                                    var_r2_7 += 1;
                                    var_r3_2 -= 1;
                                    if (var_r2_7 <= 9U) {
                                        if ((u32) *(u32 *)var_r4_2 > temp_r1_35) {
                                            goto loop_626;
                                        }
                                    }
                                }
                                M2C_FIELD(gUnk_03006440, u32 *, 0x14) = var_r3_2;
                                M2C_FIELD(gUnk_03006440, s32 *, 0x10) = (s32) (var_r3_2 - 1);
                            }
                            goto block_743;
                        }
                    } else {
                        temp_r1_36 = *M2C_FIELD(gUnk_03006440, u16 **, 0xF0);
                        if (temp_r1_36 == 0) {
                            if ((u16) M2C_FIELD(gUnk_03006440, s32 *, 0xF4) != 0xA) {
                                sub_0807BD78(temp_r6_8, M2C_FIELD(gUnk_03006440, u32 *, 0x20));
                                sub_0807BEA0(0xDU, M2C_FIELD(gUnk_03006440, u32 *, 4) + (M2C_FIELD(gUnk_03006440, u32 *, 0x44) * 0xF), gUnk_03006440 + 0xF4);
                                sp14 = 0;
                                CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                M2C_FIELD(gUnk_03006440, u32 *, 0x20) = 0U;
                            } else {
                                switch (temp_r6_8) { /* switch 15; irregular */
                                case 0:             /* switch 15 */
                                    temp_r3_28 = gUnk_030034E0 + 0x154;
                                    temp_r2_42 = temp_r3_28 + (M2C_FIELD(gUnk_03006440, u32 *, 0x20) * 0x10);
                                    *(s32 *)temp_r2_42 -= M2C_FIELD(gUnk_03006440, u32 *, 0xF8);
                                    temp_r1_37 = M2C_FIELD(gUnk_03006440, u32 *, 0x20) * 0x10;
                                    if (*(u32 *)(temp_r3_28 + temp_r1_37) == 0) {
                                        M2C_FIELD((gUnk_030034E0 + temp_r1_37), s16 *, 0x150) = (s16) temp_r6_8;
                                    }
                                    break;
                                case 13:            /* switch 15 */
                                    temp_r3_29 = gUnk_03006440 + 0x108;
                                    temp_r2_43 = temp_r3_29 + (M2C_FIELD(gUnk_03006440, u32 *, 0x20) * 0x10);
                                    *(s32 *)temp_r2_43 -= M2C_FIELD(gUnk_03006440, u32 *, 0xF8);
                                    temp_r1_38 = M2C_FIELD(gUnk_03006440, u32 *, 0x20) * 0x10;
                                    if (*(u32 *)(temp_r3_29 + temp_r1_38) == 0) {
                                        M2C_FIELD((gUnk_03006440 + temp_r1_38), s16 *, 0x104) = 0;
                                    }
                                    break;
                                }
                                var_r1_2 = M2C_FIELD(gUnk_03006440, u32 *, 4) + (M2C_FIELD(gUnk_03006440, u32 *, 0x44) * 0xF);
                                var_r2_3 = gUnk_03006440 + 0xF4;
                                var_r0_2 = 0xD;
                                goto block_775;
                            }
                            goto block_777;
                        }
                        temp_r0_59 = gUnk_03006440 + 0xF4;
                        temp_r2_44 = (u16) M2C_FIELD(gUnk_03006440, s32 *, 0xF4);
                        if (temp_r2_44 == 0xA) {
                            if (temp_r6_8 == 0) {
                                temp_r7_4 = (M2C_FIELD(gUnk_03006440, u32 *, 4) + (M2C_FIELD(gUnk_03006440, u32 *, 0x44) * 0xF)) * 0x10;
                                if (M2C_FIELD((gUnk_03006440 + temp_r7_4), u16 *, 0x104) == 0xA) {
                                    temp_r1_39 = gUnk_030034E0 + 0x154 + (M2C_FIELD(gUnk_03006440, u32 *, 0x20) * 0x10);
                                    temp_r5_12 = *(s32 *)temp_r1_39;
                                    temp_r3_30 = M2C_FIELD(gUnk_03006440, u32 *, 0xF8);
                                    if (temp_r5_12 == temp_r3_30) {
                                        temp_r2_45 = gUnk_03006440 + 0x108;
                                        temp_r1_40 = temp_r2_45 + temp_r7_4;
                                        temp_r0_60 = *(u32 *)temp_r1_40 + temp_r5_12;
                                        if (temp_r0_60 <= 0x186A0U) {
                                            *(u32 *)temp_r1_40 = temp_r0_60;
                                            sub_0807BD78(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20));
                                        } else {
                                            M2C_FIELD(gUnk_03006440, u32 *, 0xF8) = (u32) (temp_r0_60 + 0xFFFE7960);
                                            *(u32 *)(temp_r2_45 + ((M2C_FIELD(gUnk_03006440, u32 *, 4) + (M2C_FIELD(gUnk_03006440, u32 *, 0x44) * 0xF)) * 0x10)) = 0x186A0;
                                            sub_0807BEA0(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20), temp_r0_59);
                                        }
                                        sp14 = temp_r6_8;
                                        CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                        M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                        M2C_FIELD(gUnk_03006440, u32 *, 0x20) = temp_r6_8;
                                    } else {
                                        temp_r2_46 = gUnk_03006440 + 0x108;
                                        temp_r0_61 = *(u32 *)(temp_r2_46 + temp_r7_4) + temp_r3_30;
                                        if (temp_r0_61 <= 0x186A0U) {
                                            *(s32 *)temp_r1_39 = temp_r5_12 - temp_r3_30;
                                            temp_r0_62 = temp_r2_46 + ((M2C_FIELD(gUnk_03006440, u32 *, 4) + (M2C_FIELD(gUnk_03006440, u32 *, 0x44) * 0xF)) * 0x10);
                                            *(s32 *)temp_r0_62 += M2C_FIELD(gUnk_03006440, u32 *, 0xF8);
                                            sp14 = temp_r6_8;
                                            CpuSet(&sp14, temp_r0_59, 0x05000004);
                                            M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                            M2C_FIELD(gUnk_03006440, u32 *, 0x20) = temp_r6_8;
                                        } else {
                                            M2C_FIELD(gUnk_03006440, u32 *, 0xF8) = (u32) (temp_r0_61 + 0xFFFE7960);
                                            *(u32 *)(temp_r2_46 + ((M2C_FIELD(gUnk_03006440, u32 *, 4) + (M2C_FIELD(gUnk_03006440, u32 *, 0x44) * 0xF)) * 0x10)) = 0x186A0;
                                            sub_0807BEA0(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20), temp_r0_59);
                                            sp14 = temp_r6_8;
                                            CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                            M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                            M2C_FIELD(gUnk_03006440, u32 *, 0x20) = temp_r6_8;
                                        }
                                    }
                                    goto block_777;
                                }
                                goto block_771;
                            }
                            if (temp_r6_8 == 0xD) {
                                temp_r7_5 = M2C_FIELD(gUnk_03006440, u32 *, 0x20);
                                temp_r2_47 = gUnk_03006440 + 0x108;
                                temp_r0_63 = (temp_r7_5 * 0x10) + temp_r2_47;
                                temp_r6_9 = *(s32 *)temp_r0_63;
                                temp_r3_31 = M2C_FIELD(gUnk_03006440, u32 *, 0xF8);
                                if (temp_r6_9 == temp_r3_31) {
                                    temp_r1_41 = M2C_FIELD(gUnk_03006440, u32 *, 4) + (M2C_FIELD(gUnk_03006440, u32 *, 0x44) * 0xF);
                                    temp_r5_13 = temp_r1_41 * 0x10;
                                    temp_r0_64 = gUnk_03006440 + temp_r5_13;
                                    temp_r3_32 = temp_r0_64 + 0x104;
                                    if (M2C_FIELD(temp_r0_64, u16 *, 0x104) == 0xA) {
                                        temp_r3_33 = temp_r2_47 + temp_r5_13;
                                        temp_r0_65 = *(u32 *)temp_r3_33 + temp_r6_9;
                                        if (temp_r0_65 <= 0x186A0U) {
                                            if (temp_r7_5 != temp_r1_41) {
                                                *(u32 *)temp_r3_33 = temp_r0_65;
                                                sub_0807BD78(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20));
                                            }
                                        } else if (temp_r7_5 != temp_r1_41) {
                                            M2C_FIELD(gUnk_03006440, u32 *, 0xF8) = (u32) (temp_r0_65 + 0xFFFE7960);
                                            *(u32 *)(temp_r2_47 + ((M2C_FIELD(gUnk_03006440, u32 *, 4) + (M2C_FIELD(gUnk_03006440, u32 *, 0x44) * 0xF)) * 0x10)) = 0x186A0;
                                            sub_0807BEA0(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20), temp_r0_59);
                                        }
                                        sp14 = 0;
                                        CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                        M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                        M2C_FIELD(gUnk_03006440, u32 *, 0x20) = 0U;
                                        sub_0805865C(0x5F);
                                    } else {
                                        M2C_FIELD(&sp4, s32 *, 0) = (s32) M2C_FIELD(temp_r0_64, u32 *, 0x104);
                                        M2C_FIELD(&sp4, s32 *, 4) = (s32) M2C_FIELD(temp_r3_32, s32 *, 4);
                                        M2C_FIELD(&sp4, s32 *, 8) = (s32) M2C_FIELD(temp_r3_32, s32 *, 8);
                                        M2C_FIELD(&sp4, s32 *, 0xC) = (s32) M2C_FIELD(temp_r3_32, s32 *, 0xC);
                                        sub_0807BEA0(0xDU, M2C_FIELD(gUnk_03006440, u32 *, 4) + (M2C_FIELD(gUnk_03006440, u32 *, 0x44) * 0xF), temp_r0_59);
                                        sub_0807BEA0(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20), &sp4);
                                        sp14 = 0;
                                        CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                        M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                        M2C_FIELD(gUnk_03006440, u32 *, 0x20) = 0U;
                                    }
                                    goto block_777;
                                }
                                if (temp_r1_36 == 0xA) {
                                    temp_r1_42 = M2C_FIELD(gUnk_03006440, u32 *, 4) + (M2C_FIELD(gUnk_03006440, u32 *, 0x44) * 0xF);
                                    temp_r0_66 = *(u32 *)(temp_r2_47 + (temp_r1_42 * 0x10)) + temp_r3_31;
                                    if (temp_r0_66 <= 0x186A0U) {
                                        *(s32 *)temp_r0_63 = temp_r6_9 - temp_r3_31;
                                        temp_r0_67 = temp_r2_47 + ((M2C_FIELD(gUnk_03006440, u32 *, 4) + (M2C_FIELD(gUnk_03006440, u32 *, 0x44) * 0xF)) * 0x10);
                                        *(s32 *)temp_r0_67 += M2C_FIELD(gUnk_03006440, u32 *, 0xF8);
                                        sp14 = 0;
                                        CpuSet(&sp14, temp_r0_59, 0x05000004);
                                        M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                        M2C_FIELD(gUnk_03006440, u32 *, 0x20) = 0U;
                                    } else {
                                        if (temp_r7_5 != temp_r1_42) {
                                            M2C_FIELD(gUnk_03006440, u32 *, 0xF8) = (u32) (temp_r0_66 + 0xFFFE7960);
                                            *(u32 *)(temp_r2_47 + ((M2C_FIELD(gUnk_03006440, u32 *, 4) + (M2C_FIELD(gUnk_03006440, u32 *, 0x44) * 0xF)) * 0x10)) = 0x186A0;
                                            sub_0807BEA0(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20), temp_r0_59);
                                        }
                                        sp14 = 0;
                                        CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                        M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                        M2C_FIELD(gUnk_03006440, u32 *, 0x20) = 0U;
                                    }
                                    goto block_777;
                                }
                                goto block_771;
                            }
                        } else if (temp_r6_8 != 0xB) {
                            if (M2C_FIELD(gUnk_03006440, s32 *, 0xF4) != 0xC0001) {
                                if (temp_r6_8 != 0) {
                                    if (temp_r6_8 == 0xD) {
                                        temp_r0_68 = gUnk_03006440 + ((M2C_FIELD(gUnk_03006440, u32 *, 4) + (M2C_FIELD(gUnk_03006440, u32 *, 0x44) * 0xF)) * 0x10);
                                        temp_r0_69 = temp_r0_68 + 0x104;
                                        M2C_FIELD(&sp4, s32 *, 0) = M2C_FIELD(temp_r0_68, s32 *, 0x104);
                                        M2C_FIELD(&sp4, s32 *, 4) = (s32) M2C_FIELD(temp_r0_69, s32 *, 4);
                                        M2C_FIELD(&sp4, s32 *, 8) = (s32) M2C_FIELD(temp_r0_69, s32 *, 8);
                                        M2C_FIELD(&sp4, s32 *, 0xC) = (s32) M2C_FIELD(temp_r0_69, s32 *, 0xC);
                                        sub_0807BEA0(0xDU, M2C_FIELD(gUnk_03006440, u32 *, 4) + (M2C_FIELD(gUnk_03006440, u32 *, 0x44) * 0xF), temp_r0_59);
                                        sub_0807BEA0(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20), &sp4);
                                        sp14 = 0;
                                        CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                        M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                        M2C_FIELD(gUnk_03006440, u32 *, 0x20) = 0U;
                                        goto block_777;
                                    }
                                    temp_r0_70 = gUnk_03006440 + ((M2C_FIELD(gUnk_03006440, u32 *, 4) + (M2C_FIELD(gUnk_03006440, u32 *, 0x44) * 0xF)) * 0x10);
                                    temp_r0_71 = temp_r0_70 + 0x104;
                                    if (temp_r2_44 == M2C_FIELD(temp_r0_70, u16 *, 0x104)) {
                                        M2C_FIELD(&sp4, s32 *, 0) = (s32) M2C_FIELD(temp_r0_70, u32 *, 0x104);
                                        M2C_FIELD(&sp4, s32 *, 4) = (s32) M2C_FIELD(temp_r0_71, s32 *, 4);
                                        M2C_FIELD(&sp4, s32 *, 8) = (s32) M2C_FIELD(temp_r0_71, s32 *, 8);
                                        M2C_FIELD(&sp4, s32 *, 0xC) = (s32) M2C_FIELD(temp_r0_71, s32 *, 0xC);
                                        sub_0807BEA0(0xDU, M2C_FIELD(gUnk_03006440, u32 *, 4) + (M2C_FIELD(gUnk_03006440, u32 *, 0x44) * 0xF), temp_r0_59);
                                        goto block_774;
                                    }
                                } else {
                                    temp_r0_72 = gUnk_03006440 + ((M2C_FIELD(gUnk_03006440, u32 *, 4) + (M2C_FIELD(gUnk_03006440, u32 *, 0x44) * 0xF)) * 0x10);
                                    temp_r0_73 = temp_r0_72 + 0x104;
                                    M2C_FIELD(&sp4, s32 *, 0) = M2C_FIELD(temp_r0_72, s32 *, 0x104);
                                    M2C_FIELD(&sp4, s32 *, 4) = (s32) M2C_FIELD(temp_r0_73, s32 *, 4);
                                    M2C_FIELD(&sp4, s32 *, 8) = (s32) M2C_FIELD(temp_r0_73, s32 *, 8);
                                    M2C_FIELD(&sp4, s32 *, 0xC) = (s32) M2C_FIELD(temp_r0_73, s32 *, 0xC);
                                    sub_0807BEA0(0xDU, M2C_FIELD(gUnk_03006440, u32 *, 4) + (M2C_FIELD(gUnk_03006440, u32 *, 0x44) * 0xF), temp_r0_59);
                                    sub_0807BEA0(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20), &sp4);
                                    sp14 = temp_r6_8;
                                    CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                    M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                    M2C_FIELD(gUnk_03006440, u32 *, 0x20) = temp_r6_8;
                                    goto block_777;
                                }
                            } else {
                                temp_r1_43 = gUnk_03006440 + ((M2C_FIELD(gUnk_03006440, u32 *, 4) + (M2C_FIELD(gUnk_03006440, u32 *, 0x44) * 0xF)) * 0x10);
                                temp_r2_48 = temp_r1_43 + 0x104;
                                temp_r0_74 = M2C_FIELD(temp_r1_43, u16 *, 0x104);
                                if (((s32) temp_r0_74 <= 5) && ((s32) temp_r0_74 >= 2)) {
                                    if (M2C_FIELD(temp_r1_43, u8 *, 0x10C) != 0) {
                                        M2C_FIELD(temp_r1_43, u8 *, 0x10C) = 0U;
                                        sub_0807BD78(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20));
                                    } else {
                                        M2C_FIELD(&sp4, s32 *, 0) = (s32) M2C_FIELD(temp_r1_43, u32 *, 0x104);
                                        M2C_FIELD(&sp4, s32 *, 4) = (s32) M2C_FIELD(temp_r2_48, s32 *, 4);
                                        M2C_FIELD(&sp4, s32 *, 8) = (s32) M2C_FIELD(temp_r2_48, s32 *, 8);
                                        M2C_FIELD(&sp4, s32 *, 0xC) = (s32) M2C_FIELD(temp_r2_48, s32 *, 0xC);
                                        sub_0807BEA0(0xDU, M2C_FIELD(gUnk_03006440, u32 *, 4) + (M2C_FIELD(gUnk_03006440, u32 *, 0x44) * 0xF), temp_r0_59);
                                        sub_0807BEA0(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20), &sp4);
                                    }
                                    sp14 = 0;
                                    CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                    M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                    M2C_FIELD(gUnk_03006440, u32 *, 0x20) = 0U;
                                } else {
                                    temp_r0_75 = gUnk_03006440 + ((M2C_FIELD(gUnk_03006440, u32 *, 4) + (M2C_FIELD(gUnk_03006440, u32 *, 0x44) * 0xF)) * 0x10);
                                    temp_r0_76 = temp_r0_75 + 0x104;
                                    M2C_FIELD(&sp4, s32 *, 0) = M2C_FIELD(temp_r0_75, s32 *, 0x104);
                                    M2C_FIELD(&sp4, s32 *, 4) = (s32) M2C_FIELD(temp_r0_76, s32 *, 4);
                                    M2C_FIELD(&sp4, s32 *, 8) = (s32) M2C_FIELD(temp_r0_76, s32 *, 8);
                                    M2C_FIELD(&sp4, s32 *, 0xC) = (s32) M2C_FIELD(temp_r0_76, s32 *, 0xC);
                                    sub_0807BEA0(0xDU, M2C_FIELD(gUnk_03006440, u32 *, 4) + (M2C_FIELD(gUnk_03006440, u32 *, 0x44) * 0xF), gUnk_03006440 + 0xF4);
                                    sub_0807BEA0(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20), &sp4);
                                    sp14 = 0;
                                    CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                    M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                    M2C_FIELD(gUnk_03006440, u32 *, 0x20) = 0U;
                                    goto block_777;
                                }
                            }
                        }
                    }
                }
            }
        }
        break;
    case 14:                                        /* switch 1 */
        if (0x40 & keys29_03001308) {
            temp_r0_77 = M2C_FIELD(gUnk_03006440, u32 *, 4);
            if (temp_r0_77 != 0) {
                M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r0_77 - 1);
                goto block_700;
            }
        } else if (0x80 & keys29_03001308) {
            temp_r1_44 = M2C_FIELD(gUnk_03006440, u32 *, 4);
            if ((temp_r1_44 < (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x48)) && (temp_r1_44 <= 3U)) {
                M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r1_44 + 1);
                goto block_700;
            }
        } else {
            temp_r3_34 = 0x20 & keys29_03001308;
            if (temp_r3_34 != 0) {
                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0xDU;
                M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) ((M2C_FIELD(gUnk_03006440, u32 *, 4) * 3) + 2);
                M2C_FIELD(gUnk_03006440, u32 *, 8) = 1U;
                M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0x64;
block_700:
                sub_0805865C(0x62);
            } else if (1 & keys29_03001324) {
                temp_r0_78 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                temp_r2_49 = M2C_FIELD(gUnk_03006440, u32 *, 0x48);
                if ((temp_r0_78 >= temp_r2_49) && (temp_r2_49 <= 4U)) {
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) temp_r3_34;
                    M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0xFU;
                } else {
                    M2C_FIELD(gUnk_03006440, u32 *, 0x44) = temp_r0_78;
                }
                sub_0805865C(0xF);
            }
        }
        if (M2C_FIELD(gUnk_03006440, u32 *, 0x18) == 0xE) {
            temp_r2_50 = M2C_FIELD(gUnk_03006440, u32 *, 4);
            if (temp_r2_50 == M2C_FIELD(gUnk_03006440, u32 *, 0x48)) {
                sub_08065424(M2C_FIELD(gUnk_03006440, s32 *, 0xE8) - 0x18, M2C_FIELD(gUnk_03006440, s32 *, 0xEC) - 0x10, *(u32 *)((temp_r2_50 * 4) + ((u32)gUnk_084ECBC8)), 0, 9);
                sub_08065230(gUnk_03006440 + 0x5B8, M2C_FIELD(gUnk_03006440, s32 *, 0xE8) - 0x20, M2C_FIELD(gUnk_03006440, s32 *, 0xEC) - 0x10, 0xAU, 0);
            }
        }
        break;
    case 15:                                        /* switch 1 */
        if (0x20 & keys29_03001308) {
            if (M2C_FIELD(gUnk_03006440, u32 *, 4) == 1) {
                sub_0805865C(0xC6);
            }
            M2C_FIELD(gUnk_03006440, u32 *, 4) = 0U;
        } else if (0x10 & keys29_03001308) {
            if (M2C_FIELD(gUnk_03006440, u32 *, 4) == 0) {
                sub_0805865C(0xC7);
            }
            M2C_FIELD(gUnk_03006440, u32 *, 4) = 1U;
        } else if (1 & keys29_03001324) {
            if (M2C_FIELD(gUnk_03006440, u32 *, 4) == 0) {
                temp_r1_45 = *(u32 *)((M2C_FIELD(gUnk_03006440, u32 *, 0x48) * 4) + ((u32)gUnk_084ECBC8));
                if (sub_0808543C() >= temp_r1_45) {
                    sub_0807C014(temp_r1_45);
                    M2C_FIELD(gUnk_030034E0, u16 *, 0x6A) = (u16) (M2C_FIELD(gUnk_030034E0, u16 *, 0x6A) + 1);
                    M2C_FIELD(gUnk_03006440, u32 *, 0x48) = (u32) M2C_FIELD(gUnk_030034E0, u16 *, 0x6A);
                    sub_0805865C(0x63);
                }
                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0xEU;
                M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (M2C_FIELD(gUnk_03006440, u32 *, 0x48) - 1);
            } else {
                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0xEU;
                M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x48);
                keys29_03001324 &= 0xFFFD;
                goto block_804;
            }
        } else if (2 & keys29_03001324) {
            M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0xEU;
            M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x48);
            keys29_03001324 &= 0xFFFD;
block_804:
            sub_0805865C(0x10);
        }
        break;
    case 16:                                        /* switch 1 */
        if (0x20 & keys29_03001308) {
            temp_r0_79 = M2C_FIELD(gUnk_03006440, u32 *, 4);
            if (temp_r0_79 != 0) {
                M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r0_79 - 1);
            } else {
                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = temp_r0_79;
                M2C_FIELD(gUnk_03006440, u32 *, 4) = 9U;
            }
            goto block_828;
        }
        temp_r3_35 = 0x10 & keys29_03001308;
        if (temp_r3_35 != 0) {
            temp_r0_80 = M2C_FIELD(gUnk_03006440, u32 *, 4);
            if (temp_r0_80 <= 1U) {
                M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r0_80 + 1);
                goto block_828;
            }
        } else {
            temp_r4_12 = 0x80 & keys29_03001308;
            if (temp_r4_12 != 0) {
                if ((M2C_FIELD(gUnk_03006440, s32 *, 0x28) & 4) && ((u16) M2C_FIELD(gUnk_03006440, s32 *, 0xF4) == 0xA)) {
                    M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0x11U;
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) temp_r3_35;
                    M2C_FIELD(gUnk_03006440, u32 *, 8) = 0x64U;
                    goto block_828;
                }
            } else if (!(1 & keys29_03001324)) {

            } else {
                temp_r2_51 = M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                if (temp_r2_51 == 0x16) {
                    temp_r3_36 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                    temp_r0_81 = gUnk_03006440 + (temp_r3_36 * 0x10);
                    temp_r2_52 = temp_r0_81 + 0x104;
                    if (M2C_FIELD(temp_r0_81, u16 *, 0x104) == 0) {

                    } else {
                        M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x18);
                        M2C_FIELD(gUnk_03006440, u32 *, 0x20) = temp_r3_36;
                        temp_r1_46 = gUnk_03006440 + 0xF4;
                        M2C_FIELD(gUnk_03006440, s32 *, 0xF4) = (s32) M2C_FIELD(temp_r0_81, u32 *, 0x104);
                        M2C_FIELD(temp_r1_46, s32 *, 4) = (s32) M2C_FIELD(temp_r2_52, s32 *, 4);
                        M2C_FIELD(temp_r1_46, s32 *, 8) = (s32) M2C_FIELD(temp_r2_52, s32 *, 8);
                        M2C_FIELD(temp_r1_46, s32 *, 0xC) = (s32) M2C_FIELD(temp_r2_52, s32 *, 0xC);
                        M2C_FIELD(gUnk_03006440, s8 *, 0xFD) = (s8) temp_r4_12;
                        M2C_FIELD(gUnk_03006440, s32 *, 0x28) = (s32) (M2C_FIELD(gUnk_03006440, s32 *, 0x28) & ~4);
                        goto block_743;
                    }
                } else {
                    temp_r4_13 = *M2C_FIELD(gUnk_03006440, u16 **, 0xF0);
                    if (temp_r4_13 == 0) {
                        sub_0807BD78(temp_r2_51, M2C_FIELD(gUnk_03006440, u32 *, 0x20));
                        sub_0807BEA0(0x10U, M2C_FIELD(gUnk_03006440, u32 *, 4), gUnk_03006440 + 0xF4);
                        sp14 = (u32) temp_r4_13;
                        CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                        M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                        M2C_FIELD(gUnk_03006440, u32 *, 0x20) = (u32) temp_r4_13;
                        sub_0805865C(0x5F);
                        var_r2_8 = 0;
                        var_r5_7 = 0;
                        var_r1_7 = gUnk_03006440 + 0x104;
                        do {
                            if (*(u16 *)var_r1_7 != 0) {
                                var_r2_8 += 1;
                            }
                            var_r1_7 += 0x10;
                            var_r5_7 += 1;
                        } while (var_r5_7 <= 2U);
                        if (var_r2_8 != 3) {

                        } else {
                            M2C_FIELD(gUnk_03006440, s32 *, 0x28) = (s32) (M2C_FIELD(gUnk_03006440, s32 *, 0x28) | 4);
                        }
                    } else {
                        switch (temp_r2_51) {       /* switch 16; irregular */
                        case 1:                     /* switch 16 */
                            if (*M2C_FIELD(gUnk_03006440, u16 **, 0xF0) != 2) {
                                goto block_771;
                            }
                            temp_r0_82 = gUnk_03006440 + (M2C_FIELD(gUnk_03006440, u32 *, 4) * 0x10);
                            temp_r0_83 = temp_r0_82 + 0x104;
                            M2C_FIELD(&sp4, s32 *, 0) = M2C_FIELD(temp_r0_82, s32 *, 0x104);
                            M2C_FIELD(&sp4, s32 *, 4) = (s32) M2C_FIELD(temp_r0_83, s32 *, 4);
                            M2C_FIELD(&sp4, s32 *, 8) = (s32) M2C_FIELD(temp_r0_83, s32 *, 8);
                            M2C_FIELD(&sp4, s32 *, 0xC) = (s32) M2C_FIELD(temp_r0_83, s32 *, 0xC);
                            sub_0807BEA0(0x10U, M2C_FIELD(gUnk_03006440, u32 *, 4), gUnk_03006440 + 0xF4);
                            sub_0807BEA0(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20), &sp4);
                            sp14 = 0;
                            CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                            M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                            M2C_FIELD(gUnk_03006440, u32 *, 0x20) = 0U;
                            sub_0805AD78(M2C_FIELD(gUnk_030034E0, u16 *, 0x68));
                            goto block_777;
                        case 2:                     /* switch 16 */
                            if (*M2C_FIELD(gUnk_03006440, u16 **, 0xF0) != 4) {
                                goto block_771;
                            }
                            temp_r0_84 = gUnk_03006440 + (M2C_FIELD(gUnk_03006440, u32 *, 4) * 0x10);
                            temp_r0_85 = temp_r0_84 + 0x104;
                            M2C_FIELD(&sp4, s32 *, 0) = M2C_FIELD(temp_r0_84, s32 *, 0x104);
                            M2C_FIELD(&sp4, s32 *, 4) = (s32) M2C_FIELD(temp_r0_85, s32 *, 4);
                            M2C_FIELD(&sp4, s32 *, 8) = (s32) M2C_FIELD(temp_r0_85, s32 *, 8);
                            M2C_FIELD(&sp4, s32 *, 0xC) = (s32) M2C_FIELD(temp_r0_85, s32 *, 0xC);
                            sub_0807BEA0(0x10U, M2C_FIELD(gUnk_03006440, u32 *, 4), gUnk_03006440 + 0xF4);
                            sub_0807BEA0(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20), &sp4);
                            sp14 = 0;
                            CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                            M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                            M2C_FIELD(gUnk_03006440, u32 *, 0x20) = 0U;
                            sub_0805D094();
                            goto block_777;
                        case 3:                     /* switch 16 */
                            if (*M2C_FIELD(gUnk_03006440, u16 **, 0xF0) != 5) {
                                goto block_771;
                            }
                            temp_r0_86 = gUnk_03006440 + (M2C_FIELD(gUnk_03006440, u32 *, 4) * 0x10);
                            temp_r0_87 = temp_r0_86 + 0x104;
                            M2C_FIELD(&sp4, s32 *, 0) = M2C_FIELD(temp_r0_86, s32 *, 0x104);
                            M2C_FIELD(&sp4, s32 *, 4) = (s32) M2C_FIELD(temp_r0_87, s32 *, 4);
                            M2C_FIELD(&sp4, s32 *, 8) = (s32) M2C_FIELD(temp_r0_87, s32 *, 8);
                            M2C_FIELD(&sp4, s32 *, 0xC) = (s32) M2C_FIELD(temp_r0_87, s32 *, 0xC);
                            sub_0807BEA0(0x10U, M2C_FIELD(gUnk_03006440, u32 *, 4), gUnk_03006440 + 0xF4);
                            sub_0807BEA0(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20), &sp4);
                            sp14 = 0;
                            CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                            M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                            M2C_FIELD(gUnk_03006440, u32 *, 0x20) = 0U;
                            sub_0805D13C();
                            goto block_777;
                        case 4:                     /* switch 16 */
                            if (*M2C_FIELD(gUnk_03006440, u16 **, 0xF0) != 3) {
                                goto block_771;
                            }
                            temp_r0_88 = gUnk_03006440 + (M2C_FIELD(gUnk_03006440, u32 *, 4) * 0x10);
                            temp_r0_89 = temp_r0_88 + 0x104;
                            M2C_FIELD(&sp4, s32 *, 0) = M2C_FIELD(temp_r0_88, s32 *, 0x104);
                            M2C_FIELD(&sp4, s32 *, 4) = (s32) M2C_FIELD(temp_r0_89, s32 *, 4);
                            M2C_FIELD(&sp4, s32 *, 8) = (s32) M2C_FIELD(temp_r0_89, s32 *, 8);
                            M2C_FIELD(&sp4, s32 *, 0xC) = (s32) M2C_FIELD(temp_r0_89, s32 *, 0xC);
                            sub_0807BEA0(0x10U, M2C_FIELD(gUnk_03006440, u32 *, 4), gUnk_03006440 + 0xF4);
                            sub_0807BEA0(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20), &sp4);
                            sp14 = 0;
                            CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                            M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                            M2C_FIELD(gUnk_03006440, u32 *, 0x20) = 0U;
                            sub_0805D0E8();
                            goto block_777;
                        case 5:                     /* switch 16 */
                            if (*M2C_FIELD(gUnk_03006440, u16 **, 0xF0) == 7) {
                                temp_r0_90 = gUnk_03006440 + (M2C_FIELD(gUnk_03006440, u32 *, 4) * 0x10);
                                temp_r0_91 = temp_r0_90 + 0x104;
                                M2C_FIELD(&sp4, s32 *, 0) = M2C_FIELD(temp_r0_90, s32 *, 0x104);
                                M2C_FIELD(&sp4, s32 *, 4) = (s32) M2C_FIELD(temp_r0_91, s32 *, 4);
                                M2C_FIELD(&sp4, s32 *, 8) = (s32) M2C_FIELD(temp_r0_91, s32 *, 8);
                                M2C_FIELD(&sp4, s32 *, 0xC) = (s32) M2C_FIELD(temp_r0_91, s32 *, 0xC);
                                sub_0807BEA0(0x10U, M2C_FIELD(gUnk_03006440, u32 *, 4), gUnk_03006440 + 0xF4);
                                sub_0807BEA0(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20), &sp4);
                                sp14 = 0;
                                CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                M2C_FIELD(gUnk_03006440, u32 *, 0x20) = 0U;
                                sub_0805D190();
                                goto block_777;
                            }
                            goto block_771;
                        case 6:                     /* switch 16 */
                            if (*M2C_FIELD(gUnk_03006440, u16 **, 0xF0) == 6) {
                                temp_r0_92 = gUnk_03006440 + (M2C_FIELD(gUnk_03006440, u32 *, 4) * 0x10);
                                temp_r0_93 = temp_r0_92 + 0x104;
                                M2C_FIELD(&sp4, s32 *, 0) = M2C_FIELD(temp_r0_92, s32 *, 0x104);
                                M2C_FIELD(&sp4, s32 *, 4) = (s32) M2C_FIELD(temp_r0_93, s32 *, 4);
                                M2C_FIELD(&sp4, s32 *, 8) = (s32) M2C_FIELD(temp_r0_93, s32 *, 8);
                                M2C_FIELD(&sp4, s32 *, 0xC) = (s32) M2C_FIELD(temp_r0_93, s32 *, 0xC);
                                sub_0807BEA0(0x10U, M2C_FIELD(gUnk_03006440, u32 *, 4), gUnk_03006440 + 0xF4);
                                sub_0807BEA0(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), M2C_FIELD(gUnk_03006440, u32 *, 0x20), &sp4);
                                sp14 = 0;
                                CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                                M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                                M2C_FIELD(gUnk_03006440, u32 *, 0x20) = 0U;
                                sub_0805D1E0();
                                goto block_777;
                            }
                            goto block_771;
                        case 0:                     /* switch 16 */
                        case 16:                    /* switch 16 */
                            temp_r0_94 = gUnk_03006440 + (M2C_FIELD(gUnk_03006440, u32 *, 4) * 0x10);
                            temp_r0_95 = temp_r0_94 + 0x104;
                            M2C_FIELD(&sp4, s32 *, 0) = M2C_FIELD(temp_r0_94, s32 *, 0x104);
                            M2C_FIELD(&sp4, s32 *, 4) = (s32) M2C_FIELD(temp_r0_95, s32 *, 4);
                            M2C_FIELD(&sp4, s32 *, 8) = (s32) M2C_FIELD(temp_r0_95, s32 *, 8);
                            M2C_FIELD(&sp4, s32 *, 0xC) = (s32) M2C_FIELD(temp_r0_95, s32 *, 0xC);
                            var_r1 = M2C_FIELD(gUnk_03006440, u32 *, 4);
                            var_r2_2 = gUnk_03006440 + 0xF4;
                            var_r0 = 0x10;
                            goto block_773;
                        }
                    }
                }
            }
        }
        break;
    case 17:                                        /* switch 1 */
        if (0x20 & keys29_03001308) {
            M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0U;
            M2C_FIELD(gUnk_03006440, u32 *, 4) = 0x18U;
            M2C_FIELD(gUnk_03006440, u32 *, 8) = 0x64U;
            goto block_828;
        }
        temp_r5_14 = 1 & keys29_03001324;
        if (temp_r5_14 != 0) {
            temp_r1_47 = gUnk_03006440 + 0x134;
            temp_r0_96 = gUnk_03006440 + 0xF4;
            M2C_FIELD(gUnk_03006440, s32 *, 0x134) = (s32) M2C_FIELD(gUnk_03006440, s32 *, 0xF4);
            M2C_FIELD(temp_r1_47, s32 *, 4) = (s32) M2C_FIELD(temp_r0_96, s32 *, 4);
            M2C_FIELD(temp_r1_47, s32 *, 8) = (s32) M2C_FIELD(temp_r0_96, s32 *, 8);
            M2C_FIELD(temp_r1_47, s32 *, 0xC) = (s32) M2C_FIELD(temp_r0_96, s32 *, 0xC);
            temp_r4_14 = M2C_FIELD(gUnk_03006440, u32 *, 0x20);
            temp_r3_37 = gUnk_030034E0 + 0x154 + (temp_r4_14 * 0x10);
            temp_r1_48 = *(s32 *)temp_r3_37;
            temp_r0_97 = M2C_FIELD(gUnk_03006440, u32 *, 0xF8);
            if (temp_r1_48 == temp_r0_97) {
                sub_0807BD78(M2C_FIELD(gUnk_03006440, u32 *, 0x1C), temp_r4_14);
            } else {
                *(s32 *)temp_r3_37 = temp_r1_48 - temp_r0_97;
            }
            sp14 = 0;
            CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
            M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
            M2C_FIELD(gUnk_03006440, u32 *, 0x20) = 0U;
            M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0x12U;
            M2C_FIELD(gUnk_03006440, u32 *, 4) = 0U;
            M2C_FIELD(gUnk_03006440, u32 *, 8) = 0x64U;
            M2C_FIELD(gUnk_03006440, u32 *, 0x54) = 0U;
            temp_r0_98 = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x138) / 10000U;
            M2C_FIELD(gUnk_03006440, u32 *, 0x58) = temp_r0_98;
            M2C_FIELD(gUnk_03006440, s32 *, 0x60) = (s32) (0xB - temp_r0_98);
            M2C_FIELD(gUnk_03006440, u32 *, 0x5C) = 0U;
            sub_0805865C(0xBB);
        } else if (!(2 & keys29_03001324)) {

        } else {
            M2C_FIELD(gUnk_03006440, u32 *, 0x18) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
            M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x20);
            keys29_03001324 &= 0xFFFD;
            sp14 = temp_r5_14;
            CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
            M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
            M2C_FIELD(gUnk_03006440, u32 *, 0x20) = temp_r5_14;
            goto block_828;
        }
        break;
    case 18:                                        /* switch 1 */
        if (0x20 & keys29_03001308) {
            if (M2C_FIELD(gUnk_03006440, u32 *, 4) != 1) {

            } else {
                M2C_FIELD(gUnk_03006440, u32 *, 4) = 0U;
                sub_0805865C(0xC6);
            }
        } else {
            temp_r5_15 = 0x10 & keys29_03001308;
            if (temp_r5_15 != 0) {
                if (M2C_FIELD(gUnk_03006440, u32 *, 4) != 0) {

                } else {
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = 1U;
                    sub_0805865C(0xC7);
                }
            } else {
                temp_r6_10 = 1 & keys29_03001324;
                if (temp_r6_10 != 0) {
                    if (M2C_FIELD(gUnk_03006440, u32 *, 4) == 1) {
                        sub_0805AB20(gUnk_03006440 + 0x134);
                        M2C_FIELD(gUnk_03006440, s32 *, 0x134) = temp_r5_15;
                        M2C_FIELD(gUnk_03006440, u32 *, 0x18) = (u32) temp_r5_15;
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) temp_r5_15;
                        M2C_FIELD(gUnk_03006440, u32 *, 8) = 0x64U;
                        goto block_804;
                    }
                    M2C_FIELD(gUnk_03006440, s32 *, 0x28) = (s32) (M2C_FIELD(gUnk_03006440, s32 *, 0x28) & ~4);
                    M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0x13U;
                    sub_0807BD78(0x10U, 3U);
                    M2C_FIELD(gUnk_03006440, u32 *, 0xC) = (u32) temp_r5_15;
                    M2C_FIELD(gUnk_03006440, s32 *, 0x10) = (s32) temp_r5_15;
                    M2C_FIELD(gUnk_03006440, u32 *, 0x54) = 0xA0U;
                    M2C_FIELD(gUnk_03006440, u32 *, 0x58) = (u32) temp_r5_15;
                    goto block_800;
                }
                if (!(2 & keys29_03001324)) {

                } else {
                    sub_0805AB20(gUnk_03006440 + 0x134);
                    M2C_FIELD(gUnk_03006440, s32 *, 0x134) = temp_r6_10;
                    M2C_FIELD(gUnk_03006440, u32 *, 0x18) = (u32) temp_r6_10;
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) temp_r6_10;
                    M2C_FIELD(gUnk_03006440, u32 *, 8) = 0x64U;
                    keys29_03001324 = temp_r6_10;
                    goto block_804;
                }
            }
        }
        break;
    case 19:                                        /* switch 1 */
        if (M2C_FIELD(gUnk_03006440, u32 *, 0xC) == 0) {

        } else {
            sub_0808441C(gUnk_03006440 + 0x104, &sp18);
            sub_0807BD78(0x10U, 0U);
            sub_0807BD78(0x10U, 1U);
            sub_0807BD78(0x10U, 2U);
            M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) sub_0805CFA0();
            sub_0805AB20(&sp18);
            M2C_FIELD(gUnk_03006440, u32 *, 0x18) = 0U;
            M2C_FIELD(gUnk_03006440, u32 *, 8) = 0x64U;
        }
        break;
    case 20:                                        /* switch 1 */
        temp_r2_53 = M2C_FIELD(gUnk_03006440, u32 *, 0xC);
        if (temp_r2_53 != 0) {

        } else {
            if (0x10 & keys29_03001308) {
                temp_r0_99 = M2C_FIELD(gUnk_03006440, s32 *, 0x10) - 1;
                M2C_FIELD(gUnk_03006440, s32 *, 0x10) = temp_r0_99;
                if (temp_r0_99 < 0) {
                    M2C_FIELD(gUnk_03006440, s32 *, 0x10) = (s32) temp_r2_53;
                }
                goto block_828;
            }
            if (0x20 & keys29_03001308) {
                temp_r0_100 = M2C_FIELD(gUnk_03006440, s32 *, 0x10) + 1;
                M2C_FIELD(gUnk_03006440, s32 *, 0x10) = temp_r0_100;
                temp_r1_49 = M2C_FIELD(gUnk_03006440, u32 *, 0x14);
                if ((u32) temp_r0_100 >= temp_r1_49) {
                    M2C_FIELD(gUnk_03006440, s32 *, 0x10) = (s32) (temp_r1_49 - 1);
                }
                goto block_828;
            }
            if (0x40 & keys29_03001308) {
                temp_r0_101 = M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                switch (temp_r0_101) {              /* switch 17; irregular */
                case 0:                             /* switch 17 */
                    temp_r2_54 = M2C_FIELD(gUnk_03006440, u32 *, 0xF8) + *(u32 *)(((9 - M2C_FIELD(gUnk_03006440, s32 *, 0x10)) * 4) + ((u32)gUnk_084EBD4C));
                    if (temp_r2_54 <= (u32) *(u32 *)(gUnk_030034E0 + 0x154 + (M2C_FIELD(gUnk_03006440, u32 *, 0x20) * 0x10))) {
                        M2C_FIELD(gUnk_03006440, u32 *, 0xF8) = temp_r2_54;
                        goto block_828;
                    }
                    break;
                case 13:                            /* switch 17 */
                    temp_r2_55 = M2C_FIELD(gUnk_03006440, u32 *, 0xF8) + *(u32 *)(((9 - M2C_FIELD(gUnk_03006440, s32 *, 0x10)) * 4) + ((u32)gUnk_084EBD4C));
                    if (temp_r2_55 <= (u32) *(u32 *)(gUnk_03006440 + 0x108 + (M2C_FIELD(gUnk_03006440, u32 *, 0x20) * 0x10))) {
                        M2C_FIELD(gUnk_03006440, u32 *, 0xF8) = temp_r2_55;
                        goto block_828;
                    }
                    break;
                }
            } else if (0x80 & keys29_03001308) {
                temp_r1_50 = M2C_FIELD(gUnk_03006440, u32 *, 0xF8);
                temp_r0_102 = *(u32 *)(((9 - M2C_FIELD(gUnk_03006440, s32 *, 0x10)) * 4) + ((u32)gUnk_084EBD4C));
                if (temp_r1_50 != temp_r0_102) {
                    temp_r0_103 = temp_r1_50 - temp_r0_102;
                    if (temp_r0_103 >= 0) {
                        M2C_FIELD(gUnk_03006440, u32 *, 0xF8) = (u32) temp_r0_103;
                        goto block_828;
                    }
                }
            } else {
                temp_r4_15 = 1 & keys29_03001324;
                if (temp_r4_15 != 0) {
                    temp_r0_104 = M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                    M2C_FIELD(gUnk_03006440, u32 *, 0x18) = temp_r0_104;
                    temp_r2_56 = M2C_FIELD(gUnk_03006440, u32 *, 0x20);
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = temp_r2_56;
                    if (temp_r0_104 == 0xD) {
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r2_56 - (M2C_FIELD(gUnk_03006440, u32 *, 0x44) * 0xF));
                    }
                    sub_0805865C(0xF);
                } else if (2 & keys29_03001324) {
                    temp_r0_105 = M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                    M2C_FIELD(gUnk_03006440, u32 *, 0x18) = temp_r0_105;
                    temp_r2_57 = M2C_FIELD(gUnk_03006440, u32 *, 0x20);
                    M2C_FIELD(gUnk_03006440, u32 *, 4) = temp_r2_57;
                    if (temp_r0_105 == 0xD) {
                        M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) (temp_r2_57 - (M2C_FIELD(gUnk_03006440, u32 *, 0x44) * 0xF));
                    }
                    sp14 = temp_r4_15;
                    CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                    M2C_FIELD(gUnk_03006440, u32 *, 0x20) = temp_r4_15;
                    M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = temp_r4_15;
                    sub_0805865C(0x10);
                }
            }
        }
        break;
    }
    if (M2C_FIELD(gUnk_03006440, u32 *, 0) == 6) {
        var_r2_9 = 0;
        var_r5_8 = 0;
        var_r1_8 = gUnk_03006440 + 0x104;
        do {
            if (*(u16 *)var_r1_8 != 0) {
                var_r2_9 += 1;
            }
            var_r1_8 += 0x10;
            var_r5_8 += 1;
        } while (var_r5_8 <= 2U);
        if (var_r2_9 == 3) {
            var_r1_9 = M2C_FIELD(gUnk_03006440, s32 *, 0x28) | 4;
        } else {
            var_r1_9 = M2C_FIELD(gUnk_03006440, s32 *, 0x28) & ~4;
        }
        M2C_FIELD((void *) gUnk_03006440, s32 *, 0x28) = var_r1_9;
    }
    switch (keys29_03001324) {                        /* switch 18; irregular */
    case 8:                                         /* switch 18 */
        temp_r1_51 = M2C_FIELD(gUnk_03006440, s32 *, 0x28) & 1;
        if (temp_r1_51 != 0) {

        } else {
            M2C_FIELD(gUnk_03006440, s32 *, 0x24) = temp_r1_51;
block_858:
            sub_0805865C(0x10);
        }
        break;
    case 2:                                         /* switch 18 */
        temp_r1_52 = M2C_FIELD(gUnk_03006440, s32 *, 0x28);
        if (!(1 & temp_r1_52)) {
            temp_r0_106 = M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
            switch (temp_r0_106) {                  /* switch 19 */
            case 12:                                /* switch 19 */
                M2C_FIELD(gUnk_03006440, u32 *, 0x18) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x1C);
                M2C_FIELD(gUnk_03006440, u32 *, 4) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x20);
                /* fallthrough */
            case 0:                                 /* switch 19 */
            case 1:                                 /* switch 19 */
            case 2:                                 /* switch 19 */
            case 3:                                 /* switch 19 */
            case 4:                                 /* switch 19 */
            case 5:                                 /* switch 19 */
            case 6:                                 /* switch 19 */
            case 11:                                /* switch 19 */
            case 13:                                /* switch 19 */
            case 16:                                /* switch 19 */
                M2C_FIELD(gUnk_03006440, s16 *, 0x6A) = 0xFFFF;
                sp14 = 0;
                CpuSet(&sp14, gUnk_03006440 + 0xF4, 0x05000004);
                M2C_FIELD(gUnk_03006440, u32 *, 0x1C) = 0x16U;
                M2C_FIELD(gUnk_03006440, u32 *, 0x20) = 0U;
                break;
            default:                                /* switch 19 */
                M2C_FIELD(gUnk_03006440, s32 *, 0x24) = 0;
                break;
            }
        } else {
            M2C_FIELD(gUnk_03006440, s32 *, 0x28) = (s32) (temp_r1_52 & ~1);
        }
        goto block_858;
    case 4:                                         /* switch 18 */
        if (keys29_03001308 == 0) {
            temp_r0_107 = M2C_FIELD(gUnk_03006440, u32 *, 0x18);
            if ((temp_r0_107 != 0xE) && (temp_r0_107 != 7) && (temp_r0_107 != 0xA)) {
                temp_r0_108 = M2C_FIELD(gUnk_03006440, u16 **, 0xF0);
                if (temp_r0_108 != NULL) {
                    temp_r0_109 = *(u16 *)temp_r0_108;
                    if ((temp_r0_109 != 0) && (temp_r0_109 != 0xA)) {
                        temp_r3_38 = M2C_FIELD(gUnk_03006440, s32 *, 0x28);
                        if (!(temp_r3_38 & 1)) {
                            M2C_FIELD(gUnk_03006440, s32 *, 0x28) = (s32) (temp_r3_38 | 1);
                            goto block_874;
                        }
                        M2C_FIELD(gUnk_03006440, s32 *, 0x28) = (s32) (temp_r3_38 & ~1);
                        goto block_876;
                    }
                }
            }
            if ((M2C_FIELD(gUnk_03006440, u32 *, 0x18) == 9) && (M2C_FIELD(gUnk_03006440, s32 *, 0x5B4) != 0)) {
                temp_r1_53 = M2C_FIELD(gUnk_03006440, s32 *, 0x28);
                if (!(temp_r1_53 & 1)) {
                    M2C_FIELD(gUnk_03006440, s32 *, 0x28) = (s32) (temp_r1_53 | 1);
block_874:
                    sub_0801A664(2, 0x12);
                    sub_0805865C(0xDC);
                } else {
                    M2C_FIELD(gUnk_03006440, s32 *, 0x28) = (s32) (temp_r1_53 & ~1);
block_876:
                    sub_0805865C(0xDD);
                }
            }
        } else {
        default:                                    /* switch 18 */
            if ((M2C_FIELD(gUnk_03006440, u32 *, 0) == 4) && (M2C_FIELD(gUnk_03006440, u32 *, 0x18) != 0x14)) {
                temp_r3_39 = M2C_FIELD(gUnk_03006440, s32 *, 0x28) & 1;
                if ((temp_r3_39 == 0) && (0x100 & keys29_03001324)) {
                    temp_r0_110 = M2C_FIELD(gUnk_03006440, u32 *, 0x44) + 1;
                    M2C_FIELD(gUnk_03006440, u32 *, 0x44) = temp_r0_110;
                    if (temp_r0_110 >= (u32) M2C_FIELD(gUnk_03006440, u32 *, 0x48)) {
                        M2C_FIELD(gUnk_03006440, u32 *, 0x44) = temp_r3_39;
                    }
                    sub_0805865C(0xE);
                }
            }
        }
        break;
    }
    temp_r0_111 = M2C_FIELD(gUnk_03006440, u32 *, 0x18);
    switch (temp_r0_111) {                          /* switch 20; irregular */
    case 0:                                         /* switch 20 */
        temp_r1_54 = M2C_FIELD(gUnk_03006440, u32 *, 4);
        if (temp_r1_54 == M2C_FIELD(gUnk_03006440, u32 *, 8)) {

        } else {
            M2C_FIELD(gUnk_03006440, s32 *, 0xE8) = (s32) (((temp_r1_54 % 5U) * 0x10) + 0x58);
            var_r4_3 = gUnk_03006440 + 0xE8 + 4;
            var_r0_9 = M2C_FIELD(gUnk_03006440, u32 *, 4);
            var_r1_10 = 5;
block_925:
            *(s32 *)var_r4_3 = ((var_r0_9 / var_r1_10) * 0x10) + 0x20;
            M2C_FIELD((void *) gUnk_03006440, s32 *, 8) = (s32) M2C_FIELD((void *) gUnk_03006440, s32 *, 4);
            M2C_FIELD((void *) gUnk_03006440, s32 *, 0x6C) = 0;
        }
        break;
    case 1:                                         /* switch 20 */
        if (M2C_FIELD(gUnk_03006440, u32 *, 4) == M2C_FIELD(gUnk_03006440, u32 *, 8)) {

        } else {
            M2C_FIELD(gUnk_03006440, s32 *, 0xE8) = (s32) (*(s16 *)(((M2C_FIELD(gUnk_03006440, u32 *, 4) % 3) * 4) + ((u32)gUnk_084ECBBC)) + 0x38);
            var_r2_10 = gUnk_03006440 + 0xE8 + 4;
            var_r0_10 = *(s16 *)(((M2C_FIELD(gUnk_03006440, u32 *, 4) % 3) * 4) + (((u32)gUnk_084ECBBC) + 2));
block_920:
            *(s32 *)var_r2_10 = var_r0_10 + 0x10;
            M2C_FIELD((void *) gUnk_03006440, s32 *, 8) = (s32) M2C_FIELD((void *) gUnk_03006440, s32 *, 4);
            M2C_FIELD((void *) gUnk_03006440, s32 *, 0x6C) = 0;
        }
        break;
    case 2:                                         /* switch 20 */
        if (M2C_FIELD(gUnk_03006440, u32 *, 4) != M2C_FIELD(gUnk_03006440, u32 *, 8)) {
            M2C_FIELD(gUnk_03006440, u32 *, 0x6C) = 0U;
        }
        M2C_FIELD(gUnk_03006440, s32 *, 0xE8) = 0x40;
        var_r1_11 = gUnk_03006440 + 0xE8 + 4;
        var_r0_11 = 0x30;
block_940:
        *(s32 *)var_r1_11 = var_r0_11;
        M2C_FIELD((void *) gUnk_03006440, s32 *, 8) = (s32) M2C_FIELD((void *) gUnk_03006440, s32 *, 4);
        break;
    case 3:                                         /* switch 20 */
        if (M2C_FIELD(gUnk_03006440, u32 *, 4) != M2C_FIELD(gUnk_03006440, u32 *, 8)) {
            M2C_FIELD(gUnk_03006440, u32 *, 0x6C) = 0U;
        }
        M2C_FIELD(gUnk_03006440, s32 *, 0xE8) = 0x3C;
        var_r1_11 = gUnk_03006440 + 0xE8 + 4;
        var_r0_11 = 0x60;
        goto block_940;
    case 4:                                         /* switch 20 */
        if (M2C_FIELD(gUnk_03006440, u32 *, 4) != M2C_FIELD(gUnk_03006440, u32 *, 8)) {
            M2C_FIELD(gUnk_03006440, u32 *, 0x6C) = 0U;
        }
        M2C_FIELD(gUnk_03006440, s32 *, 0xE8) = 0x40;
        var_r1_11 = gUnk_03006440 + 0xE8 + 4;
        var_r0_11 = 0x48;
        goto block_940;
    case 5:                                         /* switch 20 */
        if (M2C_FIELD(gUnk_03006440, u32 *, 4) != M2C_FIELD(gUnk_03006440, u32 *, 8)) {
            M2C_FIELD(gUnk_03006440, u32 *, 0x6C) = 0U;
        }
        M2C_FIELD(gUnk_03006440, s32 *, 0xE8) = 0xC;
        var_r1_11 = gUnk_03006440 + 0xE8 + 4;
        var_r0_11 = 0x40;
        goto block_940;
    case 6:                                         /* switch 20 */
        if (M2C_FIELD(gUnk_03006440, u32 *, 4) != M2C_FIELD(gUnk_03006440, u32 *, 8)) {
            M2C_FIELD(gUnk_03006440, u32 *, 0x6C) = 0U;
        }
        M2C_FIELD(gUnk_03006440, s32 *, 0xE8) = 0x10;
        var_r1_11 = gUnk_03006440 + 0xE8 + 4;
        var_r0_11 = 0x60;
        goto block_940;
    case 9:                                         /* switch 20 */
        M2C_FIELD(gUnk_03006440, s32 *, 0xE8) = 0x24;
        var_r1_12 = gUnk_03006440 + 0xE8 + 4;
        var_r0_12 = 0x48;
block_916:
        *(s32 *)var_r1_12 = var_r0_12;
        M2C_FIELD((void *) gUnk_03006440, s32 *, 8) = (s32) M2C_FIELD((void *) gUnk_03006440, s32 *, 4);
        M2C_FIELD((void *) gUnk_03006440, s32 *, 0x6C) = 0;
        break;
    case 7:                                         /* switch 20 */
        temp_r1_55 = M2C_FIELD(gUnk_03006440, u32 *, 4);
        if (temp_r1_55 == M2C_FIELD(gUnk_03006440, u32 *, 8)) {

        } else {
            temp_r2_58 = 3 & temp_r1_55;
            if (temp_r2_58 <= 1U) {
                var_r1_13 = gUnk_03006440 + 0xE8;
                var_r0_13 = (temp_r2_58 * 0x48) + 0x10;
            } else {
                var_r1_13 = gUnk_03006440 + 0xE8;
                var_r0_13 = (temp_r2_58 * 0x38) + 0x24;
            }
            M2C_FIELD(var_r1_13, s32 *, 0) = var_r0_13;
            M2C_FIELD(var_r1_13, s32 *, 4) = (s32) ((((u32) M2C_FIELD(gUnk_03006440, u32 *, 4) >> 2) * 8) + 0x74);
            M2C_FIELD(gUnk_03006440, u32 *, 8) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 4);
            M2C_FIELD(gUnk_03006440, u32 *, 0x6C) = 0U;
        }
        break;
    case 10:                                        /* switch 20 */
        M2C_FIELD(gUnk_03006440, s32 *, 0xE8) = 0xB4;
        var_r1_12 = gUnk_03006440 + 0xE8 + 4;
        var_r0_12 = 0x60;
        goto block_916;
    case 8:                                         /* switch 20 */
        temp_r6_11 = M2C_FIELD(gUnk_03006440, u32 *, 4);
        if (temp_r6_11 == M2C_FIELD(gUnk_03006440, u32 *, 8)) {

        } else {
            temp_r3_40 = ((temp_r6_11 / 3U) * 3) + 3;
            M2C_FIELD(gUnk_03006440, s32 *, 0xE8) = (s32) (*(s16 *)(((temp_r3_40 - (temp_r6_11 + 1)) * 4) + ((u32)gUnk_084ECBB0)) + 0xB8);
            var_r2_10 = gUnk_03006440 + 0xE8 + 4;
            var_r0_10 = *(s16 *)(((temp_r3_40 - (M2C_FIELD(gUnk_03006440, u32 *, 4) + 1)) * 4) + (((u32)gUnk_084ECBB0) + 2));
            goto block_920;
        }
        break;
    case 12:                                        /* switch 20 */
        M2C_FIELD(gUnk_03006440, s32 *, 0xE8) = 0xBC;
        var_r1_11 = gUnk_03006440 + 0xE8 + 4;
        var_r0_11 = 0x60;
        goto block_940;
    case 11:                                        /* switch 20 */
        temp_r1_56 = M2C_FIELD(gUnk_03006440, u32 *, 4);
        if (temp_r1_56 == M2C_FIELD(gUnk_03006440, u32 *, 8)) {

        } else {
            M2C_FIELD(gUnk_03006440, s32 *, 0xE8) = (s32) (((temp_r1_56 % 3U) * 0x10) + 0xB8);
            var_r4_3 = gUnk_03006440 + 0xE8 + 4;
            var_r0_9 = M2C_FIELD(gUnk_03006440, u32 *, 4);
            var_r1_10 = 3;
            goto block_925;
        }
        break;
    case 13:                                        /* switch 20 */
        temp_r1_57 = M2C_FIELD(gUnk_03006440, u32 *, 4);
        if (temp_r1_57 == M2C_FIELD(gUnk_03006440, u32 *, 8)) {

        } else {
            M2C_FIELD(gUnk_03006440, s32 *, 0xE8) = (s32) (((temp_r1_57 % 3U) * 0x10) + 0xB8);
            M2C_FIELD((gUnk_03006440 + 0xE8), s32 *, 4) = (s32) ((((u32) M2C_FIELD(gUnk_03006440, u32 *, 4) / 3U) * 0x10) + 0x20);
            M2C_FIELD(gUnk_03006440, u32 *, 8) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 4);
        }
        break;
    case 14:                                        /* switch 20 */
        if (M2C_FIELD(gUnk_03006440, u32 *, 4) != M2C_FIELD(gUnk_03006440, u32 *, 8)) {
            M2C_FIELD(gUnk_03006440, s32 *, 0xE8) = 0xE8;
            M2C_FIELD((gUnk_03006440 + 0xE8), s32 *, 4) = (s32) ((M2C_FIELD(gUnk_03006440, u32 *, 4) * 0x10) + 0x20);
            M2C_FIELD(gUnk_03006440, u32 *, 8) = (u32) M2C_FIELD(gUnk_03006440, u32 *, 4);
        }
        temp_r1_58 = M2C_FIELD(gUnk_03006440, u32 *, 4);
        if ((temp_r1_58 == M2C_FIELD(gUnk_03006440, u32 *, 0x48)) && (temp_r1_58 <= 4U)) {
            temp_r4_16 = sub_08007290(0x140189) + 2;
            sub_0801A3D0(temp_r4_16, (u16) (0xF - ((u32) sub_0801A638(temp_r4_16) >> 1)), 0x12);
        }
        sub_0801A664(0xE, 3);
        sub_0801A664(0x12, 2);
        break;
    case 15:                                        /* switch 20 */
        sub_0807C1D8();
        var_r0_14 = 0x14018A;
block_949:
        temp_r4_17 = sub_08007290(var_r0_14) + 2;
        sub_0801A3D0(temp_r4_17, (u16) (0xF - ((u32) (sub_0801A638(temp_r4_17) + 1) >> 1)), 0x12);
        break;
    case 16:                                        /* switch 20 */
        temp_r3_41 = M2C_FIELD(gUnk_03006440, u32 *, 4);
        if (temp_r3_41 == M2C_FIELD(gUnk_03006440, u32 *, 8)) {

        } else {
            M2C_FIELD(gUnk_03006440, s32 *, 0xE8) = (s32) ((temp_r3_41 * 0x10) + 0xB8);
            var_r1_11 = gUnk_03006440 + 0xE8 + 4;
            var_r0_11 = 0x30;
            goto block_940;
        }
        break;
    case 17:                                        /* switch 20 */
        M2C_FIELD(gUnk_03006440, s32 *, 0xE8) = 0xC8;
        var_r1_11 = gUnk_03006440 + 0xE8 + 4;
        var_r0_11 = M2C_FIELD(gUnk_03006440, u32 *, 0x54) + 0x60;
        goto block_940;
    case 18:                                        /* switch 20 */
        sub_0807C1D8();
        temp_r3_42 = M2C_FIELD(gUnk_03006440, u32 *, 0x58);
        temp_r1_59 = M2C_FIELD(gUnk_03006440, u32 *, 0x54);
        temp_r1_60 = temp_r1_59 + ((u32) (temp_r3_42 - temp_r1_59) >> 1);
        M2C_FIELD(gUnk_03006440, u32 *, 0x54) = temp_r1_60;
        var_r0_15 = temp_r1_60 - temp_r3_42;
        if (var_r0_15 < 0) {
            var_r0_15 = 0 - var_r0_15;
        }
        if (var_r0_15 == 1) {
            M2C_FIELD(gUnk_03006440, u32 *, 0x54) = temp_r3_42;
        } else if (temp_r1_60 == temp_r3_42) {
            temp_r0_112 = M2C_FIELD(gUnk_03006440, u32 *, 0x5C) + M2C_FIELD(gUnk_03006440, s32 *, 0x60);
            M2C_FIELD(gUnk_03006440, u32 *, 0x5C) = temp_r0_112;
            if (temp_r0_112 > 0xFFU) {
                M2C_FIELD(gUnk_03006440, u32 *, 0x5C) = 0U;
            }
        }
        M2C_FIELD(gUnk_03006440, s32 *, 0xEC) = (s32) (M2C_FIELD(gUnk_03006440, u32 *, 0x54) + 0x60);
        var_r0_14 = 0x140186;
        goto block_949;
    case 19:                                        /* switch 20 */
        temp_r1_61 = M2C_FIELD(gUnk_03006440, u32 *, 0x58);
        temp_r2_59 = M2C_FIELD(gUnk_03006440, u32 *, 0x54) - temp_r1_61;
        M2C_FIELD(gUnk_03006440, u32 *, 0x54) = temp_r2_59;
        M2C_FIELD(gUnk_03006440, u32 *, 0x58) = (u32) (temp_r1_61 + 2);
        if ((s32) temp_r2_59 < 0) {
            sub_0805865C(0x19);
            M2C_FIELD(gUnk_03006440, u32 *, 0x54) = 0U;
            M2C_FIELD(gUnk_03006440, u32 *, 0x58) = -0x14U;
            temp_r0_113 = M2C_FIELD(gUnk_03006440, s32 *, 0x10) + 1;
            M2C_FIELD(gUnk_03006440, s32 *, 0x10) = temp_r0_113;
            if ((u32) temp_r0_113 > 3U) {
                M2C_FIELD(gUnk_03006440, u32 *, 0xC) = 1U;
            }
        }
        sub_08065230(gUnk_03006440 + 0x5EC, 0xD2, 0x30 - M2C_FIELD(gUnk_03006440, u32 *, 0x54), 1U, 0);
        break;
    case 20:                                        /* switch 20 */
        sub_08065424(M2C_FIELD(gUnk_03006440, s32 *, 0xE8) + 8, M2C_FIELD(gUnk_03006440, s32 *, 0xEC) - 0x10, M2C_FIELD(gUnk_03006440, u32 *, 0xF8), 0, 9);
        sub_08065230(gUnk_03006440 + 0x5B8, M2C_FIELD(gUnk_03006440, s32 *, 0xE8), M2C_FIELD(gUnk_03006440, s32 *, 0xEC) - 0x10, 0xAU, (s32) (u16) (6 - M2C_FIELD(gUnk_03006440, s32 *, 0x10)));
        break;
    }
    temp_r0_114 = M2C_FIELD(gUnk_03006440, u32 *, 0x18);
    switch (temp_r0_114) {                          /* switch 21; irregular */
    case 0:                                         /* switch 21 */
        var_r3_3 = gUnk_03006440 + 0xF0;
        var_r1_14 = (M2C_FIELD(gUnk_03006440, u32 *, 4) * 0x10) + 0x150;
block_960:
        *(s32 *)var_r3_3 = gUnk_030034E0 + var_r1_14;
        break;
    case 1:                                         /* switch 21 */
        var_r3_3 = gUnk_03006440 + 0xF0;
        var_r1_14 = (M2C_FIELD(gUnk_03006440, u32 *, 4) * 0x10) + 0x70;
        goto block_960;
    case 2:                                         /* switch 21 */
        M2C_FIELD(gUnk_03006440, u16 **, 0xF0) = (u16 *) (gUnk_030034E0 + 0x100);
        break;
    case 3:                                         /* switch 21 */
        var_r1_15 = gUnk_03006440 + 0xF0;
        var_r2_11 = 0x120;
block_966:
        *(s32 *)var_r1_15 = gUnk_030034E0 + var_r2_11;
        break;
    case 4:                                         /* switch 21 */
        M2C_FIELD(gUnk_03006440, u16 **, 0xF0) = (u16 *) (gUnk_030034E0 + 0x110);
        break;
    case 5:                                         /* switch 21 */
        M2C_FIELD(gUnk_03006440, u16 **, 0xF0) = (u16 *) (gUnk_030034E0 + 0x130);
        break;
    case 6:                                         /* switch 21 */
        var_r1_15 = gUnk_03006440 + 0xF0;
        var_r2_11 = 0x140;
        goto block_966;
    case 9:                                         /* switch 21 */
        var_r0_16 = gUnk_03006440;
block_972:
        M2C_FIELD(var_r0_16, s32 *, 0xF0) = 0;
        break;
    case 7:                                         /* switch 21 */
    case 10:                                        /* switch 21 */
    case 12:                                        /* switch 21 */
    case 14:                                        /* switch 21 */
    case 15:                                        /* switch 21 */
    case 18:                                        /* switch 21 */
block_971:
        var_r0_16 = gUnk_03006440;
        goto block_972;
    case 8:                                         /* switch 21 */
        temp_r0_115 = sub_0805D548(*(u16 *)(gUnk_030034E0 + 0x56 + (M2C_FIELD(gUnk_03006440, u32 *, 4) * 2)) - 1);
        if (temp_r0_115 != -1) {
            var_r2_12 = gUnk_03006440 + 0xF0;
            var_r1_16 = (temp_r0_115 * 0x10) + 0x150;
            var_r0_17 = gUnk_030034E0;
block_975:
            *(s32 *)var_r2_12 = var_r0_17 + var_r1_16;
        } else {
            goto block_971;
        }
        break;
    case 13:                                        /* switch 21 */
        M2C_FIELD(gUnk_03006440, u16 **, 0xF0) = (u16 *) (gUnk_03006440 + (((M2C_FIELD(gUnk_03006440, u32 *, 4) + (M2C_FIELD(gUnk_03006440, u32 *, 0x44) * 0xF)) * 0x10) + 0x104));
        break;
    case 11:                                        /* switch 21 */
    case 16:                                        /* switch 21 */
        var_r0_17 = gUnk_03006440;
        var_r2_12 = var_r0_17 + 0xF0;
        var_r1_16 = (M2C_FIELD(var_r0_17, u32 *, 4) * 0x10) + 0x104;
        goto block_975;
    }
    temp_r3_43 = gUnk_03006440 + 0xE0;
    temp_r2_60 = M2C_FIELD(gUnk_03006440, s32 *, 0xE0);
    temp_r0_116 = M2C_FIELD(gUnk_03006440, s32 *, 0xE8) - temp_r2_60;
    M2C_FIELD(gUnk_03006440, s32 *, 0xE0) = (s32) (temp_r2_60 + ((s32) (temp_r0_116 + (temp_r0_116 >> 0x1F)) >> 1));
    temp_r2_61 = M2C_FIELD(temp_r3_43, s32 *, 4);
    temp_r0_117 = M2C_FIELD(gUnk_03006440, s32 *, 0xEC) - temp_r2_61;
    M2C_FIELD(temp_r3_43, s32 *, 4) = (s32) (temp_r2_61 + ((s32) (temp_r0_117 + (temp_r0_117 >> 0x1F)) >> 1));
    if (M2C_FIELD(gUnk_03006440, s32 *, 0x5B4) != 0) {
        var_r5_9 = 0;
        do {
            if (!(0x8000 & *(u16 *)(M2C_FIELD(gUnk_03006440, s32 *, 0x5B4) + 0x136 + (var_r5_9 * 2)))) {
                temp_r1_62 = var_r5_9 * 8;
                temp_r4_18 = gUnk_03006440 + 0x74 + temp_r1_62;
                temp_r3_44 = *(u32 *)temp_r4_18;
                if (temp_r3_44 != 0) {
                    *(u32 *)temp_r4_18 = temp_r3_44 - 1;
                } else {
                    temp_r2_62 = gUnk_03006440 + 0x78 + temp_r1_62;
                    temp_r0_118 = *(u32 *)temp_r2_62;
                    *(u32 *)temp_r2_62 = temp_r0_118 + 1;
                    if (temp_r0_118 > 0x14U) {
                        *(u32 *)temp_r4_18 = 3;
                        *(u32 *)temp_r2_62 = temp_r3_44;
                    }
                }
            }
            var_r5_9 += 1;
        } while (var_r5_9 <= 5U);
    } else {
        var_r5_10 = 0;
        do {
            temp_r2_63 = var_r5_10 * 8;
            *(u32 *)(gUnk_03006440 + 0x74 + temp_r2_63) = 0;
            *(u32 *)(gUnk_03006440 + 0x78 + temp_r2_63) = var_r5_10 % 5U;
            var_r5_10 += 1;
        } while (var_r5_10 <= 5U);
    }
    temp_r4_19 = gUnk_03006440;
    if (M2C_FIELD(temp_r4_19, s32 *, 0x34) != sub_0805D3D4()) {
        sub_08065504(0x1C, 0, M2C_FIELD(gUnk_03006440, s32 *, 0x34), 0, 9);
        temp_r4_20 = gUnk_03006440 + 0x34;
        temp_r5_16 = M2C_FIELD(gUnk_03006440, s32 *, 0x34);
        sub_080659F4(temp_r4_20, temp_r5_16, sub_0805D3D4(), M2C_FIELD(gUnk_03006440, s32 *, 0x38));
        temp_r0_119 = M2C_FIELD(gUnk_03006440, s32 *, 0x38) + 0x40;
        M2C_FIELD(gUnk_03006440, s32 *, 0x38) = temp_r0_119;
        if ((u32) temp_r0_119 > 0x3FFU) {
            M2C_FIELD(gUnk_03006440, s32 *, 0x34) = sub_0805D3D4();
            M2C_FIELD(gUnk_03006440, s32 *, 0x38) = 0;
        }
    } else {
        sub_08065504(0x1C, 0, sub_0805D3D4(), 0, 9);
    }
    temp_r4_21 = gUnk_03006440;
    if (M2C_FIELD(temp_r4_21, u32 *, 0) != 2) {
        if (M2C_FIELD(temp_r4_21, s32 *, 0x3C) != sub_08085330()) {
            sub_08065504(0x1C, 1, M2C_FIELD(gUnk_03006440, s32 *, 0x3C), 0, 9);
            temp_r4_22 = gUnk_03006440 + 0x3C;
            temp_r5_17 = M2C_FIELD(gUnk_03006440, s32 *, 0x3C);
            sub_080659F4(temp_r4_22, temp_r5_17, sub_08085330(), M2C_FIELD(gUnk_03006440, s32 *, 0x40));
            temp_r0_120 = M2C_FIELD(gUnk_03006440, s32 *, 0x40) + 0x40;
            M2C_FIELD(gUnk_03006440, s32 *, 0x40) = temp_r0_120;
            if ((u32) temp_r0_120 > 0x3FFU) {
                M2C_FIELD(gUnk_03006440, s32 *, 0x3C) = sub_08085330();
                M2C_FIELD(gUnk_03006440, s32 *, 0x40) = 0;
            }
        } else {
            sub_08065504(0x1C, 1, sub_08085330(), 0, 9);
        }
    }
    temp_r6_12 = M2C_FIELD(gUnk_03006440, s32 *, 0x28) & 1;
    if (temp_r6_12 != 0) {
        return;
    }
    temp_r0_121 = M2C_FIELD(gUnk_03006440, u32 *, 0x6C);
    M2C_FIELD(gUnk_03006440, u32 *, 0x6C) = (u32) (temp_r0_121 + 1);
    if (temp_r0_121 <= 3U) {
        return;
    }
    temp_r4_23 = M2C_FIELD(gUnk_03006440, u32 *, 0x18);
    if (temp_r4_23 == 0x14) {
        return;
    }
    temp_r1_63 = gUnk_03006440 + 0xF4;
    temp_r0_122 = (u16) M2C_FIELD(gUnk_03006440, s32 *, 0xF4);
    switch (temp_r0_122) {                          /* switch 22; irregular */
    case 10:                                        /* switch 22 */
        sub_08065424(M2C_FIELD(gUnk_03006440, s32 *, 0xE0) + 8, *(s32 *)(temp_r1_63 - 0x10) - 0x10, M2C_FIELD(gUnk_03006440, u32 *, 0xF8), 0, 9);
        var_r0_18 = gUnk_03006440 + 0x5B8;
        var_r1_17 = M2C_FIELD(gUnk_03006440, s32 *, 0xE0);
        var_r2_13 = gUnk_03006440 + 0xE4;
block_1066:
        var_r2_14 = *(s32 *)var_r2_13 - 0x10;
block_1067:
        sub_08065230(var_r0_18, var_r1_17, var_r2_14, 0xAU, (s32) temp_r6_12);
        return;
    case 0:                                         /* switch 22 */
        temp_r3_45 = M2C_FIELD(gUnk_03006440, u16 **, 0xF0);
        temp_r0_123 = M2C_FIELD(temp_r3_45, u16 *, 0);
        if (temp_r0_123 == 0xA) {
            if ((u32) (M2C_FIELD(gUnk_03006440, u32 *, 0) - 4) <= 1U) {
                return;
            }
            if (temp_r4_23 == 0x12) {
                return;
            }
            sub_08065424(M2C_FIELD(gUnk_03006440, s32 *, 0xE8) + 8, M2C_FIELD(gUnk_03006440, s32 *, 0xEC) - 0x10, M2C_FIELD(temp_r3_45, u32 *, 4), 0, 9);
            var_r0_18 = gUnk_03006440 + 0x5B8;
block_1065:
            var_r1_17 = M2C_FIELD((void *) gUnk_03006440, s32 *, 0xE8);
            var_r2_13 = (void *) gUnk_03006440 + 0xEC;
            goto block_1066;
        }
        if (temp_r0_123 == 0) {
            return;
        }
        temp_r0_124 = M2C_FIELD(gUnk_03006440, u32 *, 0);
        switch (temp_r0_124) {                      /* switch 23; irregular */
        case 3:                                     /* switch 23 */
            switch (temp_r4_23) {                   /* switch 24; irregular */
            case 9:                                 /* switch 24 */
                return;
            case 7:                                 /* switch 24 */
                return;
            case 11:                                /* switch 24 */
                sub_08065424(M2C_FIELD(gUnk_03006440, s32 *, 0xE8) + 8, M2C_FIELD(gUnk_03006440, s32 *, 0xEC) - 8, sub_0805AE94(temp_r3_45), 0, 9);
                var_r0_18 = gUnk_03006440 + 0x5B8;
                var_r1_17 = M2C_FIELD(gUnk_03006440, s32 *, 0xE8);
                var_r2_14 = M2C_FIELD(gUnk_03006440, s32 *, 0xEC) - 8;
                goto block_1067;
            default:                                /* switch 24 */
                temp_r0_125 = M2C_FIELD(temp_r3_45, u16 *, 0);
                if (((s32) temp_r0_125 <= 5) && ((s32) temp_r0_125 >= 2)) {
                    if (temp_r4_23 == 1) {
                        if (M2C_FIELD(temp_r3_45, u8 *, 8) != 0) {
                            sub_08065424(M2C_FIELD(gUnk_03006440, s32 *, 0xE8) + 0x10, M2C_FIELD(gUnk_03006440, s32 *, 0xEC) - 8, 1U, 0, 9);
                        } else {
                            sub_08065424(M2C_FIELD(gUnk_03006440, s32 *, 0xE8) + 0x10, M2C_FIELD(gUnk_03006440, s32 *, 0xEC) - 8, sub_0805AE94(temp_r3_45) / 10U, 0, 9);
                        }
                        var_r0_19 = gUnk_03006440 + 0x5B8;
                        var_r1_18 = M2C_FIELD(gUnk_03006440, s32 *, 0xE8) + 8;
                    } else {
                        if (M2C_FIELD(temp_r3_45, u8 *, 8) != 0) {
                            sub_08065424(M2C_FIELD(gUnk_03006440, s32 *, 0xE8) + 8, M2C_FIELD(gUnk_03006440, s32 *, 0xEC) - 8, 1U, 0, 9);
                        } else {
                            sub_08065424(M2C_FIELD(gUnk_03006440, s32 *, 0xE8) + 8, M2C_FIELD(gUnk_03006440, s32 *, 0xEC) - 8, sub_0805AE94(temp_r3_45) / 10U, 0, 9);
                        }
                        var_r0_19 = gUnk_03006440 + 0x5B8;
                        goto block_1051;
                    }
                    goto block_1052;
                }
                temp_r1_64 = M2C_FIELD(gUnk_03006440, u32 *, 0x18);
                switch (temp_r1_64) {               /* switch 25; irregular */
                case 12:                            /* switch 25 */
                    return;
                case 6:                             /* switch 25 */
                    if ((sub_0805AE94(M2C_FIELD(gUnk_03006440, u16 **, 0xF0)) / 10U) == 0) {
                        sub_08065424(M2C_FIELD(gUnk_03006440, s32 *, 0xE8) + 0x10, M2C_FIELD(gUnk_03006440, s32 *, 0xEC) - 8, 1U, 0, 9);
                    } else {
                        sub_08065424(M2C_FIELD(gUnk_03006440, s32 *, 0xE8) + 0x10, M2C_FIELD(gUnk_03006440, s32 *, 0xEC) - 8, sub_0805AE94(M2C_FIELD(gUnk_03006440, u16 **, 0xF0)) / 10U, 0, 9);
                    }
                    var_r0_19 = gUnk_03006440 + 0x5B8;
                    var_r1_18 = M2C_FIELD(gUnk_03006440, s32 *, 0xE8) + 8;
block_1052:
                    sub_08065230(var_r0_19, var_r1_18, M2C_FIELD((void *) gUnk_03006440, s32 *, 0xEC) - 8, 0xCU, 0);
                    return;
                case 5:                             /* switch 25 */
                    if ((sub_0805AE94(M2C_FIELD(gUnk_03006440, u16 **, 0xF0)) / 10U) == 0) {
                        sub_08065424(M2C_FIELD(gUnk_03006440, s32 *, 0xE8) + 0x14, M2C_FIELD(gUnk_03006440, s32 *, 0xEC) - 8, 1U, 0, 9);
                    } else {
                        sub_08065424(M2C_FIELD(gUnk_03006440, s32 *, 0xE8) + 0x14, M2C_FIELD(gUnk_03006440, s32 *, 0xEC) - 8, sub_0805AE94(M2C_FIELD(gUnk_03006440, u16 **, 0xF0)) / 10U, 0, 9);
                    }
                    var_r0_19 = gUnk_03006440 + 0x5B8;
                    var_r1_18 = M2C_FIELD(gUnk_03006440, s32 *, 0xE8) + 0xC;
                    goto block_1052;
                default:                            /* switch 25 */
                    if ((sub_0805AE94(M2C_FIELD(gUnk_03006440, u16 **, 0xF0)) / 10U) == 0) {
                        sub_08065424(M2C_FIELD(gUnk_03006440, s32 *, 0xE8) + 8, M2C_FIELD(gUnk_03006440, s32 *, 0xEC) - 8, 1U, 0, 9);
                    } else {
                        sub_08065424(M2C_FIELD(gUnk_03006440, s32 *, 0xE8) + 8, M2C_FIELD(gUnk_03006440, s32 *, 0xEC) - 8, sub_0805AE94(M2C_FIELD(gUnk_03006440, u16 **, 0xF0)) / 10U, 0, 9);
                    }
                    var_r0_19 = gUnk_03006440 + 0x5B8;
block_1051:
                    var_r1_18 = M2C_FIELD((void *) gUnk_03006440, s32 *, 0xE8);
                    goto block_1052;
                }
                break;
            }
            break;
        case 5:                                     /* switch 23 */
            temp_r0_126 = M2C_FIELD(temp_r3_45, u16 *, 0);
            if ((s32) temp_r0_126 > 5) {
                return;
            }
            if ((s32) temp_r0_126 < 2) {
                return;
            }
            if (M2C_FIELD(temp_r3_45, u8 *, 8) == 0) {
                return;
            }
            M2C_FIELD(temp_r3_45, u8 *, 8) = temp_r6_12;
            sub_08065424(M2C_FIELD(gUnk_03006440, s32 *, 0xE8) + 8, M2C_FIELD(gUnk_03006440, s32 *, 0xEC) - 8, sub_0805B068(M2C_FIELD(gUnk_03006440, u16 **, 0xF0)), 0, 9);
            sub_08065230(gUnk_03006440 + 0x5B8, M2C_FIELD(gUnk_03006440, s32 *, 0xE8), M2C_FIELD(gUnk_03006440, s32 *, 0xEC) - 8, 0xAU, (s32) temp_r6_12);
            M2C_FIELD(M2C_FIELD(gUnk_03006440, u16 **, 0xF0), s8 *, 8) = 1;
            return;
        }
        break;
    default:                                        /* switch 22 */
        if (M2C_FIELD(gUnk_03006440, u32 *, 0) == 3) {
            if (M2C_FIELD(gUnk_03006440, u32 *, 0x1C) == 0xB) {
                sub_08065424(M2C_FIELD(gUnk_03006440, s32 *, 0xE8) + 8, M2C_FIELD(gUnk_03006440, s32 *, 0xEC) - 0x10, sub_0805AE94(temp_r1_63), 0, 9);
                var_r0_18 = gUnk_03006440 + 0x5B8;
                goto block_1065;
            }
            if ((sub_0805AE94(temp_r1_63) / 10U) == 0) {
                sub_08065424(M2C_FIELD(gUnk_03006440, s32 *, 0xE8) + 8, M2C_FIELD(gUnk_03006440, s32 *, 0xEC) - 0x10, 1U, 0, 9);
            } else {
                sub_08065424(M2C_FIELD(gUnk_03006440, s32 *, 0xE8) + 8, M2C_FIELD(gUnk_03006440, s32 *, 0xEC) - 0x10, sub_0805AE94(gUnk_03006440 + 0xF4) / 10U, 0, 9);
            }
            sub_08065230(gUnk_03006440 + 0x5B8, M2C_FIELD(gUnk_03006440, s32 *, 0xE8), M2C_FIELD(gUnk_03006440, s32 *, 0xEC) - 0x10, 0xCU, 0);
        } else {
            return;
        }
        break;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0807C29C);
#endif
#ifdef NONMATCHING
// Inventory drawing pass. The assembly remains the default until this draft
// has been matched against the original ARM7 code.
extern void sub_0805FC80(s32 x, s32 y, void *item, s32 mode);
extern void sub_0805FAC0(s32 x, s32 y, s32 count, s32 mode);
extern u32 sub_0805AE34(const u8 *item);
extern s16 gUnk_084ECBB0[];
extern s16 gUnk_084ECBB2[];
extern s16 gUnk_084ECBBC[];

#define SET_ITEM_DRAW_MODE(item, normalMode, outMode) \
    do { \
        u32 _ready = 1; \
        switch (*(u16 *)(item)) { \
        case 2: _ready = sub_0805AE34(item); break; \
        case 3: _ready = sub_0805D278(item); break; \
        case 4: _ready = sub_0805D210(item); break; \
        case 5: _ready = sub_0805D2E0(item); break; \
        } \
        (outMode) = _ready == 0 ? (normalMode) + 2 : (normalMode); \
    } while (0)

void sub_08080A78(void)
{
    u8 *inventory = (u8 *)gUnk_030034E0;
    u8 *manager = (u8 *)gUnk_03006440;
    u16 fallbackItem[2];
    u32 i;

    for (i = 0; i <= 0x18; i++) {
        u8 *item = inventory + 0x150 + i * 0x10;
        u32 mode;
        u32 selected = *(u32 *)(manager + 0x1C) == 0 &&
                       *(u32 *)(manager + 0x20) == i;

        SET_ITEM_DRAW_MODE(item, 8, mode);
        if (!selected || (gUnk_03002344 & 1))
            sub_0805FC80((i % 5) * 0x10 + 0x58,
                         (i / 5) * 0x10 + 0x20, item, mode);
    }

    i = *(u16 *)(inventory + 0x68) / 3;
    {
        u32 first = i * 3;
        u8 *item = inventory + 0x70 + first * 0x10;
        u32 slot;

        for (slot = 0; slot < 3; slot++, item += 0x10) {
            u32 index = first + slot;
            u32 mode;
            s16 x = gUnk_084ECBBC[slot * 2];
            s16 y = gUnk_084ECBBC[slot * 2 + 1];

            SET_ITEM_DRAW_MODE(item, 8, mode);
            if (*(u32 *)(manager + 0x1C) == 1 &&
                *(u32 *)(manager + 0x20) == index) {
                if (gUnk_03002344 & 1)
                    sub_0805FC80(x + 0x38, y + 0x10, item, mode);
            } else if (*(u16 *)(inventory + 0x68) == index) {
                sub_0805FC80(x + 0x38,
                             y - (*(s32 *)(manager + 0x74) - 0x10), item, mode);
            } else {
                sub_0805FC80(x + 0x38, y + 0x10, item, mode);
            }
        }
    }

    if (*(u32 *)manager != 5) {
        u8 *item = inventory + 0x100;
        u32 mode;
        s32 y = 0x30 - *(s32 *)(manager + 0x7C);

        SET_ITEM_DRAW_MODE(item, 0, mode);
        if (*(u32 *)(manager + 0x1C) != 2 || (gUnk_03002344 & 1))
            sub_0805FC80(0x40, *(u32 *)(manager + 0x1C) == 2 ? 0x30 : y,
                         item, mode);

        item = inventory + 0x120;
        SET_ITEM_DRAW_MODE(item, 0, mode);
        y = 0x60 - *(s32 *)(manager + 0x8C);
        if (*(u32 *)(manager + 0x1C) != 3 || (gUnk_03002344 & 1))
            sub_0805FC80(0x3C, *(u32 *)(manager + 0x1C) == 3 ? 0x60 : y,
                         item, mode);

        item = inventory + 0x110;
        SET_ITEM_DRAW_MODE(item, 0, mode);
        y = 0x48 - *(s32 *)(manager + 0x84);
        sub_0805FC80(0x40, y, item, mode);

        if (*(u32 *)(manager + 0x1C) != 5 || (gUnk_03002344 & 1))
            sub_0805FC80(0x0C, 0x40 - *(s32 *)(manager + 0x9C), inventory + 0x130, 8);
        if (*(u32 *)(manager + 0x1C) != 6 || (gUnk_03002344 & 1))
            sub_0805FC80(0x10, 0x60 - *(s32 *)(manager + 0x94), inventory + 0x140, 8);
    }

    if (*(u32 *)manager == 2) {
        u32 first = (*(u16 *)(inventory + 0x54) / 3) * 3;
        for (i = first; i < first + 3; i++) {
            u16 itemId = *(u16 *)(inventory + 0x56 + i * 2);
            s32 found;
            u8 *item;
            u32 count = 0;

            if (itemId == 0)
                continue;
            found = sub_0805D548(itemId - 1);
            if (found >= 0) {
                u8 *candidate = inventory + 0x150;
                u32 j;
                item = inventory + 0x150 + found * 0x10;
                for (j = 0; j <= 0x18; j++, candidate += 0x10) {
                    if (*(u16 *)candidate == 1 &&
                        *(u16 *)(candidate + 2) == *(u16 *)(item + 2))
                        count++;
                }
            } else {
                fallbackItem[0] = 1;
                fallbackItem[1] = itemId - 1;
                item = (u8 *)fallbackItem;
            }
            sub_0805FAC0(gUnk_084ECBB0[(2 - (i - first)) * 2] + 0xB8,
                         gUnk_084ECBB2[(2 - (i - first)) * 2] + 0x18,
                         count, 0);
            sub_0805FC80(gUnk_084ECBB0[(2 - (i - first)) * 2] + 0xB8,
                         gUnk_084ECBB2[(2 - (i - first)) * 2] + 0x10,
                         item, 0);
        }
    }

    switch (*(u32 *)manager) {
    case 3:
        for (i = 0; i <= 0xB; i++) {
            u8 *item = manager + 0x104 + i * 0x10;
            u32 mode;
            SET_ITEM_DRAW_MODE(item, 8, mode);
            if (*(u32 *)(manager + 0x1C) == 0xB &&
                *(u32 *)(manager + 0x20) == i) {
                if (gUnk_03002344 & 1)
                    sub_0805FC80((i % 3) * 0x10 + 0xB8,
                                 (i / 3) * 0x10 + 0xB8, item, mode);
            } else {
                sub_0805FC80((i % 3) * 0x10 + 0xB8,
                             (i / 3) * 0x10 + 0x20, item, mode);
            }
        }
        return;
    case 4: {
        u8 *item = manager + (*(u32 *)(manager + 0x44) * 0xF0) + 0x104;
        for (i = 0; i <= 0xE; i++, item += 0x10) {
            u32 mode;
            SET_ITEM_DRAW_MODE(item, 8, mode);
            if (*(u32 *)(manager + 0x1C) == 0xD &&
                *(u32 *)(manager + 0x20) == i) {
                if (gUnk_03002344 & 1)
                    sub_0805FC80((i % 3) * 0x10 + 0xB8,
                                 (i / 3) * 0x10 + 0x20, item, mode);
            } else {
                sub_0805FC80((i % 3) * 0x10 + 0xB8,
                             (i / 3) * 0x10 + 0x20, item, mode);
            }
        }
        return;
    }
    case 6: {
        u8 *item = manager + 0x104;
        for (i = 0; i <= 2; i++, item += 0x10) {
            u32 mode;
            SET_ITEM_DRAW_MODE(item, 8, mode);
            if (*(u32 *)(manager + 0x1C) != 0x10 ||
                *(u32 *)(manager + 0x20) != i ||
                (gUnk_03002344 & 1))
                sub_0805FC80((i % 3) * 0x10 + 0xB8, 0x30, item, mode);
        }
        item = manager + 0x134;
        {
            u32 mode;
            s32 y = *(s32 *)(manager + 0x54) + 0x60;
            SET_ITEM_DRAW_MODE(item, 8, mode);
            if (*(u32 *)(manager + 0x1C) == 0x11) {
                if (gUnk_03002344 & 1)
                    sub_0805FC80(0xC8, y, item, mode);
            } else {
                y += gUnk_080B9704[manager[0x5C]] >> 5;
                sub_0805FC80(0xC8, y, item, mode);
            }
        }
        return;
    }
    }
}
#undef SET_ITEM_DRAW_MODE
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08080A78);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080811E0);
#ifdef NONMATCHING
void sub_08081518(u16 arg0, u16 arg1, u8 *arg2, u16 arg3, s32 arg4)
{
    u8 text[0x20];
    u32 number;
    u16 length = 0;
    u8 *source = arg2 + 2;

    goto checkToken;
processToken:
    if (*source == 0xF7) {
        u32 started = 0;
        u8 *out = text + length;
        s32 *divisor = gUnk_084EBD5C;
        u16 digit = 0;

        number = arg3;
        source++;
        do {
            u8 character = sub_08000498((s32 *)&number, *divisor) + 0x41;
            *out = character;
            if (started || character != 0x41 || digit == 5) {
                out++;
                started = 1;
                length++;
            }
            digit++;
            divisor++;
        } while (digit <= 5);
    } else {
        text[length] = *source;
        length++;
        source++;
    }
checkToken:
    if (*source != 0xFD)
        goto processToken;

    text[length] = 0xFD;
    if (arg4 & 1)
        arg0 -= sub_0801A638(text) >> 1;
    sub_0801A3D0(text, arg0, arg1);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08081518);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080815F4);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08082960);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08082BB0);
#ifdef NONMATCHING
void sub_0808381C(u32 index)
{
    u32 descriptorWords[13];
    u8 text[32];
    u8 liveText[32];
    volatile u32 visible;
    u8 *source;
    u8 *manager;
    u16 sourceOffset;
    u16 textLength;
    u16 dictionaryOffset;
    u16 i;
    u16 countdown;
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
            if (*(u8 *)((u32)source + (sourceOffset + 2)) == 0xFC) {
                text[textLength++] = ((u8 *)gUnk_030034E0)[dictionaryOffset++];
                if (((u8 *)gUnk_030034E0)[dictionaryOffset] == 0xFD)
                    sourceOffset++;
            } else {
                text[textLength++] = *(u8 *)((u32)source + (sourceOffset++ + 2));
            }
        } while (*(u8 *)((u32)source + (sourceOffset + 2)) != 0xFD);
    }
    text[textLength] = 0xFD;

    if ((s16)countdown > 0) do {
        if (sub_0800CDF8() != 0 || sub_080021A8() != 0)
            goto done;
        if (countdown == 1)
            countdown = 0;
        amount = (s16)countdown - ((s32)((u32)countdown << 16) >> 17);
        countdown = amount;
        sub_08065230(((u8 *)descriptorWords), amount + 0xF0, 0x88, 0, 0);
        sub_080003F0();
    } while (amount > 0);

    for (i = 0; i <= (u32)sub_0801A638(text);) {
        if (sub_0800CDF8() != 0 || sub_080021A8() != 0)
            goto done;
        liveText[i] = text[i];
        liveText[i + 1] = 0xFD;
        i++;
        sub_08065230(((u8 *)descriptorWords), 0xF0, 0x88, 0, 0);
        x = 0x0F - ((u32)sub_0801A638(text) >> 1);
        sub_0801A3D0(liveText, x, 0x12);
        sub_080003F0();
    }

    i--;
    if ((keys8381C & 1) == 0) {
        u16 blink = 0;
        u8 *cursor = liveText + i;
        u8 *cursorEnd = cursor + 1;

        for (;;) {
            if (sub_0800CDF8() != 0 || sub_080021A8() != 0)
                goto done;
            {
            u16 previousBlink = blink++;
            if (previousBlink <= 0x1D)
                visible = 1;
            else if (blink > 0x1D)
                visible = 0;
            }
            if (blink > 0x28)
                blink = 0;
            if (visible) {
                *cursor = 0xA0;
                *cursorEnd = 0xFD;
            } else {
                *cursor = 0xFD;
            }
            sub_08065230(((u8 *)descriptorWords), 0xF0, 0x88, 0, 0);
            x = 0x0F - ((u32)sub_0801A638(text) >> 1);
            sub_0801A3D0(liveText, x, 0x12);
            sub_080003F0();
            if (keys8381C & 1)
                break;
        }
    }

    countdown = 0;
    sub_0805865C(0x0F);
    for (;;) {
        if (sub_0800CDF8() != 0 || sub_080021A8() != 0)
            goto done;
        if (countdown == 0x9F)
            countdown = 0xA0;
        amount = (s16)countdown - (((s16)countdown - 0xA0) >> 1);
        sub_08065230(((u8 *)descriptorWords), amount + 0xF0, 0x88, 0, 0);
        sub_080003F0();
        if (amount > 0x9F)
            break;
        countdown = amount;
    }
    sub_080003F0();
    sub_080003F0();

done:
    manager = (u8 *)gUnk_03006440;
    *(u32 *)(manager + 0x28) &= ~2u;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0808381C);
#endif
#ifdef NONMATCHING
void sub_08083AE8(u32 param_1)

{
    /* NONMATCHING: stack layout recovered from ASM; equivalence unproven. */
    extern u32 gUnk_084ECC04[];
    extern u16 sub_08057AE8(s32);
  u32 frame83AE8[52];
  u16 uVar1;
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
  u32 unaff_r10;
  u32 in_lr;

  if (*(short *)(((u32)&gUnk_03003170) + 0x8c) == 0) {
    uVar1 = sub_08057AE8(0x15);
  }
  else {
    uVar1 = 2;
  }
  if (uVar1 == 1) {
    sub_08065158(((u8 *)frame83AE8 + 0x38),0x500CB,0,0xffffffff,0);
    sub_08000AF0(0x15,(*(u32 *)((u8 *)frame83AE8 + 0x44)) + 0x1c0,1);
    unaff_r9 = 0x77;
  }
  else {
    if (uVar1 < 2) {
      if (uVar1 == 0) {
        sub_08065158(((u8 *)frame83AE8 + 0x4),0x500CC,0,0xffffffff,0);
        sub_08065158(((u8 *)frame83AE8 + 0x38),0x500CB,0,0xffffffff,0);
        sub_08065158(((u8 *)frame83AE8 + 0x6C),0x500CA,0,0xffffffff,0);
        sub_08000AF0(0x14,(*(u32 *)((u8 *)frame83AE8 + 0x10)) + 0x1c0,1);
        sub_08000AF0(0x15,(*(u32 *)((u8 *)frame83AE8 + 0x44)) + 0x1c0,1);
        sub_08000AF0(0x1e,(*(u32 *)((u8 *)frame83AE8 + 0x78)) + 0x1c0,1);
        (*(u32 *)((u8 *)frame83AE8 + 0xC4)) = 0x77;
        unaff_r9 = 0xae;
        unaff_r10 = 0x40;
      }
      goto LAB_08083bee;
    }
    if (uVar1 != 2) goto LAB_08083bee;
    sub_08065158(((u8 *)frame83AE8 + 0x6C),0x500CA,0,0xffffffff,0);
    sub_08000AF0(0x15,(*(u32 *)((u8 *)frame83AE8 + 0x78)) + 0x1c0,1);
    unaff_r10 = 0x77;
  }
  (*(u32 *)((u8 *)frame83AE8 + 0xC4)) = 0x77;
LAB_08083bee:
  (*(u8 *)((u8 *)frame83AE8 + 0x2E)) = 4;
  (*(u8 *)((u8 *)frame83AE8 + 0x62)) = 5;
  (*(u32 *)((u8 *)frame83AE8 + 0xC0)) = sub_08007290(*(u32 *)(param_1 * 4 + ((u32)gUnk_084ECC04)) | 0x140000);
  *(u32 *)(*(int *)((u32)&gUnk_03006440) + 0x28) = *(u32 *)(*(int *)((u32)&gUnk_03006440) + 0x28) | 2;
  if (0 < (int)((*(u32 *)((u8 *)frame83AE8 + 0xC4)) * 0x10000)) {
    do {
      iVar4 = sub_0800CDF8();
      if ((iVar4 != 0) || (iVar4 = sub_080021A8(), iVar4 != 0)) goto LAB_080841de;
      if ((short)(*(u32 *)((u8 *)frame83AE8 + 0xC4)) == 1) {
        (*(u32 *)((u8 *)frame83AE8 + 0xC4)) = 0;
      }
      (*(u32 *)((u8 *)frame83AE8 + 0xC4)) = ((int)((*(u32 *)((u8 *)frame83AE8 + 0xC4)) << 0x10) >> 0x10) - ((int)((*(u32 *)((u8 *)frame83AE8 + 0xC4)) << 0x10) >> 0x11) & 0xffff;
      if ((short)unaff_r9 == 1) {
        unaff_r9 = 0;
      }
      uVar12 = ((int)(unaff_r9 << 0x10) >> 0x10) - ((int)(unaff_r9 << 0x10) >> 0x11);
      unaff_r9 = uVar12 & 0xffff;
      if ((short)unaff_r10 == 1) {
        unaff_r10 = 0;
      }
      uVar5 = ((int)(unaff_r10 << 0x10) >> 0x10) - ((int)(unaff_r10 << 0x10) >> 0x11);
      unaff_r10 = uVar5 & 0xffff;
      sVar10 = (short)uVar12;
      puVar3 = ((u8 *)frame83AE8 + 0x38);
      if (uVar1 == 1) {
LAB_08083ce4:
        sub_08065230(puVar3,sVar10 + 0xb9,0x88,0,0);
        sub_08000AF0(0x15,(*(u32 *)((u8 *)frame83AE8 + 0x44)) + 0x1c0,1);
LAB_08083cfc:
        iVar4 = (*(u32 *)((u8 *)frame83AE8 + 0xC4)) << 0x10;
      }
      else {
        sVar8 = (short)uVar5;
        if (1 < uVar1) {
          if (uVar1 == 2) {
            puVar3 = ((u8 *)frame83AE8 + 0x6C);
            sVar10 = sVar8;
            goto LAB_08083ce4;
          }
          goto LAB_08083cfc;
        }
        if (uVar1 == 0) {
          sub_08000AF0(0x14,(*(u32 *)((u8 *)frame83AE8 + 0x10)) + 0x1c0,1);
          sub_08000AF0(0x15,(*(u32 *)((u8 *)frame83AE8 + 0x44)) + 0x1c0,1);
          sub_08000AF0(0x1e,(*(u32 *)((u8 *)frame83AE8 + 0x78)) + 0x1c0,1);
          sub_08065230(((u8 *)frame83AE8 + 0x6C),sVar8 + 0xf0,0x88,0,0);
          sub_08065230(((u8 *)frame83AE8 + 0x38),sVar10 + 0x82,0x88,0,0);
          iVar4 = (*(u32 *)((u8 *)frame83AE8 + 0xC4)) << 0x10;
          sub_08065230(((u8 *)frame83AE8 + 0x4),(iVar4 >> 0x10) + 0xb9,0x88,0,0);
        }
        else {
          iVar4 = (*(u32 *)((u8 *)frame83AE8 + 0xC4)) << 0x10;
        }
      }
      sub_080003F0();
    } while (0 < iVar4);
  }
  (*(u32 *)((u8 *)frame83AE8 + 0xCC)) = (*(u32 *)((u8 *)frame83AE8 + 0xC0)) + 2;
  for (uVar12 = 0; uVar5 = sub_0801A638((*(u32 *)((u8 *)frame83AE8 + 0xCC))), uVar12 <= uVar5; uVar12 = uVar12 + 1 & 0xffff) {
    iVar4 = sub_0800CDF8();
    if ((iVar4 != 0) || (iVar4 = sub_080021A8(), iVar4 != 0)) goto LAB_080841de;
    if (uVar1 == 1) {
      sub_08065230(((u8 *)frame83AE8 + 0x38),0xb9,0x88,0,0);
LAB_08083dd4:
      sub_08000AF0(0x15,(*(u32 *)((u8 *)frame83AE8 + 0x44)) + 0x1c0,1);
    }
    else if (uVar1 < 2) {
      if (uVar1 == 0) {
        sub_08000AF0(0x14,(*(u32 *)((u8 *)frame83AE8 + 0x10)) + 0x1c0,1);
        sub_08000AF0(0x15,(*(u32 *)((u8 *)frame83AE8 + 0x44)) + 0x1c0,1);
        sub_08000AF0(0x1e,(*(u32 *)((u8 *)frame83AE8 + 0x78)) + 0x1c0,1);
        sub_08065230(((u8 *)frame83AE8 + 0x6C),0xf0,0x88,0,0);
        sub_08065230(((u8 *)frame83AE8 + 0x38),0x82,0x88,0,0);
        sub_08065230(((u8 *)frame83AE8 + 0x4),0xb9,0x88,0,0);
      }
    }
    else if (uVar1 == 2) {
      sub_08065230(((u8 *)frame83AE8 + 0x6C),0xb9,0x88,0,0);
      goto LAB_08083dd4;
    }
    ((u8 *)frame83AE8 + 0xA0)[uVar12] = *(u8 *)((*(u32 *)((u8 *)frame83AE8 + 0xC0)) + uVar12 + 2);
    ((u8 *)frame83AE8 + 0xA0)[uVar12 + 1] = 0xfd;
    uVar5 = sub_0801A638((*(u32 *)((u8 *)frame83AE8 + 0xCC)));
    sub_0801A3D0(((u8 *)frame83AE8 + 0xA0),0xf - (uVar5 >> 1) & 0xffff,0x12);
    sub_080003F0();
  }
  uVar12 = uVar12 - 1 & 0xffff;
  if ((*(u16 *)((u32)&gUnk_03001324) & 1) == 0) {
    uVar11 = 0;
    do {
      iVar4 = sub_0800CDF8();
      if ((iVar4 != 0) || (iVar4 = sub_080021A8(), iVar4 != 0)) goto LAB_080841de;
      uVar2 = uVar11 + 1;
      if (uVar11 < 0x1e) {
        (*(u32 *)((u8 *)frame83AE8 + 0xC8)) = 1;
      }
      else if (0x1d < uVar2) {
        (*(u32 *)((u8 *)frame83AE8 + 0xC8)) = 0;
      }
      if (0x28 < uVar2) {
        uVar2 = 0;
      }
      if ((*(u32 *)((u8 *)frame83AE8 + 0xC8)) == 0) {
        ((u8 *)frame83AE8 + 0xA0)[uVar12] = 0xfd;
      }
      else {
        ((u8 *)frame83AE8 + 0xA0)[uVar12] = 0xa0;
        ((u8 *)frame83AE8 + 0xA0)[uVar12 + 1] = 0xfd;
      }
      if (uVar1 == 1) {
        sub_08065230(((u8 *)frame83AE8 + 0x38),0xb9,0x88,0,0);
LAB_08083f4a:
        sub_08000AF0(0x15,(*(u32 *)((u8 *)frame83AE8 + 0x44)) + 0x1c0,1);
      }
      else if (uVar1 < 2) {
        if (uVar1 == 0) {
          sub_08000AF0(0x14,(*(u32 *)((u8 *)frame83AE8 + 0x10)) + 0x1c0,1);
          sub_08000AF0(0x15,(*(u32 *)((u8 *)frame83AE8 + 0x44)) + 0x1c0,1);
          sub_08000AF0(0x1e,(*(u32 *)((u8 *)frame83AE8 + 0x78)) + 0x1c0,1);
          sub_08065230(((u8 *)frame83AE8 + 0x6C),0xf0,0x88,0,0);
          sub_08065230(((u8 *)frame83AE8 + 0x38),0x82,0x88,0,0);
          sub_08065230(((u8 *)frame83AE8 + 0x4),0xb9,0x88,0,0);
        }
      }
      else if (uVar1 == 2) {
        sub_08065230(((u8 *)frame83AE8 + 0x6C),0xb9,0x88,0,0);
        goto LAB_08083f4a;
      }
      uVar5 = sub_0801A638((*(u32 *)((u8 *)frame83AE8 + 0xCC)));
      sub_0801A3D0(((u8 *)frame83AE8 + 0xA0),0xf - (uVar5 >> 1) & 0xffff,0x12);
      sub_080003F0();
      uVar11 = uVar2;
    } while ((*(u16 *)((u32)&gUnk_03001324) & 1) == 0);
  }
  (*(u32 *)((u8 *)frame83AE8 + 0xC4)) = 0;
  uVar12 = 0;
  uVar5 = 0;
  sub_0805865C(0xf);
  if (uVar1 == 1) {
    do {
      iVar4 = sub_0800CDF8();
      if ((iVar4 != 0) || (iVar4 = sub_080021A8(), iVar4 != 0)) goto LAB_080841de;
      uVar5 = (int)(short)uVar12 - ((short)uVar12 + -0x77 >> 1);
      uVar12 = uVar5 & 0xffff;
      sub_08000AF0(0x15,(*(u32 *)((u8 *)frame83AE8 + 0x44)) + 0x1c0,1);
      iVar4 = (int)(short)uVar5;
      sub_08065230(((u8 *)frame83AE8 + 0x38),iVar4 + 0xb9,0x88,0,0);
      sub_080003F0();
    } while (iVar4 != 0x77);
  }
  else if (uVar1 < 2) {
    if (uVar1 == 0) {
      do {
        iVar4 = sub_0800CDF8();
        if ((iVar4 != 0) || (iVar4 = sub_080021A8(), iVar4 != 0)) goto LAB_080841de;
        uVar9 = (int)(short)(*(u32 *)((u8 *)frame83AE8 + 0xC4)) - ((short)(*(u32 *)((u8 *)frame83AE8 + 0xC4)) + -0x77 >> 1);
        uVar6 = (int)(short)uVar12 - ((short)uVar12 + -0xae >> 1);
        uVar12 = uVar6 & 0xffff;
        uVar7 = (int)(short)uVar5 - ((short)uVar5 + -0x40 >> 1);
        uVar5 = uVar7 & 0xffff;
        (*(u32 *)((u8 *)frame83AE8 + 0xC4)) = uVar9 & 0xffff;
        iVar4 = ((int)(uVar9 * 0x10000) >> 0x10) + -0x77;
        if (iVar4 < 0) {
          iVar4 = -iVar4;
        }
        if (iVar4 == 1) {
          (*(u32 *)((u8 *)frame83AE8 + 0xC4)) = 0x77;
        }
        iVar4 = (short)uVar6 + -0xae;
        if (iVar4 < 0) {
          iVar4 = -iVar4;
        }
        if (iVar4 == 1) {
          uVar12 = 0xae;
        }
        iVar4 = (short)uVar7 + -0x40;
        if (iVar4 < 0) {
          iVar4 = -iVar4;
        }
        if (iVar4 == 1) {
          uVar5 = 0x40;
        }
        sub_08000AF0(0x14,(*(u32 *)((u8 *)frame83AE8 + 0x10)) + 0x1c0,1);
        sub_08000AF0(0x15,(*(u32 *)((u8 *)frame83AE8 + 0x44)) + 0x1c0,1);
        sub_08000AF0(0x1e,(*(u32 *)((u8 *)frame83AE8 + 0x78)) + 0x1c0,1);
        sub_08065230(((u8 *)frame83AE8 + 0x6C),(short)uVar5 + 0xf0,0x88,0,0);
        sub_08065230(((u8 *)frame83AE8 + 0x38),(short)uVar12 + 0x82,0x88,0,0);
        sVar10 = (short)(*(u32 *)((u8 *)frame83AE8 + 0xC4));
        sub_08065230(((u8 *)frame83AE8 + 0x4),sVar10 + 0xb9,0x88,0,0);
        sub_080003F0();
      } while (((sVar10 != 0x77) || ((short)uVar12 != 0xae)) || ((short)uVar5 != 0x40));
    }
  }
  else if (uVar1 == 2) {
    do {
      iVar4 = sub_0800CDF8();
      if ((iVar4 != 0) || (iVar4 = sub_080021A8(), iVar4 != 0)) goto LAB_080841de;
      uVar12 = (int)(short)uVar5 - ((short)uVar5 + -0x77 >> 1);
      uVar5 = uVar12 & 0xffff;
      sub_08000AF0(0x15,(*(u32 *)((u8 *)frame83AE8 + 0x78)) + 0x1c0,1);
      iVar4 = (int)(short)uVar12;
      sub_08065230(((u8 *)frame83AE8 + 0x6C),iVar4 + 0xb9,0x88,0,0);
      sub_080003F0();
    } while (iVar4 != 0x77);
  }
  sub_080003F0();
  sub_080003F0();
LAB_080841de:
  *(u32 *)(*(int *)((u32)&gUnk_03006440) + 0x28) = *(u32 *)(*(int *)((u32)&gUnk_03006440) + 0x28) & 0xfffffffd;
  return;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08083AE8);
#endif
#ifdef NONMATCHING
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
    if (*(const u16 *)(arg0 + 0x02) == 2 && *(const u16 *)(arg0 + 0x12) == 1 && *(const u16 *)(arg0 + 0x22) == 2) return 9;
    if (*(const u16 *)(arg0 + 0x02) == 2 && *(const u16 *)(arg0 + 0x12) == 0 && *(const u16 *)(arg0 + 0x22) == 2) return 10;
    if (*(const u16 *)(arg0 + 0x02) == 0 && *(const u16 *)(arg0 + 0x12) == 0 && *(const u16 *)(arg0 + 0x22) == 2) return 11;
    if (*(const u16 *)(arg0 + 0x02) == 1 && *(const u16 *)(arg0 + 0x12) == 1 && *(const u16 *)(arg0 + 0x22) == 0) return 12;
    if (*(const u16 *)(arg0 + 0x02) == 0 && *(const u16 *)(arg0 + 0x12) == 0 && *(const u16 *)(arg0 + 0x22) == 1) return 13;
    if (*(const u16 *)(arg0 + 0x02) == 1 && *(const u16 *)(arg0 + 0x12) == 1 && *(const u16 *)(arg0 + 0x22) == 2) return 14;
    if (*(const u16 *)(arg0 + 0x02) == 2 && *(const u16 *)(arg0 + 0x12) == 2 && *(const u16 *)(arg0 + 0x22) == 1) return 15;
    if (*(const u16 *)(arg0 + 0x02) == 2 && *(const u16 *)(arg0 + 0x12) == 2 && *(const u16 *)(arg0 + 0x22) == 0) return 16;
    if (*(const u16 *)(arg0 + 0x02) == 2 && *(const u16 *)(arg0 + 0x12) == 0 && *(const u16 *)(arg0 + 0x22) == 0) return 17;
    if (*(const u16 *)(arg0 + 0x02) == 0 && *(const u16 *)(arg0 + 0x12) == 1 && *(const u16 *)(arg0 + 0x22) == 1) return 18;
    if (*(const u16 *)(arg0 + 0x02) == 1 && *(const u16 *)(arg0 + 0x12) == 0 && *(const u16 *)(arg0 + 0x22) == 0) return 19;
    if (*(const u16 *)(arg0 + 0x02) == 2 && *(const u16 *)(arg0 + 0x12) == 1 && *(const u16 *)(arg0 + 0x22) == 1) return 20;
    if (*(const u16 *)(arg0 + 0x02) == 1 && *(const u16 *)(arg0 + 0x12) == 2 && *(const u16 *)(arg0 + 0x22) == 2) return 21;
    if (*(const u16 *)(arg0 + 0x02) == 0 && *(const u16 *)(arg0 + 0x12) == 2 && *(const u16 *)(arg0 + 0x22) == 2) return 22;
    if (*(const u16 *)(arg0 + 0x02) == 3 && *(const u16 *)(arg0 + 0x12) == 3 && *(const u16 *)(arg0 + 0x22) == 3) return 23;
    if (*(const u16 *)(arg0 + 0x02) == 4 && *(const u16 *)(arg0 + 0x12) == 4 && *(const u16 *)(arg0 + 0x22) == 4) return 24;
    return 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08084200);
#endif
#ifdef NONMATCHING
void sub_0808441C(u16 *param_1,u32 *param_2)

{
    /* NONMATCHING: stack layout recovered from ASM; equivalence unproven. */
#define CONCAT13_8441C(a,b) (((u32)(a) << 24) | ((u32)(b) & 0xFFFFFF))
#define CONCAT22_8441C(a,b) (((u32)(a) << 16) | (u16)(b))
#define CONCAT12_8441C(a,b) (((u32)(a) << 16) | (u16)(b))
#define mod8441C(a,b) ((u32)(a) % (u32)(b))
#define div8441C(a,b) ((u32)(a) / (u32)(b))
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
  u32 frame8441C[32];
  int *piVar1;
  u16 uVar2;
  u32 uVar3;
  int iVar4;
  u32 uVar5;
  int iVar6;
  int iVar7;
  u32 dVar8;
  u32 uVar9;
  u32 *puVar10;
  u32 *puVar11;
  u32 uVar12;
  u32 uVar13;
  u32 uVar14;
  u32 uVar15;
  u32 uVar16;
  u32 uVar17;
  u16 *puVar18;
  u32 uVar19;
  int iVar20;
  u8 unaff_r9;
  u32 in_lr;

  (*(u32 *)((u8 *)frame8441C + 0x30)) = 0;
  (*(u32 *)((u8 *)frame8441C + 0x34)) = 0;
  uVar17 = 0;
  (*(u32 * *)((u8 *)frame8441C + 0x78)) = (frame8441C + 16);
  do {
    *(u8 *)((int)&(*(u32 *)((u8 *)frame8441C + 0x34)) + uVar17) = 0;
    uVar17 = uVar17 + 1;
  } while (uVar17 < 0xc);
  (*(u16 * *)((u8 *)frame8441C + 0x5C)) = param_1;
  (*(u32 * *)((u8 *)frame8441C + 0x60)) = param_2;
  uVar3 = sub_080008C8();
  iVar4 = mod8441C(uVar3,3);
  puVar11 = (u32 *)((*(u16 * *)((u8 *)frame8441C + 0x5C)) + iVar4 * 8);
  uVar17 = *puVar11;
  uVar15 = puVar11[1];
  uVar19 = puVar11[2];
  uVar5 = puVar11[3];
  (*(u16 * *)((u8 *)frame8441C + 0x7C)) = (*(u16 * *)((u8 *)frame8441C + 0x5C)) + 8;
  (*(u16 * *)((u8 *)frame8441C + 0x74)) = (*(u16 * *)((u8 *)frame8441C + 0x5C)) + 0x10;
  do {
    uVar3 = sub_080008C8();
    iVar6 = mod8441C(uVar3,3);
  } while (iVar4 == iVar6);
  uVar12 = *(u32 *)((*(u16 * *)((u8 *)frame8441C + 0x5C)) + iVar6 * 8);
  uVar13 = *(u32 *)((int)((*(u16 * *)((u8 *)frame8441C + 0x5C)) + iVar6 * 8) + 4);
  do {
    do {
      uVar3 = sub_080008C8();
      iVar7 = mod8441C(uVar3,3);
    } while (iVar4 == iVar7);
  } while (iVar6 == iVar7);
  uVar14 = *(u32 *)((*(u16 * *)((u8 *)frame8441C + 0x5C)) + iVar7 * 8);
  uVar16 = *(u32 *)((int)((*(u16 * *)((u8 *)frame8441C + 0x5C)) + iVar7 * 8) + 4);
  iVar4 = sub_08084200((*(u16 * *)((u8 *)frame8441C + 0x5C)));
  (*(u16 *)((u8 *)frame8441C + 0x2)) = (u16)(uVar17 >> 0x10);
  if ((iVar4 == 0) ||
     (uVar9 = sub_080008C8(), *(u32 *)(*(int *)((u32)&gUnk_030034E0) + 0x6c) < (0xFFFF & uVar9)))
  {
LAB_0808481c:
    uVar9 = uVar17 & 0xffff;
    if (uVar9 < 6) {
      if (2 < uVar9) goto LAB_08084a6a;
      if (uVar9 == 2) {
        (*(u32 *)((u8 *)frame8441C + 0x30)) = uVar17;
        (*(u32 *)((u8 *)frame8441C + 0x34)) = uVar15;
        (*(u32 *)((u8 *)frame8441C + 0x38)) = uVar19;
        (*(u32 *)((u8 *)frame8441C + 0x3C)) = uVar5;
      }
LAB_080849b8:
      uVar9 = sub_080008C8();
      uVar17 = (*(u32 *)((u8 *)frame8441C + 0x30));
      uVar15 = (*(u32 *)((u8 *)frame8441C + 0x34));
      uVar19 = (*(u32 *)((u8 *)frame8441C + 0x38));
      uVar5 = (*(u32 *)((u8 *)frame8441C + 0x3C));
      if ((0xFFFF & uVar9) <= *(u32 *)(*(int *)((u32)&gUnk_030034E0) + 0x6c)) {
        uVar17 = uVar12 & 0xffff;
        (*(u8 *)((u8 *)frame8441C + 0x17)) = unaff_r9;
        if (uVar17 < 6) {
          if (uVar17 < 3) {
            if (uVar17 == 2) {
              (*(u8 *)((u8 *)frame8441C + 0x17)) = (u8)(uVar13 >> 0x18);
            }
          }
          else {
            (*(u8 *)((u8 *)frame8441C + 0x17)) = 0;
          }
        }
        else if (uVar17 == 9) {
          (*(u16 *)((u8 *)frame8441C + 0x12)) = (u16)(uVar12 >> 0x10);
          if ((*(u16 *)((u8 *)frame8441C + 0x12)) == 1) {
            uVar17 = sub_080008C8();
            (*(u8 *)((u8 *)frame8441C + 0x17)) = 4;
            if ((uVar17 & 1) == 0) {
              (*(u8 *)((u8 *)frame8441C + 0x17)) = 2;
            }
          }
          else if ((*(u16 *)((u8 *)frame8441C + 0x12)) < 2) {
            if ((*(u16 *)((u8 *)frame8441C + 0x12)) == 0) {
              uVar3 = sub_080008C8();
              iVar4 = mod8441C(uVar3,3);
              (*(u8 *)((u8 *)frame8441C + 0x17)) = 1;
              if (iVar4 == 0) {
                (*(u8 *)((u8 *)frame8441C + 0x17)) = 3;
              }
            }
            else {
LAB_08084a44:
              (*(u8 *)((u8 *)frame8441C + 0x17)) = 0;
            }
          }
          else {
            if ((*(u16 *)((u8 *)frame8441C + 0x12)) != 2) goto LAB_08084a44;
            uVar3 = sub_080008C8();
            iVar4 = mod8441C(uVar3,3);
            (*(u8 *)((u8 *)frame8441C + 0x17)) = 6;
            if (iVar4 == 0) {
              (*(u8 *)((u8 *)frame8441C + 0x17)) = 5;
            }
          }
        }
        uVar17 = (*(u32 *)((u8 *)frame8441C + 0x30));
        uVar19 = (*(u32 *)((u8 *)frame8441C + 0x38));
        uVar5 = (*(u32 *)((u8 *)frame8441C + 0x3C));
        if ((((*(u32 *)((u8 *)frame8441C + 0x30)) & 0xffff) < 6) && (2 < ((*(u32 *)((u8 *)frame8441C + 0x30)) & 0xffff))) {
          (*(u32 *)((u8 *)frame8441C + 0x34)) = (*(u32 *)((u8 *)frame8441C + 0x34)) & 0xffffff;
          uVar15 = (*(u32 *)((u8 *)frame8441C + 0x34));
        }
        else {
          (*(u32 *)((u8 *)frame8441C + 0x34)) = CONCAT13_8441C((*(u8 *)((u8 *)frame8441C + 0x17)),(u32)(*(u32 *)((u8 *)frame8441C + 0x34)));
          uVar15 = (*(u32 *)((u8 *)frame8441C + 0x34));
        }
      }
LAB_08084a6a:
      (*(u32 *)((u8 *)frame8441C + 0x3C)) = uVar5;
      (*(u32 *)((u8 *)frame8441C + 0x38)) = uVar19;
      (*(u32 *)((u8 *)frame8441C + 0x34)) = uVar15;
      (*(u32 *)((u8 *)frame8441C + 0x30)) = uVar17;
      uVar17 = sub_080008C8();
      uVar17 = 0xFFFF & uVar17;
      uVar15 = *(u32 *)(*(int *)((u32)&gUnk_030034E0) + 0x6c);
      uVar19 = (*(u32 *)((u8 *)frame8441C + 0x30)) & 0xffff;
      (*(u16 *)((u8 *)frame8441C + 0x24)) = (u16)uVar16;
      uVar2 = (*(u16 *)((u8 *)frame8441C + 0x24));
      if (uVar19 == 2) {
        (*(u32 *)((u8 *)frame8441C + 0x64)) = sub_08007290((*(u32 *)((u8 *)frame8441C + 0x30)) >> 0x10 | 0xb0000);
        puVar11 = (*(u32 * *)((u8 *)frame8441C + 0x78));
        puVar18 = (*(u16 * *)((u8 *)frame8441C + 0x5C));
        piVar1 = (int *)((u32)&gUnk_030034E0);
        if (*(char *)((*(u32 *)((u8 *)frame8441C + 0x64)) + 0x9b) == '\t') {
          uVar19 = uVar14 & 0xffff;
          if (1 < uVar19) {
            if (uVar19 < 6) {
              if ((uVar16 & 0xffff) != 0) {
                iVar4 = sub_08007290((uVar16 & 0xffff) - 1 | 0x130000);
                uVar2 = *(u16 *)(iVar4 + 0xac) & 4;
                if ((*(u16 *)(iVar4 + 0xac) & 4) != 0) {
                  uVar2 = (*(u16 *)((u8 *)frame8441C + 0x24));
                }
              }
            }
            else {
              if (uVar19 != 9) goto LAB_08084c1e;
              uVar19 = sub_080008C8();
              uVar19 = uVar19 & 3;
              dVar8 = ((u32)table8441C_084ECA90);
              if (uVar15 < uVar17) {
                iVar4 = uVar19 << 2;
                dVar8 = ((u32)table8441C_084ECAE0);
              }
              else {
LAB_08084aee:
                iVar4 = uVar19 << 2;
              }
LAB_08084af4:
              uVar2 = (u16)*(u32 *)(iVar4 + (uVar14 >> 0x10) * 0x10 + dVar8);
            }
LAB_08084c14:
            (*(u32 *)((u8 *)frame8441C + 0x34)) = CONCAT22_8441C((*(u16 *)((u8 *)&(*(u32 *)((u8 *)frame8441C + 0x34)) + 2)),uVar2);
            puVar11 = (*(u32 * *)((u8 *)frame8441C + 0x78));
            puVar18 = (*(u16 * *)((u8 *)frame8441C + 0x5C));
            piVar1 = (int *)((u32)&gUnk_030034E0);
          }
        }
        else {
          uVar19 = uVar14 & 0xffff;
          if (1 < uVar19) {
            if (uVar19 < 6) {
              if ((uVar16 & 0xffff) != 0) {
                iVar4 = sub_08007290((uVar16 & 0xffff) - 1 | 0x130000);
                uVar2 = *(u16 *)(iVar4 + 0xac) & 8;
                if ((*(u16 *)(iVar4 + 0xac) & 8) != 0) {
                  uVar2 = (*(u16 *)((u8 *)frame8441C + 0x24));
                }
              }
              goto LAB_08084c14;
            }
            if (uVar19 == 9) {
              uVar19 = sub_080008C8();
              uVar19 = uVar19 & 3;
              dVar8 = ((u32)table8441C_084EC9A0);
              if (uVar15 < uVar17) goto LAB_08084aee;
              iVar4 = uVar19 << 2;
              dVar8 = ((u32)table8441C_084EC950);
              goto LAB_08084af4;
            }
          }
        }
      }
      else {
        puVar11 = (*(u32 * *)((u8 *)frame8441C + 0x78));
        puVar18 = (*(u16 * *)((u8 *)frame8441C + 0x5C));
        piVar1 = (int *)((u32)&gUnk_030034E0);
        if (((1 < uVar19) && (uVar19 < 6)) && (uVar19 = uVar14 & 0xffff, 1 < uVar19)) {
          if (uVar19 < 6) {
            if ((uVar16 & 0xffff) != 0) {
              iVar4 = sub_08007290(uVar16 & 0xffff | 0x130000);
              if ((((*(u32 *)((u8 *)frame8441C + 0x30)) & 0xffff) - 3 & 0xffff) < 2) {
                uVar2 = *(u16 *)(iVar4 + 0xac) & 2;
                if ((*(u16 *)(iVar4 + 0xac) & 2) != 0) {
                  uVar2 = (*(u16 *)((u8 *)frame8441C + 0x24));
                }
              }
              else if ((*(u16 *)(iVar4 + 0xac) & 1) == 0) {
                (*(u32 *)((u8 *)frame8441C + 0x34)) = CONCAT22_8441C((*(u16 *)((u8 *)&(*(u32 *)((u8 *)frame8441C + 0x34)) + 2)),*(u16 *)(iVar4 + 0xac)) & 0xffff0001;
                puVar11 = (*(u32 * *)((u8 *)frame8441C + 0x78));
                puVar18 = (*(u16 * *)((u8 *)frame8441C + 0x5C));
                piVar1 = (int *)((u32)&gUnk_030034E0);
                goto LAB_08084c1e;
              }
            }
            goto LAB_08084c14;
          }
          if (uVar19 == 9) {
            uVar19 = sub_080008C8();
            uVar19 = uVar19 & 3;
            dVar8 = ((u32)table8441C_084ECA40);
            if (uVar15 < uVar17) goto LAB_08084aee;
            iVar4 = uVar19 << 2;
            dVar8 = ((u32)table8441C_084EC9F0);
            goto LAB_08084af4;
          }
        }
      }
    }
    else {
      if (uVar9 != 9) goto LAB_080849b8;
      if ((*(u16 *)((u8 *)frame8441C + 0x2)) != 3) {
        if ((*(u16 *)((u8 *)frame8441C + 0x2)) != 4) {
          uVar17 = sub_080008C8();
          if ((uVar17 & 1) == 0) {
            do {
              uVar3 = sub_080008C8();
              iVar4 = mod8441C(uVar3,0xc);
              iVar4 = *(int *)((u32)&gUnk_030034E0) + iVar4 * 0x10;
              uVar17 = *(u32 *)(iVar4 + 0x850);
              (*(u32 *)((u8 *)frame8441C + 0x34)) = *(u32 *)(iVar4 + 0x854);
              (*(u32 *)((u8 *)frame8441C + 0x38)) = *(u32 *)(iVar4 + 0x858);
              (*(u32 *)((u8 *)frame8441C + 0x3C)) = *(u32 *)(iVar4 + 0x85c);
              (*(u32 *)((u8 *)frame8441C + 0x30)) = uVar17;
            } while ((uVar17 & 0xffff) == 0);
            (*(u16 *)((u8 *)&(*(u32 *)((u8 *)frame8441C + 0x30)) + 2)) = (u16)(uVar17 >> 0x10);
            if ((uVar17 & 0xffff) == 3) {
              uVar17 = (u32)(*(u16 *)((u8 *)&(*(u32 *)((u8 *)frame8441C + 0x30)) + 2));
              (*(u32 *)((u8 *)frame8441C + 0x68)) = sub_08007290(uVar17 | 0xc0000);
              uVar17 = (*(u32 *)((u8 *)frame8441C + 0x34)) & 0xFFFFFF;
              iVar4 = (*(u32 *)((u8 *)frame8441C + 0x68));
            }
            else {
              if ((uVar17 & 0xffff) == 4) {
                uVar17 = (u32)(*(u16 *)((u8 *)&(*(u32 *)((u8 *)frame8441C + 0x30)) + 2));
                (*(u32 *)((u8 *)frame8441C + 0x6C)) = sub_08007290(uVar17 | 0xd0000);
              }
              else {
                uVar17 = (u32)(*(u16 *)((u8 *)&(*(u32 *)((u8 *)frame8441C + 0x30)) + 2));
                (*(u32 *)((u8 *)frame8441C + 0x70)) = sub_08007290(uVar17 | 0xe0000);
              }
              uVar17 = (*(u32 *)((u8 *)frame8441C + 0x34)) & 0xFFFFFF;
              iVar4 = (*(u32 *)((u8 *)frame8441C + 0x6C));
            }
            puVar11 = (*(u32 * *)((u8 *)frame8441C + 0x78));
            puVar18 = (*(u16 * *)((u8 *)frame8441C + 0x5C));
            piVar1 = (int *)((u32)&gUnk_030034E0);
            if ((uVar17 == 0) &&
               (uVar17 = (*(u32 *)((u8 *)frame8441C + 0x30)), uVar15 = (*(u32 *)((u8 *)frame8441C + 0x34)), uVar19 = (*(u32 *)((u8 *)frame8441C + 0x38)), uVar5 = (*(u32 *)((u8 *)frame8441C + 0x3C)),
               *(short *)(iVar4 + 0xa4) == 0)) goto LAB_08084a6a;
          }
          else {
            do {
              uVar3 = sub_080008C8();
              iVar4 = mod8441C(uVar3,0xc);
              iVar4 = *(int *)((u32)&gUnk_030034E0) + iVar4 * 0x10;
              (*(u32 *)((u8 *)frame8441C + 0x30)) = *(u32 *)(iVar4 + 0x790);
              (*(u32 *)((u8 *)frame8441C + 0x34)) = *(u32 *)(iVar4 + 0x794);
              (*(u32 *)((u8 *)frame8441C + 0x38)) = *(u32 *)(iVar4 + 0x798);
              (*(u32 *)((u8 *)frame8441C + 0x3C)) = *(u32 *)(iVar4 + 0x79c);
            } while (((*(u32 *)((u8 *)frame8441C + 0x30)) & 0xffff) == 0);
            (*(u32 *)((u8 *)frame8441C + 0x64)) = sub_08007290((*(u32 *)((u8 *)frame8441C + 0x30)) >> 0x10 | 0xb0000);
            puVar11 = (*(u32 * *)((u8 *)frame8441C + 0x78));
            puVar18 = (*(u16 * *)((u8 *)frame8441C + 0x5C));
            piVar1 = (int *)((u32)&gUnk_030034E0);
            if (((*(short *)((*(u32 *)((u8 *)frame8441C + 0x64)) + 0xbc) == 0) && ((*(u16 *)((u8 *)&(*(u32 *)((u8 *)frame8441C + 0x34)) + 2)) == 0)) &&
               (*(short *)((*(u32 *)((u8 *)frame8441C + 0x64)) + 0xb0) == 0)) goto LAB_080849b8;
          }
          goto LAB_08084c1e;
        }
        uVar17 = sub_080008C8();
        puVar10 = (u32 *)((uVar17 & 3) * 0xc + ((u32)table8441C_084EC920));
        (*(u32 *)((u8 *)frame8441C + 0x4C)) = *puVar10;
        (*(u32 *)((u8 *)frame8441C + 0x50)) = puVar10[1];
        (*(u32 *)((u8 *)frame8441C + 0x54)) = puVar10[2];
        memcpy(&(*(u32 *)((u8 *)frame8441C + 0x30)),&(*(u32 *)((u8 *)frame8441C + 0x4C)),0x10);
        uVar17 = (*(u32 *)((u8 *)frame8441C + 0x30));
        uVar15 = (*(u32 *)((u8 *)frame8441C + 0x34));
        uVar19 = (*(u32 *)((u8 *)frame8441C + 0x38));
        uVar5 = (*(u32 *)((u8 *)frame8441C + 0x3C));
        goto LAB_08084a6a;
      }
      uVar17 = sub_080008C8();
      puVar10 = (u32 *)((uVar17 & 3) * 0xc + ((u32)table8441C_084EC8F0));
      (*(u32 *)((u8 *)frame8441C + 0x4C)) = *puVar10;
      (*(u32 *)((u8 *)frame8441C + 0x50)) = puVar10[1];
      (*(u32 *)((u8 *)frame8441C + 0x54)) = puVar10[2];
      memcpy(&(*(u32 *)((u8 *)frame8441C + 0x30)),&(*(u32 *)((u8 *)frame8441C + 0x4C)),0x10);
      puVar11 = (*(u32 * *)((u8 *)frame8441C + 0x78));
      puVar18 = (*(u16 * *)((u8 *)frame8441C + 0x5C));
      piVar1 = (int *)((u32)&gUnk_030034E0);
    }
    goto LAB_08084c1e;
  }
  uVar9 = (u32)(*(u16 * *)((u8 *)frame8441C + 0x5C))[2] + (u32)(*(u16 * *)((u8 *)frame8441C + 0x5C))[10] + (u32)(*(u16 * *)((u8 *)frame8441C + 0x5C))[0x12];
  if (uVar9 < 100) {
    if (iVar4 == 0x17) {
      uVar17 = sub_080008C8();
      dVar8 = ((u32)table8441C_084EC870);
    }
    else {
      if (iVar4 != 0x18) goto LAB_0808481c;
      uVar17 = sub_080008C8();
      dVar8 = ((u32)table8441C_084EC8B0);
    }
    puVar11 = (u32 *)((uVar17 & 3) * 4 + dVar8);
    goto code_0808480e;
  }
  if (uVar9 - 100 < 200) {
    iVar6 = 0;
  }
  else {
    iVar6 = 2;
    if (uVar9 + 0xFFFFFED4 < 200) {
      iVar6 = 1;
    }
  }
  puVar11 = (*(u32 * *)((u8 *)frame8441C + 0x78));
  puVar18 = (*(u16 * *)((u8 *)frame8441C + 0x5C));
  piVar1 = (int *)((u32)&gUnk_030034E0);
  switch(iVar4) {
  case 1:
    uVar3 = sub_080008C8();
    iVar4 = mod8441C(uVar3,0xe);
    puVar11 = (u32 *)(iVar4 * 4 + iVar6 * 0x38 + ((u32)table8441C_084EC1E0));
    break;
  case 2:
    uVar3 = sub_080008C8();
    iVar4 = mod8441C(uVar3,0xe);
    puVar11 = (u32 *)(iVar4 * 4 + iVar6 * 0x38 + ((u32)table8441C_084EC288));
    break;
  case 3:
    uVar3 = sub_080008C8();
    iVar4 = mod8441C(uVar3,0xe);
    puVar11 = (u32 *)(iVar4 * 4 + iVar6 * 0x38 + ((u32)table8441C_084EC330));
    break;
  case 4:
    uVar3 = sub_080008C8();
    iVar4 = mod8441C(uVar3,0xe);
    puVar11 = (u32 *)(iVar4 * 4 + iVar6 * 0x38 + ((u32)table8441C_084EC3D8));
    break;
  case 5:
    uVar17 = sub_080008C8();
    puVar11 = (u32 *)((uVar17 & 7) * 4 + iVar6 * 0x20 + ((u32)table8441C_084EC480));
    break;
  case 6:
    uVar17 = sub_080008C8();
    puVar11 = (u32 *)((uVar17 & 7) * 4 + iVar6 * 0x20 + ((u32)table8441C_084EC4E0));
    break;
  case 7:
    uVar17 = sub_080008C8();
    puVar11 = (u32 *)((uVar17 & 7) * 4 + iVar6 * 0x20 + ((u32)table8441C_084EC540));
    break;
  case 8:
    uVar17 = sub_080008C8();
    puVar11 = (u32 *)((uVar17 & 7) * 4 + iVar6 * 0x20 + ((u32)table8441C_084EC5A0));
    break;
  case 9:
    uVar17 = sub_080008C8();
    puVar11 = (u32 *)((uVar17 & 7) * 4 + iVar6 * 0x20 + ((u32)table8441C_084EC600));
    break;
  case 10:
    uVar17 = sub_080008C8();
    puVar11 = (u32 *)((uVar17 & 7) * 4 + iVar6 * 0x20 + ((u32)table8441C_084EC660));
    break;
  case 0xb:
    uVar3 = sub_080008C8();
    iVar7 = mod8441C(uVar3,3);
    iVar4 = ((u32)table8441C_084EC6C0);
    goto code_08084792;
  case 0xc:
    uVar3 = sub_080008C8();
    iVar7 = mod8441C(uVar3,3);
    iVar4 = ((u32)table8441C_084EC6E4);
    goto code_08084792;
  case 0xd:
    uVar3 = sub_080008C8();
    iVar7 = mod8441C(uVar3,3);
    iVar4 = ((u32)table8441C_084EC708);
    goto code_08084792;
  case 0xe:
    uVar3 = sub_080008C8();
    iVar7 = mod8441C(uVar3,3);
    iVar4 = ((u32)table8441C_084EC72C);
    goto code_08084792;
  case 0xf:
    uVar3 = sub_080008C8();
    iVar7 = mod8441C(uVar3,3);
    iVar4 = ((u32)table8441C_084EC750);
    goto code_08084792;
  case 0x10:
    uVar3 = sub_080008C8();
    iVar7 = mod8441C(uVar3,3);
    iVar4 = ((u32)table8441C_084EC774);
    goto code_08084792;
  case 0x11:
    uVar3 = sub_080008C8();
    iVar7 = mod8441C(uVar3,3);
    iVar4 = ((u32)table8441C_084EC798);
    goto code_08084792;
  case 0x12:
    uVar3 = sub_080008C8();
    iVar7 = mod8441C(uVar3,3);
    iVar4 = ((u32)table8441C_084EC7BC);
    goto code_08084792;
  case 0x13:
    uVar3 = sub_080008C8();
    iVar7 = mod8441C(uVar3,3);
    iVar4 = ((u32)table8441C_084EC7E0);
    goto code_08084792;
  case 0x14:
    uVar3 = sub_080008C8();
    iVar7 = mod8441C(uVar3,3);
    iVar4 = ((u32)table8441C_084EC804);
    goto code_08084792;
  case 0x15:
    uVar3 = sub_080008C8();
    iVar7 = mod8441C(uVar3,3);
    iVar4 = ((u32)table8441C_084EC828);
    goto code_08084792;
  case 0x16:
    uVar3 = sub_080008C8();
    iVar7 = mod8441C(uVar3,3);
    iVar4 = ((u32)table8441C_084EC84C);
code_08084792:
    (*(u32 *)((u8 *)frame8441C + 0x30)) = *(u32 *)((iVar6 * 3 + iVar7) * 4 + iVar4);
    puVar11 = (*(u32 * *)((u8 *)frame8441C + 0x78));
    puVar18 = (*(u16 * *)((u8 *)frame8441C + 0x5C));
    piVar1 = (int *)((u32)&gUnk_030034E0);
    goto LAB_08084c1e;
  case 0x17:
    uVar17 = sub_080008C8();
    puVar11 = (u32 *)((uVar17 & 3) * 4 + (iVar6 + 1) * 0x10 + ((u32)table8441C_084EC870));
    break;
  case 0x18:
    uVar17 = sub_080008C8();
    puVar11 = (u32 *)((uVar17 & 3) * 4 + (iVar6 + 1) * 0x10 + ((u32)table8441C_084EC8B0));
    break;
  default:
    goto LAB_08084c1e;
  }
code_0808480e:
  (*(u32 *)((u8 *)frame8441C + 0x30)) = *puVar11;
  puVar11 = (*(u32 * *)((u8 *)frame8441C + 0x78));
  puVar18 = (*(u16 * *)((u8 *)frame8441C + 0x5C));
  piVar1 = (int *)((u32)&gUnk_030034E0);
LAB_08084c1e:
  do {
    uVar2 = *puVar18;
    if (uVar2 < 2) {
LAB_08084c80:
      uVar17 = 0;
    }
    else if (uVar2 < 6) {
      uVar17 = (u32)(u8)puVar18[3];
    }
    else {
      if (uVar2 != 9) goto LAB_08084c80;
      if ((*(u16 *)((u8 *)frame8441C + 0x2)) == 1) {
        uVar2 = puVar18[2];
        *puVar11 = (u32)uVar2;
        uVar17 = div8441C((u32)uVar2 << 3,100);
      }
      else if ((*(u16 *)((u8 *)frame8441C + 0x2)) < 2) {
        if ((*(u16 *)((u8 *)frame8441C + 0x2)) == 0) {
          uVar2 = puVar18[2];
          *puVar11 = (u32)uVar2;
          uVar17 = div8441C((u32)uVar2,0x14);
        }
        else {
LAB_08084c70:
          uVar2 = puVar18[2];
          *puVar11 = (u32)uVar2;
          uVar17 = div8441C((u32)uVar2,100);
        }
      }
      else {
        if ((*(u16 *)((u8 *)frame8441C + 0x2)) != 2) goto LAB_08084c70;
        uVar2 = puVar18[2];
        *puVar11 = (u32)uVar2;
        uVar17 = div8441C((u32)uVar2,10);
      }
    }
    *puVar11 = uVar17;
    puVar11 = puVar11 + 1;
    puVar18 = puVar18 + 8;
  } while (puVar11 <= (*(u32 * *)((u8 *)frame8441C + 0x78)) + 2);
  iVar4 = div8441C(*(u32 *)((*(u16 * *)((u8 *)frame8441C + 0x5C)) + 0x1a),0x2710);
  uVar17 = (*(int *)(*piVar1 + 0x6c) * ((frame8441C + 16)[0] + (*(u32 * *)((u8 *)frame8441C + 0x78))[1] + (*(u32 * *)((u8 *)frame8441C + 0x78))[2] + iVar4 + 1)
           >> 0x12) + 3;
  if (0x13 < uVar17) {
    uVar17 = 0x14;
  }
  uVar3 = sub_080008C8();
  dVar8 = ((u32)table8441C_084ECB30);
  uVar15 = mod8441C(uVar3,*(int *)(uVar17 * 4 + ((u32)table8441C_084ECB30)) + 1);
  uVar19 = 0;
  if (uVar17 != 0) {
    uVar5 = *(u32 *)dVar8;
    while (uVar5 <= uVar15) {
      do {
        iVar4 = uVar19 * 4;
        uVar19 = uVar19 + 1;
        if (uVar17 <= uVar19) goto LAB_08084d0a;
      } while (uVar15 < *(u32 *)(iVar4 + ((u32)table8441C_084ECB30)));
      uVar5 = *(u32 *)(uVar19 * 4 + ((u32)table8441C_084ECB30));
    }
    (*(u32 *)((u8 *)frame8441C + 0x34)) = ((*(u32 *)((u8 *)frame8441C + 0x34)) & 0xFF000000) | ((CONCAT12_8441C((char)uVar19,(u16)(*(u32 *)((u8 *)frame8441C + 0x34)))) & 0xFFFFFF);
  }
LAB_08084d0a:
  iVar6 = *(int *)((*(u16 * *)((u8 *)frame8441C + 0x5C)) + 0x1a);
  uVar3 = sub_080008C8();
  iVar4 = mod8441C(uVar3,0x30D40);
  uVar15 = iVar6 + iVar4;
  uVar17 = 0;
  if (*(u32 *)((u32)table8441C_084ECB84) <= uVar15) {
    do {
      iVar4 = uVar17 * 4;
      uVar17 = uVar17 + 1;
      if (4 < uVar17) goto LAB_08084d4a;
    } while ((uVar15 < *(u32 *)(iVar4 + ((u32)table8441C_084ECB84))) ||
            (*(u32 *)(uVar17 * 4 + ((u32)table8441C_084ECB84)) <= uVar15));
    (*(u32 *)((u8 *)frame8441C + 0x34)) = ((*(u32 *)((u8 *)frame8441C + 0x34)) & 0xFF000000) | ((CONCAT12_8441C((*(u8 *)((u8 *)&(*(u32 *)((u8 *)frame8441C + 0x34)) + 2)) + (char)uVar17,(u16)(*(u32 *)((u8 *)frame8441C + 0x34)))) & 0xFFFFFF);
  }
LAB_08084d4a:
  if (((short)(*(u32 *)((u8 *)frame8441C + 0x30)) == 2) &&
     ((*(u32 *)((u8 *)frame8441C + 0x64)) = sub_08007290((*(u32 *)((u8 *)frame8441C + 0x30)) >> 0x10 | 0xb0000), *(char *)((*(u32 *)((u8 *)frame8441C + 0x64)) + 0x9b) == '\t')) {
    (*(u32 *)((u8 *)frame8441C + 0x34)) = ((*(u32 *)((u8 *)frame8441C + 0x34)) & 0xFF000000) | (((u32)(u16)(*(u32 *)((u8 *)frame8441C + 0x34))) & 0xFFFFFF);
  }
  if (0x13 < (*(u8 *)((u8 *)&(*(u32 *)((u8 *)frame8441C + 0x34)) + 2))) {
    (*(u32 *)((u8 *)frame8441C + 0x34)) = ((*(u32 *)((u8 *)frame8441C + 0x34)) & 0xFF000000) | ((CONCAT12_8441C(0x14,(u16)(*(u32 *)((u8 *)frame8441C + 0x34)))) & 0xFFFFFF);
  }
  uVar17 = (*(u32 *)((u8 *)frame8441C + 0x30)) & 0xffff;
  if (uVar17 == 3) {
    uVar17 = 0;
    if (*(short *)((*(u32 *)((u8 *)frame8441C + 0x68)) + 0xa4) != 0) goto LAB_08084e0c;
    do {
      uVar17 = uVar17 + 1;
      if (2 < uVar17) goto LAB_08084e28;
    } while (*(short *)((*(u32 *)((u8 *)frame8441C + 0x68)) + uVar17 * 4 + 0xa4) == 0);
  }
  else if (uVar17 < 4) {
    if (uVar17 != 2) goto LAB_08084e28;
    uVar17 = 0;
    if (*(short *)((*(u32 *)((u8 *)frame8441C + 0x64)) + 0xb0) != 0) goto LAB_08084e0c;
    do {
      uVar17 = uVar17 + 1;
      if (2 < uVar17) goto LAB_08084e28;
    } while (*(short *)((*(u32 *)((u8 *)frame8441C + 0x64)) + uVar17 * 4 + 0xb0) == 0);
  }
  else if (uVar17 == 4) {
    uVar17 = 0;
    if (*(short *)((*(u32 *)((u8 *)frame8441C + 0x6C)) + 0xa4) != 0) {
LAB_08084e0c:
      (*(u32 *)((u8 *)frame8441C + 0x34)) = (u32)(*(u16 *)((u8 *)&(*(u32 *)((u8 *)frame8441C + 0x34)) + 2)) << 0x10;
      goto LAB_08084e28;
    }
    do {
      uVar17 = uVar17 + 1;
      if (2 < uVar17) goto LAB_08084e28;
    } while (*(short *)((*(u32 *)((u8 *)frame8441C + 0x6C)) + uVar17 * 4 + 0xa4) == 0);
  }
  else {
    if (uVar17 != 5) goto LAB_08084e28;
    uVar17 = 0;
    if (*(short *)((*(u32 *)((u8 *)frame8441C + 0x70)) + 0xa4) != 0) goto LAB_08084e0c;
    do {
      uVar17 = uVar17 + 1;
      if (2 < uVar17) goto LAB_08084e28;
    } while (*(short *)((*(u32 *)((u8 *)frame8441C + 0x70)) + uVar17 * 4 + 0xa4) == 0);
  }
  (*(u32 *)((u8 *)frame8441C + 0x34)) = (u32)(*(u16 *)((u8 *)&(*(u32 *)((u8 *)frame8441C + 0x34)) + 2)) << 0x10;
LAB_08084e28:
  *(*(u32 * *)((u8 *)frame8441C + 0x60)) = (*(u32 *)((u8 *)frame8441C + 0x30));
  (*(u32 * *)((u8 *)frame8441C + 0x60))[1] = (*(u32 *)((u8 *)frame8441C + 0x34));
  (*(u32 * *)((u8 *)frame8441C + 0x60))[2] = (*(u32 *)((u8 *)frame8441C + 0x38));
  (*(u32 * *)((u8 *)frame8441C + 0x60))[3] = (*(u32 *)((u8 *)frame8441C + 0x3C));
  iVar4 = sub_0805AE94((*(u16 * *)((u8 *)frame8441C + 0x5C)));
  iVar6 = sub_0805AE94((*(u16 * *)((u8 *)frame8441C + 0x7C)));
  iVar7 = sub_0805AE94((*(u16 * *)((u8 *)frame8441C + 0x74)));
  uVar3 = sub_0805AE94((*(u32 * *)((u8 *)frame8441C + 0x60)));
  dVar8 = ((u32)&gUnk_030034E0);
  iVar20 = *(int *)((u32)&gUnk_030034E0);
  iVar4 = div8441C(iVar4 + iVar6 + iVar7 + *(int *)((*(u16 * *)((u8 *)frame8441C + 0x5C)) + 0x1a),10);
  iVar7 = *(int *)(iVar20 + 0x6c);
  iVar6 = div8441C(uVar3,10);
  iVar6 = (iVar7 + iVar4) - iVar6;
  *(int *)(iVar20 + 0x6c) = iVar6;
  if (iVar6 < 0) {
    *(u32 *)(iVar20 + 0x6c) = 0;
  }
  if ((int)0xFFFF < *(int *)(*(int *)dVar8 + 0x6c)) {
    *(u32 *)(*(int *)dVar8 + 0x6c) = 0xFFFF;
  }
  return;

#undef CONCAT13_8441C
#undef CONCAT22_8441C
#undef CONCAT12_8441C
#undef mod8441C
#undef div8441C
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0808441C);
#endif
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
void sub_0808516C(void)
{
    u32 i;
    while ((*(u32 *)(gUnk_03006440 + 0x620) = sub_08001494(0xC8)) == 0)
        sub_080003F0();
    for (i = 0; i <= 4; i++)
        *(u32 *)(*(u32 *)(gUnk_03006440 + 0x620) + i * 0x28 + 8) = 0;
}
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
void sub_0808528C(void) {
    *(s16 *)0x04000012 = 4;
    sub_08001108(0x9F);
    sub_0800115C((s32) &sub_080852AC);
}
void sub_080852AC(void)
{
    *(u16 *)0x04000012 = 0;
    sub_08001108(0x88);
    sub_0800115C((s32)sub_0808528C);
}
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
void sub_0808536C(void)
{
    while ((M2C_FIELD(gUnk_03006440, s32 *, 0x620) = sub_08001494(0x28)) == 0)
        sub_080003F0();
}
void sub_08085398(void)
{
    u32 value = *(u32 *)(gUnk_03006440 + 0x620);
    u32 result;
    while ((result = sub_08000470(value)) != 0)
        sub_080003F0();
    sub_08001538(*(u32 *)(gUnk_03006440 + 0x620));
    *(u32 *)(gUnk_03006440 + 0x620) = result;
}
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
void sub_080854A0(void) {
    sub_08001538(gUnk_03006440);
    gUnk_03006440 = 0;
}
void sub_080854B8(void)
{
    u32 zero = 0;
    u8 *p;
    CpuSet(&zero, (void *)(gUnk_03006440 + 0xF4), 0x05000004);
    p = (u8 *)gUnk_03006440;
    *(u32 *)(p + 0x1C) = 0x16;
    *(u32 *)(p + 0x20) = 0;
}
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
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080855D4);
void sub_080867E0(void) {
    sub_08001538(gUnk_03006478);
    gUnk_03006478 = 0;
}
struct Task6450b { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern struct Task6450b gTask6450b asm("gUnk_03006450");
extern u32 gW03006478 asm("gUnk_03006478");
extern void sub_08000274_2(void *, u32) asm("sub_08000274");
extern void sub_080867E0();
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
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08086860);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08087788);
#ifdef NONMATCHING
void sub_080878AC(u32 arg0, s32 *state)
{
    u16 entry = (u16)arg0;
    u16 width = (u16)(arg0 >> 16);
    u16 *buffer = (u16 *)sub_08001494(width << 5);
    u16 *source = (u16 *)((u8 *)&gUnk_03001F40 + (entry << 5));
    u32 i;
    u32 count = width << 4;
    u16 factor = 0x64;
    u16 angle = 0;
    s32 timer = 10;
    u32 phase = 0;
    s32 base = 0x3D0;

    CpuSet(source, buffer, (width << 3) | 0x04000000);
    while (*state != 0) {
        u16 *dst = (u16 *)((u8 *)&gUnk_03001F40 + (entry << 5));
        for (i = 0; i < count; i++) {
            u16 color = buffer[i];
            u16 red = (((color & 0x1F) * factor) >> 10) & 0x1F;
            u16 green = ((((color >> 5) & 0x1F) * factor) >> 10) & 0x1F;
            u16 blue = ((((color >> 10) & 0x1F) * factor) >> 10) & 0x1F;

            dst[i] = (color & 0x8000) | red | (green << 5) | (blue << 10);
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
        timer--;
        if (timer < 0) {
            phase = gUnk_03002344 % 3;
            timer = sub_080008C8() % (phase == 2 ? 0x1E : 0xA);
        }
    }
    sub_08001538((s32)buffer);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080878AC);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08087A5C);
