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
void sub_0801E278(s32 arg0,u32 arg1)
{
    u32 i;
    u8 *entry,*found;
    register u32 type asm("r8")=100;
    register s32 invalid=-1;
    asm("" : "+r"(type));
again:
    entry=*(u8 **)(arg0+0x34);
    i=0;
scan:
    if(*(s16 *)entry!=invalid && *(u16 *)(entry+4)==arg1 && type==*(u16 *)(entry+2)) {
        found=entry;
    } else {
        i++;
        entry+=0x28;
        if(i>7) found=0;
        else goto scan;
    }
    if(found) {
        sub_0801DB94(*(u16 *)arg0,found,0);
        asm("" : "+r"(found));
        if(found) goto again;
    }
}
void sub_0801E2CC(s32 arg0,u32 arg1)
{
    u32 i;
    u8 *entry,*found;
    register u32 type asm("r8")=100;
    register s32 invalid=-1;
    asm("" : "+r"(type));
again:
    entry=(u8 *)(arg0+0x8C);
    i=0;
scan:
    if(*(s16 *)entry!=invalid && *(u16 *)(entry+4)==arg1 && type==*(u16 *)(entry+2)) {
        found=entry;
    } else {
        i++;
        entry+=0x28;
        if(i>7) found=0;
        else goto scan;
    }
    if(found) {
        sub_0801DB94(*(u16 *)arg0+4,found,0);
        asm("" : "+r"(found));
        if(found) goto again;
    }
}
struct RemoveEntry019 { u16 id:16; u16 type,key; u8 pad[34]; };
struct RemovePlayer019 { u8 pad[0x34]; struct RemoveEntry019 *entries; u8 tail[0x114]; };
extern struct RemovePlayer019 removePlayers019[] asm("gUnk_03003CE0");
extern void removeEntries019(u32,u32,u32) asm("sub_0801E324");
void removeEntries019(u32 type,u32 playerIndex,u32 key)
{
    struct RemoveEntry019 *entry=removePlayers019[playerIndex].entries;
    u32 i;
    for(i=0;i<8;i++,entry++) {
        if((s16)entry->id!=-1 && entry->key==key && entry->type==type)
            entry->id |= 0xFFFF;
    }
}
extern u32 statRead019(s32,s32) asm("sub_0801E0AC");
u16 sub_0801E378(s32 arg0,u16 value)
{
    u8 mode=sub_0801DE60();
    u32 first,second;
    switch(mode) {
    case 0:
        first=(second=statRead019(arg0,4));
        second=statRead019(arg0,4);
        value=(s32)((u32)((s16)value+2*(u16)first)*((u16)second+10))/10;
        break;
    case 3:
        first=statRead019(arg0,3);
        second=statRead019(arg0,3);
        value=(s32)((u32)((s16)value+2*(u16)first)*((u16)second+10))/10;
        break;
    }
    return value;
}
u16 sub_0801E3D8(s32 arg0,u16 value)
{
    u8 mode=sub_0801DE60();
    u32 first,second;
    switch(mode) {
    case 0:
        first=(second=statRead019(arg0,3));
        second=statRead019(arg0,3);
        value=(s32)((u32)((s16)value+2*(u16)first)*((u16)second+10))/10;
        break;
    case 3:
        first=statRead019(arg0,2);
        second=statRead019(arg0,2);
        value=(s32)((u32)((s16)value+2*(u16)first)*((u16)second+10))/10;
        break;
    }
    return value;
}
u16 sub_0801E438(s32 arg0, u32 arg1)
{
    u16 value;
    u8 mode;

    value = (u16)arg1;
    mode = sub_0801DE60();
    switch (mode) {
    case 0:
        value = sub_0801E0AC(arg0, 3) << 3;
        break;
    case 3:
        value = sub_0801E0AC(arg0, 2) << 3;
        break;
    }
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
void sub_0801E550(s32 arg0, s32 arg1, s32 arg2, s32 arg3)
{
    u8 *p;
    u32 i;
    u8 *base;
    s32 off;

    base = (u8 *) gUnk_03003CE0;
    off = arg1 * 0x14C;
    base = base + 0x34;
    p = *(u8 **) (base + off);
    i = 0;
    do {
        if (*(s16 *) p != -1 && *(u16 *) (p + 4) == arg2 && *(u16 *) (p + 2) == arg0) {
            *(u16 *) (p + 6) = arg3;
        }
        i++;
        p += 0x28;
    } while (i <= 7);
}
void sub_0801E594(void *arg0)
{
  u8 *p;
  u32 i;
  u32 mask;
  u16 v;
  p = arg0;
  i = 0;
  ;
  do
  {
    v = *((volatile u16 *) p);
    *((u16 *) p) = 0xFFFF;
    *((u16 *) p) = v | (*((u16 *) p));
    i++;
    p += 0x28;
  }
  while (i <= 7);
}
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801E5B0);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801E988);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801ED8C);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801EF14);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801F024);
#ifdef NONMATCHING
struct Sh20F1C4Packet { u8 player:8; u8 power:8; u8 impulse:8; s32 direction:8; u32 amount:16; u32 unused:16; };
void sub_0801F1C4(void *position, u8 *object, u16 amount)
{
    struct Sh20F1C4Packet packet;
    u16 angle;
    u32 impulse;
    extern u8 gUnk_084790B4[];
    extern void sub_080660EC(void *);
    *(u16 *)(object + 0xC) = 10;
    packet.amount = amount;
    packet.power = 0;
    packet.impulse = 2;
    angle = ArcTan2((s32)((*(s32 *)(object + 0x14) - *(s32 *)position) << 8) >> 16,
                    (s32)((*(s32 *)(object + 0x18) - *((s32 *)position + 1)) << 8) >> 16);
    packet.direction = gUnk_084790B4[angle >> 12];
    packet.player = object[2];
    *(u16 *)(object + 0x4A) = packet.amount + *(u16 *)(object + 0x4A);
    *(u32 *)(object + 0x4C) = packet.amount;
    *(u16 *)(object + 0x62) = packet.power;
    impulse = packet.impulse;
    *(u16 *)(object + 0x7C) = impulse;
    if (impulse & 0x80)
        packet.impulse = 0;
    if (*(u32 *)(object + 0x210) == 0xFF)
        packet.impulse = 0;
    sub_0801F2CC(object, (u8 *)&packet);
    *(s16 *)(object + 0x7E) = packet.direction;
    *(u16 *)(object + 0x58) = 100;
    *(u16 *)(object + 0x5A) |= 1 << *(u16 *)&gUnk_03003CE0[sub_080020F4()];
    sub_080660EC(&packet);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801F1C4);
