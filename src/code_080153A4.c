#include "global.h"
extern u32 gA03005700[] asm("gUnk_03005700");
extern u32 gW030042E8 asm("gUnk_030042E8");
extern u32 gW030056F0 asm("gUnk_030056F0");
extern u16 gH03005724 asm("gUnk_03005724");
extern u32 gW030056F8 asm("gUnk_030056F8");
extern u32 gW030056FC asm("gUnk_030056FC");
extern u8 *gP030056F4 asm("gUnk_030056F4");

void sub_0800BC08(s32, s32, u16 *, s16 *, s32, s32);
extern u8 gUnk_03003E28[];

void sub_080153A4(void)
{
    struct PlayerW12 *p = (struct PlayerW12 *)&gUnk_03003CE0[sub_080020F4()];
    u16 angle;
    if (p->state != 0xD && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
        sub_0805865C(p->w26 + 0xF9);
    angle = (u16)(p->w26 * 40 + 0x80);
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
void sub_08015464(void)
{
    struct PlayerW12 *p = (struct PlayerW12 *)&gUnk_03003CE0[sub_080020F4()];
    u16 saved = p->w26;
    register u16 *done asm("r6");
    u32 initial;
    if (p->state != 0xD && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
        sub_0805865C(saved + 0xF9);
    {
        register u16 *view asm("r0") = &p->wB6;
        register u32 loaded asm("r1") = *view;
        asm("" : "+r"(view), "+r"(loaded));
        done = view;
        initial = loaded;
        asm("" : "+r"(done));
    }
    while (initial == 0 && p->state == 5) {
        u32 *counter = (u32 *)((u8 *)p + 0xDC);
            switch (*(u16 *)((u8 *)p + 0xB2)) {
            case 2:
            case 5:
            case 7:
                if (*(u16 *)((u8 *)p + 0xB4) == 1)
                    (*counter)++;
                break;
            }
            sub_080003F0();
            initial = *done;

    }
    if ((u16)(p->state - 10) > 1) {
        if ((p->flags & 0x2000) == 0)
            p->state = 0;
    }
    p->w24 = 0;
    p->w28 = p->w26;
    p->w26 = 0;
    p->w122 = 0;
}


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
void sub_08015DC0(s32 *p)
{
    s32 v = *p;
    if (v <= 23) {
        *p = v - 8;
        if (*p <= 0) *p = 0;
    } else {
        *p = v - (v >> 1);
    }
}
void sub_08015DE0(s32 *value, s32 target)
{
    s32 current = *value;
    s32 step = (target - current) >> 1;
    *value = step > 0 ? current + step : current + 1;
    if (target <= *value)
        *value = target;
}
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
extern u16 gUnk_0847ACE8[];
u32 sub_08015E84(u8 *arg0)
{
    register s32 signedByte asm("r2") = (s8)arg0[0x6C];
    register s32 half asm("r1");
    asm("" : "+r"(signedByte));
    half = signedByte * 5;
    asm("" : "+r"(half));
    {
        s32 i = 7;
        register u16 *table asm("r2") = gUnk_0847ACE8;
        register s32 delta asm("r6") = half * 2;
        s16 *value;
        table += 7;
        asm("" : "+r"(table), "+r"(delta));
        value = (s16 *)(arg0 + 0xC2);
        for (; i >= 0; table--, i--) {
            u16 threshold = delta + *table;
            s32 current;
            if ((s16)threshold < 0)
                threshold = 0;
            asm("" : : : "memory");
            current = *value;
            asm("" : "+r"(current));
            if (current >= (s16)threshold)
                return (u16)i;
    }
    return 0;
    }
}



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
void sub_08016114(void)
{
    u8 *p;
    u32 i;
    u32 z;
    u32 *q;
    gP030056F4 = (u8 *)sub_08001494(0xE60);
    gW030056FC = 0;
    gW030056F8 = 0;
    gH03005724 = 0;
    gW030056F0 = sub_08001494(0x50);
    gW030042E8 = sub_08001494(0x10);
    p = gP030056F4;
    i = 0;
    z = 0;
    for (; i <= 4; i++, p += 0x2E0) {
        sub_0807A064(i + 4);
        *(u16 *)(p + 0) = z;
        *(u16 *)(p + 8) = z;
        *(u16 *)(p + 0xC) = z;
        *(u16 *)(p + 0x10) = z;
        *(u32 *)(p + 0x14) = z;
        *(u32 *)(p + 0x18) = z;
        *(u16 *)(p + 0x4A) = z;
    }
    {
    u32 z2;
    for (i = 0, z2 = 0, q = gA03005700; i <= 2; q += 3, i++) {
        q[2] = z2;
        q[1] = z2;
        q[0] = z2;
    }
    }
}
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
struct Record1681C { u8 *source; u8 kind, sound; u16 extra; };
struct State1681C { u16 x,y,flags,index,f8,fA,fC,fE,kind,sound; u8 *source; };
extern struct Record1681C *volatile records1681C asm("gUnk_030042E8");
extern s32 step1681C(struct State1681C *) asm("sub_0801641C");
extern s32 position1681C(s32 *) asm("sub_08017F7C");
extern void sound1681C(u8,u32,s32) asm("sub_080571A4");
void sub_0801681C(u16 index) {
    struct State1681C state;
    struct { s32 x, y; } coords;
    register struct Record1681C *record asm("r3");
    register struct Record1681C *loaded asm("r0");
    register u32 value asm("r1");
    register struct State1681C *statePtr asm("r2");
    u8 *source, *entry;
    s32 kind;
    s32 *pos;
    loaded = records1681C;
    record = (struct Record1681C *)(index * 8 + (u32)loaded);
    source = record->source;
    kind = record->kind & ~0x80;
    statePtr = &state;
    entry = source + kind * 8;
    statePtr->x = *(u16 *)(entry + 0xA);
    statePtr->y = *(u16 *)(entry + 0xC);
    state.source = source;
    statePtr->flags = *(u16 *)(entry + 8);
    statePtr->f8 = *(u16 *)(entry + 0xE);
    state.kind = record->kind;
    state.sound = record->sound;
    state.fC = *(u16 *)(source + 0x32);
    state.fE = *(u16 *)(source + 0x34);
    state.index = record->extra + kind;
    state.fA = *(u16 *)(source + 0x30);
    coords.x = state.x << 11;
    value = state.y << 11;
    coords.y = value;
    pos = &coords.x;
    for (;;) {
        value = state.flags;
        if (!(0x4000 & value) && position1681C(pos) == 0) break;
        sub_080003F0();
        if (sub_0800CB78() != 0 || sub_08056E90() != 0 || records1681C[index].kind == 0xFF || step1681C(&state) != 0)
            goto done;
    }
    sound1681C((u8)state.sound, (u8)state.kind & 0x7F, 1);
done:
    sub_080003F0();
    gUnk_03005724 &= ~(1u << index);
}
#ifdef NONMATCHING
extern volatile u16 bits168FC asm("gUnk_03005724");
struct Pair168FC { u32 first, second; };
extern struct Pair168FC *pairs168FC asm("gUnk_030042E8");
extern struct Task *volatile tasks168FC asm("gUnk_030056F0");
extern void callback168FC(void) asm("sub_0801681C");
extern void sound168FC(u8,u8,s32) asm("sub_080571A4");
s32 sub_080168FC(struct Pair168FC *arg) {
    u16 index;
    s32 mask;
    struct Task *task;
    u32 memory;
    index = 0;
    mask = bits168FC;
    goto test;
next:
    index++;
    if (index > 1) goto full;
    mask = (s32)bits168FC >> index;
test:
    if (mask & 1) goto next;
    if (index > 1) {
full:
        if (sub_08002204() != 0)
            sound168FC(((u8 *)arg)[5], ((u8 *)arg)[4], 1);
        return -1;
    }
    pairs168FC[index] = *arg;
    tasks168FC[index].uC = callback168FC;
    for (;;) {
        memory = sub_08001494(0x200);
        task = tasks168FC;
        task = (struct Task *)(index * 0x28 + (u8 *)task);
        task->u20 = memory;
        if (memory != 0) break;
        sub_080003F0();
    }
    task->u10 = memory + 0x1FC;
    task->u8 = index + 0x96;
    task->u18 = 0;
    task->u0 = 0;
    task->u24 = 0;
    sub_08000274(task, index);
    bits168FC |= 1u << index;
    return 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_080168FC);
#endif
extern void sound169C8(u8,u8,s32) asm("sub_080571A4");
void sub_080169C8(void) {
    register u32 i asm("r5");
    u32 taskOffset;
    u32 objectOffset;
    register u32 j asm("r5");
    register u32 secondOffset asm("r4");
    s32 *secondBase;
    register u32 loopZero asm("r1");
    register u32 k asm("r5");
    u16 *flag;
    u32 *word1, *word2;
    u32 zero;
    u8 *task, *object;
    u32 *entry;
    i = 0; objectOffset = 0; taskOffset = 0;
    do {
        task = (u8 *)&gUnk_03004220 + taskOffset;
        if (sub_08000470((u32)task) != 0) {
            sub_080003A8((s32)task);
            object = (u8 *)(objectOffset + (u32)gP030056F4);
            *(u16 *)(object + 0x5C) = 0;
            *(u16 *)(object + 0xC) = 11;
            sound169C8(object[0x86], object[0x84], 3);
        }
        objectOffset += 0x2E0; taskOffset += 0x28; i++;
    } while (i <= 4);
    j = 0; secondBase = &gUnk_030056F0; secondOffset = 0;
    do {
        if (sub_08000470(*secondBase + secondOffset) != 0)
            sub_080003A8(*secondBase + secondOffset);
        secondOffset += 0x28; j++;
    } while (j <= 1);
    k = 0;
    flag = &gUnk_03005724; word1 = &gW030056FC; word2 = &gW030056F8;
    loopZero = 0;
    entry = gA03005700;
    do {
        entry[2] = loopZero; entry[1] = loopZero; entry[0] = loopZero;
        entry += 3; k++;
    } while (k <= 2);
    zero = 0;
    *flag = zero;
    *word1 = zero;
    *word2 = zero;
}
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08016A7C);
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08016B30);
s32 sub_08016C88(s32 arg0, s32 arg1, s32 arg2, s32 arg3, u16 arg4)
{
  s16 dx;
  s16 dy;
  u32 angle;
  u32 idx;
  u32 t;
  s16 px;
  s16 py;
  s16 qx;
  s16 qy;
  s32 s0;
  u32 *new_var;
  s0 = arg0 << 8;
  t = arg1 << 8;
  px = arg2;
  qx = s0 >> 16;
  dx = px - qx;
  py = arg3;
  qy = (s16) (t >> 16);
  new_var = &t;
  dy = py - qy;
  if (Sqrt((dx * dx) + (dy * dy)) > ((s16) arg4))
  {
    angle = ArcTan2(dx, dy);
    t = angle << 19;
    idx = angle >> 13;
    if ((*new_var) > 0x80000000)
    {
      if (idx <= 6)
      {
        idx++;
      }
      else
      {
        idx = 0;
      }
    }
    if (idx > 7)
    {
      return 0;
    }
    switch (idx)
    {
      case 0:
        return 0x10;

      case 1:
        return 0x90;

      case 2:
        return 0x80;

      case 3:
        return 0xA0;

      case 4:
        return 0x20;

      case 5:
        return 0x60;

      case 6:
        return 0x40;

      case 7:
        return 0x50;

    }

  }
  return 0;
}
extern s32 aimD40(s32,s32,s32,s32,s32) asm("sub_08016C88");
void sub_08016D40(u8 *object, u16 arg) {
    u8 *source;
    u16 *volatile *packed;
    u32 zero;
    u32 count;
    u16 *counter;
    if (object[0x201] & 2) {
        source = gP030056F4 + (object[0x1FC] >> 4) * 0x2E0;
        *(s32 *)(object + 0x24) = *(s32 *)(source + 0x14) >> 8;
        *(s32 *)(object + 0x28) = *(s32 *)(source + 0x18) >> 8;
    } else {
        source = (u8 *)gUnk_03003CE0 + (object[0x1FC] >> 4) * 0x14C;
        packed = (u16 *volatile *)(source + 0x148);
        *(s32 *)(object + 0x24) = (*packed)[0] >> 4;
        *(s32 *)(object + 0x28) = ((u32)(*packed)[1] << 20) >> 20;
    }
    if (gUnk_03002344 % 25 == *(u16 *)object * 5)
        *(u16 *)(object + 4) = aimD40(*(s32 *)(object + 0x14), *(s32 *)(object + 0x18), *(s32 *)(object + 0x24), *(s32 *)(object + 0x28), (s16)arg);
    counter = (u16 *)(object + 0x44);
    count = *counter + 1;
    zero = 0;
    *counter = count;
    if ((u16)count > 180) {
        *counter = zero;
        *(u16 *)(object + 4) = zero;
    }
}
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08016E04);
extern u32 gW6ECC_56F8 asm("gUnk_030056F8");
extern u32 gT6ECC_5700 asm("gUnk_03005700");
void sub_08016ECC_u16(u16 arg0) asm("sub_08016ECC");
void sub_08016ECC_u16(u16 arg0)
{
  u32 *flagp;
  u32 mask;
  u32 flags;
  u32 *tbl;
  u32 off;
  u16 idx;
  idx = arg0 - 4;
  flagp = &gW6ECC_56F8;
  mask = 1 << idx;
  flags = *flagp;
  if (flags & mask)
  {
    tbl = &gT6ECC_5700;
    off = (idx * 3) * 4;
    if ((*((u32 *) ((((u8 *) (&gT6ECC_5700)) + off) + 8))) <= 1)
    {
      *((u32 *) (((u8 *) tbl) + off)) = 0;
      *((u32 *) ((((u8 *) (&gT6ECC_5700)) + off) + 4)) = 0;
      *((u32 *) ((((u8 *) (&gT6ECC_5700)) + off) + 8)) = 0;
      *flagp = flags & (~mask);
    }
    else
    {
      *((u32 *) ((((u8 *) (&gT6ECC_5700)) + off) + 8)) = (*((u32 *) ((((u8 *) (&gT6ECC_5700)) + off) + 8))) - 1;
    }
  }
}
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08016F28);
struct T015CEntity { u16 id; u8 pad2[0xA]; u16 kind; u8 padE[6]; s32 x,y; u8 pad1C[0x5A]; u16 cursor; u8 pad78[2]; u16 flags; u8 pad7C[0x194]; u32 active; u8 pad214[0x1A]; u8 radius; };
extern struct T015CEntity *T015CEntities asm("gUnk_030056F4");
extern u8 T015CDirections[] asm("gUnk_084790B4");
extern u8 T015CAngles[] asm("gUnk_0849E730");
extern u16 T015CProbe(u8,s32,s32,s32) asm("sub_0800B118");
void sub_08017C6C(struct T015CEntity *p) {
    register s32 x asm("r8");
    register s32 y asm("r9");
    s32 dx,ax;
    register s32 delta asm("r5");
    u16 *cp;
    s16 dy;
    register u32 angle asm("r0");
    register s32 idx asm("r1");
    register u32 cosindex asm("r1");
    register u32 finalindex asm("r0");
    register s32 finalproduct asm("r0");
    register u8 *anglesptr asm("r1");
    register u32 minus asm("r4");
    register u32 hitraw asm("r0");
    register u32 hit asm("r1");
    s32 ay;
    register s32 index asm("r2");
    u32 sumraw;
    u16 cursor;
    u32 nextvalue;
    register u32 offset asm("r0");
    register u32 *flagptr asm("r0");
    register u32 angleword asm("r0");
    register u32 *phaseptr asm("r0");
    register u32 phase asm("r1");
    register u32 id asm("r2");
    register u32 bit asm("r0");
    register u32 mask asm("r1");
    register struct T015CEntity **baseptr asm("r1");
    register struct T015CEntity *base asm("r1");
    register u32 loadtemp asm("r0");
    register u32 dxraw asm("r1");
    register u32 dyraw asm("r0");
    register s32 deltaraw asm("r2");
    register s32 product asm("r1");
    register s32 signedangle asm("r3");
    s32 cosine;
    register u32 cursorraw asm("r3");
    register u32 one asm("r5");
    u32 radiusraw;
    u32 flags;
    register u16 radius asm("sl");
    u16 dist;
    register s32 px asm("r4");
    register s32 py asm("r2");
    register s16 *sines asm("r6");
    u8 r;
    register struct T015CEntity *q asm("r3");
    x=p->x; y=p->y;
    cp=&p->cursor; loadtemp=*cp;
    cursorraw=loadtemp << 16;
    cursor=cursorraw >> 16;
    if ((u16)cursor>4) goto reset;
    phaseptr=&gUnk_03002344;
    phase=*phaseptr;
    one=1;
    phase &= one;
    id=p->id;
    bit=one;
    bit &= id;
    if (phase != bit) return;
    flags=p->flags & 0xFFEF; p->flags=flags;
    radiusraw=p->radius << 16;
    r=radiusraw >> 16;
    if (!radiusraw || p->active==0xFF) goto next;
    baseptr=&T015CEntities;
    index=(s32)cursorraw >> 16;
    offset=index*0x2E0;
    base=*baseptr;
    q=(struct T015CEntity *)((u8 *)base+offset);
    flagptr=&gUnk_030056FC;
    mask=one<<index;
    if (!(*flagptr & mask) || p->kind==0xB) goto next;
    sumraw=(q->radius+(u16)r)<<16;
    radius=sumraw>>16;
    asm("" : "+r"(radius));
    if (!sumraw) goto next;
    dxraw=q->x;
    dxraw=(x-dxraw)<<8;
    dyraw=(u32)((y-q->y)<<8)>>16;
    dx=(s32)dxraw>>16;
    ax=dx; if(dx<0) ax=-dx;
    if(ax>7) goto next;
    dy=dyraw;
    ay=dy; if(dy<0) ay=-dy;
    if(ay>7) goto next;
    mask=0x10;
    bit=flags;
    bit |= mask;
    p->flags=bit;
    dist=Sqrt(dx*dx+dy*dy);
    angle=(u16)ArcTan2(dx,dy)>>8;
    deltaraw=((s16)radius-(s16)dist)<<16;
    sines=gUnk_080B9704;
    angleword=(u32)angle << 16;
    signedangle=(s32)angleword >> 16;
    cosindex=signedangle+0x40;
    cosine=sines[cosindex];
    delta=deltaraw>>17;
    product=cosine*delta;
    px=x+product;
    product=sines[signedangle]*delta;
    py=y+product;
    hitraw=T015CProbe(T015CDirections[angleword>>20],px,py,0)<<16;
    hit=hitraw>>16;
    if(hitraw) {
        hitraw=hit<<16;
        anglesptr=T015CAngles;
        minus=0xFFFF0000;
        hitraw=(s32)(hitraw+minus)>>15;
        idx=(s32)(*(u16 *)(hitraw+(u32)anglesptr)<<20)>>16;
        finalindex=idx+0x40;
        finalproduct=sines[finalindex]*delta;
        px=x+finalproduct;
        finalproduct=sines[idx]*delta;
        py=y+finalproduct;
        p->x=px; p->y=py;
    }

next:
    cp=&p->cursor; nextvalue=*cp+1; *cp=nextvalue;
    if((u16)nextvalue<=5) return;
reset:
    *cp=p->id+1;
}







