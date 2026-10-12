#include "global.h"

void sub_0800BC08(s32, s32, u16 *, s16 *, s32, s32);
extern u8 gUnk_03003E28[];

#ifdef NONMATCHING
void sub_080153A4(void)
{
    struct PlayerW12 *p = (struct PlayerW12 *)&gUnk_03003CE0[sub_080020F4()];
    u16 angle = (u16)(p->w26 * 40 + 0x80);
    if (p->state != 0xD && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
        sub_0805865C(p->w26 + 0xF9);
    while (p->wB6 == 0 && p->state == 5) {
        p->w1C = sub_08013E90((s16)angle, (s32 *)&p->pos8C, p->w1C,
                              (u16)sub_0800CCCC(), 0);
        sub_08013CEC((u8 *)p);
        sub_080003F0();
    }
    if (p->state != 0xA && p->state != 0xB) {
        if ((p->flags & 0x2000) == 0)
            p->state = 0;
    }
    p->w24 = 0;
    p->w28 = p->w26;
    p->w26 = 0;
    p->w122 = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_080153A4);
#endif
#ifdef NONMATCHING
void sub_08015464(void)
{
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    u16 saved = *(u16 *)(state + 0x26);
    if (*(u16 *)(state + 0x20) != 0xD && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
        sub_0805865C(saved + 0xF9);
    u16 *done = (u16 *)(state + 0xB6);
    if (*done == 0 && *(u16 *)(state + 0x20) == 5) {
        u32 *counter = (u32 *)(state + 0xDC);
        do {
            u16 type = *(u16 *)(state + 0xB2);
            if ((type == 2 || type == 5 || type == 7) && *(u16 *)(state + 0xB4) == 1)
                (*counter)++;
            sub_080003F0();
        } while (*done == 0 && *(u16 *)(state + 0x20) == 5);
    }
    u16 mode = *(u16 *)(state + 0x20);
    if (mode < 0xA || mode > 0xB) {
        if ((*(u32 *)(state + 0x30) & 0x4000) == 0)
            *(u16 *)(state + 0x20) = 0;
    }
    *(u16 *)(state + 0x24) = 0;
    *(u16 *)(state + 0x28) = saved;
    *(u16 *)(state + 0x26) = 0;
    *(u16 *)(state + 0x122) = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08015464);
#endif
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_0801551C);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08015620);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_080156FC);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08015820);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08015914);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08015A48);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08015B20);
void sub_08015C14(void) {

    gUnk_03003CE0[sub_080020F4()].flags |= 1;
}
void sub_08015C38(void) {

    gUnk_03003CE0[sub_080020F4()].flags &= ~1;
}
void sub_08015C5C(s32 arg0, s32 arg1) {
    void *temp_r2;

    temp_r2 = (&((struct Sz332 *)&gUnk_03003CE0)[sub_080020F4()]);
    M2C_FIELD(temp_r2, s32 *, 0x9C) = arg0;
    M2C_FIELD((temp_r2 + 0x9C), s32 *, 4) = arg1;
    M2C_FIELD(temp_r2, s32 *, 0x30) = (s32) (M2C_FIELD(temp_r2, s32 *, 0x30) | 0x24);
}
void sub_08015C8C(void) {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags |= 0x80000;
    sub_08067D74();
}
void sub_08015CB4(void) {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags &= 0xFFF7FFFF;
    sub_08067D74();
}
void sub_08015CE0(void) {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags |= 0x100000;
}
void sub_08015D04(void) {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags &= 0xFFEFFFFF;
}
void sub_08015D2C(void) {

    gUnk_03003CE0[sub_080020F4()].flags |= 2;
}
void sub_08015D50(void) {

    gUnk_03003CE0[sub_080020F4()].flags &= ~2;
}
void sub_08015D74(void) {

    gUnk_03003CE0[sub_080020F4()].flags |= 0x1000;
}
void sub_08015D98(void) {

    gUnk_03003CE0[sub_080020F4()].flags &= 0xFFFFEFFF;
}
#ifdef NONMATCHING
s32 sub_08015DC0(s32 *value)
{
    s32 current = *value;
    s32 next;
    if (current <= 0x17) {
        next = current - 8;
        if (next <= 0) next = 0;
    } else {
        next = current - (current >> 1);
    }
    *value = next;
    return next;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08015DC0);
#endif
#ifdef NONMATCHING
void sub_08015DE0(s32 *value, s32 target)
{
    s32 current = *value;
    s32 step = (target - current) >> 1;
    s32 next = step > 0 ? current + step : current + 1;
    *value = next;
    if (target <= next) *value = target;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08015DE0);
