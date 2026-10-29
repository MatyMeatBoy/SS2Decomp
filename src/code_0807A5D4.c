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
// Inventory drawing pass. Draft: structure follows the ASM, regalloc still differs.
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

void sub_08080A78(void)
{
    u32 i;
    u32 end, first;
    u8 *item;
    s32 mode;
    u32 r;
    u32 next;
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
        s16 *t;
        first = (u16)(F16(INV, 0x68) / 3) * 3; i = first;
        end = first + 3;
        item = INV + (first * 0x10 + 0x70);
        for (t = gUnk_084ECBBC; i < end; t += 2, i++, item += 0x10) {
            mode = 8;
            if (sub_0805AE34(item) == 0)
                mode = 10;
            if (F32(MGR, 0x1C) == 1 && F32(MGR, 0x20) == i) {
                if (gUnk_03002344 & 1)
                    sub_0805FC80(t[0] + 0x38, t[1] + 0x10, item, mode);
            } else if (F16(INV, 0x68) == i) {
                sub_0805FC80(t[0] + 0x38, t[1] - (*(s32 *)(MGR + 0x74) - 0x10), item, mode);
            } else {
                sub_0805FC80(t[0] + 0x38, t[1] + 0x10, item, mode);
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
        first = (u16)(F16(INV, 0x54) / 3) * 3; i = first;
        end = first + 3;
        for (; i < end; i = next) {
            u16 id = ((u16 *)(INV + 0x56))[i];
            s32 found;
            u32 count;
            u32 k;
            next = i + 1;
            if (id == 0)
                continue;
            found = sub_0805D548(id - 1);
            if (found != -1) {
                u8 *c;
                u32 j;
                item = INV + found * 0x10 + 0x150;
                count = 0;
                j = 0;
                c = INV + 0x150;
                for (; j <= 0x18; j++, c += 0x10) {
                    if (F16(c, 0) == 1 && F16(item, 2) == F16(c, 2))
                        count++;
                }
            } else {
                count = 0;
                item = (u8 *)buf;
                buf[0] = 1;
                buf[1] = ((u16 *)(INV + 0x56))[i] - 1;
            }
            k = end - next;
            sub_0805FAC0(gUnk_084ECBB0[k * 2] + 0xB8, gUnk_084ECBB2[k * 2] + 0x18, count, 0);
            sub_0805FC80(gUnk_084ECBB0[k * 2] + 0xB8, gUnk_084ECBB2[k * 2] + 0x10, item, 0);
        }
    }

    if (F32(MGR, 0) == 3) {
        for (i = 0; i <= 0xB; i++) {
            item = MGR + (i * 0x10 + 0x104);
            ITEM_MODE(item, mode, L1)
            if (F32(MGR, 0x1C) == 0xB && F32(MGR, 0x20) == i) {
                if (gUnk_03002344 & 1)
                    sub_0805FC80((i % 3) * 0x10 + 0xB8, (i / 3) * 0x10 + 0xB8, item, mode);
            } else
                sub_0805FC80((i % 3) * 0x10 + 0xB8, (i / 3) * 0x10 + 0x20, item, mode);
        }
    } else if (F32(MGR, 0) == 4) {
        item = MGR + F32(MGR, 0x44) * 0xF0 + 0x104;
        for (i = 0; i <= 0xE; i++, item += 0x10) {
            ITEM_MODE(item, mode, L2)
            if (F32(MGR, 0x1C) == 0xD && F32(MGR, 0x20) == i) {
                if (gUnk_03002344 & 1)
                    sub_0805FC80((i % 3) * 0x10 + 0xB8, (i / 3) * 0x10 + 0x20, item, mode);
            } else
                sub_0805FC80((i % 3) * 0x10 + 0xB8, (i / 3) * 0x10 + 0x20, item, mode);
        }
    } else if (F32(MGR, 0) == 6) {
        item = MGR + 0x104;
        for (i = 0; i <= 2; i++, item += 0x10) {
            ITEM_MODE(item, mode, L3)
            if (F32(MGR, 0x1C) == 0x10 && F32(MGR, 0x20) == i) {
                if (gUnk_03002344 & 1)
                    sub_0805FC80((i % 3) * 0x10 + 0xB8, 0x30, item, mode);
            } else
                sub_0805FC80((i % 3) * 0x10 + 0xB8, 0x30, item, mode);
        }
        item = MGR + 0x134;
        ITEM_MODE(item, mode, L4)
        if (F32(MGR, 0x1C) == 0x11) {
            if (gUnk_03002344 & 1)
                sub_0805FC80(0xC8, F32(MGR, 0x54) + 0x60, item, mode);
        } else
            sub_0805FC80(0xC8, (gUnk_080B9704[F32(MGR, 0x5C)] >> 5) + F32(MGR, 0x54) + 0x60, item, mode);
    }
}
#undef MGR
#undef INV
#undef F32
#undef F16
#undef ITEM_MODE
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08080A78);
#endif
#ifdef NONMATCHING
extern u8 *manager811 asm("gUnk_03006440");
extern u8 *bank811 asm("gUnk_030034E0");
void sub_080811E0(u8 *arg0) {
 struct Half811 { s16 first; u16 second; };
 s16 sp4[16];
 s16 sp24[24];
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
   if (*((u8 *)var_r1+8)!=0) {sub_0801BA74(arg0,0,sp4,sp24,(s32)(bank811+0x30));break;}
  default:
   sub_0801BA74(arg0,(s32)*(u8 **)(manager811+0xf0),sp4,sp24,(s32)(bank811+0x30));break;
  }
 } else {
  switch(*(u16 *)(manager811+0xf4)) {
  case 1:
   sub_0801BA74(arg0,0,sp4,sp24,(s32)(bank811+0x30));
   var_r0=*(u16 *)(manager811+0xf6);
   switch(var_r0) {case 8:sp4[0]++;break;case 9:sp4[1]++;break;case 10:sp4[3]++;break;case 11:sp4[2]++;break;}
   break;
  case 2:case 3:case 4:case 5:
   if(manager811[0xfc]!=0) {sub_0801BA74(arg0,0,sp4,sp24,(s32)(bank811+0x30));break;}
  default:
   sub_0801BA74(arg0,(s32)(manager811+0xf4),sp4,sp24,(s32)(bank811+0x30));break;
  }
 }
draw:
    temp_r1 = sp24[0];
    temp_r0_3 = *(s16 *)(arg0+0x58);
    var_r3 = 2;
    if ((s32) temp_r1 <= (s32) temp_r0_3) {
        var_r3 = 0;
        if ((s32) temp_r1 < (s32) temp_r0_3) {
            var_r3 = 1;
        }
    }
    sub_0805FB7C(6, 0xE, sp24[0], var_r3);
    temp_r0_4 = (s16) ((struct Half811 *)sp24)->second;
    temp_r1_2 = *(s16 *)(arg0+0x5A);
    var_r3_2 = 2;
    if ((s32) temp_r0_4 <= (s32) temp_r1_2) {
        var_r3_2 = 0;
        if ((s32) temp_r0_4 < (s32) temp_r1_2) {
            var_r3_2 = 1;
        }
    }
    sub_0805FB7C(6, 0xF, (s16) ((struct Half811 *)sp24)->second, var_r3_2);
    temp_r1_3 = sp24[18];
    temp_r0_5 = *(s16 *)(arg0+0x7C);
    var_r3_3 = 2;
    if ((s32) temp_r1_3 <= (s32) temp_r0_5) {
        var_r3_3 = 0;
        if ((s32) temp_r1_3 < (s32) temp_r0_5) {
            var_r3_3 = 1;
        }
    }
    sub_0805FB7C(0x16, 0xE, sp24[18], var_r3_3);
    temp_r1_4 = sp24[19];
    temp_r0_6 = *(s16 *)(arg0+0x7E);
    var_r3_4 = 2;
    if ((s32) temp_r1_4 <= (s32) temp_r0_6) {
        var_r3_4 = 0;
        if ((s32) temp_r1_4 < (s32) temp_r0_6) {
            var_r3_4 = 1;
        }
    }
    sub_0805FB7C(0x16, 0xF, sp24[19], var_r3_4);
    temp_r1_5 = sp24[20];
    temp_r0_7 = *(s16 *)(arg0+0x80);
    var_r3_5 = 2;
    if ((s32) temp_r1_5 <= (s32) temp_r0_7) {
        var_r3_5 = 0;
        if ((s32) temp_r1_5 < (s32) temp_r0_7) {
            var_r3_5 = 1;
        }
    }
    sub_0805FB7C(0x16, 0x10, sp24[20], var_r3_5);
    temp_r1_6 = sp24[21];
    temp_r0_8 = *(s16 *)(arg0+0x82);
    var_r3_6 = 2;
    if ((s32) temp_r1_6 <= (s32) temp_r0_8) {
        var_r3_6 = 0;
        if ((s32) temp_r1_6 < (s32) temp_r0_8) {
            var_r3_6 = 1;
        }
    }
    sub_0805FB7C(0x1D, 0xE, sp24[21], var_r3_6);
    temp_r1_7 = sp24[22];
    temp_r0_9 = *(s16 *)(arg0+0x84);
    var_r3_7 = 2;
    if ((s32) temp_r1_7 <= (s32) temp_r0_9) {
        var_r3_7 = 0;
        if ((s32) temp_r1_7 < (s32) temp_r0_9) {
            var_r3_7 = 1;
        }
    }
    sub_0805FB7C(0x1D, 0xF, sp24[22], var_r3_7);
    temp_r1_8 = sp24[23];
    temp_r0_10 = *(s16 *)(arg0+0x86);
    var_r3_8 = 2;
    if ((s32) temp_r1_8 <= (s32) temp_r0_10) {
        var_r3_8 = 0;
        if ((s32) temp_r1_8 < (s32) temp_r0_10) {
            var_r3_8 = 1;
        }
    }
    sub_0805FB7C(0x1D, 0x10, sp24[23], var_r3_8);
    temp_r1_9 = (s16) sp4[0];
    temp_r0_11 = *(s16 *)(arg0+0x38);
    var_r3_9 = 2;
    if ((s32) temp_r1_9 <= (s32) temp_r0_11) {
        var_r3_9 = 0;
        if ((s32) temp_r1_9 < (s32) temp_r0_11) {
            var_r3_9 = 1;
        }
    }
    sub_0805FB7C(0xF, 0xE, (s16) sp4[0], var_r3_9);
    temp_r1_10 = (s16) sp4[3];
    temp_r0_12 = *(s16 *)(arg0+0x3E);
    var_r3_10 = 2;
    if ((s32) temp_r1_10 <= (s32) temp_r0_12) {
        var_r3_10 = 0;
        if ((s32) temp_r1_10 < (s32) temp_r0_12) {
            var_r3_10 = 1;
        }
    }
    sub_0805FB7C(6, 0x10, (s16) sp4[3], var_r3_10);
    temp_r1_11 = (s16) sp4[2];
    temp_r0_13 = *(s16 *)(arg0+0x3C);
    var_r3_11 = 2;
    if ((s32) temp_r1_11 <= (s32) temp_r0_13) {
        var_r3_11 = 0;
        if ((s32) temp_r1_11 < (s32) temp_r0_13) {
            var_r3_11 = 1;
        }
    }
    sub_0805FB7C(0xF, 0x10, (s16) sp4[2], var_r3_11);
    temp_r1_12 = (s16) sp4[1];
    temp_r0_14 = *(s16 *)(arg0+0x3A);
    var_r3_12 = 2;
    if ((s32) temp_r1_12 <= (s32) temp_r0_14) {
        var_r3_12 = 0;
        if ((s32) temp_r1_12 < (s32) temp_r0_14) {
            var_r3_12 = 1;
        }
    }
    sub_0805FB7C(0xF, 0xF, (s16) sp4[1], var_r3_12);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080811E0);
#endif
#ifdef NONMATCHING
extern s32 decimalDivisors8518[] asm("gUnk_084EBD5C");
void sub_08081518(u16 arg0, u16 arg1, u8 *arg2, u16 arg3, s32 arg4)
{
    u8 text[0x20];
    u32 number;
    u16 offset;
    u32 started;
    u8 *out;
    s32 *divisor;
    u16 digit;
    s32 *num;
    u8 token;
    u16 length = 0;
    u8 *source = arg2 + 2;

    goto checkToken;
processToken:
    if (token == 0xF7) {
        number = arg3;
        divisor = decimalDivisors8518;
        out = text + length;
        started = 0;
        digit = 0;
        num = (s32 *)&number;

        source++;
        do {
            *out = sub_08000498(num, *divisor) + 0x41;
            if (started || *out != 0x41 || digit == 5) {
                out++;
                started = 1;
                length++;
            }
            digit++;
            divisor++;
        } while (digit <= 5);
    } else {
        text[length++] = token;
        source++;
    }
checkToken:
    if ((token = *source) != 0xFD)
        goto processToken;

    text[length] = 0xFD;
    if (arg4 & 1)
        offset = -((u32)sub_0801A638(text) >> 1);
    else
        offset = 0;
    sub_0801A3D0(text, (u16)(arg0 + offset), arg1);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08081518);