s32 sub_08017E34(s32 *arg0) {
    u8 *base;
    u32 n;
    u32 i;
    s32 result;
    s16 *pb;
    struct {
        u16 a;
        s16 b;
    } buf;

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
struct T015ERect { u32 x:16; u32 y:16; };
struct T015EPos { u16 x, y; u8 flags:6; u8 rest:2; };
struct T015EPlayer { u8 pad[0x148]; struct T015EPos *pos; };
extern struct T015EPlayer T015EPlayers[] asm("gUnk_03003CE0");
extern s32 T015ETest(s32 *, void *, s32 *, u32 *) asm("sub_08021FE0");
s32 sub_08017EC8(u8 *arg0)
{
    s32 pos[2];
    s32 size;
    u32 rect;
    register s32 found asm("r8");
    struct T015EPlayer *p;
    register u32 count asm("r5");
    register u32 i asm("r6");
    register u8 *lo asm("r2");
    register u32 high asm("r1");
    if (*(u16 *)(arg0 + 0x7A) & 0x40) return 1;
    size = 0x014001E0;
    lo = arg0 + 0x22E;
    asm("" : "+r"(lo));
    high = arg0[0x22F] << 16;
    asm("" : "+r"(high), "+r"(lo));
    rect = *lo | high;
    found = 0;
    asm("" : "+r"(found));
    count = sub_08002164();
    p = T015EPlayers;
    i = 0;
    if ((u32)found < count) do {
        if (!(((u32)(p->pos->flags << 26) >> 26) & 0x20)) {
            pos[0] = (p->pos->x >> 4) << 8;
            pos[1] = ((u32)p->pos->y << 20) >> 12;
            if (T015ETest(pos, arg0 + 0x14, &size, &rect)) found = 1;
        }
        i++;
        p++;
    } while (i < count);
    asm("" : "+r"(count), "+r"(i), "+r"(found));
    return found;
}
