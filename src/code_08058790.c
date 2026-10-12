#include "global.h"

extern u32 sub_0805AB20(void *arg0);

#ifdef NONMATCHING
void sub_08058790(void)
{
    sub_0800CF90();
    do { sub_080003F0(); } while (sub_080021A8() == 0);
    sub_0801A664(0, 2);
    do { sub_080003F0(); } while (sub_080021A8() == 0);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058790);
#endif
void sub_080587D8(void) {
    sub_0800CFA4();
}
void sub_080587E4(void) {
    sub_08015D74();
}
void sub_080587F0(void) {
    sub_08015D98();
}
void sub_080587FC(u16 arg0) {
    sub_0800CC48(arg0);
}
void sub_0805880C(void) {
    sub_0800CC68();
}
s32 sub_08058818(void) {
    return sub_0800CE30();
}
s32 sub_08058824(void) {
    return sub_0800CF48();
}
s32 sub_08058830(void) {
    return ((u16) M2C_FIELD(gUnk_03005CF4, u16 *, 4) >> 8) & 1;
}
#ifdef NONMATCHING
u32 sub_08058844(void)
{
    u8 *p=(u8 *)0x030034E0+0xC10; u32 i;
    for(i=0;i<=0x90;i++) if(p[i]==0) return 0;
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058844);
#endif
#ifdef NONMATCHING
u32 sub_08058878(u32 offset, u32 shift)
{
    u8 *base = *(u8 **)0x03005CF4 + (sub_0800CE30() ? 0x240 : 0x236);
    return (base[offset] >> shift) & 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058878);
#endif
#ifdef NONMATCHING
void sub_080588C0(u32 index, u32 bit)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u32 offset = sub_0800CE30() ? 0x240 : 0x236;
    base[offset + index] |= 1u << bit;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_080588C0);
#endif
#ifdef NONMATCHING
void *sub_08058900(u32 index)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u32 offset = sub_0800CE30() ? 0xF8 : 0xA8;
    return *(void **)(base + offset + index * 4);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058900);
#endif
#ifdef NONMATCHING
void *sub_08058934(u32 index)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u32 offset = sub_0800CE30() ? 0x120 : 0xD0;
    return *(void **)(base + offset + index * 4);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058934);
#endif
#ifdef NONMATCHING
void sub_0805896C(u32 index, void *value)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u32 offset = sub_0800CE30() ? 0xF8 : 0xA8;
    *(void **)(base + offset + index * 4) = value;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_0805896C);
#endif
#ifdef NONMATCHING
void sub_080589A0(u32 index, void *value)
{
    u8 *base=(u8 *)gUnk_03005CF4;
    u32 offset=sub_0800CE30()?0x120:0xD0;
    *(void **)(base+offset+index*4)=value;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_080589A0);
#endif
s32 sub_080589D8(s32 arg0)
{
  s32 *var_r0;
  s32 var_r1;
  if (sub_0800CE30() != 0)
  {
    var_r1 = 1 << arg0;
    var_r0 = gUnk_03005CF4 + 0x88;
  }
  else
  {
    var_r1 = 1 << arg0;
    var_r0 = gUnk_03005CF4 + 0x84;
  }
  if (var_r1 & (*var_r0))
  {
    if (var_r0)
    {
      return 1;
    }
    else
    {
      return 1;
    }
  }
  return 0;
}
#ifdef NONMATCHING
void sub_08058A18(u32 bit)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u32 offset = sub_0800CE30() ? 0x88 : 0x84;
    *(u32 *)(base + offset) |= 1u << bit;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058A18);
#endif
#ifdef NONMATCHING
void sub_08058A4C(u32 bit)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u32 offset = sub_0800CE30() ? 0x88 : 0x84;
    *(u32 *)(base + offset) &= ~(1u << bit);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058A4C);
#endif
#ifdef NONMATCHING
u32 sub_08058A80(void)
{
    u32 count = 0;
    u32 i;
    u32 flags = *(u32 *)((u8 *)gUnk_03005CF4 + (sub_0800CE30() ? 0x88 : 0x84));
    for (i = 0; i <= 0xA; i++) {
        if (flags & (1u << i))
            count++;
    }
    return count;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058A80);
#endif
#ifdef NONMATCHING
u32 sub_08058AD0(void)
{
    u8 *entry = (u8 *)gUnk_03003CE0 + 0x64;
    u32 i, count = sub_08002164();
    for (i = 0; i < count; i++, entry += 0x14C)
        if (*(u16 *)entry == 6 || *(u16 *)entry == 8)
            return 1;
    return 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058AD0);
