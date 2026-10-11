#include "global.h"

s32 sub_0801E244(s32 arg0, s32 arg1)
{
  int new_var;
  u32 var_r3;
  void *var_r2;
  var_r2 = arg0 + 0x8C;
  var_r3 = 0;
  new_var = -1;
  loop_1:
  if ((((*((s16 *) (((s8 *) var_r2) + 0))) != new_var) && ((*((u16 *) (((s8 *) var_r2) + 4))) == arg1)) && ((*((u16 *) (((s8 *) var_r2) + 2))) == 0x64))
  {
    return (s32) var_r2;
  }

  var_r3 += 1;
  var_r2 += 0x28;
  if (var_r3 > 7U)
  {
    return 0;
  }
  goto loop_1;
}
void sub_0801E278(s32 arg0, u32 arg1)
{
    u8 *entry;
    s32 i;

    while (1) {
        entry = *(u8 **)(arg0 + 0x34);
        for (i = 0; i < 8; i++, entry += 0x28) {
            if (*(s16 *)entry != -1 && *(u16 *)(entry + 4) == arg1 &&
                *(u16 *)(entry + 2) == 100) {
                break;
            }
        }

        if (i == 8) {
            break;
        }
        sub_0801DB94(*(u16 *)arg0, entry, 0);
    }
}
void sub_0801E2CC(s32 arg0, u32 arg1)
{
    u8 *entry;
    s32 i;

    while (1) {
        entry = *(u8 **)(arg0 + 0x8C);
        for (i = 0; i < 8; i++, entry += 0x28) {
            if (*(s16 *)entry != -1 && *(u16 *)(entry + 4) == arg1 &&
                *(u16 *)(entry + 2) == 100)
                break;
        }
        if (i == 8)
            break;
        sub_0801DB94(*(u16 *)arg0 + 4, entry, 0);
    }
}
void sub_0801E324(u16 arg0, u32 playerIndex, u16 arg2)
{
    u8 *player = (u8 *)gUnk_03003CE0 + playerIndex * 0x14C + 0x34;
    u8 *entry = *(u8 **)player;
    u32 i;

    for (i = 0; i < 8; i++, entry += 0x28) {
        if (*(s16 *)entry != -1 && *(u16 *)(entry + 4) == arg2 &&
            *(u16 *)(entry + 2) == arg0)
            *(u16 *)entry = 0xFFFF;
    }
}
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801E378);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801E3D8);
u16 sub_0801E438(s32 arg0, u32 arg1)
{
    u16 value = (u16)arg1;
    u8 mode = sub_0801DE60();
    if (mode == 0)
        value = sub_0801E0AC(arg0, 3) << 3;
    else if (mode == 3)
        value = sub_0801E0AC(arg0, 2) << 3;
    return value;
}
s32 sub_0801E46C(void *arg0, void *arg1) {
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r3;
    s32 var_r0;
    s32 var_r1;

    sub_080020F4();
    temp_r3 = M2C_FIELD(arg1, s32 *, 0x10);
    temp_r1 = M2C_FIELD(arg0, s32 *, 0x20);
    temp_r2 = temp_r1 + 1;
    var_r0 = temp_r2 * 3;
    temp_r1_2 = temp_r1 + 0xD;
    if (var_r0 < temp_r1_2) {
        var_r0 = temp_r1_2;
    }
    if (temp_r3 > var_r0) {
        var_r1 = temp_r2 * 9;
    } else {
        var_r1 = temp_r3 * 3;
    }
    if (M2C_FIELD(arg1, u8 *, 0x22) == 3) {
        var_r1 *= 0xA;
    }
    return var_r1;
}
s32 sub_0801E4B0(void) {
    s32 *p = (s32 *) gUnk_030034E0;
    s32 idx = p[8];
    return gUnk_0848FF54[idx] - p[7];
}
s32 sub_0801E4CC(u8 *arg0, s32 arg1) {
    s32 idx = sub_080020F4();
    u32 flags = gUnk_03003CE0[idx].flags;
    s32 n;
    u32 limit;

    if (flags & 0x2000) {
        return 0;
    }
    n = *(s32 *) (arg0 + 0x20);
    if ((u32) n > 0xC6) {
        return 0;
    }
    *(s32 *) (arg0 + 0x1C) += arg1;
    limit = gUnk_0848FF54[n];
    if (*(u32 *) (arg0 + 0x1C) < limit) {
        return 0;
    }
    *(s32 *) (arg0 + 0x20) = n + 1;
    *(u16 *) (arg0 + 0x1A) += 4;
    *(u16 *) (arg0 + 0x30) += 1;
    sub_08061830(&gUnk_03003CE0[sub_080020F4()]);
    return 1;
}
s32 sub_0801E538(void)
{
  long long new_var;
  new_var = 0;
  if ((sub_0801CCC8() << 0x10) == 0)
  {
    if (new_var)
    {
      return new_var;
    }
    else
    {
      return new_var;
    }
  }
  return 1;
}
void sub_0801E550(u16 id, u32 stateIndex, u16 kind, u16 value)
{
    u8 *state = (u8 *)gUnk_03003CE0 + stateIndex * 0x14A + 0x34;
    u8 *entry = *(u8 **)state;
    for (u32 i = 0; i <= 7; i++, entry += 0x28) {
        if (*(s16 *)entry != -1 && *(u16 *)(entry + 4) == kind &&
            *(u16 *)(entry + 2) == id)
            *(u16 *)(entry + 6) = value;
    }
}
void sub_0801E594(void *arg0)
{
    u32 i;
    for (i = 0; i <= 7; i++)
        M2C_FIELD((u8 *)arg0 + i * 0x28, u16 *, 0) |= 0xFFFF;
}
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801E5B0);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801E988);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801ED8C);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801EF14);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801F024);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801F1C4);
void sub_0801F2CC(u8 *object, u8 *data)
{
    u16 value = data[2];

    if (value != 0) {
        u16 duration = value >> 2;
        *(u16 *)(object + 0x7C) = duration != 0 ? duration : 1;
        *(u16 *)(object + 0x80) = duration != 0 ? 0x400 : 0x100;
        *(s16 *)(object + 0x7E) = (s8)data[3];
        *(u16 *)(object + 0x82) = value;
    } else {
        *(u16 *)(object + 0x7C) = 0;
        *(u16 *)(object + 0x80) = 0;
        *(u16 *)(object + 0x7E) = 0;
    }
}

