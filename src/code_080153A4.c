#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_080153A4);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08015464);
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
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08015C8C);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08015CB4);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08015CE0);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08015D04);
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
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08015DC0);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08015DE0);
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
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08015E3C);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08015E84);
void sub_08015ED4(void) {

    gUnk_03003CE0[sub_080020F4()].flags |= 0x400000;
}
void sub_08015EF8(void) {

    gUnk_03003CE0[sub_080020F4()].flags &= 0xFFBFFFFF;
}
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08015F20);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08015F44);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_0801602C);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08016114);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_080161A4);
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
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08016ECC);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08016F28);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08017C6C);
void sub_0800BC08(s32, s32, u16 *, s16 *, s32, s32);
extern u8 gUnk_03003E28[];

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