#endif
#ifdef NONMATCHING
void sub_08058B08(u16 arg0, u16 arg1)
{
    u32 packed = arg0 | ((u32)arg1 << 16);
    u8 *entry = (u8 *)gUnk_03005CF4 + 0xE34;
    s32 i;
    for (i = 0; i <= 0x1D; i++, entry += 0x28) {
        if (sub_08000470(entry) == 0)
            break;
    }
    if (i > 0x1D)
        return;
    while (*(u32 *)(entry + 0x20) == 0) {
        *(u32 *)(entry + 0x20) = sub_08001494(0x400);
        if (*(u32 *)(entry + 0x20) == 0)
            sub_080003F0();
    }
    *(u32 *)(entry + 8) = 0x3C;
    *(void (**)(void))(entry + 0xC) = sub_0805A9F4;
    *(u32 *)(entry + 0x10) = *(u32 *)(entry + 0x20) + 0x3FC;
    *(u32 *)(entry + 0x24) = 0;
    sub_08000274(entry, packed);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058B08);
#endif
#ifdef NONMATCHING
void sub_08058B74(u16 resource, u16 arg1, u16 arg2)
{
    u8 *entry = (u8 *)gUnk_03005CF4 + 0xE34;
    s32 i;
    gUnk_03005CF8 = resource;
    if ((gUnk_030027D0 & 0x20) == 0)
        sub_08006CB4(resource);
    for (i = 0; i <= 0x1D; i++, entry += 0x28) {
        if (sub_08000470(entry) == 0)
            break;
    }
    if (i > 0x1D)
        return;
    while (*(u32 *)(entry + 0x20) == 0) {
        *(u32 *)(entry + 0x20) = sub_08001494(0x400);
        if (*(u32 *)(entry + 0x20) == 0)
            sub_080003F0();
    }
    *(u32 *)(entry + 8) = 0x3C;
    *(void (**)(void))(entry + 0xC) = sub_0805AA68;
    *(u32 *)(entry + 0x10) = *(u32 *)(entry + 0x20) + 0x3FC;
    *(u32 *)(entry + 0x24) = 0;
    sub_08000274(entry, ((u32)(arg1 - 1) << 16) | arg2);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058B74);
#endif
#ifdef NONMATCHING
void sub_08058C08(u16 arg0, u16 arg1)
{
    u8 *entry = (u8 *)gUnk_03005CF4 + 0xE34;
    u32 packed = arg0 | ((u32)arg1 << 16);
    s32 i;
    for (i = 0; i <= 0x1D; i++, entry += 0x28)
        if (sub_08000470(entry) == 0)
            break;
    if (i > 0x1D)
        return;
    while (*(u32 *)(entry + 0x20) == 0) {
        *(u32 *)(entry + 0x20) = sub_08001494(0x400);
        if (*(u32 *)(entry + 0x20) == 0)
            sub_080003F0();
    }
    *(u32 *)(entry + 8) = 0x3C;
    *(void (**)(void))(entry + 0xC) = sub_0805AAB8;
    *(u32 *)(entry + 0x10) = *(u32 *)(entry + 0x20) + 0x3FC;
    *(u32 *)(entry + 0x24) = 0;
    sub_08000274(entry, packed);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058C08);
#endif
void sub_08058C74(s16 arg0) {
    M2C_FIELD(gUnk_030034E0, s16 *, 0x68) = arg0;
    sub_0805AD78();
}
void sub_08058C8C(s32 arg0)
{
    if (sub_0800CB9C() == 0) {
        if (!(gUnk_030027D0 & 0x20)) {
            gUnk_03005CF8 = arg0;
            ((void (*)(s32))sub_08006CB4)(arg0);
        }
    } else {
        sub_080586B4(0);
    }
}
#ifdef NONMATCHING
void sub_08058CC4(u32 value)
{
    if (value < 1 || value > 9 || (gUnk_030027D0 & 0x20) != 0)
        return;
    switch (value) {
    case 2:
        sub_08006D08(0x14);
        break;
    case 6:
    case 8:
        sub_08006D08(0x1B);
        break;
    default:
        sub_08006D08((value == 7) ? 0x1B : 0x13);
        break;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058CC4);
#endif
u32 sub_08058D4C(u32 key)
{
  int new_var;
  u32 i;
  u8 *base = *((u8 **) 0x03005CF4);
  u8 *entry = base + 0x7A4;
  u32 mask;
  for (i = 0; i <= 0xE; i++, entry += 0x70)
  {
    new_var = (*((u32 *) (base + 0x54))) & (1u << i);
    if (new_var && ((*((u32 *) (entry + 4))) == key))
    {
      return *((u32 *) entry);
    }
  }

  return 0;
}
s32 sub_08058D8C(void) {
    return sub_080008C8();
}
s32 sub_08058D98(s32 value)
{
    struct {
        u16 kind;
        u16 pad02;
        s32 value;
        u8 pad08[8];
    } request;
    request.kind = 10;
    request.value = value;
    return sub_0805AB20(&request);
}
#ifdef NONMATCHING
s32 sub_08058DB0(void)
{
    u8 *players;
    u8 *current;
    s32 found = sub_0800CD8C() != 0;
    u32 i, count;
    players = (u8 *)gUnk_03003CE0;
    current = players + sub_080020F4() * 0x14C;
    if (*(u16 *)(current + 0x20) == 0xE)
        found = 1;
    players += 0x148;
    count = sub_08002164();
    for (i = 0; i < count; i++) {
        u8 *entry = players + i * 0x14C;
        void *ptr = *(void **)entry;
        if (ptr != 0 && ((*(u8 *)ptr >> 4) & 0xF) == 0xE)
            found = 1;
    }
    return found;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058DB0);
#endif
s32 sub_08058E08(void) {
    return M2C_FIELD(gUnk_030034E0, s32 *, 0x20);
}
void sub_08058E14(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) | (1 << arg0));
}
void sub_08058E28(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) & ~(1 << arg0));
}
s32 sub_08058E3C(s32 bit)
{
    return (M2C_FIELD(gUnk_03005CF4, u32 *, 0x6C) & (1 << bit)) != 0;
}
#ifdef NONMATCHING
void sub_08058E54(void)
{
    u32 result;
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) |= 1;
    sub_0800D0F4();
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x001404ED);
    while (sub_0805EEFC(result) == 0) {
        sub_080003F0();
        if (sub_0800CDF8() != 0) sub_0805EFBC();
    }
    state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) &= ~1u;
    sub_0800D108();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058E54);