#endif
#ifdef NONMATCHING
extern u8 text85[] asm("gUnk_03000128");
extern u8 table85[] asm("gUnk_08479140");
extern u32 divisors85[] asm("gUnk_084EBD5C");
/* Original 08082832/08082910 advances each detail record by four bytes. */
struct DetailEntry815F4 { u16 kind, value; };
/* These callers pass sub_0801DE60() in r2. */
u16 local815F4_sub_0801E378(s32, u16, u8) asm("sub_0801E378");
u16 local815F4_sub_0801E3D8(s32, u16, u8) asm("sub_0801E3D8");
void sub_080815F4(void *arg0) {
    union { u32 word; u8 bytes[0x20C]; } scratch;
    s32 sp20C;
    s32 sp210;
    s32 sp214;
    s32 sp218;
    s32 sp21C;
    s32 sp220;
    s32 sp224;
    s32 sp228;
    s32 sp22C;
    s32 sp230;
    s32 sp234;
    s32 sp238;
    void *sp23C;
    s32 sp240;
    s32 sp244;
    s32 sp248;
    s32 sp24C;
    struct DetailEntry815F4 *sp250;
    s32 sp254;
    u32 sp258;
    u32 sp25C;
    s32 sp260;
    s32 sp264;
    s32 sp268;
    s32 sp26C;
    s32 sp270;
    s32 sp274;
    s32 sp278;
    s32 sp27C;
    s32 sp280;
    s32 sp284;
    s32 sp288;
    s32 sp28C;
    u8 *sp290;
    u8 *sp294;
    u8 *sp298;
    u8 *sp29C;
    u8 *sp2A0;
    u8 *sp2A4;
    u8 *sp2A8;
    s16 var_r3_13;
    s16 var_r3_14;
    s16 var_r3_15;
    s32 *temp_r6;
    s32 *temp_r6_2;
    s32 temp_r0_10;
    s32 temp_r0_20;
    s32 temp_r0_22;
    s32 temp_r0_24;
    s32 temp_r0_26;
    s32 temp_r0_27;
    s32 temp_r0_29;
    s32 temp_r0_2;
    s32 temp_r0_30;
    s32 temp_r0_31;
    s32 temp_r0_32;
    s32 temp_r2;
    s32 temp_r2_11;
    s32 temp_r2_13;
    s32 temp_r2_15;
    s32 temp_r2_17;
    s32 temp_r2_19;
    s32 temp_r2_21;
    s32 temp_r2_23;
    s32 temp_r2_25;
    s32 temp_r2_26;
    s32 temp_r2_3;
    s32 temp_r2_5;
    s32 temp_r2_7;
    s32 temp_r2_9;
    s32 temp_r4;
    s32 temp_r4_10;
    s32 temp_r4_2;
    s32 temp_r4_3;
    s32 temp_r4_4;
    s32 temp_r4_5;
    s32 temp_r4_6;
    s32 temp_r4_7;
    s32 temp_r4_8;
    s32 temp_r4_9;
    s32 var_r0;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r2_16;
    s32 var_r2_17;
    s32 var_r2_9;
    s32 var_r4_15;
    s32 var_r4_4;
    s32 var_r5;
    s32 var_r5_11;
    s32 var_r5_8;
    s32 var_r6_7;
    s32 var_r7_10;
    s32 var_r7_18;
    s32 var_r7_19;
    s32 var_r7_2;
    s32 var_r7_4;
    s32 var_r7_5;
    s32 var_r7_9;
    s32 var_r8;
    s32 var_r8_10;
    s32 var_r8_13;
    s32 var_r8_16;
    s32 var_r8_21;
    s32 var_r8_22;
    s32 var_r8_4;
    s32 var_r8_9;
    s32 var_r7_17;
    struct DetailEntry815F4 *temp_r1_15;
    struct DetailEntry815F4 *var_r1_2;
    u16 temp_r0_17;
    u16 temp_r0_18;
    u16 temp_r0_19;
    u16 temp_r0_21;
    u16 temp_r0_23;
    u16 temp_r0_25;
    u16 temp_r0_28;
    u16 temp_r0_3;
    u16 temp_r1;
    u16 temp_r1_10;
    u16 temp_r1_11;
    u16 temp_r1_12;
    u16 temp_r1_13;
    u16 temp_r1_14;
    u16 temp_r1_2;
    u16 temp_r1_3;
    u16 temp_r1_4;
    u16 temp_r1_5;
    u16 temp_r1_6;
    u16 temp_r1_9;
    u16 temp_r4_11;
    u16 var_r0_2;
    u16 var_r5_10;
    u16 var_r5_12;
    u16 var_r5_13;
    u16 var_r5_2;
    u16 var_r5_3;
    u16 var_r5_4;
    u16 var_r5_5;
    u16 var_r5_6;
    u16 var_r5_7;
    u16 var_r5_9;
    u16 var_r6_10;
    u16 var_r6_12;
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
    u32 *var_r6_2;
    u32 *var_r6_4;
    u32 *var_r7_11;
    u32 *var_r7_12;
    u32 *var_r7_13;
    u32 *var_r7_14;
    u32 *var_r7_15;
    u32 *var_r7_16;
    u32 *var_r7_3;
    u32 *var_r7_6;
    u32 *var_r7_7;
    u32 *var_r7_8;
    u32 temp_r0;
    u32 var_r2_4;
    u32 var_r4_16;
    u32 var_r7;
    u32 var_r8_17;
    u32 var_r8_18;
    u32 var_r8_19;
    u32 var_r8_20;
    u32 var_r9;
    u8 *temp_r4_12;
    u8 *temp_r4_13;
    u8 *temp_r5_10;
    u8 *temp_r5_11;
    u8 *temp_r5_2;
    u8 *temp_r5_4;
    u8 *temp_r5_7;
    u8 *temp_r5_8;
    u8 *var_r2;
    u8 *var_r2_10;
    u8 *var_r2_11;
    u8 *var_r2_12;
    u8 *var_r2_13;
    u8 *var_r2_14;
    u8 *var_r2_15;
    u8 *var_r2_2;
    u8 *var_r2_3;
    u8 *var_r2_5;
    u8 *var_r2_6;
    u8 *var_r2_7;
    u8 *var_r2_8;
    u8 *var_r3;
    u8 *var_r3_10;
    u8 *var_r3_11;
    u8 *var_r3_12;
    u8 *var_r3_2;
    u8 *var_r3_3;
    u8 *var_r3_4;
    u8 *var_r3_5;
    u8 *var_r3_6;
    u8 *var_r3_7;
    u8 *var_r3_8;
    u8 *var_r3_9;
    u8 *var_r4;
    u8 *var_r4_10;
    u8 *var_r4_11;
    u8 *var_r4_12;
    u8 *var_r4_13;
    u8 *var_r4_14;
    u8 *var_r4_2;
    u8 *var_r4_3;
    u8 *var_r4_5;
    u8 *var_r4_6;
    u8 *var_r4_7;
    u8 *var_r4_8;
    u8 *var_r4_9;
    u8 *var_r6;
    u8 *var_r6_11;
    u8 *var_r6_13;
    u8 *var_r6_14;
    u8 *var_r6_15;
    u8 *var_r6_3;
    u8 *var_r6_5;
    u8 *var_r6_6;
    u8 *var_r6_8;
    u8 *var_r6_9;
    u8 *var_r9_2;
    u8 *var_r9_3;
    u8 temp_r0_11;
    u8 temp_r0_12;
    u8 temp_r0_13;
    u8 temp_r0_14;
    u8 temp_r0_15;
    u8 temp_r0_16;
    u8 temp_r0_4;
    u8 temp_r0_5;
    u8 temp_r0_6;
    u8 temp_r0_7;
    u8 temp_r0_8;
    u8 temp_r0_9;
    u8 temp_r1_16;
    u8 temp_r1_17;
    u8 temp_r1_7;
    u8 temp_r1_8;
    u8 temp_r2_10;
    u8 temp_r2_12;
    u8 temp_r2_14;
    u8 temp_r2_16;
    u8 temp_r2_18;
    u8 temp_r2_20;
    u8 temp_r2_22;
    u8 temp_r2_24;
    u8 temp_r2_2;
    u8 temp_r2_4;
    u8 temp_r2_6;
    u8 temp_r2_8;
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
        var_r6 = sub_08007290((*((u16 *)((u8 *)(temp_r0_2) + (0xAA)))) | 0x140000) + 2;
        (*((u8 *)((u8 *)(text85) + (0)))) = sp254;
        (*((u8 *)((u8 *)(text85) + (0x20)))) = (u8) sp254;
        var_r7 = 0;
        var_r4 = text85;
        var_r5 = 0;
        var_r9 = 0xB0000;
loop_4:
        var_r8 = 0;
        var_r1 = *var_r6;
        if (var_r1 != 0xFD) {
            var_r2 = &(text85)[var_r5];
loop_6:
            *var_r2 = var_r1;
            if (var_r1 == 0xFF) {
                var_r6 += 1;
            } else {
                var_r2 += 1;
                var_r8 += 1;
                var_r6 += 1;
                var_r1 = *var_r6;
                if (var_r1 != 0xFD) {
                    goto loop_6;
                }
            }
        }
        (text85)[var_r8 + var_r5] = 0xFD;
        if (var_r8 == 0) {

        } else {
            sub_0801A3D0(var_r4, (u16) (0xF - ((u32) sub_0801A638(var_r4) >> 1)), var_r9 >> 0x10);
            if (*var_r6 == 0xFD) {

            } else {
                var_r4 += 0x20;
                var_r5 += 0x20;
                var_r9 += 0x20000;
                var_r7 += 1;
                if (var_r7 > 1U) {

                } else {
                    goto loop_4;
                }
            }
        }
block_46:
        temp_r0_3 = (*((u16 *)((u8 *)(sp23C) + (0))));
        switch (temp_r0_3) {                        /* switch 2; irregular */
        case 3:                                     /* switch 2 */
            if ((*((u8 *)((u8 *)(sp23C) + (8)))) != 0) {
block_232:
                sp254 = 0;
            } else {
                temp_r4 = gUnk_030034E0 + 0x30;
                temp_r5 = (*((u8 *)((u8 *)(sp244) + (0x9B))));
                sp25C = (u32) local815F4_sub_0801E378(temp_r4, (u16) temp_r5, sub_0801DE60());
                sp25C = (u32) (u16) (sp25C - (*((u8 *)((u8 *)(sp244) + (0x9B)))));
                temp_r2 = sub_08007290(0x140329);
                sp278 = (*((u8 *)((u8 *)(sp244) + (0x9B)))) + (*((u8 *)((u8 *)(sp23C) + (6))));
                var_r3 = temp_r2 + 2;
                var_r8_2 = 0;
                sp294 = sp244 + 0xA0;
                if ((*((u8 *)((u8 *)(temp_r2) + (2)))) != 0xFD) {
                    do {
                        temp_r2_2 = *var_r3;
                        if (temp_r2_2 == 0xF7) {
                            sp224 = sp278;
                            var_r6_2 = divisors85;
                            var_r4_2 = &(text85)[var_r8_2];
                            var_r7_2 = 0;
                            var_r5_2 = 0;
                            var_r2_2 = var_r3 + 1;
                            do {
                                sp2A4 = var_r2_2;
                                temp_r0_4 = sub_08000498(&sp224, *var_r6_2) + 0x41;
                                *var_r4_2 = temp_r0_4;
                                var_r2_2 = sp2A4;
                                if ((var_r7_2 != 0) || (temp_r0_4 != 0x41) || (var_r5_2 == 5)) {
                                    var_r4_2 += 1;
                                    var_r7_2 = 1;
                                    var_r8_2 += 1;
                                }
                                var_r5_2 += 1;
                                var_r6_2 += 1;
                            } while ((u32) var_r5_2 <= 5U);
                        } else {
                            temp_r1 = var_r8_2;
                            var_r8_2 = temp_r1 + 1;
                            (text85)[temp_r1] = temp_r2_2;
                            var_r2_2 = var_r3 + 1;
                        }
                        var_r3 = var_r2_2;
                    } while (*var_r3 != 0xFD);
                }
                (text85)[var_r8_2] = 0xFD;
                var_r6_3 = &(text85)[var_r8_2 - 1];
                (*((u8 *)((u8 *)(var_r6_3) + (0)))) = 0x51;
                if (sp25C != 0) {
                    (*((s8 *)((u8 *)(var_r6_3) + (1)))) = 0x51;
                    var_r6_3 = var_r6_3 + 1 + 1;
                    *var_r6_3 = 0x51;
                }
                temp_r2_3 = sub_08007290(0x14032A);
                sp27C = (s32) *sp294;
                temp_r5_2 = var_r6_3 + 1;
                var_r3_2 = temp_r2_3 + 2;
                var_r8_3 = 0;
                if ((*((u8 *)((u8 *)(temp_r2_3) + (2)))) != 0xFD) {
                    do {
                        temp_r2_4 = *var_r3_2;
                        if (temp_r2_4 == 0xF7) {
                            sp228 = sp27C;
                            var_r7_3 = divisors85;
                            var_r4_3 = &temp_r5_2[var_r8_3];
                            var_r2_3 = NULL;
                            var_r5_3 = 0;
                            var_r3_2 += 1;
                            do {
                                sp2A4 = var_r2_3;
                                sp2A8 = var_r3_2;
                                temp_r0_5 = sub_08000498(&sp228, *var_r7_3) + 0x41;
                                *var_r4_3 = temp_r0_5;
                                var_r2_3 = sp2A4;
                                var_r3_2 = sp2A8;
                                if ((var_r2_3 != NULL) || (temp_r0_5 != 0x41) || (var_r5_3 == 5)) {
                                    var_r4_3 += 1;
                                    var_r2_3 = (u8 *)1;
                                    var_r8_3 += 1;
                                }
                                var_r5_3 += 1;
                                var_r7_3 += 1;
                            } while ((u32) var_r5_3 <= 5U);
                        } else {
                            temp_r1_2 = var_r8_3;
                            var_r8_3 = temp_r1_2 + 1;
                            temp_r5_2[temp_r1_2] = temp_r2_4;
                            var_r3_2 += 1;
                        }
                    } while (*var_r3_2 != 0xFD);
                }
                temp_r5_2[var_r8_3] = 0xFD;
                sub_0801A3D0(text85, (u16) (0xF - ((u32) sub_0801A638(text85) >> 1)), 5U);
                if (sp25C == 0) {

                } else {
                    var_r8_4 = var_r6_3 - text85;
                    if (((sp25C / 100U) << 0x10) != 0) {
block_228:
                        var_r8_4 += 1;
                        var_r7_4 = 3;
                    } else if (((sp25C / 10U) << 0x10) == 0) {
block_226:
                        var_r8_4 -= 1;
                        var_r7_4 = 1;
                    } else {
block_227:
                        var_r7_4 = 2;
                    }
block_229:
                    var_r4_4 = var_r8_4 + 0xF;
                    var_r0 = var_r4_4 - ((u32) sub_0801A638(text85) >> 1);
                    var_r2_4 = sp25C;
block_230:
                    sub_0805FB7C(var_r0, 6, var_r2_4, 2);
                    temp_r6 = sub_080653CC();
                    temp_r4_2 = ((var_r4_4 - ((u32) sub_0801A638(text85) >> 1)) - var_r7_4) * 8;
                    scratch.word = 0;
                    sub_08065230(temp_r6, temp_r4_2, 0x38, 0x1AU, scratch.word);
                }
            }
            break;
        case 4:                                     /* switch 2 */
            if ((*((u8 *)((u8 *)(sp23C) + (8)))) != 0) {
                goto block_232;
            }
            temp_r4_3 = gUnk_030034E0 + 0x30;
            temp_r5_3 = (*((u8 *)((u8 *)(sp248) + (0x9B))));
            sp25C = (u32) local815F4_sub_0801E378(temp_r4_3, (u16) temp_r5_3, sub_0801DE60());
            sp25C = (u32) (u16) (sp25C - (*((u8 *)((u8 *)(sp248) + (0x9B)))));
            temp_r2_5 = sub_08007290(0x140329);
            sp280 = (*((u8 *)((u8 *)(sp248) + (0x9B)))) + (*((u8 *)((u8 *)(sp23C) + (6))));
            var_r3_3 = temp_r2_5 + 2;
            var_r8_5 = 0;
            sp298 = sp248 + 0xA0;
            if ((*((u8 *)((u8 *)(temp_r2_5) + (2)))) != 0xFD) {
                do {
                    temp_r2_6 = *var_r3_3;
                    if (temp_r2_6 == 0xF7) {
                        sp22C = sp280;
                        var_r6_4 = divisors85;
                        var_r4_5 = &(text85)[var_r8_5];
                        var_r7_5 = 0;
                        var_r5_4 = 0;
                        var_r2_5 = var_r3_3 + 1;
                        do {
                            sp2A4 = var_r2_5;
                            temp_r0_6 = sub_08000498(&sp22C, *var_r6_4) + 0x41;
                            *var_r4_5 = temp_r0_6;
                            var_r2_5 = sp2A4;
                            if ((var_r7_5 != 0) || (temp_r0_6 != 0x41) || (var_r5_4 == 5)) {
                                var_r4_5 += 1;
                                var_r7_5 = 1;
                                var_r8_5 += 1;
                            }
                            var_r5_4 += 1;
                            var_r6_4 += 1;
                        } while ((u32) var_r5_4 <= 5U);
                    } else {
                        temp_r1_3 = var_r8_5;
                        var_r8_5 = temp_r1_3 + 1;
                        (text85)[temp_r1_3] = temp_r2_6;
                        var_r2_5 = var_r3_3 + 1;
                    }
                    var_r3_3 = var_r2_5;
                } while (*var_r3_3 != 0xFD);
            }
            (text85)[var_r8_5] = 0xFD;
            var_r6_5 = &(text85)[var_r8_5 - 1];
            (*((u8 *)((u8 *)(var_r6_5) + (0)))) = 0x51;
            if (sp25C != 0) {
                (*((s8 *)((u8 *)(var_r6_5) + (1)))) = 0x51;
                var_r6_5 = var_r6_5 + 1 + 1;
                *var_r6_5 = 0x51;
            }
            temp_r2_7 = sub_08007290(0x14032A);
            sp284 = (s32) *sp298;
            temp_r5_4 = var_r6_5 + 1;
            var_r3_4 = temp_r2_7 + 2;
            var_r8_6 = 0;
            if ((*((u8 *)((u8 *)(temp_r2_7) + (2)))) != 0xFD) {
                do {
                    temp_r2_8 = *var_r3_4;
                    if (temp_r2_8 == 0xF7) {
                        sp230 = sp284;
                        var_r7_6 = divisors85;
                        var_r4_6 = &temp_r5_4[var_r8_6];
                        var_r2_6 = NULL;
                        var_r5_5 = 0;
                        var_r3_4 += 1;
                        do {
                            sp2A4 = var_r2_6;
                            sp2A8 = var_r3_4;
                            temp_r0_7 = sub_08000498(&sp230, *var_r7_6) + 0x41;
                            *var_r4_6 = temp_r0_7;
                            var_r2_6 = sp2A4;
                            var_r3_4 = sp2A8;
                            if ((var_r2_6 != NULL) || (temp_r0_7 != 0x41) || (var_r5_5 == 5)) {
                                var_r4_6 += 1;
                                var_r2_6 = (u8 *)1;
                                var_r8_6 += 1;
                            }
                            var_r5_5 += 1;
                            var_r7_6 += 1;
                        } while ((u32) var_r5_5 <= 5U);
                    } else {
                        temp_r1_4 = var_r8_6;
                        var_r8_6 = temp_r1_4 + 1;
                        temp_r5_4[temp_r1_4] = temp_r2_8;
                        var_r3_4 += 1;
                    }
                } while (*var_r3_4 != 0xFD);
            }
            temp_r5_4[var_r8_6] = 0xFD;
            sub_0801A3D0(text85, (u16) (0xF - ((u32) sub_0801A638(text85) >> 1)), 5U);
            if (sp25C == 0) {

            } else {
                var_r8_4 = var_r6_5 - text85;
                if (((sp25C / 100U) << 0x10) == 0) {
                    if (((sp25C / 10U) << 0x10) == 0) {
                        goto block_226;
                    }
                    goto block_227;
                }
                goto block_228;
                goto block_229;
            }
            break;
        case 5:                                     /* switch 2 */
            if ((*((u8 *)((u8 *)(sp23C) + (8)))) != 0) {
                goto block_232;
            }
            if ((*((u8 *)((u8 *)(sp24C) + (0xA0)))) != 0) {
                temp_r4_4 = gUnk_030034E0 + 0x30;
                var_r6_6 = sp24C + 0x9B;
                temp_r5_5 = (*((u8 *)((u8 *)(sp24C) + (0x9B))));
                var_r0_2 = local815F4_sub_0801E3D8(temp_r4_4, (u16) temp_r5_5, sub_0801DE60());
            } else {
                temp_r4_5 = gUnk_030034E0 + 0x30;
                var_r6_6 = sp24C + 0x9B;
                temp_r5_6 = (*((u8 *)((u8 *)(sp24C) + (0x9B))));
                var_r0_2 = local815F4_sub_0801E378(temp_r4_5, (u16) temp_r5_6, sub_0801DE60());
            }
            sp25C = (u32) var_r0_2;
            sp25C = (u32) (u16) (sp25C - *var_r6_6);
            temp_r2_9 = sub_08007290(0x140329);
            sp288 = *var_r6_6 + (*((u8 *)((u8 *)(sp23C) + (6))));
            var_r3_5 = temp_r2_9 + 2;
            var_r8_7 = 0;
            sp29C = sp24C + 0xA1;
            if ((*((u8 *)((u8 *)(temp_r2_9) + (2)))) != 0xFD) {
                do {
                    temp_r2_10 = *var_r3_5;
                    if (temp_r2_10 == 0xF7) {
                        sp234 = sp288;
                        var_r7_7 = divisors85;
                        var_r4_7 = &(text85)[var_r8_7];
                        var_r6_7 = 0;
                        var_r5_6 = 0;
                        var_r2_7 = var_r3_5 + 1;
                        do {
                            sp2A4 = var_r2_7;
                            temp_r0_8 = sub_08000498(&sp234, *var_r7_7) + 0x41;
                            *var_r4_7 = temp_r0_8;
                            var_r2_7 = sp2A4;
                            if ((var_r6_7 != 0) || (temp_r0_8 != 0x41) || (var_r5_6 == 5)) {
                                var_r4_7 += 1;
                                var_r6_7 = 1;
                                var_r8_7 += 1;
                            }
                            var_r5_6 += 1;
                            var_r7_7 += 1;
                        } while ((u32) var_r5_6 <= 5U);
                    } else {
                        temp_r1_5 = var_r8_7;
                        var_r8_7 = temp_r1_5 + 1;
                        (text85)[temp_r1_5] = temp_r2_10;
                        var_r2_7 = var_r3_5 + 1;
                    }
                    var_r3_5 = var_r2_7;
                } while (*var_r3_5 != 0xFD);
            }
            (text85)[var_r8_7] = 0xFD;
            var_r6_8 = &(text85)[var_r8_7 - 1];
            (*((u8 *)((u8 *)(var_r6_8) + (0)))) = 0x51;
            if (sp25C != 0) {
                (*((s8 *)((u8 *)(var_r6_8) + (1)))) = 0x51;
                var_r6_8 = var_r6_8 + 1 + 1;
                *var_r6_8 = 0x51;
            }
            temp_r2_11 = sub_08007290(0x14032A);
            sp28C = (s32) *sp29C;
            temp_r5_7 = var_r6_8 + 1;
            var_r3_6 = temp_r2_11 + 2;
            var_r8_8 = 0;
            if ((*((u8 *)((u8 *)(temp_r2_11) + (2)))) != 0xFD) {
                do {
                    temp_r2_12 = *var_r3_6;
                    if (temp_r2_12 == 0xF7) {
                        sp238 = sp28C;
                        var_r7_8 = divisors85;
                        var_r4_8 = &temp_r5_7[var_r8_8];
                        var_r2_8 = NULL;
                        var_r5_7 = 0;
                        var_r3_6 += 1;
                        do {
                            sp2A4 = var_r2_8;
                            sp2A8 = var_r3_6;
                            temp_r0_9 = sub_08000498(&sp238, *var_r7_8) + 0x41;
                            *var_r4_8 = temp_r0_9;
                            var_r2_8 = sp2A4;
                            var_r3_6 = sp2A8;
                            if ((var_r2_8 != NULL) || (temp_r0_9 != 0x41) || (var_r5_7 == 5)) {
                                var_r4_8 += 1;
                                var_r2_8 = (u8 *)1;
                                var_r8_8 += 1;
                            }
                            var_r5_7 += 1;
                            var_r7_8 += 1;
                        } while ((u32) var_r5_7 <= 5U);
                    } else {
                        temp_r1_6 = var_r8_8;
                        var_r8_8 = temp_r1_6 + 1;
                        temp_r5_7[temp_r1_6] = temp_r2_12;
                        var_r3_6 += 1;
                    }
                } while (*var_r3_6 != 0xFD);
            }
            temp_r5_7[var_r8_8] = 0xFD;
            sub_0801A3D0(text85, (u16) (0xF - ((u32) sub_0801A638(text85) >> 1)), 5U);
            if (sp25C != 0) {
                var_r8_9 = var_r6_8 - text85;
                if (((sp25C / 100U) << 0x10) == 0) {
                    if (((sp25C / 10U) << 0x10) == 0) {
                        var_r8_9 -= 1;
                        var_r7_9 = 1;
                    } else {
                        var_r7_9 = 2;
                    }
                } else {
                    var_r8_9 += 1;
                    var_r7_9 = 3;
                }
                temp_r4_6 = var_r8_9 + 0xF;
                sub_0805FB7C(temp_r4_6 - ((u32) sub_0801A638(text85) >> 1), 6, sp25C, 2);
                temp_r6_2 = sub_080653CC();
                temp_r4_7 = ((temp_r4_6 - ((u32) sub_0801A638(text85) >> 1)) - var_r7_9) * 8;
                scratch.word = 0;
                sub_08065230(temp_r6_2, temp_r4_7, 0x38, 0x1AU, scratch.word);
            }
            break;
        case 2:                                     /* switch 2 */
            if ((*((u8 *)((u8 *)(sp23C) + (8)))) != 0) {
                sp254 = 0;
            } else {
                temp_r1_7 = (*((u8 *)((u8 *)(sp240) + (0x9B))));
                sp290 = sp240 + 0x9B;
                if (temp_r1_7 != 9) {
                    if (temp_r1_7 == 0xA) {
                        temp_r0_10 = sub_08007290(var_sl | 0x140000);
                        var_r6_9 = temp_r0_10 + 2;
                        var_r8_10 = 0;
                        var_r7_10 = 0;
                        if ((*((u8 *)((u8 *)(temp_r0_10) + (2)))) != 0xFD) {
                            var_r2_9 = 0;
                            do {
                                temp_r1_8 = *var_r6_9;
                                if (temp_r1_8 == 0xFF) {
                                    (text85)[var_r7_10 + var_r2_9] = 0xFD;
                                    var_r2_9 += 0x20;
                                    var_r8_10 += 1;
                                    var_r7_10 = 0;
                                } else {
                                    (text85)[var_r7_10 + var_r2_9] = temp_r1_8;
                                    var_r7_10 += 1;
                                }
                                var_r6_9 += 1;
                            } while (*var_r6_9 != 0xFD);
                        }
                        (text85)[var_r7_10 + (var_r8_10 << 5)] = 0xFD;
                        sub_0801A3D0(text85, (u16) (0xF - ((u32) sub_0801A638(text85) >> 1)), 7U);
                        temp_r5_8 = text85 + 0x20;
                        sub_0801A3D0(temp_r5_8, (u16) (0xF - ((u32) sub_0801A638(temp_r5_8) >> 1)), 9U);
                    } else {
                        temp_r4_8 = gUnk_030034E0 + 0x30;
                        temp_r6_3 = (*((u8 *)((u8 *)(sp240) + (0x9C))));
                        sp258 = (u16) sub_0801B58C(sp240, temp_r4_8, temp_r6_3, sub_0801DE60());
                        sp258 = (u32) (u16) (sp258 - (*((u8 *)((u8 *)(sp240) + (0x9C)))));
                        if (!(0x8000 & sp258)) {

                        } else {
                            sp258 = 0;
                        }
                        temp_r2_13 = sub_08007290(0x140328);
                        sp26C = (*((u8 *)((u8 *)(sp240) + (0x9C)))) + (*((u8 *)((u8 *)(sp23C) + (6))));
                        var_r3_7 = temp_r2_13 + 2;
                        var_r8_11 = 0;
                        if ((*((u8 *)((u8 *)(temp_r2_13) + (2)))) != 0xFD) {
                            do {
                                temp_r2_14 = *var_r3_7;
                                if (temp_r2_14 == 0xF7) {
                                    sp218 = sp26C;
                                    var_r7_11 = divisors85;
                                    var_r4_9 = &(text85)[var_r8_11];
                                    var_r5_8 = 0;
                                    var_r6_10 = 0;
                                    var_r2_10 = var_r3_7 + 1;
                                    do {
                                        sp2A4 = var_r2_10;
                                        temp_r0_11 = sub_08000498(&sp218, *var_r7_11) + 0x41;
                                        *var_r4_9 = temp_r0_11;
                                        var_r2_10 = sp2A4;
                                        if ((var_r5_8 != 0) || (temp_r0_11 != 0x41) || (var_r6_10 == 5)) {
                                            var_r4_9 += 1;
                                            var_r5_8 = 1;
                                            var_r8_11 += 1;
                                        }
                                        var_r6_10 += 1;
                                        var_r7_11 += 1;
                                    } while ((u32) var_r6_10 <= 5U);
                                } else {
                                    temp_r1_9 = var_r8_11;
                                    var_r8_11 = temp_r1_9 + 1;
                                    (text85)[temp_r1_9] = temp_r2_14;
                                    var_r2_10 = var_r3_7 + 1;
                                }
                                var_r3_7 = var_r2_10;
                            } while (*var_r3_7 != 0xFD);
                        }
                        (text85)[var_r8_11] = 0xFD;
                        var_r6_11 = &(text85)[var_r8_11 - 1];
                        (*((u8 *)((u8 *)(var_r6_11) + (0)))) = 0x51;
                        if (sp258 != 0) {
                            (*((s8 *)((u8 *)(var_r6_11) + (1)))) = 0x51;
                            var_r6_11 = var_r6_11 + 1 + 1;
                            *var_r6_11 = 0x51;
                        }
                        if ((*((u16 *)((u8 *)(sp240) + (0xAC)))) == 7) {
                            temp_r2_15 = sub_08007290(((*sp290 * 2) + 0x32A) | 0x140000);
                            sp270 = (s32) (*((u16 *)((u8 *)(sp240) + (0xAC))));
                            var_r9_2 = var_r6_11 + 1;
                            var_r3_8 = temp_r2_15 + 2;
                            var_r8_12 = 0;
                            if ((*((u8 *)((u8 *)(temp_r2_15) + (2)))) == 0xFD) {

                            } else {
                                do {
                                    temp_r2_16 = *var_r3_8;
                                    if (temp_r2_16 == 0xF7) {
                                        sp21C = sp270;
                                        var_r7_12 = divisors85;
                                        var_r4_10 = &var_r9_2[var_r8_12];
                                        var_r2_11 = NULL;
                                        var_r5_9 = 0;
                                        var_r3_8 += 1;
                                        do {
                                            sp2A4 = var_r2_11;
                                            sp2A8 = var_r3_8;
                                            temp_r0_12 = sub_08000498(&sp21C, *var_r7_12) + 0x41;
                                            *var_r4_10 = temp_r0_12;
                                            var_r2_11 = sp2A4;
                                            var_r3_8 = sp2A8;
                                            if ((var_r2_11 != NULL) || (temp_r0_12 != 0x41) || (var_r5_9 == 5)) {
                                                var_r4_10 += 1;
                                                var_r2_11 = (u8 *)1;
                                                var_r8_12 += 1;
                                            }
                                            var_r5_9 += 1;
                                            var_r7_12 += 1;
                                        } while ((u32) var_r5_9 <= 5U);
                                    } else {
                                        temp_r1_10 = var_r8_12;
                                        var_r8_12 = temp_r1_10 + 1;
                                        var_r9_2[temp_r1_10] = temp_r2_16;
                                        var_r3_8 += 1;
                                    }
                                } while (*var_r3_8 != 0xFD);
                            }
                        } else {
                            temp_r2_17 = sub_08007290(((*sp290 * 2) + 0x329) | 0x140000);
                            sp274 = (s32) (*((u16 *)((u8 *)(sp240) + (0xAC))));
                            var_r9_2 = var_r6_11 + 1;
                            var_r3_9 = temp_r2_17 + 2;
                            var_r8_12 = 0;
                            if ((*((u8 *)((u8 *)(temp_r2_17) + (2)))) != 0xFD) {
                                do {
                                    temp_r2_18 = *var_r3_9;
                                    if (temp_r2_18 == 0xF7) {
                                        sp220 = sp274;
                                        var_r7_13 = divisors85;
                                        var_r4_11 = &var_r9_2[var_r8_12];
                                        var_r2_12 = NULL;
                                        var_r5_10 = 0;
                                        var_r3_9 += 1;
                                        do {
                                            sp2A4 = var_r2_12;
                                            sp2A8 = var_r3_9;
                                            temp_r0_13 = sub_08000498(&sp220, *var_r7_13) + 0x41;
                                            *var_r4_11 = temp_r0_13;
                                            var_r2_12 = sp2A4;
                                            var_r3_9 = sp2A8;
                                            if ((var_r2_12 != NULL) || (temp_r0_13 != 0x41) || (var_r5_10 == 5)) {
                                                var_r4_11 += 1;
                                                var_r2_12 = (u8 *)1;
                                                var_r8_12 += 1;
                                            }
                                            var_r5_10 += 1;
                                            var_r7_13 += 1;
                                        } while ((u32) var_r5_10 <= 5U);
                                    } else {
                                        temp_r1_11 = var_r8_12;
                                        var_r8_12 = temp_r1_11 + 1;
                                        var_r9_2[temp_r1_11] = temp_r2_18;
                                        var_r3_9 += 1;
                                    }
                                } while (*var_r3_9 != 0xFD);
                            }
                        }
                        var_r9_2[var_r8_12] = 0xFD;
                        sub_0801A3D0(text85, (u16) (0xF - ((u32) sub_0801A638(text85) >> 1)), 5U);
                        if (sp258 == 0) {

                        } else {
                            var_r8_13 = var_r6_11 - text85;
                            if (((sp258 / 100U) << 0x10) == 0) {
                                if (((sp258 / 10U) << 0x10) == 0) {
                                    var_r8_13 -= 1;
                                    var_r7_4 = 1;
                                } else {
                                    var_r7_4 = 2;
                                }
                            } else {
                                var_r8_13 += 1;
                                var_r7_4 = 3;
                            }
                            var_r4_4 = var_r8_13 + 0xF;
                            var_r0 = var_r4_4 - ((u32) sub_0801A638(text85) >> 1);
                            var_r2_4 = sp258;
                            goto block_230;
                        }
                    }
                } else {
                    temp_r4_9 = gUnk_030034E0 + 0x30;
                    temp_r6_4 = (*((u8 *)((u8 *)(sp240) + (0x9C))));
                    sp258 = (u16) sub_0801B58C(sp240, temp_r4_9, temp_r6_4, sub_0801DE60());
                    sp258 = (u32) (u16) (sp258 - (*((u8 *)((u8 *)(sp240) + (0x9C)))));
                    temp_r2_19 = sub_08007290(0x140328);
                    sp260 = (*((u8 *)((u8 *)(sp240) + (0x9C)))) + (*((u8 *)((u8 *)(sp23C) + (6))));
                    var_r3_10 = temp_r2_19 + 2;
                    var_r8_14 = 0;
                    sp2A0 = sp240 + 0xA7;
                    if ((*((u8 *)((u8 *)(temp_r2_19) + (2)))) != 0xFD) {
                        do {
                            temp_r2_20 = *var_r3_10;
                            if (temp_r2_20 == 0xF7) {
                                sp20C = sp260;
                                var_r7_14 = divisors85;
                                var_r4_12 = &(text85)[var_r8_14];
                                var_r5_11 = 0;
                                var_r6_12 = 0;
                                var_r2_13 = var_r3_10 + 1;
                                do {
                                    sp2A4 = var_r2_13;
                                    temp_r0_14 = sub_08000498(&sp20C, *var_r7_14) + 0x41;
                                    *var_r4_12 = temp_r0_14;
                                    var_r2_13 = sp2A4;
                                    if ((var_r5_11 != 0) || (temp_r0_14 != 0x41) || (var_r6_12 == 5)) {
                                        var_r4_12 += 1;
                                        var_r5_11 = 1;
                                        var_r8_14 += 1;
                                    }
                                    var_r6_12 += 1;
                                    var_r7_14 += 1;
                                } while ((u32) var_r6_12 <= 5U);
                            } else {
                                temp_r1_12 = var_r8_14;
                                var_r8_14 = temp_r1_12 + 1;
                                (text85)[temp_r1_12] = temp_r2_20;
                                var_r2_13 = var_r3_10 + 1;
                            }
                            var_r3_10 = var_r2_13;
                        } while (*var_r3_10 != 0xFD);
                    }
                    (text85)[var_r8_14] = 0xFD;
                    var_r6_13 = &(text85)[var_r8_14 - 1];
                    (*((u8 *)((u8 *)(var_r6_13) + (0)))) = 0x51;
                    if (sp258 != 0) {
                        (*((s8 *)((u8 *)(var_r6_13) + (1)))) = 0x51;
                        var_r6_13 = var_r6_13 + 1 + 1;
                        *var_r6_13 = 0x51;
                    }
                    if ((*((u16 *)((u8 *)(sp240) + (0xAC)))) == 7) {
                        temp_r2_21 = sub_08007290(((*sp2A0 * 2) + 0x33A) | 0x140000);
                        sp264 = (s32) (*((u16 *)((u8 *)(sp240) + (0xAC))));
                        var_r9_3 = var_r6_13 + 1;
                        var_r3_11 = temp_r2_21 + 2;
                        var_r8_15 = 0;
                        if ((*((u8 *)((u8 *)(temp_r2_21) + (2)))) == 0xFD) {

                        } else {
                            do {
                                temp_r2_22 = *var_r3_11;
                                if (temp_r2_22 == 0xF7) {
                                    sp210 = sp264;
                                    var_r7_15 = divisors85;
                                    var_r4_13 = &var_r9_3[var_r8_15];
                                    var_r2_14 = NULL;
                                    var_r5_12 = 0;
                                    var_r3_11 += 1;
                                    do {
                                        sp2A4 = var_r2_14;
                                        sp2A8 = var_r3_11;
                                        temp_r0_15 = sub_08000498(&sp210, *var_r7_15) + 0x41;
                                        *var_r4_13 = temp_r0_15;
                                        var_r2_14 = sp2A4;
                                        var_r3_11 = sp2A8;
                                        if ((var_r2_14 != NULL) || (temp_r0_15 != 0x41) || (var_r5_12 == 5)) {
                                            var_r4_13 += 1;
                                            var_r2_14 = (u8 *)1;
                                            var_r8_15 += 1;
                                        }
                                        var_r5_12 += 1;
                                        var_r7_15 += 1;
                                    } while ((u32) var_r5_12 <= 5U);
                                } else {
                                    temp_r1_13 = var_r8_15;
                                    var_r8_15 = temp_r1_13 + 1;
                                    var_r9_3[temp_r1_13] = temp_r2_22;
                                    var_r3_11 += 1;
                                }
                            } while (*var_r3_11 != 0xFD);
                        }
                    } else {
                        temp_r2_23 = sub_08007290(((*sp2A0 * 2) + 0x339) | 0x140000);
                        sp268 = (s32) (*((u16 *)((u8 *)(sp240) + (0xAC))));
                        var_r9_3 = var_r6_13 + 1;
                        var_r3_12 = temp_r2_23 + 2;
                        var_r8_15 = 0;
                        if ((*((u8 *)((u8 *)(temp_r2_23) + (2)))) != 0xFD) {
                            do {
                                temp_r2_24 = *var_r3_12;
                                if (temp_r2_24 == 0xF7) {
                                    sp214 = sp268;
                                    var_r7_16 = divisors85;
                                    var_r4_14 = &var_r9_3[var_r8_15];
                                    var_r2_15 = NULL;
                                    var_r5_13 = 0;
                                    var_r3_12 += 1;
                                    do {
                                        sp2A4 = var_r2_15;
                                        sp2A8 = var_r3_12;
                                        temp_r0_16 = sub_08000498(&sp214, *var_r7_16) + 0x41;
                                        *var_r4_14 = temp_r0_16;
                                        var_r2_15 = sp2A4;
                                        var_r3_12 = sp2A8;
                                        if ((var_r2_15 != NULL) || (temp_r0_16 != 0x41) || (var_r5_13 == 5)) {
                                            var_r4_14 += 1;
                                            var_r2_15 = (u8 *)1;
                                            var_r8_15 += 1;
                                        }
                                        var_r5_13 += 1;
                                        var_r7_16 += 1;
                                    } while ((u32) var_r5_13 <= 5U);
                                } else {
                                    temp_r1_14 = var_r8_15;
                                    var_r8_15 = temp_r1_14 + 1;
                                    var_r9_3[temp_r1_14] = temp_r2_24;
                                    var_r3_12 += 1;
                                }
                            } while (*var_r3_12 != 0xFD);
                        }
                    }
                    var_r9_3[var_r8_15] = 0xFD;
                    sub_0801A3D0(text85, (u16) (0xF - ((u32) sub_0801A638(text85) >> 1)), 5U);
                    if (sp258 == 0) {

                    } else {
                        var_r8_16 = (var_r6_13 - text85) * 2;
                        if (((sp258 / 100U) << 0x10) == 0) {
                            if (((sp258 / 10U) << 0x10) == 0) {
                                var_r8_16 -= 1;
                                var_r7_4 = 1;
                            } else {
                                var_r7_4 = 2;
                            }
                        } else {
                            var_r8_16 += 1;
                            var_r7_4 = 3;
                        }
                        var_r4_4 = var_r8_16 + 0xF;
                        var_r0 = var_r4_4 - ((u32) sub_0801A638(text85) >> 1);
                        var_r2_4 = sp258;
                        goto block_230;
                    }
                }
            }
            break;
        }
        var_r7_17 = 0;
        var_r8_17 = 0;
        do {
            if ((sp254 >> var_r8_17) & 1) {
                temp_r4_10 = 0x34 * var_r7_17;
                temp_r5_9 = scratch.bytes + temp_r4_10 + 4;
                scratch.word = 0;
                sub_08065158(temp_r5_9, *(u32 *)(table85 + 0x58 * var_r8_17), 1, -1, scratch.word);
                sub_08000AF0(var_r7_17 + 0x10, *(u32 *)(scratch.bytes + 0x10 + temp_r4_10), 1U);
                (*((s8 *)((u8 *)(temp_r5_9) + (0x1C)))) = var_r7_17;
                var_r7_17 += 1;
            }
            var_r8_17 += 1;
        } while (var_r8_17 <= 9U);
        var_r8_18 = 0;
        if ((u32) var_r7_17 > 0U) {
            var_r4_15 = (0 - (var_r7_17 * 0xC)) + 0x84;
            do {
                scratch.word = 0;
                sub_08065230((0x34 * var_r8_18) + scratch.bytes + 4, var_r4_15, 0x81, 0U, scratch.word);
                var_r4_15 += 0x18;
                var_r8_18 += 1;
            } while (var_r8_18 < (u32) var_r7_17);
        }
        temp_r4_11 = (*((u16 *)((u8 *)(sp23C) + (0))));
        switch ((s32) temp_r4_11) {                 /* switch 3; irregular */
        case 1:                                     /* switch 3 */
            temp_r0_17 = (sp250->kind);
            if (temp_r0_17 == 0) {
                return;
            }
            temp_r2_25 = sub_08007290((temp_r0_17 + 0x314) | 0x140000);
            scratch.word = (u32) temp_r4_11;
            sub_08081518(0xF, 7U, temp_r2_25, (u16) (sp250->value), scratch.word);
            return;
        case 10:                                    /* switch 3 */
            sub_0805FFBC(0xF, 6, sp23C, 0x80000000);
            return;
        default:                                    /* switch 3 */
            if (sp254 == 0) {
                temp_r4_12 = sub_08007290(0x140365) + 2;
                sub_0801A3D0(temp_r4_12, (u16) (0xF - ((u32) sub_0801A638(temp_r4_12) >> 1)), 9U);
            } else {
                var_r4_16 = 0;
                var_r8_19 = 0;
                if (sp250 == NULL) {
                    return;
                }
                var_r1_2 = sp250;
loop_290:
                temp_r0_18 = var_r1_2->kind;
                if ((temp_r0_18 != 0) && (temp_r0_18 != 0x29)) {
                    var_r4_16 += 1;
                }
                var_r1_2 += 1;
                var_r8_19 += 1;
                if ((var_r8_19 <= 2U) && (sp250 != NULL)) {
                    goto loop_290;
                }
                var_r8_20 = 0;
                if (sp250 != NULL) {
loop_296:
                    temp_r0_19 = (sp250->kind);
                    if ((temp_r0_19 != 0) && (temp_r0_19 != 0x29)) {
                        if ((sp250->value) & 0x8000) {
                            var_r0_3 = ((sp250->kind) * 2) + 0x2C4;
                        } else {
                            var_r0_3 = ((sp250->kind) * 2) + 0x2C3;
                        }
                        temp_r2_26 = sub_08007290(var_r0_3 | 0x140000);
                        switch (var_r4_16) {        /* switch 4; irregular */
                        case 1:                     /* switch 4 */
                            var_r3_13 = (s16) (sp250->value);
                            if ((s32) var_r3_13 < 0) {
                                var_r3_13 = 0 - var_r3_13;
                            }
                            scratch.word = var_r4_16;
                            sub_08081518(0xF, 9U, temp_r2_26, (u16) var_r3_13, scratch.word);
                            break;
                        case 2:                     /* switch 4 */
                            var_r3_14 = (s16) (sp250->value);
                            if ((s32) var_r3_14 < 0) {
                                var_r3_14 = 0 - var_r3_14;
                            }
                            scratch.word = 1;
                            sub_08081518(0xF, (u32) ((var_r8_20 << 0x11) + 0x80000) >> 0x10, temp_r2_26, (u16) var_r3_14, scratch.word);
                            break;
                        case 3:                     /* switch 4 */
                            var_r3_15 = (s16) (sp250->value);
                            if ((s32) var_r3_15 < 0) {
                                var_r3_15 = 0 - var_r3_15;
                            }
                            scratch.word = 1;
                            sub_08081518(0xF, (u32) ((var_r8_20 << 0x11) + 0x70000) >> 0x10, temp_r2_26, (u16) var_r3_15, scratch.word);
                            break;
                        }
                    }
                    temp_r1_15 = sp250 + 1;
                    sp250 = temp_r1_15;
                    var_r8_20 += 1;
                    if (var_r8_20 <= 2U) {
                        if (temp_r1_15 == NULL) {
                            return;
                        }
                        goto loop_296;
                    }
                } else {
                    return;
                }
            }
            break;
        }
        break;
    case 1:                                         /* switch 1 */
        temp_r0_20 = sub_08007290((*((u16 *)((u8 *)(sp23C) + (2)))) | 0xB0000);
        sp240 = temp_r0_20;
        var_sl = (*((u16 *)((u8 *)(temp_r0_20) + (0xC0))));
        sp254 = (s32) (*((u16 *)((u8 *)(temp_r0_20) + (0xAE))));
        temp_r0_21 = (*((u16 *)((u8 *)(sp23C) + (4))));
        if (temp_r0_21 != 0) {
            var_r0_4 = sub_08007290((temp_r0_21 - 1) | 0x130000);
block_30:
            sp250 = var_r0_4 + 0xA0;
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
            var_r0_4 = sub_08007290((temp_r0_23 - 1) | 0x130000);
            goto block_30;
        }
        sp250 = sp244 + 0xA4;
        goto block_46;
    case 3:                                         /* switch 1 */
        temp_r0_24 = sub_08007290((*((u16 *)((u8 *)(sp23C) + (2)))) | 0xD0000);
        sp248 = temp_r0_24;
        var_sl = (*((u16 *)((u8 *)(temp_r0_24) + (0xB2))));
        sp254 = (s32) (*((u16 *)((u8 *)(temp_r0_24) + (0xA2))));
        temp_r0_25 = (*((u16 *)((u8 *)(sp23C) + (4))));
        if (temp_r0_25 != 0) {
            var_r0_4 = sub_08007290((temp_r0_25 - 1) | 0x130000);
            goto block_30;
        }
        var_r0_5 = sp248;
block_28:
        sp250 = var_r0_5 + 0xA4;
        goto block_46;
    case 6:                                         /* switch 1 */
        temp_r0_26 = sub_08007290((*((u16 *)((u8 *)(sp23C) + (2)))) | 0x110000);
        sp254 = 0xFF;
        sp250 = NULL;
        temp_r4_13 = sub_08007290((*((u16 *)((u8 *)(temp_r0_26) + (0xAA)))) | 0x140000) + 2;
        sub_0801A3D0(temp_r4_13, (u16) (0xF - ((u32) sub_0801A638(temp_r4_13) >> 1)), 7U);
        goto block_46;
    case 4:                                         /* switch 1 */
        temp_r0_27 = sub_08007290((*((u16 *)((u8 *)(sp23C) + (2)))) | 0xE0000);
        sp24C = temp_r0_27;
        var_sl = (*((u16 *)((u8 *)(temp_r0_27) + (0xB2))));
        sp254 = (s32) (*((u16 *)((u8 *)(temp_r0_27) + (0xA2))));
        temp_r0_28 = (*((u16 *)((u8 *)(sp23C) + (4))));
        if (temp_r0_28 != 0) {
            var_r0_4 = sub_08007290((temp_r0_28 - 1) | 0x130000);
            goto block_30;
        }
        var_r0_5 = sp24C;
        goto block_28;
        goto block_46;
    case 5:                                         /* switch 1 */
        var_r0_4 = sub_08007290((*((u16 *)((u8 *)(sp23C) + (2)))) | 0xF0000);
        sp254 = 0xFF;
        goto block_30;
    case 8:                                         /* switch 1 */
        temp_r0_29 = sub_08007290((*((u16 *)((u8 *)(sp23C) + (2)))) | 0x150000);
        sp254 = 0;
        sp250 = NULL;
        temp_r0_30 = sub_08007290((*((s32 *)((u8 *)(temp_r0_29) + (0xA4)))) | 0x140000);
        var_r6_14 = temp_r0_30 + 2;
        var_r8_21 = 0;
        var_r7_18 = 0;
        if ((*((u8 *)((u8 *)(temp_r0_30) + (2)))) != 0xFD) {
            var_r2_16 = 0;
            do {
                temp_r1_16 = *var_r6_14;
                if (temp_r1_16 == 0xFF) {
                    (text85)[var_r7_18 + var_r2_16] = 0xFD;
                    var_r2_16 += 0x20;
                    var_r8_21 += 1;
                    var_r7_18 = 0;
                } else {
                    (text85)[var_r7_18 + var_r2_16] = temp_r1_16;
                    var_r7_18 += 1;
                }
                var_r6_14 += 1;
            } while (*var_r6_14 != 0xFD);
        }
        (text85)[var_r7_18 + (var_r8_21 << 5)] = 0xFD;
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
        temp_r0_32 = sub_08007290((*((u16 *)((u8 *)(temp_r0_31) + (0xA2)))) | 0x140000);
        var_r6_15 = temp_r0_32 + 2;
        var_r8_22 = 0;
        var_r7_19 = 0;
        if ((*((u8 *)((u8 *)(temp_r0_32) + (2)))) != 0xFD) {
            var_r2_17 = 0;
            do {
                temp_r1_17 = *var_r6_15;
                if (temp_r1_17 == 0xFF) {
                    (text85)[var_r7_19 + var_r2_17] = 0xFD;
                    var_r2_17 += 0x20;
                    var_r8_22 += 1;
                    var_r7_19 = 0;
                } else {
                    (text85)[var_r7_19 + var_r2_17] = temp_r1_17;
                    var_r7_19 += 1;
                }
                var_r6_15 += 1;
            } while (*var_r6_15 != 0xFD);
        }
        (text85)[var_r7_19 + (var_r8_22 << 5)] = 0xFD;
        sub_0801A3D0(text85, (u16) (0xF - ((u32) sub_0801A638(text85) >> 1)), 9U);
        temp_r5_11 = text85 + 0x20;
        sub_0801A3D0(temp_r5_11, (u16) (0xF - ((u32) sub_0801A638(temp_r5_11) >> 1)), 0xBU);
        goto block_46;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080815F4);