#endif
struct Sh20F2CC { u8 pad[0x7C]; u16 duration; s16 direction; u16 speed; u16 value; };
struct Sh20F2CCData { u8 pad[2]; u8 value; s8 direction; };
void sub_0801F2CC(u8 *object, u8 *data)
{
  u8 duration;
  u8 value;
  int divisor;
  value = ((struct Sh20F2CCData *)data)->value;
  if (value != 0)
  {
    duration = value;
    duration /= (divisor = 4);
    ((struct Sh20F2CC *)object)->duration = duration;
    value = ((struct Sh20F2CCData *)data)->value;
    if (duration == 0)
    {
      ((struct Sh20F2CC *)object)->duration = 1;
      ((struct Sh20F2CC *)object)->speed = 0x100;
    }
    else
    {
      ((struct Sh20F2CC *)object)->speed = 0x400;
    }
    ((struct Sh20F2CC *)object)->value = value;
    ((struct Sh20F2CC *)object)->direction = ((struct Sh20F2CCData *)data)->direction;
  }
  else
  {
    ((struct Sh20F2CC *)object)->duration = value;
    ((struct Sh20F2CC *)object)->speed = value;
    ((struct Sh20F2CC *)object)->direction = value;
  }
}
struct Sh20F320 { u32 alignment; u8 pad[0xCA]; u16 duration; s16 direction; u16 speed; u16 value; };
struct Sh20F320Data { u8 pad[2]; u8 value; s32 direction:8; };
void sub_0801F320(u8 *object, u8 *data)
{



  u8 duration;
  u8 value;
  u8 initial;
  int divisor;
  initial = ((struct Sh20F320Data *)data)->value;
  if (initial != 0)
  {
    duration = initial;
    duration /= (divisor = 4);
    ((struct Sh20F320 *)object)->duration = duration;
    value = ((struct Sh20F320Data *)data)->value;
    if (duration == 0)
    {
      ((struct Sh20F320 *)object)->duration = 1;
      ((struct Sh20F320 *)object)->speed = 0x100;
    }
    else
    {
      ((struct Sh20F320 *)object)->speed = 0x400;
    }
    ((struct Sh20F320 *)object)->value = value;
    ((struct Sh20F320 *)object)->direction = ((struct Sh20F320Data *)data)->direction;
  }
  else
  {
    ((struct Sh20F320 *)object)->duration = initial;
    ((struct Sh20F320 *)object)->speed = initial;
    ((struct Sh20F320 *)object)->value = initial;
  }
}
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801F374);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801F79C);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801F99C);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801FB14);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801FC34);
#ifdef NONMATCHING
struct Sh20FD64 { u8 pad0[0x62]; s16 amount; u8 pad64[4]; u8 enabled; u8 rate; u8 pad6A[0x20]; u16 accumulator; u8 pad8C[0x50]; u32 current; u32 pending; u8 padE4[0x28]; u32 previous; };
void sub_0801FD64(void *arg0)
{

    u16 amount;
    u8 rate;
    u8 blocked;
    if (((struct Sh20FD64 *)arg0)->previous != ((struct Sh20FD64 *)arg0)->current && ((struct Sh20FD64 *)arg0)->enabled != 0) {
        rate = ((struct Sh20FD64 *)arg0)->rate;
        blocked = (u8)(0x80 & rate);
        if (blocked == 0 && rate != 0) {
            amount = (s32)(((struct Sh20FD64 *)arg0)->amount * ((struct Sh20FD64 *)arg0)->rate) / 100;
            if (amount == 0)
                amount = 1;
            ((struct Sh20FD64 *)arg0)->accumulator = amount + ((struct Sh20FD64 *)arg0)->accumulator;
            ((struct Sh20FD64 *)arg0)->previous = ((struct Sh20FD64 *)arg0)->current;
            ((struct Sh20FD64 *)arg0)->pending = blocked;
        }
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801FD64);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801FDD0);
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_08020680);
extern void t21_BC08(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
void t21_20D40(s32 arg0, s32 arg1) asm("sub_08020D40");
void t21_20D40(s32 arg0, s32 arg1)
{
    s16 x, y;
    u16 a, b;
    void *obj;
    s32 state;
    s32 px, py;
    obj = sub_080653CC();
    a = 0;
    b = 0;
    state = 0;
    px = (arg0 & 0xFFFF) << 8;
    py = (arg0 >> 16) << 8;
    while (sub_0800CB78() == 0 && state == 0) {
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0) {
            t21_BC08((px << 8) >> 16, py >> 8, &x, &y, 16, state);
            state = sub_08065370(obj, 32, (s32)&a, (s32)&b, state);
            sub_08065230(obj, x, y, 32, a);
        }
        sub_080003F0();
    }
    gUnk_03005CE4 &= ~(1 << arg1);
}
struct T21Anim20E08 { u32 a; u32 unused; u32 b; void *palette; u8 pad[12]; u8 sprite[24]; };
struct T21Player20E08 { u16 *position; u8 pad[0x148]; };
extern struct T21Player20E08 t21_players20E08[] asm("gUnk_03003E28");
struct T21Entity20E08 { u8 pad[0x14]; s32 x, y; u8 tail[0x2C4]; };
extern struct T21Entity20E08 *t21_entities20E08 asm("gUnk_030056F4");
extern void t21_init20E08(void *, u32, s32, s32, s32) asm("sub_08065158");
extern void t21_7870(s32, s32, s32, s32, u32, void *, u32, u32) asm("sub_08007870");
void t21_20E08(u32 arg0, s32 arg1) asm("sub_08020E08");
void t21_20E08(u32 arg0, s32 arg1)
{
    struct T21Anim20E08 data;
    u16 a, b;
    s16 x, y;
    s32 px, py;
    u16 state;
    s32 zero;
    u8 tile;
    u32 addr;
    u32 playerAddr;
    u16 *pos;
    struct T21Entity20E08 *entity;
    t21_init20E08(&data, 0x5008C, 1, -1, 0);
    sub_08000AF0(23, data.palette, 2);
    data.sprite[0] = 7;
    data.sprite[1] = 8;

    a = 0;
    b = 0;
    state = 0;
    if (sub_0800CCCC() == 0) sub_0805865C(0x180);
    while (sub_0800CB78() == 0 && state == 0) {
        state = sub_08065370(&data, 8, (s32)&a, (s32)&b, state);
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0) {
    if (arg0 <= 3) {
        playerAddr = arg0 * 0x14C;
        playerAddr += (u32)t21_players20E08;
        pos = *(u16 **)playerAddr;
        px = pos[0] >> 4;
        py = (u32)(pos[1] << 20) >> 20;
    } else {
        entity = t21_entities20E08;
        addr = arg0 * 0x2E0;
        addr += (u32)entity;
        addr -= 0xB80;
        px = *(s32 *)(addr + 0x14) >> 8;
        py = *(s32 *)(addr + 0x18) >> 8;
    }
            t21_BC08((s16)px, (s16)py, &x, &y, 16, 0);
            tile = sub_0800BC44(px, py, 0);
            if ((gUnk_03002344 & 1) == (arg1 & 1))
                t21_7870(x, y + 1, 8, a, tile, data.sprite, data.b, data.a);
        }
        sub_080003F0();
    }
    gUnk_03005CE4 &= ~(1 << arg1);
}
struct T21Anim20F74 { u32 a; u32 unused; u32 b; void *palette; u8 pad[12]; u8 sprite[24]; };
extern void t21_init20F74(void *, u32, s32, s32, s32) asm("sub_08065158");
extern void t21_7870(s32, s32, s32, s32, u32, void *, u32, u32) asm("sub_08007870");
void t21_20F74(s32 arg0, s32 arg1) asm("sub_08020F74");
void t21_20F74(s32 arg0, s32 arg1)
{
    struct T21Anim20F74 data;
    u16 a, b;
    s16 x, y;
    s32 px, py;
    u16 state;
    s32 zero;
    u32 tile;
    s32 dx, dy, sx;
    t21_init20F74(&data, 0x5008C, 1, -1, 0);
    sub_08000AF0(23, data.palette, 2);
    data.sprite[0] = 7;
    data.sprite[1] = 8;
    px = (arg0 & 0xFFFF) << 8;
    py = (arg0 >> 16) << 8;
    a = 0;
    b = 0;
    state = 0;
    while (sub_0800CB78() == 0 && state == 0) {
        state = sub_08065370(&data, 14, (s32)&a, (s32)&b, state);
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && (zero = sub_0800CCCC()) == 0) {
            if (gUnk_03002344 & 1) sub_08000AF0(23, data.palette, 2);
            dx = px >> 8;
            sx = (s16)dx;
            dy = py >> 8;
            t21_BC08(sx, dy, &x, &y, 16, zero);
            tile = sub_0800BC44(dx, dy, 0);
            t21_7870(x, y + 1, 14, a, (u8)tile, data.sprite, data.b, data.a);
        }
        sub_080003F0();
    }
    gUnk_03005CE4 &= ~(1 << arg1);
}
struct T21Anim210A8 { u32 a; u32 unused; u32 b; void *palette; u8 pad[12]; u8 sprite[24]; };
struct T21Player210A8 { u8 pad[0x148]; u16 *position; };
extern struct T21Player210A8 t21_players210A8[] asm("gUnk_03003CE0");
struct T21Entity210A8 { u8 pad[0x14]; s32 x, y; u8 tail[0x2C4]; };
extern struct T21Entity210A8 *t21_entities210A8 asm("gUnk_030056F4");
extern void t21_init210A8(void *, u32, s32, s32, s32) asm("sub_08065158");
void t21_210A8(u32 arg0, s32 arg1) asm("sub_080210A8");
void t21_210A8(u32 arg0, s32 arg1)
{
    struct T21Anim210A8 data;
    u16 a, b;
    s16 x, y;
    s32 px, py;
    u16 state;
    s32 zero;
    u32 tile, addr;
    u32 bit;
    u32 shifted, saved;
    u16 *pos;
    struct T21Entity210A8 *entity;
    t21_init210A8(&data, 0x50074, 1, -1, 0);
    sub_08000AF0(23, data.palette, 2);
    data.sprite[0] = 7;
    data.sprite[1] = 8;

    bit = arg0 >> 16;
    arg0 &= 65535;
    a = 0;
    b = 0;
    state = 0;
    while (sub_0800CB78() == 0 && state == 0) {
        shifted = arg1 << 16;
        state = sub_08065370(&data, shifted >> 16, (s32)&a, (s32)&b, state);
        zero = sub_0800CC98();
        saved = shifted;
        if (zero == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0) {
    if (arg0 <= 3) {
        pos = t21_players210A8[arg0].position;
        px = pos[0] >> 4;
        py = (u32)(pos[1] << 20) >> 20;
    } else {
        entity = t21_entities210A8;
        addr = arg0 * 0x2E0;
        addr += (u32)entity;
        addr -= 0xB80;
        px = *(s32 *)(addr + 0x14) >> 8;
        py = *(s32 *)(addr + 0x18) >> 8;
    }
            t21_BC08((s16)px, (s16)py, &x, &y, 16, 0);
            tile = sub_0800BC44(px, py, 0);
            t21_7870(x, y + 1, saved >> 16, a, (u8)tile, data.sprite, data.b, data.a);
        }
        sub_080003F0();
    }
    gUnk_03005CE4 &= ~(1 << bit);
}
struct T21Anim21214 { u32 a; u32 unused; u32 b; void *palette; u8 pad[12]; u8 sprite[24]; };
extern void t21_init21214(void *, u32, s32, s32, s32) asm("sub_08065158");
extern void t21_7870(s32, s32, s32, s32, u32, void *, u32, u32) asm("sub_08007870");
void t21_21214(u32 arg0, u32 arg1) asm("sub_08021214");
void t21_21214(u32 arg0, u32 arg1)
{
    struct T21Anim21214 data;
    u16 a, b;
    s16 x, y;
    u32 py, px, bit;
    s32 anim;
    u16 state;
    u16 id;
    s32 zero;
    u32 tile;
    t21_init21214(&data, 0x50074, 1, -1, 0);
    sub_08000AF0(23, data.palette, 2);
    data.sprite[0] = 7;
    data.sprite[1] = 8;
    py = arg0 >> 16;
    px = arg0 & 65535;
    bit = arg1 >> 16;
    arg1 &= 255;
    a = 0;
    b = 0;
    state = 0;
    sub_0805865C(arg1 + 0x115);
    while (sub_0800CB78() == 0 && state == 0) {
        id = arg1;
        state = sub_08065370(&data, id, (s32)&a, (s32)&b, state);
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && (zero = sub_0800CCCC()) == 0) {
            t21_BC08((s16)px, (s16)py, &x, &y, 16, zero);
            tile = sub_0800BC44(px, py, 0);
            t21_7870(x, y + 1, id, a, (u8)tile, data.sprite, data.b, data.a);
        }
        sub_080003F0();
    }
    gUnk_03005CE4 &= ~(1 << bit);
}
struct T21Anim2133C { u32 a; u32 unused; u32 b; void *palette; u8 pad[12]; u8 sprite[24]; };
struct T21Player2133C { u8 pad[0x148]; u16 *position; };
extern struct T21Player2133C t21_players2133C[] asm("gUnk_03003CE0");
struct T21Entity2133C { u8 pad[0x14]; s32 x, y; u8 tail[0x2C4]; };
extern struct T21Entity2133C *t21_entities2133C asm("gUnk_030056F4");
extern void t21_init2133C(void *, u32, s32, s32, s32) asm("sub_08065158");
void t21_2133C(u32 arg0, s32 arg1) asm("sub_0802133C");
void t21_2133C(u32 arg0, s32 arg1)
{
    struct T21Anim2133C data;
    u16 a, b;
    s16 x, y;
    s32 px, py;
    u16 state;
    s32 zero;
    u32 tile, addr;
    u16 *pos;
    struct T21Entity2133C *entity;
    t21_init2133C(&data, 0x5008C, 1, -1, 0);
    data.sprite[0] = 7;
    data.sprite[1] = 8;
    sub_08000AF0(23, data.palette, 2);
    a = 0;
    b = 0;
    state = 0;
    if (arg0 <= 3) {
        pos = t21_players2133C[arg0].position;
        px = pos[0] >> 4;
        py = (u32)(pos[1] << 20) >> 20;
    } else {
        entity = t21_entities2133C;
        addr = arg0 * 0x2E0;
        addr += (u32)entity;
        addr -= 0xB80;
        px = *(s32 *)(addr + 0x14) >> 8;
        py = *(s32 *)(addr + 0x18) >> 8;
    }
    while (sub_0800CB78() == 0 && state == 0) {
        state = sub_08065370(&data, 34, (s32)&a, (s32)&b, state);
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && (zero = sub_0800CCCC()) == 0) {
            t21_BC08((s16)px, (s16)py, &x, &y, 16, zero);
            tile = sub_0800BC44(px, py, 0);
            t21_7870(x, y + 1, 34, a, (u8)tile, data.sprite, data.b, data.a);
        }
        sub_080003F0();
    }
    gUnk_03005CE4 &= ~(1 << arg1);
}
struct T21Anim21490 { u32 a; u32 unused; u32 b; void *palette; u8 pad[12]; u8 sprite[24]; };
struct T21Player21490 { u8 pad[0x148]; u16 *position; };
extern struct T21Player21490 t21_players21490[] asm("gUnk_03003CE0");
struct T21Entity21490 { u8 pad[0x14]; s32 x, y; u8 tail[0x2C4]; };
extern struct T21Entity21490 *t21_entities21490 asm("gUnk_030056F4");
extern void t21_init21490(void *, u32, s32, s32, s32) asm("sub_08065158");
void t21_21490(u32 arg0, s32 arg1) asm("sub_08021490");
void t21_21490(u32 arg0, s32 arg1)
{
    struct T21Anim21490 data;
    u16 a, b;
    s16 x, y;
    s32 px, py;
    u16 state;
    s32 zero;
    u32 tile, addr;
    u16 *pos;
    struct T21Entity21490 *entity;
    t21_init21490(&data, 0x5008C, 1, -1, 0);
    sub_08000AF0(23, data.palette, 2);
    data.sprite[0] = 7;
    data.sprite[1] = 8;

    a = 0;
    b = 0;
    state = 0;
    while (sub_0800CB78() == 0 && state == 0) {
        state = sub_08065370(&data, 11, (s32)&a, (s32)&b, state);
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0) {
    if (arg0 <= 3) {
        pos = t21_players21490[arg0].position;
        px = pos[0] >> 4;
        py = (u32)(pos[1] << 20) >> 20;
    } else {
        entity = t21_entities21490;
        addr = arg0 * 0x2E0;
        addr += (u32)entity;
        addr -= 0xB80;
        px = *(s32 *)(addr + 0x14) >> 8;
        py = *(s32 *)(addr + 0x18) >> 8;
    }
            t21_BC08((s16)px, (s16)py, &x, &y, 16, 0);
            tile = sub_0800BC44(px, py, 0);
            t21_7870(x, y + 1, 11, a, (u8)tile, data.sprite, data.b, data.a);
        }
        sub_080003F0();
    }
    gUnk_03005CE4 &= ~(1 << arg1);
}
extern void t21_7870(s32, s32, s32, s32, u32, void *, u32, u32) asm("sub_08007870");
void t21_215E4(s32 arg0, s32 arg1) asm("sub_080215E4");
void t21_215E4(s32 arg0, s32 arg1)
{
    struct { u32 a; u32 unused; u32 b; u8 pad[0x10]; u8 sprite[0x18]; } data;
    s16 x, y;
    u16 timer;
    u32 px;
    s32 py;
    u8 tile;
    s32 zero;
    s32 sx, sy;
    u16 old;
    data.sprite[5] = 8;
        px = 0xFFFF;
    timer = 30;
    px &= arg0;
    py = arg0 >> 16;
    sx = px << 16;
    sy = py << 16;
    while (sub_0800CB78() == 0) {
        old = timer;
        timer = old - 1;
        if (old == 0) break;
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && (zero = sub_0800CCCC()) == 0) {
            tile = sub_0800BC44(px, py, 0);
            t21_BC08(sx >> 16, sy >> 16, &x, &y, 16, zero);
            t21_7870(x, y + 1, 1, 0, tile, data.sprite, data.b, data.a);
        }
        sub_080003F0();
    }
    gUnk_03005CE4 &= ~(1 << arg1);
}
struct T21Anim216BC { u32 a; u32 unused; u32 b; void *palette; u8 pad[12]; u8 sprite[24]; };
extern void t21_init216BC(void *, u32, s32, s32, s32) asm("sub_08065158");
void t21_216BC(s32 arg0, s32 arg1) asm("sub_080216BC");
void t21_216BC(s32 arg0, s32 arg1)
{
    struct T21Anim216BC data;
    u16 a, b;
    s16 x, y;
    s32 px, py;
    u16 state;
    s32 zero;
    u8 tile;
    s32 dx, dy;
    t21_init216BC(&data, 0x5008C, 1, -1, 0);
    sub_08000AF0(23, data.palette, 2);
    data.sprite[0] = 7;
    data.sprite[1] = 8;
    px = (arg0 & 0xFFFF) << 8;
    py = (arg0 >> 16) << 8;
    a = 0;
    b = 0;
    state = 0;
    while (sub_0800CB78() == 0 && state == 0) {
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && (zero = sub_0800CCCC()) == 0) {
            dx = px >> 8;
            dy = py >> 8;
            tile = sub_0800BC44(dx, dy, 0);
            state = sub_08065370(&data, 1, (s32)&a, (s32)&b, state);
            t21_BC08((s16)dx, dy, &x, &y, 16, zero);
            t21_7870(x, y + 1, 1, a, tile, data.sprite, data.b, data.a);
        }
        sub_080003F0();
    }
    gUnk_03005CE4 &= ~(1 << arg1);
}
struct T21Anim217D8 { u32 a; u32 unused; u32 b; void *palette; u8 pad[12]; u8 sprite[24]; };
struct T21Player217D8 { u8 pad[0x148]; u16 *position; };
extern struct T21Player217D8 t21_players217D8[] asm("gUnk_03003CE0");
struct T21Entity217D8 { u8 pad[0x14]; s32 x, y; u8 tail[0x2C4]; };
extern struct T21Entity217D8 *t21_entities217D8 asm("gUnk_030056F4");
extern void t21_init217D8(void *, u32, s32, s32, s32) asm("sub_08065158");
void t21_217D8(u32 arg0, s32 arg1) asm("sub_080217D8");
void t21_217D8(u32 arg0, s32 arg1)
{
    struct T21Anim217D8 data;
    u16 a, b;
    s16 x, y;
    s32 px, py;
    u16 timer;
    s32 anim;
    u32 index;
    s32 zero;
    u8 tile;
    u32 addr;
    u16 id;
    u16 *pos;
    struct T21Entity217D8 *entity;
    t21_init217D8(&data, 0x5008C, 1, -1, 0);
    data.sprite[0] = 7;
    data.sprite[1] = 8;
    sub_08000AF0(23, data.palette, 2);

    index = arg0 & 65535;
    anim = arg0 >> 16;
    if (index <= 3) {
        pos = t21_players217D8[index].position;
        px = pos[0] >> 4;
        py = (u32)(pos[1] << 20) >> 20;
    } else {
        entity = t21_entities217D8;
        addr = index * 0x2E0;
        addr += (u32)entity;
        addr -= 0xB80;
        px = *(s32 *)(addr + 0x14) >> 8;
        py = *(s32 *)(addr + 0x18) >> 8;
    }
    a = 0;
    b = 0;
    timer = 20;

    while (sub_0800CB78() == 0 && timer-- != 0) {
        if ((gUnk_03002344 & 1) == 0) py--;
        if (sub_0800CC98() == 0 && (zero = sub_0800CD8C()) == 0) {
            tile = sub_0800BC44(px, py, sub_0800CCCC());
            id = anim + 1;
            sub_08065370(&data, id, (s32)&a, (s32)&b, 1);
            t21_BC08((s16)px, (s16)py, &x, &y, 16, zero);
            t21_7870(x, y + 1, id, a, tile, data.sprite, data.b, data.a);
        }
        sub_080003F0();
    }    gUnk_03005CE4 &= ~(1 << arg1);
}
struct T21Anim21960 { u32 a; u32 unused; u32 b; void *palette; u8 pad[12]; u8 sprite[24]; };
struct T21Player21960 { u8 pad[0x148]; u16 *position; };
extern struct T21Player21960 t21_players21960[] asm("gUnk_03003CE0");
struct T21Entity21960 { u8 pad[0x14]; s32 x, y; u8 tail[0x2C4]; };
extern struct T21Entity21960 *t21_entities21960 asm("gUnk_030056F4");
extern void t21_init21960(void *, u32, s32, s32, s32) asm("sub_08065158");
void t21_21960(u32 arg0, s32 arg1) asm("sub_08021960");
void t21_21960(u32 arg0, s32 arg1)
{
    struct T21Anim21960 data;
    u16 a, b;
    s16 x, y;
    s32 px, py;
    u16 timer;
    s32 anim;
    u32 index;
    s32 zero;
    u32 tile, addr;
    u16 *pos;
    struct T21Entity21960 *entity;
    t21_init21960(&data, 0x5008C, 1, -1, 0);
    data.sprite[0] = 7;
    data.sprite[1] = 8;
    sub_08000AF0(23, data.palette, 2);

    index = arg0 & 65535;
    anim = arg0 >> 16;
    if (index <= 3) {
        pos = t21_players21960[index].position;
        px = pos[0] >> 4;
        py = (u32)(pos[1] << 20) >> 20;
    } else {
        entity = t21_entities21960;
        addr = index * 0x2E0;
        addr += (u32)entity;
        addr -= 0xB80;
        px = *(s32 *)(addr + 0x14) >> 8;
        py = *(s32 *)(addr + 0x18) >> 8;
    }
    a = 0;
    b = 0;
    timer = 60;
    anim--;
    while (sub_0800CB78() == 0 && timer-- != 0) {
        if ((gUnk_03002344 & 3) == 0) py--;
        if (sub_0800CC98() == 0 && (zero = sub_0800CD8C()) == 0) {
            sub_0800BC44(px, py, sub_0800CCCC());
            sub_08065370(&data, (u16)(anim + 0x22), (s32)&a, (s32)&b, 1);
            t21_BC08((s16)px, (s16)py, &x, &y, 16, zero);
            sub_08065230(&data, x, y + 1, anim + 0x23, a);
        }
        sub_080003F0();
    }    gUnk_03005CE4 &= ~(1 << arg1);
}
struct T21Anim21AD8 { u32 a; u32 unused; u32 b; void *palette; u8 pad[12]; u8 sprite[24]; };
extern void t21_init21AD8(void *, u32, s32, s32, s32) asm("sub_08065158");
void t21_21AD8(u32 arg0, u32 arg1) asm("sub_08021AD8");
void t21_21AD8(u32 arg0, u32 arg1)
{
    struct T21Anim21AD8 data;
    s16 x, y;
    u16 states[1];
    u32 xs[1];
    u32 ys[1];
    u16 a[1];
    u16 b[1];
    u32 i;
    s32 completed;
    u32 mode;
    s32 zero, cond;
    u32 *px, *py;
    u32 dx, dy;
    u16 current;
    u8 tile;
    zero = sub_0800CD34();
    if (zero != 0) return;
    t21_init21AD8(&data, 0x5008C, 1, -1, zero);
    data.sprite[0] = 7;
    data.sprite[1] = 8;
    sub_08000AF0(23, data.palette, 2);
    mode = arg1 >> 16;
    arg1 &= 65535;
    xs[0] = arg0 & 65535;
    ys[0] = arg0 >> 16;
    b[0] = zero;
    states[0] = zero;
    a[0] = zero;
    completed = 0;
    while (sub_0800CB78() == 0 && completed == 0 && (cond = sub_0800CCCC()) == 0) {

        completed = cond;
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0) {
            i = 0;



            do {
                current = states[i];
                if (current == 0) {
                    px = &xs[i];
                    dx = *px;
                    py = &ys[i];
                    dy = *py;
                    tile = sub_0800BC44(dx, dy, sub_0800CCCC());
                    states[i] = sub_08065370(&data, 41, (s32)&a[i], (s32)&b[i], current);
                    t21_BC08(*(s16 *)px, *(s16 *)py, &x, &y, 16, current);
                    if (mode != 0)
                        t21_7870(x, y + 1, 41, a[i], tile, data.sprite, data.b, data.a);
                    else
                        sub_08065230(&data, x, y, 41, a[i]);
                } else {
                    completed++;
                }



                i++;
            } while (i == 0);
        }
        sub_080003F0();
    }
    gUnk_03005CE4 &= ~(1 << arg1);
}
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