#endif
#ifdef NONMATCHING
void sub_08058EF8(u32 arg0)
{
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    sub_080445E8(1, arg0);
    state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) &= ~1u;
    sub_0800D108();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058EF8);
#endif
#ifdef NONMATCHING
void sub_08058F4C(u32 arg0)
{
    u32 result;
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x00140107);
    while (sub_0805EEFC(result) == 0) {
        sub_080003F0();
        if (sub_0800CDF8() != 0) sub_0805EFBC();
    }
    sub_08029788(arg0);
    state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) &= ~1u;
    sub_0800D108();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08058F4C);
#endif
#ifdef NONMATCHING
void sub_08059000(u32 arg0)
{
    u32 result;
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x001401A5);
    while (sub_0805EEFC(result) == 0) {
        sub_080003F0();
        if (sub_0800CDF8() != 0) sub_0805EFBC();
    }
    sub_08029788(arg0);
    state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) &= ~1u;
    sub_0800D108();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08059000);
#endif
#ifdef NONMATCHING
void sub_080590B4(u32 arg0)
{
    u32 result;
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x001401A6);
    while (sub_0805EEFC(result) == 0) {
        sub_080003F0();
        if (sub_0800CDF8() != 0) sub_0805EFBC();
    }
    sub_08029788(arg0);
    state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) &= ~1u;
    sub_0800D108();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_080590B4);
#endif
#ifdef NONMATCHING
void sub_08059168(u32 arg0)
{
    u32 result;
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x001401A7);
    while (sub_0805EEFC(result) == 0) {
        sub_080003F0();
        if (sub_0800CDF8() != 0) sub_0805EFBC();
    }
    sub_08029788(arg0);
    state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) &= ~1u;
    sub_0800D108();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08059168);
#endif
#ifdef NONMATCHING
void sub_0805921C(u32 value)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    base[(sub_0800CE30() ? 0x1BC : 0x1B0)] = (u8)value;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_0805921C);
#endif
#ifdef NONMATCHING
void sub_08059250(u32 arg0)
{
    u32 result;
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x001401E0);
    while (sub_0805EEFC(result) == 0) {
        sub_080003F0();
        if (sub_0800CDF8() != 0) sub_0805EFBC();
    }
    state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) &= ~1u;
    sub_0800D108();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08059250);
#endif
#ifdef NONMATCHING
void sub_080592FC(void)
{
    u32 index=sub_080020F4(); u8 *entry=(u8 *)0x03003CE0+index*0x14C;
    *(u32 *)(entry+0x30)|=1; sub_0800D0F4(); sub_0802A19C();
    index=sub_080020F4(); entry=(u8 *)0x03003CE0+index*0x14C;
    *(u32 *)(entry+0x30)&=~1u; sub_0800D108();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_080592FC);
#endif
void sub_08059340(void)
{
  int new_var2;
  int new_var3;
  u8 *p;
  int new_var;
  new_var2 = 0xA;
  new_var3 = new_var2;
 do { new_var = new_var3; *(((u8 *) ((uintptr_t) gUnk_03005CF4)) + ((sub_0800CE30()) ? (0x1BD) : (0x1B1))) = new_var; } while (0);
}
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08059374);
#ifdef NONMATCHING
void sub_08059418(s32 arg0)
{
    u8 *player = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14C;
    *(u32 *)(player + 0x30) |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    sub_080445E8(sub_0800CE30() ? 3 : 2, arg0);
    player = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14C;
    *(u32 *)(player + 0x30) &= ~1u;
    sub_0800D108();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08059418);
#endif
INCLUDE_ASM("asm/nonmatchings/code_08058790", sub_08059488);