#endif
struct Icon82960 { u16 unk0; s16 unk2; u32 zero; u8 flag; u8 pad[7]; };
struct Stat82960 { volatile u16 unk0; u16 unk2; };
struct Manager82960 { u8 pad[0x74]; struct { s32 y; s32 pad; } entries[6]; };
struct Record82960 { u16 names[5][31]; u16 items[6]; u16 pad; struct Stat82960 stats[3]; };
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
    asm("" : "+r"(first_byte));
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





#ifdef NONMATCHING
struct Record82BB0 { u16 w0, w2; s32 data[3]; };
struct ManagerRecords82BB0 { u8 pad[0x104]; struct Record82BB0 records[4]; };
union Config82BB0 { u32 word; u16 half[2]; };
struct Stage82BB0 { u8 pad[0x1FA]; u16 value; };
struct Keys82BB0 { u16 x0,x2,x4,x6,x8,xA,xC,xE; };
void sub_08082BB0_u32(u32 arg0) asm("sub_08082BB0");
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
    asm("" : "+r"(var_r8));
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
        asm("" : "+r"(rowzero82BB0));
        *(u32 *)((u8 *)rowzero82BB0 + temp_r2) = 0;
        row82BB0 = (u32 *)((u8 *)row82BB0 + 0x78);
        asm("" : "+r"(row82BB0));
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
        asm("" : "+r"(setup82BB0) : "i"(2));
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
        asm("" : "+r"(mode_offset82BB0), "+r"(mode_index82BB0) : "r"(mode_slot82BB0));
        mode_offset82BB0 += 0x2E0;
        asm("" : "+r"(mode_offset82BB0) : "r"(mode_slot82BB0));
        sub_080852CC(mode_offset82BB0 + (s32)*mode_slot82BB0);
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
                            asm("" : "+r"(resource_word82BB0), "+r"(temp_r4_2));
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
                asm("" : "+r"(fade_y82BB0) : "r"(fade_sprite82BB0), "r"(fade_x82BB0));
                fade_y82BB0 = (fade_y82BB0 >> 5) + *(s32 *)((u8 *)manager82BB0 + 0x54) + 0x60;
                sub_08065230(fade_sprite82BB0, fade_x82BB0, fade_y82BB0, 2U, temp_r5);
                temp_r0_15 = (*(s32 *)((u8 *)(((u8 *)manager82BB0)) + 0x18));
                if (((temp_r0_15 == 0) || (temp_r0_15 == 0x11)) && (temp_r0_15 != 0x12)) {
                    resource_word82BB0 = sub_08007290(0x140185);
                    temp_r4_3 = (u8 *)(resource_word82BB0 + 2);
                    asm("" : "+r"(resource_word82BB0), "+r"(temp_r4_3));
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
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08082BB0);
#endif
void sub_0808381C(u32 index)
{
    /* Empty constraints preserve the original register lifetimes and truncations. */
    u32 descriptorWords[13];
    u8 text[32];
    u8 liveText[32];
    volatile u32 visible;
    register u8 *source asm("r4");
    u8 *manager;
    u16 sourceOffset;
    u16 textLength;
    register u32 dictionaryOffset asm("ip");

    register u32 countdown asm("r6");
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
            if (*(u8 *)((u32)source + ({ s32 offset = sourceOffset + 2; asm("" : "+r"(offset)); offset; })) == 0xFC) {
                u8 *destination;
                u8 *dictionary;
                u32 previous;
                destination = text + textLength++;
                dictionary = (u8 *)gUnk_030034E0;
                asm("" : "+r"(dictionary));
                previous = dictionaryOffset;
                dictionaryOffset = (u16)(previous + 1);
                *destination = dictionary[previous];
                if (dictionary[dictionaryOffset] == 0xFD)
                    sourceOffset++;
            } else {
                text[textLength++] = *({ register u8 *pointer asm("r1") = source + ({ s32 offset = sourceOffset++ + 2; asm("" : "+r"(offset)); offset; }); asm("" : "+r"(pointer)); pointer; });
            }
        } while (*(u8 *)((u32)source + ({ s32 offset = sourceOffset + 2; asm("" : "+r"(offset)); offset; })) != 0xFD);
    }
    text[textLength] = 0xFD;

    if ((s16)countdown > 0) do {
        if (sub_0800CDF8() != 0 || sub_080021A8() != 0)
            goto done;
        if (countdown == 1)
            countdown = 0;
        {
            register s32 scaled asm("r0") = countdown << 16;
            register s32 initial asm("r4") = scaled >> 16;
            asm("" : "+r"(scaled), "+r"(initial));
            amount = initial - (scaled >> 17);
        }
        countdown = (u16)amount;
        sub_08065230(((u8 *)descriptorWords), amount + 0xF0, 0x88, 0, 0);
        sub_080003F0();
    } while (amount > 0);

    {
        register u32 i asm("r5");
        register u32 lastIndex asm("ip");
        register u32 blink asm("r5");
        for (i = 0; i <= (u32)sub_0801A638(text);) {
            if (sub_0800CDF8() != 0 || sub_080021A8() != 0)
                goto done;
            liveText[i] = text[i];
            {
                register u32 next asm("r1") = i + 1;
                liveText[next] = 0xFD;
                asm("" : "+r"(next));
                i = (u16)next;
            }
            sub_08065230(((u8 *)descriptorWords), 0xF0, 0x88, 0, 0);
            x = 0x0F - ((u32)sub_0801A638(text) >> 1);
            sub_0801A3D0(liveText, x, 0x12);
            sub_080003F0();
        }

        {
            register u32 previous asm("r0") = i - 1;
            asm("" : "+r"(previous));
            lastIndex = (u16)previous;
        }
        blink = 0;
        if ((keys8381C & 1) == 0) {

            register u8 *cursor asm("r6");
            u8 *cursorEnd;
            {
                u8 *base = liveText;
                register u32 previous asm("r0");
                asm("" : "+r"(base));
                previous = lastIndex;
                cursor = base + previous;
                cursorEnd = base + (previous + 1);
            }

            for (;;) {
                if (sub_0800CDF8() != 0 || sub_080021A8() != 0)
                    goto done;
                {
                register u32 previousBlink asm("r1") = blink;
                register u32 nextBlink asm("r0") = previousBlink + 1;
                asm("" : "+r"(previousBlink), "+r"(nextBlink));
                blink = (u16)nextBlink;
                if (previousBlink <= 0x1D)
                    visible = ({ register u32 value asm("r1") = 1; asm("" : "+r"(value)); value; });
                else if (blink > 0x1D)
                    visible = ({ register u32 value asm("r0") = 0; asm("" : "+r"(value)); value; });
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
                asm("" : "+r"(liveBase));
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
            register s32 initial asm("r4") = countdown << 16;
            initial >>= 16;
            asm("" : "+r"(initial));
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
void sub_08083AE8(u32 input)

{
    register u32 param_1 asm("r8") = input;
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
  register u32 unaff_r9 asm("r9");
  register u32 unaff_r10 asm("r10");
  u32 in_lr;

  asm("" : "=r"(stack), "=r"(unaff_r9), "=r"(unaff_r10));
  if (gUnk_03003170.curLevel == 0) uVar1 = sub_08057AE8(0x15);
  else uVar1 = 2;
  switch ((s32)uVar1) {
  case 1:
    {
      register u8 *panel asm("r4") = stack + 0x38;
      asm("" : "+r"(panel));
      sub_08065158(panel, 0x500CB, 0, -1, 0);
      sub_08000AF0(0x15, *(u32 *)(panel + 0xC) + 0x1C0, 1);
      unaff_r9 = ({ register u32 value asm("r1") = 0x77; asm("" : "+r"(value)); value; });
      goto setCountdown;
    }
  case 2:
    {
      register u8 *panel asm("r4") = stack + 0x6C;
      asm("" : "+r"(panel));
      sub_08065158(panel, 0x500CA, 0, -1, 0);
      {
      register u32 palette asm("r1") = *(u32 *)(panel + 0xC);
      asm("" : "+r"(palette));
      sub_08000AF0(0x15, palette + ({ register u32 offset asm("r0") = 0x1C0; asm("" : "+r"(offset)); offset; }), 1);
      }
      unaff_r10 = ({ register u32 value asm("r1") = 0x77; asm("" : "+r"(value)); value; });
    }
setCountdown:
    *(u32 *)(stack + 0xC4) = ({ register u32 value asm("r2") = 0x77; asm("" : "+r"(value)); value; });
    break;
  case 0:
    {
      register u8 *middle asm("r6");
      register u8 *right asm("r5");
      sub_08065158(frameStorage83AE8, 0x500CC, 0, -1, 0);
      middle = stack + 0x38;
      asm("" : "+r"(middle));
      sub_08065158(middle, 0x500CB, 0, -1, 0);
      right = stack + 0x6C;
      asm("" : "+r"(right));
      sub_08065158(right, 0x500CA, 0, -1, 0);
      sub_08000AF0(0x14, *(u32 *)(stack + 0x10) + 0x1C0, 1);
      sub_08000AF0(0x15, *(u32 *)(middle + 0xC) + 0x1C0, 1);
      sub_08000AF0(0x1E, *(u32 *)(right + 0xC) + 0x1C0, 1);
      *(u32 *)(stack + 0xC4) = ({ register u32 value asm("r0") = 0x77; asm("" : "+r"(value)); value; });
      unaff_r9 = ({ register u32 value asm("r1") = 0xAE; asm("" : "+r"(value)); value; });
      unaff_r10 = ({ register u32 value asm("r2") = 0x40; asm("" : "+r"(value)); value; });
    }
    break;
  }
  (*(u8 *)((stack + 4) + 0x2A)) = 4;
  (*(u8 *)((stack + 4) + 0x5E)) = 5;
  (*(u32 *)((stack + 4) + 0xBC)) = sub_08007290(({ register u32 *table asm("r1") = gUnk_084ECC04; register u32 index asm("r2"); register u32 *entry asm("r0"); asm("" : "+r"(table)); index = param_1; asm("" : "+r"(index)); entry = (u32 *)((index << 2) + (u32)table); asm("" : "+r"(entry)); *entry; }) | 0x140000);
  *(u32 *)(*(int *)((u32)&gUnk_03006440) + 0x28) = *(u32 *)(*(int *)((u32)&gUnk_03006440) + 0x28) | 2;
  if (({ register u32 raw asm("r1") = *(u32 *)(stack + 0xC4); register s32 scaled asm("r0"); asm("" : "+r"(raw)); scaled = raw << 16; asm("" : "+r"(scaled)); scaled; }) > 0) {
    register u8 *middle asm("r5") = stack + 0x38;
    register u32 paletteOffset asm("r6") = 0x1C0;
    register s32 shiftedCount asm("r4");
    asm("" : "+r"(middle), "+r"(paletteOffset));
    do {
      register s32 zero asm("r2");
      if (sub_0800CDF8() != 0) goto LAB_080841de;
      zero = sub_080021A8();
      asm("" : "+r"(zero) : : "r4");
      if (zero != 0) goto LAB_080841de;
      if (({ register u32 raw asm("r1") = *(u32 *)(stack + 0xC4); register s32 scaled asm("r0"); asm("" : "+r"(raw)); scaled = raw << 16; asm("" : "+r"(scaled)); scaled >> 16; }) == 1) *(u32 *)(stack + 0xC4) = ({ register u32 value asm("r0") = 0; asm("" : "+r"(value)); value; });
      {
        register u32 raw asm("r1") = *(u32 *)(stack + 0xC4);
        register s32 scaled asm("r0");
        register s32 signedValue asm("r1");
        asm("" : "+r"(raw));
        scaled = raw << 16;
        signedValue = scaled >> 16;
        asm("" : "+r"(scaled), "+r"(signedValue));
        signedValue = (u16)(signedValue - (scaled >> 17));
        asm("" : "+r"(signedValue));
        *(u32 *)(stack + 0xC4) = signedValue;
      }
      if (({ register u32 raw asm("r1") = unaff_r9; register s32 scaled asm("r0"); asm("" : "+r"(raw)); scaled = raw << 16; asm("" : "+r"(scaled)); scaled >> 16; }) == 1) unaff_r9 = ({ register u32 value asm("r0") = 0; asm("" : "+r"(value)); value; });
      {
        register u32 raw asm("r1") = unaff_r9;
        register s32 scaled asm("r0");
        register s32 signedValue asm("r1");
        asm("" : "+r"(raw));
        scaled = raw << 16;
        signedValue = scaled >> 16;
        asm("" : "+r"(scaled), "+r"(signedValue));
        signedValue = (u16)(signedValue - (scaled >> 17));
        asm("" : "+r"(signedValue));
        unaff_r9 = signedValue;
      }
      if (({ register u32 raw asm("r1") = unaff_r10; register s32 scaled asm("r0"); asm("" : "+r"(raw)); scaled = raw << 16; asm("" : "+r"(scaled)); scaled >> 16; }) == 1) unaff_r10 = ({ register u32 value asm("r0") = 0; asm("" : "+r"(value)); value; });
      {
        register u32 raw asm("r1") = unaff_r10;
        register s32 scaled asm("r0");
        register s32 signedValue asm("r1");
        asm("" : "+r"(raw));
        scaled = raw << 16;
        signedValue = scaled >> 16;
        asm("" : "+r"(scaled), "+r"(signedValue));
        signedValue = (u16)(signedValue - (scaled >> 17));
        asm("" : "+r"(signedValue));
        unaff_r10 = signedValue;
      }
      {
        register u8 *panel asm("r0");
        register s32 x asm("r1");
        if (uVar1 == 1) goto phase1Middle;
        if (uVar1 > 1) goto phase1Greater;
        if (uVar1 == 0) goto phase1All;
        shiftedCount = ({ register u32 value asm("r2") = *(u32 *)(stack + 0xC4); asm("" : "+r"(value)); value; }) << 16;
        goto phase1Yield;
phase1Greater:
        if (uVar1 == 2) goto phase1Right;
        goto phase1SingleEnd;
phase1Middle:
        x = ({ register u32 raw asm("r0") = unaff_r9; register s32 x asm("r1"); asm("" : "+r"(raw)); x = raw << 16; asm("" : "+r"(x)); x >>= 16; x + 0xB9; });
        *(u32 *)stack = zero;
        asm("" : : "m"(*(u32 *)stack));
        panel = middle;
        goto phase1Single;
phase1Right:
        x = ({ register u32 raw asm("r0") = unaff_r10; register s32 x asm("r1"); asm("" : "+r"(raw)); x = raw << 16; asm("" : "+r"(x)); x >>= 16; x + 0xB9; });
        *(u32 *)stack = zero;
        asm("" : : "m"(*(u32 *)stack));
        panel = stack + 0x6C;
phase1Single:
        sub_08065230(panel, x, 0x88, 0, *(u32 *)stack);
        {
          register u32 palette asm("r1") = *(u32 *)(middle + 0xC);
          register u32 paletteOffset asm("r2");
          asm("" : "+r"(palette));
          paletteOffset = 0x1C0;
          asm("" : "+r"(paletteOffset));
          sub_08000AF0(0x15, palette + paletteOffset, 1);
        }
phase1SingleEnd:
        shiftedCount = ({ register u32 value asm("r0") = *(u32 *)(stack + 0xC4); asm("" : "+r"(value)); value; }) << 16;
        goto phase1Yield;
phase1All:
        {
          register u8 *right asm("r4");
          sub_08000AF0(0x14, *(u32 *)(stack + 0x10) + paletteOffset, 1);
          sub_08000AF0(0x15, *(u32 *)(middle + 0xC) + paletteOffset, 1);
          right = stack + 0x6C;
          asm("" : "+r"(right));
          sub_08000AF0(0x1E, *(u32 *)(right + 0xC) + paletteOffset, 1);
          sub_08065230(right, ({ register u32 raw asm("r2") = unaff_r10; register s32 x asm("r1"); asm("" : "+r"(raw)); x = raw << 16; asm("" : "+r"(x)); x >>= 16; x + 0xF0; }), 0x88, 0, 0);
          sub_08065230(middle, ({ register u32 raw asm("r0") = unaff_r9; register s32 x asm("r1"); asm("" : "+r"(raw)); x = raw << 16; asm("" : "+r"(x)); x >>= 16; x + 0x82; }), 0x88, 0, 0);
          shiftedCount = ({ register u32 value asm("r1") = *(u32 *)(stack + 0xC4); asm("" : "+r"(value)); value; }) << 16;
          sub_08065230(frameStorage83AE8, (shiftedCount >> 16) + 0xB9, 0x88, 0, 0);
        }
      }
phase1Yield:
      sub_080003F0();
    } while (shiftedCount > 0);
  }
  {
    register u32 revealIndex asm("r8");
    register u32 lastIndex asm("r10");
    register u32 blink asm("r8");
    revealIndex = ({ register u32 value asm("r2") = 0; asm("" : "+r"(value)); value; });
    *(u32 *)(stack + 0xCC) = *(u32 *)(stack + 0xC0) + 2;
    while (revealIndex <= (u32)sub_0801A638(*(u8 **)(stack + 0xCC))) {
      register s32 zero asm("r1");
      if (sub_0800CDF8() != 0) goto LAB_080841de;
      zero = sub_080021A8();
      asm("" : "+r"(zero) : : "r4", "r9", "r10");
      if (zero != 0) goto LAB_080841de;
      switch (uVar1) {
      case 1:
        {
          register u8 *middle asm("r4") = stack + 0x38;
          asm("" : "+r"(middle));
          sub_08065230(middle, 0xB9, 0x88, 0, zero);
          { register u32 palette asm("r1") = *(u32 *)(middle + 0xC); register u32 offset asm("r2"); asm("" : "+r"(palette)); offset = 0x1C0; asm("" : "+r"(offset)); palette += offset; sub_08000AF0(0x15, palette, 1); }
        }
        break;
      case 2:
        sub_08065230(stack + 0x6C, 0xB9, 0x88, 0, zero);
        { register u32 palette asm("r1") = *(u32 *)(stack + 0x44); register u32 offset asm("r0"); asm("" : "+r"(palette)); offset = 0x1C0; asm("" : "+r"(offset)); palette += offset; sub_08000AF0(0x15, palette, 1); }
        break;
      case 0:
        {
          register u8 *middle asm("r6");
          register u8 *right asm("r5");
          register u32 paletteOffset asm("r4");
          register u32 palette asm("r1") = *(u32 *)(stack + 0x10);
          asm("" : "+r"(palette));
          paletteOffset = 0x1C0;
          asm("" : "+r"(paletteOffset));
          sub_08000AF0(0x14, palette + paletteOffset, 1);
          middle = stack + 0x38;
          asm("" : "+r"(middle));
          sub_08000AF0(0x15, *(u32 *)(middle + 0xC) + paletteOffset, 1);
          right = stack + 0x6C;
          asm("" : "+r"(right));
          sub_08000AF0(0x1E, *(u32 *)(right + 0xC) + paletteOffset, 1);
          sub_08065230(right, 0xF0, 0x88, 0, 0);
          sub_08065230(middle, 0x82, 0x88, 0, 0);
          sub_08065230(frameStorage83AE8, 0xB9, 0x88, 0, 0);
        }
        break;
      }
      {
        register u8 *buffer asm("r4") = stack + 0xA0;
        register u32 old asm("r2");
        register u8 *destination asm("r1");
        register u32 offset asm("r0");
        register u8 *source asm("r2");
        register u8 *address asm("r0");
        register u32 next asm("r1");
        asm("" : "+r"(buffer));
        old = revealIndex;
        asm("" : "+r"(old));
        destination = buffer + old;
        asm("" : "+r"(destination));
        offset = revealIndex + 2;
        asm("" : "+r"(offset));
        source = *(u8 **)(stack + 0xC0);
        asm("" : "+r"(source));
        address = source + offset;
        asm("" : "+r"(address));
        *destination = *address;
        next = revealIndex + 1;
        buffer[next] = 0xFD;
        asm("" : "+r"(next));
        revealIndex = (u16)next;
        sub_0801A3D0(buffer, (u16)(0xF - ((u32)sub_0801A638(*(u8 **)(stack + 0xCC)) >> 1)), 0x12);
        sub_080003F0();
      }
    }
    {
      register u32 previous asm("r0") = revealIndex - 1;
      asm("" : "+r"(previous));
      lastIndex = (u16)previous;
    }
    blink = ({ register u32 value asm("r0") = 0; asm("" : "+r"(value)); value; });
    if ((keys83AE8 & 1) == 0) {
      register u8 *buffer asm("r9");
      register u8 *middle asm("r5");
      {
        register u8 *base asm("r1") = stack + 0xA0;
        asm("" : "+r"(base));
        buffer = base;
      }
      middle = stack + 0x38;
      asm("" : "+r"(buffer), "+r"(middle));
      do {
        if (sub_0800CDF8() != 0) goto LAB_080841de;
        if (({ register s32 status asm("r0") = sub_080021A8(); asm("" : "+r"(status) : : "r4", "r6"); status; }) != 0) goto LAB_080841de;
        {
          register u32 previous asm("r1") = blink;
          register u32 next asm("r0") = previous + 1;
          asm("" : "+r"(previous), "+r"(next));
          blink = (u16)next;
          if (previous <= 0x1D) *(u32 *)(stack + 0xC8) = ({ register u32 value asm("r2") = 1; asm("" : "+r"(value)); value; });
          else if (({ register u32 value asm("r0") = blink; asm("" : "+r"(value)); value; }) > 0x1D) *(u32 *)(stack + 0xC8) = ({ register u32 value asm("r1") = 0; asm("" : "+r"(value)); value; });
        }
        if (({ register u32 value asm("r2") = blink; asm("" : "+r"(value)); value; }) > 0x28) blink = ({ register u32 value asm("r0") = 0; asm("" : "+r"(value)); value; });
        if (({ register u32 value asm("r1") = *(u32 *)(stack + 0xC8); asm("" : "+r"(value)); value; })) {
          buffer[lastIndex] = 0xA0;
          {
            register u32 next asm("r0") = lastIndex + 1;
            register u8 *end asm("r0");
            register u32 terminator asm("r1");
            asm("" : "+r"(next));
            end = buffer + next;
            asm("" : "+r"(end));
            terminator = 0xFD;
            asm("" : "+r"(terminator));
            *end = terminator;
          }
        } else buffer[lastIndex] = 0xFD;
        {
          register u8 *drawBuffer asm("r6") = frameStorage83AE8 + 0x9C;
          asm("" : "+r"(drawBuffer));
          switch (uVar1) {
          case 1:
            sub_08065230(middle, 0xB9, 0x88, 0, 0);
            { register u32 palette asm("r1") = *(u32 *)(middle + 0xC); register u32 offset asm("r2"); asm("" : "+r"(palette)); offset = 0x1C0; asm("" : "+r"(offset)); palette += offset; sub_08000AF0(0x15, palette, 1); }
            break;
          case 2:
            sub_08065230(frameStorage83AE8 + 0x68, 0xB9, 0x88, 0, 0);
            { register u32 palette asm("r1") = *(u32 *)(middle + 0xC); register u32 offset asm("r0"); asm("" : "+r"(palette)); offset = 0x1C0; asm("" : "+r"(offset)); palette += offset; sub_08000AF0(0x15, palette, 1); }
            break;
          case 0:
            {
              register u8 *right asm("r4");
              { register u32 palette asm("r1") = *(u32 *)(stack + 0x10); register u32 offset asm("r2"); asm("" : "+r"(palette)); offset = 0x1C0; asm("" : "+r"(offset)); palette += offset; sub_08000AF0(0x14, palette, 1); }
              { register u32 palette asm("r1") = *(u32 *)(middle + 0xC); register u32 offset asm("r0"); asm("" : "+r"(palette)); offset = 0x1C0; asm("" : "+r"(offset)); palette += offset; sub_08000AF0(0x15, palette, 1); }
              right = stack + 0x6C;
              asm("" : "+r"(right));
              { register u32 palette asm("r1") = *(u32 *)(right + 0xC); register u32 offset asm("r2"); asm("" : "+r"(palette)); offset = 0x1C0; asm("" : "+r"(offset)); palette += offset; sub_08000AF0(0x1E, palette, 1); }
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
    asm("" : "+r"(zero));
    *(u32 *)(stack + 0xC4) = zero;
    unaff_r9 = zero;
    unaff_r10 = zero;
  }
  sub_0805865C(0xF);
  switch (uVar1) {
  case 1:
    {
      register u8 *panel asm("r6") = stack + 0x38;
      register s32 amount asm("r4");
      asm("" : "+r"(panel));
      do {
        register s32 zero asm("r5");
        if (sub_0800CDF8() != 0) goto LAB_080841de;
        zero = sub_080021A8();
        asm("" : "+r"(zero) : : "r4");
        if (zero != 0) goto LAB_080841de;
        {
          register u32 raw asm("r1") = unaff_r9;
          register s32 value asm("r0");
          register s32 delta asm("r1");
          asm("" : "+r"(raw));
          value = raw << 16;
          value >>= 16;
          asm("" : "+r"(value));
          delta = value - 0x77;
          delta >>= 1;
          asm("" : "+r"(delta));
          value = (u16)(value - delta);
          asm("" : "+r"(value));
          unaff_r9 = value;
        }

        {
          register u32 palette asm("r1") = *(u32 *)(panel + 0xC);
          register u32 paletteOffset asm("r2");
          asm("" : "+r"(palette));
          paletteOffset = 0x1C0;
          asm("" : "+r"(paletteOffset));
          sub_08000AF0(0x15, palette + paletteOffset, 1);
        }
        {
          register u32 raw asm("r0") = unaff_r9;
          asm("" : "+r"(raw));
          amount = raw << 16;
          asm("" : "+r"(amount));
          amount >>= 16;
        }
        sub_08065230(panel, amount + 0xB9, 0x88, 0, zero);
        sub_080003F0();
      } while (amount != 0x77);
    }
    break;
  case 2:
    {
      register u8 *panel asm("r6") = stack + 0x6C;
      register s32 amount asm("r4");
      asm("" : "+r"(panel));
      do {
        register s32 zero asm("r5");
        if (sub_0800CDF8() != 0) goto LAB_080841de;
        zero = sub_080021A8();
        asm("" : "+r"(zero) : : "r4");
        if (zero != 0) goto LAB_080841de;
        {
          register u32 raw asm("r1") = unaff_r10;
          register s32 value asm("r0");
          register s32 delta asm("r1");
          asm("" : "+r"(raw));
          value = raw << 16;
          value >>= 16;
          asm("" : "+r"(value));
          delta = value - 0x77;
          delta >>= 1;
          asm("" : "+r"(delta));
          value = (u16)(value - delta);
          asm("" : "+r"(value));
          unaff_r10 = value;
        }

        {
          register u32 palette asm("r1") = *(u32 *)(panel + 0xC);
          register u32 paletteOffset asm("r2");
          asm("" : "+r"(palette));
          paletteOffset = 0x1C0;
          asm("" : "+r"(paletteOffset));
          sub_08000AF0(0x15, palette + paletteOffset, 1);
        }
        {
          register u32 raw asm("r0") = unaff_r10;
          asm("" : "+r"(raw));
          amount = raw << 16;
          asm("" : "+r"(amount));
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
      register s32 shiftedCount asm("r2");
      register s32 firstCount asm("r4");
      register s32 secondCount asm("r5");
      s32 thirdCount;
      register u8 *middle asm("r6");
      register u8 *right asm("r5");
      if (sub_0800CDF8() != 0) goto LAB_080841de;
      {
        s32 status = sub_080021A8();
        zero = status;
        asm("" : : "r"(zero) : "r4", "r5", "r6");
        if (status != 0) goto LAB_080841de;
      }
      {
        register u32 raw asm("r1") = *(u32 *)(stack + 0xC4);
        register s32 delta asm("r0");
        asm("" : "+r"(raw));
        shiftedCount = raw << 16;
        shiftedCount >>= 16;
        asm("" : "+r"(shiftedCount));
        delta = shiftedCount - 0x77;
        delta >>= 1;
        asm("" : "+r"(delta));
        shiftedCount -= delta;
        asm("" : "+r"(shiftedCount));
        shiftedCount <<= 16;
        asm("" : "+r"(shiftedCount));
      }
        {
          register u32 raw asm("r1") = unaff_r9;
          register s32 value asm("r0");
          register s32 delta asm("r1");
          asm("" : "+r"(raw));
          value = raw << 16;
          value >>= 16;
          asm("" : "+r"(value));
          delta = value - 0xAE;
          delta >>= 1;
          asm("" : "+r"(delta));
          value = (u16)(value - delta);
          asm("" : "+r"(value));
          unaff_r9 = value;
        }
        {
          register u32 raw asm("r1") = unaff_r10;
          register s32 value asm("r0");
          register s32 delta asm("r1");
          asm("" : "+r"(raw));
          value = raw << 16;
          value >>= 16;
          asm("" : "+r"(value));
          delta = value - 0x40;
          delta >>= 1;
          asm("" : "+r"(delta));
          value = (u16)(value - delta);
          asm("" : "+r"(value));
          unaff_r10 = value;
        }
      *(u32 *)(stack + 0xC4) = (u32)shiftedCount >> 16;
      shiftedCount >>= 16;
      {
        register s32 delta asm("r0") = shiftedCount - 0x77;
        if (delta < 0) delta = -delta;
        if (delta == 1) *(u32 *)(stack + 0xC4) = ({ register u32 value asm("r1") = 0x77; asm("" : "+r"(value)); value; });
      }
      {
        register u32 raw asm("r2") = unaff_r9;
        register s32 delta asm("r0");
        asm("" : "+r"(raw));
        delta = raw << 16;
        delta >>= 16;
        asm("" : "+r"(delta));
        delta -= 0xAE;
        if (delta < 0) delta = -delta;
        if (delta == 1) unaff_r9 = ({ register u32 value asm("r0") = 0xAE; asm("" : "+r"(value)); value; });
      }
      {
        register u32 raw asm("r1") = unaff_r10;
        register s32 delta asm("r0");
        asm("" : "+r"(raw));
        delta = raw << 16;
        delta >>= 16;
        asm("" : "+r"(delta));
        delta -= 0x40;
        if (delta < 0) delta = -delta;
        if (delta == 1) unaff_r10 = ({ register u32 value asm("r2") = 0x40; asm("" : "+r"(value)); value; });
      }
      {
        register u32 paletteOffset asm("r4");
        register u32 palette asm("r1") = *(u32 *)(stack + 0x10);
        asm("" : "+r"(palette));
        paletteOffset = 0x1C0;
        asm("" : "+r"(paletteOffset));
        sub_08000AF0(0x14, palette + paletteOffset, 1);
        middle = stack + 0x38;
        asm("" : "+r"(middle));
        sub_08000AF0(0x15, *(u32 *)(middle + 0xC) + paletteOffset, 1);
        right = stack + 0x6C;
        asm("" : "+r"(right));
        sub_08000AF0(0x1E, *(u32 *)(right + 0xC) + paletteOffset, 1);
      }
      {
        register u32 raw asm("r1") = unaff_r10;
        register s32 scaled asm("r0");
        asm("" : "+r"(raw));
        scaled = raw << 16;
        asm("" : "+r"(scaled));
        thirdCount = scaled >> 16;
      }
      {
        register s32 x asm("r1") = thirdCount + 0xF0;
        register u32 stackZero asm("r2");
        asm("" : "+r"(x));
        stackZero = zero;
        asm("" : "+r"(stackZero));
        sub_08065230(right, x, 0x88, 0, stackZero);
      }
      {
        register u32 raw asm("r1") = unaff_r9;
        register s32 scaled asm("r0");
        asm("" : "+r"(raw));
        scaled = raw << 16;
        asm("" : "+r"(scaled));
        secondCount = scaled >> 16;
      }
      {
        register s32 x asm("r1") = secondCount + 0x82;
        register u32 stackZero asm("r2");
        asm("" : "+r"(x));
        stackZero = zero;
        asm("" : "+r"(stackZero));
        sub_08065230(middle, x, 0x88, 0, stackZero);
      }
      {
        register u32 raw asm("r0") = *(u32 *)(stack + 0xC4);
        asm("" : "+r"(raw));
        firstCount = raw << 16;
        firstCount >>= 16;
        asm("" : "+r"(firstCount));
      }
      {
        register s32 x asm("r1") = firstCount + 0xB9;
        register u32 stackZero asm("r2");
        asm("" : "+r"(x));
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
        register u32 d asm("r2");
        register u32 raw asm("r0");
        if (*(const u16 *)(arg0 + 0x02) == 2 &&
            ({
                raw = *(const u16 *)(arg0 + 0x12);
                asm("" : "+r"(raw));
                d = raw;
                asm("" : "+r"(d));
                d;
            }) == 1 && *(const u16 *)(arg0 + 0x22) == 2) return 9;
        if (*(const u16 *)(arg0 + 0x02) == 2 &&
            ({
                raw = d << 16;
                asm("" : "+r"(raw));
                raw;
            }) == 0 && *(const u16 *)(arg0 + 0x22) == 2) return 10;
    }
    if (*(const u16 *)(arg0 + 0x02) == 0 && *(const u16 *)(arg0 + 0x12) == 0 && *(const u16 *)(arg0 + 0x22) == 2) return 11;
    if (*(const u16 *)(arg0 + 0x02) == 1 && *(const u16 *)(arg0 + 0x12) == 1 && *(const u16 *)(arg0 + 0x22) == 0) return 12;
    if (*(const u16 *)(arg0 + 0x02) == 0 && *(const u16 *)(arg0 + 0x12) == 0 && *(const u16 *)(arg0 + 0x22) == 1) return 13;
    if (*(const u16 *)(arg0 + 0x02) == 1 && *(const u16 *)(arg0 + 0x12) == 1 && *(const u16 *)(arg0 + 0x22) == 2) return 14;
    {
        /* Keep the original halfword extensions across the shared tests. */
        register u32 d asm("r2");
        register u32 raw asm("r0");
        if (*(const u16 *)(arg0 + 0x02) == 2 &&
            ({
                raw = *(const u16 *)(arg0 + 0x12);
                asm("" : "+r"(raw));
                d = raw;
                asm("" : "+r"(d));
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
                asm("" : "+r"(raw));
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
    register struct Record8441C *second asm("r10");
    register struct Record8441C *third asm("r8");
    register u32 firstIndex asm("r5");
    register u32 secondIndex asm("r4");
    register u32 thirdIndex asm("r6");
    register u32 tier asm("r6");
    register u32 randomIndex asm("r5");
    register const u16 *entry asm("r1");
    register const u32 *tripleTable asm("r1");
    s32 classification;
    register u32 unaff_r9 asm("r9");
    asm("" : "=r"(stack), "=r"(unaff_r9));
    *(u16 **)(stack + 0x5C) = param_1;
    *(u32 **)(stack + 0x60) = param_2;
    {
      register u32 zeroHalf asm("r4") = 0;
      register struct Record8441C *initial asm("r0") = (struct Record8441C *)(stack + 0x30);
      register u32 zeroByte asm("r1") = 0;
      asm("" : "+r"(zeroHalf), "+r"(initial), "+r"(zeroByte));
      initial->type = zeroHalf;
      initial->subtype = zeroHalf;
      initial->byte6 = zeroByte;
      initial->byte7 = zeroByte;
      initial->value = zeroHalf;
      firstIndex = 0;
      result = initial;
    }
    second = ({ register struct Record8441C *p asm("r0") = (struct Record8441C *)(stack + 0x10); asm("" : "+r"(p)); p; });
    third = ({ register struct Record8441C *p asm("r1") = (struct Record8441C *)(stack + 0x20); asm("" : "+r"(p)); p; });
    {
      register u8 *temporary asm("r2") = stack;
      asm("" : "+r"(temporary));
      temporary += 0x40;
      *(u8 **)(stack + 0x78) = temporary;
    }
    {
      register u8 *bytes asm("r1") = stack + 0x34;
      register u32 zero asm("r2") = 0;
      asm("" : "+r"(bytes), "+r"(zero));
      do { bytes[firstIndex] = zero; firstIndex++; } while (firstIndex <= 0xB);
    }
    firstIndex = (u32)sub_080008C8() % 3;
    {
      register u32 offset asm("r0") = firstIndex << 4;
      register struct Record8441C *destination asm("r1");
      register struct Record8441C *input asm("r3");
      register struct Record8441C *source asm("r0");
      asm("" : "+r"(offset));
      destination = (struct Record8441C *)stack;
      asm("" : "+r"(destination));
      input = *(struct Record8441C **)(stack + 0x5C);
      asm("" : "+r"(input));
      source = (struct Record8441C *)(offset + (u32)input);
      asm("" : "+r"(source));
      *destination = *source;
      input++;
      *(struct Record8441C **)(stack + 0x7C) = input;
    }
    {
      register u8 *next asm("r3") = *(u8 **)(stack + 0x5C);
      asm("" : "+r"(next));
      next += 0x20;
      *(u8 **)(stack + 0x74) = next;
    }
    do { secondIndex = (u32)sub_080008C8() % 3; } while (firstIndex == secondIndex);
    {
      register u32 offset asm("r0") = secondIndex << 4;
      register struct Record8441C *destination asm("r1");
      register struct Record8441C *input asm("r6");
      register struct Record8441C *source asm("r0");
      asm("" : "+r"(offset));
      destination = second;
      asm("" : "+r"(destination));
      input = *(struct Record8441C **)(stack + 0x5C);
      asm("" : "+r"(input));
      source = (struct Record8441C *)(offset + (u32)input);
      asm("" : "+r"(source));
      *destination = *source;

    }
    do { thirdIndex = (u32)sub_080008C8() % 3; } while (firstIndex == thirdIndex || secondIndex == thirdIndex);
    {
      register u32 offset asm("r0") = thirdIndex << 4;
      register struct Record8441C *destination asm("r1");
      register struct Record8441C *input asm("r2");
      register struct Record8441C *source asm("r0");
      asm("" : "+r"(offset));
      destination = third;
      asm("" : "+r"(destination));
      input = *(struct Record8441C **)(stack + 0x5C);
      asm("" : "+r"(input));
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
      asm("" : "+r"(input));
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
      { register const u32 *table asm("r2") = table8441C_084EC1E0;
        register u32 index asm("r1") = randomIndex << 2;
        register u32 row asm("r0") = tier * 56;
        entry = (const u16 *)(index + row + (u32)table);
        asm("" : "+r"(entry) : "r"(row), "r"(randomIndex), "r"(table), "i"(1)); }
      goto applyEntry8441C;
    case 2:
      randomIndex = (u32)sub_080008C8() % 14;
      { register const u32 *table asm("r2") = table8441C_084EC288;
        register u32 index asm("r1") = randomIndex << 2;
        register u32 row asm("r0") = tier * 56;
        entry = (const u16 *)(index + row + (u32)table);
        asm("" : "+r"(entry) : "r"(row), "r"(randomIndex), "r"(table), "i"(2)); }
      goto applyEntry8441C;
    case 3:
      randomIndex = (u32)sub_080008C8() % 14;
      { register const u32 *table asm("r2") = table8441C_084EC330;
        register u32 index asm("r1") = randomIndex << 2;
        register u32 row asm("r0") = tier * 56;
        entry = (const u16 *)(index + row + (u32)table);
        asm("" : "+r"(entry) : "r"(row), "r"(randomIndex), "r"(table), "i"(3)); }
      goto applyEntry8441C;
    case 4:
      randomIndex = (u32)sub_080008C8() % 14;
      { register const u32 *table asm("r2") = table8441C_084EC3D8;
        register u32 index asm("r1") = randomIndex << 2;
        register u32 row asm("r0") = tier * 56;
        entry = (const u16 *)(index + row + (u32)table);
        asm("" : "+r"(entry) : "r"(row), "r"(randomIndex), "r"(table), "i"(4)); }
      goto applyEntry8441C;
    case 5:
      { register u32 index asm("r1") = (u32)sub_080008C8() & 7;
        register const u32 *table asm("r2") = table8441C_084EC480;
        register u32 row asm("r0");
        index <<= 2;
        row = tier << 5;
        entry = (const u16 *)(index + row + (u32)table);
        asm("" : "+r"(entry) : "r"(row), "r"(table), "i"(5)); }
      goto applyEntry8441C;
    case 6:
      { register u32 index asm("r1") = (u32)sub_080008C8() & 7;
        register const u32 *table asm("r2") = table8441C_084EC4E0;
        register u32 row asm("r0");
        index <<= 2;
        row = tier << 5;
        entry = (const u16 *)(index + row + (u32)table);
        asm("" : "+r"(entry) : "r"(row), "r"(table), "i"(6)); }
      goto applyEntry8441C;
    case 7:
      { register u32 index asm("r1") = (u32)sub_080008C8() & 7;
        register const u32 *table asm("r2") = table8441C_084EC540;
        register u32 row asm("r0");
        index <<= 2;
        row = tier << 5;
        entry = (const u16 *)(index + row + (u32)table);
        asm("" : "+r"(entry) : "r"(row), "r"(table), "i"(7)); }
      goto applyEntry8441C;
    case 8:
      { register u32 index asm("r1") = (u32)sub_080008C8() & 7;
        register const u32 *table asm("r2") = table8441C_084EC5A0;
        register u32 row asm("r0");
        index <<= 2;
        row = tier << 5;
        entry = (const u16 *)(index + row + (u32)table);
        asm("" : "+r"(entry) : "r"(row), "r"(table), "i"(8)); }
      goto applyEntry8441C;
    case 9:
      { register u32 index asm("r1") = (u32)sub_080008C8() & 7;
        register const u32 *table asm("r2") = table8441C_084EC600;
        register u32 row asm("r0");
        index <<= 2;
        row = tier << 5;
        entry = (const u16 *)(index + row + (u32)table);
        asm("" : "+r"(entry) : "r"(row), "r"(table), "i"(9)); }
      goto applyEntry8441C;
    case 10:
      { register u32 index asm("r1") = (u32)sub_080008C8() & 7;
        register const u32 *table asm("r2") = table8441C_084EC660;
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
      { register const u16 *p asm("r0") = (const u16 *)(((tier * 3 + randomIndex) << 2) + (u32)tripleTable);
         result->type = p[0]; result->subtype = p[1]; }
      goto finalize8441C;
    case 23:
      { register u32 index asm("r1") = (u32)sub_080008C8() & 3;
        register const u32 *table asm("r2") = table8441C_084EC870;
        register u32 row asm("r0");
        index <<= 2;
        row = (tier + 1) << 4;
        entry = (const u16 *)(index + row + (u32)table);
        asm("" : "+r"(entry) : "r"(row), "r"(table), "i"(23)); }
      goto applyEntry8441C;
    case 24:
      { register u32 index asm("r1") = (u32)sub_080008C8() & 3;
        register const u32 *table asm("r2") = table8441C_084EC8B0;
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
    { register u32 index asm("r1") = (u32)sub_080008C8() & 3;
      register const u32 *table asm("r0");
       table = table8441C_084EC870;
      entry = (const u16 *)((index << 2) + (u32)table); }
    goto applyEntry8441C;
low24:
    { register u32 index asm("r1") = (u32)sub_080008C8() & 3;
      register const u32 *table asm("r0");
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
        register s32 subtype asm("r4") = ((struct Record8441C *)stack)->subtype;
        if (subtype == 3) goto rareFirst8441C;
        if (subtype == 4) goto rareSecond8441C;
        if (((u32)sub_080008C8() & 1) == 0) goto inventorySecond8441C;
        goto inventoryFirst8441C;
rareFirst8441C:
        randomIndex = (u32)sub_080008C8();
        randomIndex &= subtype;
    {
      register struct Triple8441C *temporary asm("r1") = (struct Triple8441C *)(stack + 0x4C);
      register const u32 *table asm("r3");
      register const struct Triple8441C *source asm("r0");
      table = table8441C_084EC8F0;
      { register u32 offset asm("r0") = randomIndex * 12;
        register struct Triple8441C *destination asm("r2");
        destination = temporary;
        source = (const struct Triple8441C *)(offset + (u32)table);
        *destination = *source; }

      copy8441C(result, temporary, 16);
    }

        goto finalize8441C;
rareSecond8441C:
        randomIndex = (u32)sub_080008C8();
        { register u32 mask asm("r0") = 3;  randomIndex &= mask; }
    {
      register struct Triple8441C *temporary asm("r1") = (struct Triple8441C *)(stack + 0x4C);
      register const u32 *table asm("r3");
      register const struct Triple8441C *source asm("r0");
      table = table8441C_084EC920;
      { register u32 offset asm("r0") = randomIndex * 12;
        register struct Triple8441C *destination asm("r2");
        destination = temporary;
        source = (const struct Triple8441C *)(offset + (u32)table);
        *destination = *source; }
      copy8441C(result, temporary, 16);
    }

        goto thirdValue8441C;
inventoryFirst8441C:
        do {
      randomIndex = (u32)sub_080008C8() % 12;
      asm("" : "+r"(randomIndex));
      {
        register u8 *source asm("r0") = (u8 *)(u32)gUnk_030034E0;
        register u32 byteOffset asm("r1") = randomIndex << 4;
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
        { register u32 loaded asm("r0") = sub_08007290(result->subtype | 0xB0000);
          *(u32 *)(stack + 0x64) = loaded;
          if (*(u16 *)(loaded + 0xBC) != 0) goto finalize8441C; }
        if (*(u16 *)((u8 *)result + 6) != 0) goto finalize8441C;
        if (*(u16 *)(*(volatile u32 *)(stack + 0x64) + 0xB0) != 0) goto finalize8441C;
        goto secondAttribute8441C;
inventorySecond8441C:
        {
          register struct Record8441C *inventoryResult asm("r4") = result;
          do {
      randomIndex = (u32)sub_080008C8() % 12;
      asm("" : "+r"(randomIndex));
      {
        register u8 *source asm("r0") = (u8 *)(u32)gUnk_030034E0;
        register u32 byteOffset asm("r1") = randomIndex << 4;
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
      { register u32 hold2 asm("r2"), hold3 asm("r3");
        *result = *(struct Record8441C *)stack;
         }
      goto secondAttribute8441C;
    case 3: case 4: case 5:
      { register u32 hold5 asm("r5"), hold6 asm("r6");
        *result = *(struct Record8441C *)stack;
         }
      goto thirdValue8441C;
    default: break;
    }
secondAttribute8441C:
    if (((u32)sub_080008C8() & 0xFFFF) <= *(u32 *)((u32)gUnk_030034E0 + 0x6C)) {
      register struct Record8441C *attributeRecord asm("r0") = second;
      register s32 attributeType asm("r1");
      attributeType = attributeRecord->type;
      switch (attributeType) {
      case 9:
        {
          register s32 subtype asm("r4") = attributeRecord->subtype;
          switch (subtype) {
          case 0:
            randomIndex = (u32)sub_080008C8() % 3;
            asm("" : "+r"(randomIndex));
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
            asm("" : "+r"(randomIndex));
            unaff_r9 = ({ register u32 value asm("r3") = 6; asm("" : "+r"(value)); value; });
            if (randomIndex == 0) unaff_r9 = ({ register u32 value asm("r4") = 5; asm("" : "+r"(value)); value; });
            break;
          default: unaff_r9 = ({ register u32 value asm("r5") = 0;  value; }); break;
          }
        }
        break;
      case 2:
        unaff_r9 = ({ register struct Record8441C *p asm("r6") = second; register u32 value asm("r6");  value = p->byte7;  value; });
        break;
      case 3: case 4: case 5: unaff_r9 = ({ register u32 value asm("r0") = 0; asm("" : "+r"(value)); value; }); break;
      default: break;
      }
      switch (result->type) {
      case 3: case 4: case 5: result->byte7 = 0; break;
      default: { register u32 attribute asm("r1") = unaff_r9;  result->byte7 = attribute; } break;
      }
    }
thirdValue8441C:
    {
      register u32 chance asm("r4");
      u32 tableValue;
      register u32 offset asm("r1");
      register const u32 *table asm("r2");
      {
        register u32 random asm("r1") = (u32)sub_080008C8() & 0xFFFF;
        register u32 limit asm("r0");
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
      { register u32 mask asm("r0") = 3; randomIndex &= mask;  }
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
      { register u32 mask asm("r0") = 3; randomIndex &= mask;  }
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
      { register u32 mask asm("r0") = 3; randomIndex &= mask;  }
      if (!chance) goto randomOther8441Cno;
      table = table8441C_084EC9F0;
      offset = randomIndex << 2;
      tableValue = ({ register struct Record8441C *p asm("r3") = third;  p->subtype; });
      goto sharedTable8441C;
randomOther8441Cno:
      table = table8441C_084ECA40;
      goto sharedOffset8441C;
permittedOther8441C:
      { register struct Record8441C *valueRecord asm("r4") = third;
        register u8 *properties asm("r1");
        u32 initial, type, flags, allowed;
        initial = valueRecord->value;
        if (initial == 0) { result->value = initial; goto finalize8441C; }
        { register u32 argument asm("r0") = initial;
          register u32 tag asm("r1") = 0x130000;
          asm("" : "+r"(argument), "+r"(tag));
          properties = (u8 *)sub_08007290(argument | tag); }
        type = (u16)(result->type - 3);
        if (type > 1) goto permittedOne8441C;
        { register u8 *address asm("r0") = properties;
          register u32 bits asm("r1");
          register u32 mask asm("r0");
          address += 0xAC;
          bits = *(u16 *)address;
          mask = 2; mask &= bits;
          allowed = (u16)mask;
          if (allowed == 0) { result->value = allowed; goto finalize8441C; }
        }
        result->value = valueRecord->value;
        goto finalize8441C;
permittedOne8441C:
        { register u8 *address asm("r0") = properties;
          register u32 mask asm("r1");
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
      register u32 *stateAddress asm("r8");
      register u32 *weight asm("r4");
      register struct Record8441C *input asm("r5");
      stateAddress = ({ register u32 *p asm("r6") = (u32 *)&gUnk_030034E0; asm("" : "+r"(p)); p; });
      weight = *(u32 *volatile *)(stack + 0x78);
      input = *(struct Record8441C *volatile *)(stack + 0x5C);
      do {
        register u32 normalized asm("r0");
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
          asm("" : "+r"(normalized) : "i"(20));
          goto weightStore8441C;
        case 1:
          normalized = input->value;
          *weight = normalized;
          normalized = (normalized << 3) / 100;
          asm("" : "+r"(normalized) : "i"(800));
          goto weightStore8441C;
        case 2:
          normalized = input->value;
          *weight = normalized;
          normalized /= (u32)10;
          asm("" : "+r"(normalized) : "i"(10));
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
        register u32 score asm("r5");
        register u32 sum asm("r0");
        register u32 *values asm("r2");
        register u32 multiplier asm("r1");
        register u32 *global asm("r3");
        asm("" : : "r"(factor));
        factor = factor / 10000 + 1;
        asm("" : "+r"(factor));
        sum = *(u32 *)(stack + 0x40);
        asm("" : "+r"(sum));
        values = *(u32 *volatile *)(stack + 0x78);
        asm("" : "+r"(values));
        sum += values[1];
        sum += values[2];
        sum += factor;
        global = stateAddress;
        asm("" : "+r"(global));
        multiplier = *(u32 *)(*global + 0x6C);
        asm("" : : "r"(values));
        sum *= multiplier;
        score = (sum >> 18) + 3;
        if (score > 19) score = 20;
        {
          register u32 random asm("r0") = sub_080008C8();
          register const u32 *weights asm("r8");
          register u32 range asm("r1");
          register u32 roll asm("r6");
          register u32 index asm("r4");
          register u32 value asm("r0");
          register const u32 *base asm("r1");
          asm("" : "+r"(random));
          weights = ({ register const u32 *p asm("r4") = table8441C_084ECB30; asm("" : "+r"(p)); p; });
          range = score << 2;
          range += (u32)weights;
          range = *(u32 *)range + 1;
          roll = random % range;
          index = 0;
          asm("" : "+r"(index));
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
            asm("" : "+r"(metadata)); roll = metadata[13]; }
          roll += (u32)sub_080008C8() % 200000;
          index = 0;
          asm("" : "+r"(index));
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
      if (({ register u32 offset asm("r0") = randomIndex << 2; register u8 *properties asm("r3"); asm("" : "+r"(offset)); properties = *(u8 **)(stack + 0x64); asm("" : "+r"(properties)); *(u16 *)(properties + offset + 0xB0); }) == 0) goto scanProperty2;
      goto clearByZero8441C;
    case 3:
      randomIndex = 0;
      if (*(u16 *)(*(u32 *)(stack + 0x68) + 0xA4) != 0) goto clearByIndex8441C;
scanProperty3:
      randomIndex++;
      if (randomIndex > 2) goto copyOutput8441C;
      if (({ register u32 offset asm("r0") = randomIndex << 2; register u8 *properties asm("r4"); asm("" : "+r"(offset)); properties = *(u8 **)(stack + 0x68); asm("" : "+r"(properties)); *(u16 *)(properties + offset + 0xA4); }) == 0) goto scanProperty3;
      goto clearByZero8441C;
    case 4:
      randomIndex = 0;
      if (*(u16 *)(*(u32 *)(stack + 0x6C) + 0xA4) != 0) goto clearByIndex8441C;
scanProperty4:
      randomIndex++;
      if (randomIndex > 2) goto copyOutput8441C;
      if (({ register u32 offset asm("r0") = randomIndex << 2; register u8 *properties asm("r6"); asm("" : "+r"(offset)); properties = *(u8 **)(stack + 0x6C); asm("" : "+r"(properties)); *(u16 *)(properties + offset + 0xA4); }) == 0) goto scanProperty4;
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
      if (({ register u32 offset asm("r0") = randomIndex << 2; register u8 *properties asm("r1"); asm("" : "+r"(offset)); properties = *(u8 **)(stack + 0x70); asm("" : "+r"(properties)); *(u16 *)(properties + offset + 0xA4); }) == 0) goto scanProperty5;
      goto clearByZero8441C;
clearByZero8441C:
      result->value = 0;
      goto copyOutput8441C;

    default: goto copyOutput8441C;
    }
copyOutput8441C:
    {
      register struct Record8441C *output asm("r1") = *(struct Record8441C **)(stack + 0x60);
      register struct Record8441C *source asm("r0");
      register u32 hold5 asm("r5"), hold6 asm("r6");
      asm("" : "+r"(output));
      source = result;
      asm("" : "+r"(source), "=r"(hold5), "=r"(hold6));
      *output = *source;
      asm("" : : "r"(hold5), "r"(hold6));
    }
    {
      register u32 firstPrice asm("r4") = sub_0805AE94(*(void **)(stack + 0x5C));
      register u32 secondPrice asm("r6");
      register u32 thirdPrice asm("r5");
      register u32 outputPrice asm("r8");
      register u32 *globalAddress asm("r9");
      u8 *state;
      asm("" : "+r"(firstPrice));
      secondPrice = sub_0805AE94(*(void **)(stack + 0x7C));
      asm("" : "+r"(secondPrice));
      thirdPrice = sub_0805AE94(*(void **)(stack + 0x74));
      asm("" : "+r"(thirdPrice));
      outputPrice = sub_0805AE94(*(void **)(stack + 0x60));
      asm("" : "+r"(outputPrice));
      { register u32 *p asm("r0") = (u32 *)&gUnk_030034E0;
        asm("" : "+r"(p));
        globalAddress = p;
        asm("" : : "r"(globalAddress), "r"(p));
        state = (u8 *)*p; }
      firstPrice += secondPrice;
      firstPrice += thirdPrice;
      { register u32 *input asm("r1") = *(u32 *volatile *)(stack + 0x5C);
        asm("" : "+r"(input));
        firstPrice += input[13]; }
      firstPrice = *(u32 *)(state + 0x6C) + firstPrice / 10;
      firstPrice -= outputPrice / 10;
      *(u32 *)(state + 0x6C) = firstPrice;
      if ((s32)firstPrice < 0) *(u32 *)(state + 0x6C) = 0;
      {
        register u32 *address asm("r2") = globalAddress;
        register u8 *current asm("r1");
        register s32 value asm("r0");
        register u32 maximum asm("r2");
        asm("" : "+r"(address));
        current = (u8 *)*address;
        value = *(s32 *)(current + 0x6C);
        maximum = 0xFFFF;
        asm("" : "+r"(maximum));
        if (value > (s32)maximum) *(u32 *)(current + 0x6C) = maximum;
      }
    }
}

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