void sub_0801F320(u8 *object, u8 *data)
{
    u16 value = data[2];

    if (value != 0) {
        u16 duration = value >> 2;
        *(u16 *)(object + 0xCE) = duration != 0 ? duration : 1;
        *(u16 *)(object + 0xD2) = duration != 0 ? 0x400 : 0x100;
        *(s16 *)(object + 0xD0) = (s8)data[3];
        *(u16 *)(object + 0xD4) = value;
    } else {
        *(u16 *)(object + 0xCE) = 0;
        *(u16 *)(object + 0xD2) = 0;
        *(u16 *)(object + 0xD4) = 0;
    }
}
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801F374);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801F79C);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801F99C);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801FB14);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801FC34);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801FD64);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801FDD0);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_08020680);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_08020D40);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_08020E08);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_08020F74);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_080210A8);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_08021214);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0802133C);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_08021490);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_080215E4);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_080216BC);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_080217D8);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_08021960);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_08021AD8);
void sub_08021C6C(void) {

}
void sub_08021C70(void) {

}
s32 sub_08021C74(u16 arg0, u16 arg1, u16 arg2) {
    u16 temp_r5;
    u16 var_r0;

    temp_r5 = arg0;
    var_r0 = (u16) ((u16) ((s32) (((u32) ((((u16) sub_080008C8() % 50U) << 0x10) + 0x640000) >> 0x10) * ((s32) (temp_r5 * temp_r5 * 0xA) / (s32) (temp_r5 + arg1))) / (s32) arg2) / 10U);
    if (var_r0 == 0) {
        var_r0 = 1;
    }
    return (s32) var_r0;
}
u16 sub_08021CE4(u16 arg0, u16 arg1) {
    return __divsi3((arg1 + 0x64) * arg0, 0x64);
}
s32 sub_08021D00(u16 arg0, u16 arg1, u16 *arg2) {
    s16 temp_r1;
    u16 var_r3;
    u32 temp_r0;

    var_r3 = arg1;
    temp_r0 = arg0 - 1;
    if (temp_r0 <= 6) {
        switch (temp_r0) {
        case 0:
            temp_r1 = arg2[0];
            break;
        case 1:
            temp_r1 = arg2[1];
            break;
        case 2:
            temp_r1 = arg2[2];
            break;
        case 3:
            temp_r1 = arg2[3];
            break;
        case 4:
            temp_r1 = arg2[4];
            break;
        case 5:
        case 6:
            temp_r1 = arg2[5];
            break;
        }
        var_r3 = (u16)((s32)(var_r3 * 0x1388) / (s32)((temp_r1 * temp_r1) + 0x9C4));
        if (var_r3 & 0x8000) {
            var_r3 = 1;
        }
    }
    return var_r3;
}
void sub_08021D88(void) {
    gUnk_03005CE0 = sub_08001494(0x500);
    gUnk_03005CE4 = 0;
}
void sub_08021DAC(void) {
    sub_08001538(gUnk_03005CE0);
    gUnk_03005CE0 = 0;
}