#endif
void sub_08015E00(s32 arg0)
{
  s8 *new_var;
  s32 temp_r0;
  new_var = (s8 *) (&gUnk_03003C10);
  *((s32 *) (new_var + 8)) = 0x34;
  temp_r0 = sub_08001494(0x400);
  *((s32 *) (new_var + 0x20)) = temp_r0;
  *((M2C_UNK **) (new_var + 0xC)) = &sub_08014170;
  *((s32 *) (new_var + 0x10)) = (s32) (temp_r0 + 0x3FC);
  *((s32 *) (new_var + 0x24)) = 0;
  sub_08000274(&gUnk_03003C10, arg0);
}
void sub_08015E3C(u8 *arg0, s32 arg1) {
    u16 r3;
    u16 *p;
    s32 r1;

    r3 = (u16)(*(s8 *)(arg0 + 0x6C) * 10 + gUnk_0847ACE8[arg1]);
    if ((s16)r3 < 0) {
        r3 = 0;
    }
    p = (u16 *)(arg0 + 0xC2);
    r1 = *p - (s16)r3;
    *p = r1;
    if ((s16)r1 < 0) {
        *p = 0;
    }
}
#ifdef NONMATCHING
u32 sub_08015E84(u8 *arg0)
{
    s32 adjustment = (s8)arg0[0x6C] * 10;
    s16 value = *(s16 *)(arg0 + 0xC2);
    s32 i;

    for (i = 7; i >= 0; i--) {
        s32 threshold = (s16)(gUnk_0847ACE8[i] + adjustment);
        if (threshold < 0)
            threshold = 0;
        if (value >= threshold)
            return i;
    }
    return 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08015E84);
#endif
void sub_08015ED4(void) {

    gUnk_03003CE0[sub_080020F4()].flags |= 0x400000;
}
void sub_08015EF8(void) {

    gUnk_03003CE0[sub_080020F4()].flags &= 0xFFBFFFFF;
}
u32 sub_08015F20(void) {
    return (gUnk_03003CE0[sub_080020F4()].flags >> 2) & 1;
}
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08015F44);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_0801602C);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08016114);
void sub_080161A4(void) {
    u16 var_r4;
    u16 var_r4_2;
    volatile s32 *maskPtr;
    u32 bitMask;
    var_r4 = 0;
    do {
        if (((s32) gUnk_03005724 >> var_r4) & 1) {
            sub_080003A8(gUnk_030056F0 + (var_r4 * 0x28));
        }
        var_r4 += 1;
    } while ((u32) var_r4 <= 1U);
    var_r4_2 = 0;
    maskPtr = (volatile s32 *)&gUnk_030056FC;
    do {
        bitMask = 1;
        bitMask <<= var_r4_2;
        if (*maskPtr & bitMask) {
            sub_080003A8((s32)((u8 *)&gUnk_03004220 + (var_r4_2 * 0x28)));
        }
        sub_080688F8(var_r4_2 + 4);
        var_r4_2 += 1;
    } while ((u32) var_r4_2 <= 4U);
    sub_08001538(gUnk_030056F0);
    sub_08001538((s32) gUnk_030056F4);
    sub_08001538(gUnk_030042E8);
    gUnk_030056F0 = 0;
    gUnk_030056F4 = NULL;
}
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_0801623C);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_0801641C);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_0801674C);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_0801681C);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_080168FC);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_080169C8);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08016A7C);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08016B30);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08016C88);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08016D40);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08016E04);
#ifdef NONMATCHING
void sub_08016ECC(s32 index)
{
    u32 slot = (u32)(index - 4) & 0xFFFF;
    u32 bit = 1 << slot;
    u32 *active = (u32 *)0x030056F8;
    u32 *table = (u32 *)0x03005700;
    u32 offset = slot * 0xC;
    if (!(*active & bit)) return;
    if (table[offset + 2] > 1) { table[offset + 2]--; return; }
    table[offset] = 0;
    table[offset + 1] = 0;
    table[offset + 2] = 0;
    *active &= ~bit;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08016ECC);
#endif
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08016F28);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08017C6C);
s32 sub_08017E34(s32 *arg0) {
    struct {
        u16 a;
        s16 b;
    } buf;
    u8 *base;
    u32 n;
    u32 i;
    s32 result;
    s16 *pb;

    sub_0800BC08((((s32) arg0[5]) << 8) >> 0x10, (((s32) arg0[6]) << 8) >> 0x10,
                 &buf.a, &buf.b, 0x30, 0);
    result = 0;
    n = sub_08002164();
    i = 0;
    pb = &buf.b;
    if (result < n) {
        base = gUnk_03003E28;
        do {
            u8 *p = *(u8 **) (base + i * 0x14C);
            if (!(((u32) (p[4] << 0x1A) >> 0x1A) & 0x20) && (u16) (buf.a + 0x3F) <= 0x16A) {
                if (*pb > -0x40) {
                    if (*pb <= 0xC7) {
                        result = 1;
                    }
                }
            }
            i++;
        } while (i < n);
    }
    return result;
}
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08017EC8);
