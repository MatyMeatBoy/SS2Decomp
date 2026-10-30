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
struct CombatCtx019 { u8 pad[0x14]; u16 resist[6]; u8 pad20[8]; u16 key; };
struct CombatActor019 { u8 pad[0x1CC]; u16 attack,defense; u8 pad1D0[0x34]; struct CombatCtx019 ctx; };
s32 sub_0801EF14(void *arg0,void *arg1)
{
    struct CombatActor019 *src=arg0,*dst=arg1;
    u8 *record;
    register struct CombatCtx019 *ctx=&src->ctx;
    register u16 *resists;
    register u32 varianceWord;
    register u16 *defensePtr;
    u16 attack,defense,variance,resistance,result,firstDamage,element;
    u32 damage;
    s32 scaled,weighted,r;
    record=(u8 *)sub_08007290(ctx->key|0xB0000);
    defensePtr=&dst->defense;
    attack=src->attack;
    defense=*defensePtr;
    varianceWord=(u16)sub_080008C8()%50;
    varianceWord<<=16;
    varianceWord+=0x640000;
    variance=varianceWord>>16;
    scaled=(s32)((u32)attack*attack*10)/(attack+defense);
    weighted=(s32)((u32)scaled*variance)/200;
    {
        register u32 quotient asm("r1")=(u16)weighted;
        asm("" : "+r"(quotient));
        firstDamage=quotient/10U;
    }
    if(!firstDamage) firstDamage=1;
    element=*(u16 *)(record+0xBC);
    damage=firstDamage;
    resists=dst->ctx.resist;
    switch(element-1U) {
    case 0: resistance=resists[0]; goto attenuate;
    case 1: resistance=resists[1]; goto attenuate;
    case 2: resistance=resists[2]; goto attenuate;
    case 3: resistance=resists[3]; goto attenuate;
    case 4: resistance=resists[4]; goto attenuate;
    case 5:case 6: resistance=resists[5];
attenuate:
        damage=(u16)((s32)(damage*5000)/((s16)resistance*(s16)resistance+2500));
        if(damage&0x8000) damage=1;
        break;
    }
    {
        register u32 finishWord asm("r0")=damage;
        asm("" : "+r"(finishWord));
        finishWord<<=16;
        result=finishWord>>16;
        if((s32)finishWord<=0) result=1;
        return result;
    }
}
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_0801F024);
extern s32 sub_080020F4(void);
extern void sub_0801F2CC(u8 *,u8 *);
struct Sh20F1C4Packet { u8 player:8; u8 power:8; u8 impulse:8; s32 direction:8; u32 amount:16; u32 unused:16; };
void sub_0801F1C4(void *position, u8 *object, u16 amount)
{
    struct Sh20F1C4Packet packet;
    u16 angle;
    register u32 impulse asm("r2");
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
    asm("" ::: "r1", "r2");
    *(u16 *)(object + 0x4A) = packet.amount + *(u16 *)(object + 0x4A);
    *(u32 *)(object + 0x4C) = packet.amount;
    {
        register u32 power asm("r0") = packet.power;
        asm("" : "+r"(power));
        *(u16 *)(object + 0x62) = power;
    }
    {
        register u32 shifted asm("r1") = *(u32 *)&packet << 8;
        asm("" : "+r"(shifted));
        impulse = shifted >> 24;
    }
    *(u16 *)(object + 0x7C) = impulse;
    {
        register u32 check asm("r1") = impulse;
        asm("" : "+r"(check));
        if (check & 0x80)
            *(u32 *)&packet &= 0xFF00FFFF;
    }
    if (*(u32 *)(object + 0x210) == 0xFF)
        *(u32 *)&packet &= 0xFF00FFFF;
    sub_0801F2CC(object, (u8 *)&packet);
    {
        register s32 direction asm("r0") = packet.direction;
        asm("" : "+r"(direction));
        *(s16 *)(object + 0x7E) = direction;
    }
    *(u16 *)(object + 0x58) = 100;
    {
        s32 selected = sub_080020F4();
        register u16 *flags asm("r3") = (u16 *)(object + 0x5A);
        register u32 players asm("r2") = (u32)gUnk_03003CE0;
        asm("" : "+r"(flags), "+r"(players));
        *flags |= 1 << *(u16 *)(players + selected * 0x14C);
    }
    sub_080660EC(&packet);
}
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
extern u8 directions02074[] asm("gUnk_084790B4");
extern u8 players02074[] asm("gUnk_03003CE0");
extern u8 *inventory02074 asm("gUnk_030034E0");
extern u16 amount02074(void *,void *,void *,s32) asm("sub_0801E5B0");
extern void hit02074(void *,void *,s32,u16,s32) asm("sub_08069388");
extern void notify02074(void *) asm("sub_080660EC");
extern void display02074(void *,u16,s32,u16,s32,s32) asm("sub_08069080");
extern void status02074(u16,s32) asm("sub_080680B4");
extern void *lookup02074(u8 *,s32) asm("sub_0801E104");
extern void critical02074(u16) asm("sub_08068030");
struct Packet02074 {u8 player:8;u8 power:8;u8 impulse:8;s32 direction:8;u32 amount:16;u32 unused:16;};
void sub_0801F374(u8 *source,u8 *target,u8 *attack,s32 flags)
{
    struct Packet02074 packet;
    u32 critical;
    u16 angle;
    u16 dealt;
    s16 chance;
    s32 status;
    void *other;
    if(sub_080682A4()!=0) return;
    critical=0;
    if(flags&1) {
        packet.amount=amount02074(source,target,attack,1)|0x8000;
        packet.power=0;
        packet.impulse=0;
        packet.direction=0;
    } else {
        *(u16 *)(target+0xC)=10;
        packet.amount=amount02074(source,target,attack,0);
        packet.impulse=attack[0xA9];
        packet.impulse+=source[0x72];
        packet.impulse-=*(u32 *)(target+0x210);
        if(packet.impulse&0x80) packet.impulse=0;
        if(*(u32 *)(target+0x210)==0xFF) packet.impulse=0;
        angle=ArcTan2((s32)((*(s32 *)(target+0x14)-*(s32 *)(source+0x8C))<<8)>>16,(s32)((*(s32 *)(target+0x18)-*(s32 *)(source+0x90))<<8)>>16);
        packet.direction=directions02074[angle>>12];
        if(*(u16 *)(source+0x20)==5 && *(u16 *)(source+0x10)==8)
            packet.amount=(s32)(packet.amount*(((u32)(*(u32 *)(*(u8 **)(source+0x148)+4)<<15)>>29)+5))/10;
        if(target[0x226]==1 && source[0x76]!=0)
            packet.amount=(s32)(packet.amount*source[0x76])/10;
        if(target[0x226]==2 && source[0x75]!=0)
            packet.amount=(s32)(packet.amount*source[0x75])/10;
        if(*(u16 *)(source+0xC)==2) {
            if(target[0x226]==1)
                packet.amount=(s32)(packet.amount*((u16)sub_0801E0AC((s32)(inventory02074+0x30),4)*4+10))/10;
            chance=(s32)(100*sub_0801E0AC((s32)(inventory02074+0x30),3))/((s16)(*(s16 *)(target+0x208)/5)+50);
            if((u32)chance>sub_080008C8()%100U) {
                critical=1;
                sub_0805865C(0x132);
            }
        }
        *(u16 *)(source+0xC4)+=(s32)((dealt=packet.amount)*(s8)source[0x6A])/100;
        *(u16 *)(source+0xC2)+=((s32)(dealt*(s8)source[0x6B])/100)*10;
        if(*(s16 *)(source+0xC4)>*(s16 *)(source+0x62)) *(u16 *)(source+0xC4)=*(u16 *)(source+0x62);
        if(*(s16 *)(source+0xC2)>*(s16 *)(source+0x60)) *(u16 *)(source+0xC2)=*(u16 *)(source+0x60);
    }
    hit02074(&packet,target+0x218,0,*(u16 *)(attack+0xBC),(u16)(*(u16 *)target+4));
    status=sub_0801E244((s32)target,packet.power);
    if(status!=0) sub_0801DB94(*(u16 *)target+4,(void *)status,packet.power);
    else {
        other=lookup02074(target,0);
        if(other!=0) sub_0801DB94(*(u16 *)target+4,other,packet.power);
    }
    if(packet.power==3) sub_08021E44(*(u16 *)target+4,1);
    packet.player=*(u16 *)(target+2);
    { u32 i=sub_080020F4(); u16 *p=(u16 *)(target+0x5A); u8 *pl=players02074; *p|=1<<*(u16 *)(pl+i*0x14C); }

    *(u32 *)(target+0x54)=*(u32 *)(source+0xDC);
    *(u16 *)(target+0x4A)+=packet.amount&0x7FFF;
    *(u32 *)(target+0x4C)=packet.amount;
    { u8 pw=packet.power; *(u16 *)(target+0x62)=pw; }
    if(target[0x226]!=3) {
        *(u16 *)(target+0x6C)=0;
        *(u16 *)(target+0x6A)=0;
        {u16 *q=(u16 *)(target+0x68); u16 k=0xFFFE; *q=k;}

    }
    sub_0801F2CC(target,(u8 *)&packet);
    { u16 sid=*(u16 *)source; *(u16 *)(target+0x58)=sid; }
    notify02074(&packet);
    display02074(target+0x218,*(u16 *)(target+0x4A),0,*(u16 *)source,*(u16 *)target+4,*(u16 *)(attack+0xBC));
    if(*(u16 *)(source+0xC)==5) {
        chance=sub_0801E0AC((s32)(inventory02074+0x30),6);
        if((u32)chance>(sub_080008C8()&0x3F)) status02074(*(u16 *)(target+2),6);
    }
    if(critical) critical02074(*(u16 *)(target+2));
}
extern u8 directions02079[] asm("gUnk_084790B4");
extern u16 amount02079(void *,void *,void *,s32) asm("sub_0801E988");
extern void hit02079(void *,void *,s32,u16,s32) asm("sub_08069388");
extern void notify02079(void *) asm("sub_080660EC");
extern void display02079(void *,s32,s32,u16,s32,s32) asm("sub_08069080");
struct Packet02079 {u8 player:8;u8 power:8;u8 impulse:8;s32 direction:8;u32 amount:16;u32 unused:16;};
void sub_0801F79C(u8 *source,u8 *target,u8 *attack,s32 flags)
{
    struct Packet02079 packet;



    u8 *position;
    void *display;
    struct Packet02079 *packetAddress;
    u32 *history;
    u32 historyIndex;
    u16 angle;
    if(flags&1) {
        packet.amount=amount02079(source,target,attack,1)|0x8000;
        packet.power=0;
        packet.impulse=0;
        packet.direction=0;
    } else {
        packet.amount=amount02079(source,target,attack,0);
        packet.impulse=attack[0xA9];
        position=*(u8 **)(target+0x148);
        angle=ArcTan2((s16)((*(u16 *)position>>4)-(*(s32 *)(source+0x8C)>>8)),(s16)(((u32)((u32)*(u16 *)(position+2)<<20)>>20)-(*(s32 *)(source+0x90)>>8)));
        packet.direction=directions02079[angle>>12];
        if(*(u16 *)(source+0x20)==5 && *(u16 *)(source+0x10)==8)
            packet.amount=(s32)(packet.amount*(((u32)(*(u32 *)(*(u8 **)(source+0x148)+4)<<15)>>29)+5))/10;
    }
    packetAddress=&packet;
    display=target+0x4C;
    hit02079(packetAddress,display,1,*(u16 *)(attack+0xBC),*(u16 *)target);
    *(u16 *)(source+0xC4)+=(s32)((packetAddress->amount&0xFFFF7FFF)*(s8)source[0x6A])/100;
    *(u16 *)(source+0xC2)+=((s32)((packetAddress->amount&0xFFFF7FFF)*((s32)((u32)source[0x6B]<<24)>>24))/100)*10;
    if(*(s16 *)(source+0xC4)>*(s16 *)(source+0x62)) *(u16 *)(source+0xC4)=*(u16 *)(source+0x62);
    if(*(s16 *)(source+0xC2)>*(s16 *)(source+0x60)) *(u16 *)(source+0xC2)=*(u16 *)(source+0x60);
    historyIndex=*(u16 *)source*4;
    history=(u32 *)(target+0xF8);
    asm("" : "+r"(history) : "r"(historyIndex));
    *(u32 *)((u8 *)history+historyIndex)=*(u32 *)(source+0xDC);
    packetAddress->player=*(u16 *)target;
    notify02079(packetAddress);
    display02079(display,packetAddress->amount&0x7FFF,0,*(u16 *)source,*(u16 *)target,*(u16 *)(attack+0xBC));
}







extern u8 *scene02099 asm("gUnk_03005CF4");
extern void damage02099(u32,u32,u8) asm("sub_08028368");
struct Size02099 { u32 width:16; u32 height:16; };
struct Item02099 { s32 x,y; u8 pad8[8]; u16 hp; u16 f12; u16 state; u8 pad16[10]; u8 *data; };
struct Player02099 { u8 pad0[0x58]; u16 power; u8 pad5A[0x14C-0x5A]; };
extern struct Player02099 gPl02099[] asm("gUnk_03003CE0");
static inline s32 coll02099(s32 *pos,struct Item02099 *item,u16 *box,struct Size02099 *sz)
{
    s32 dx,dy,r;
    dx=(pos[0]-item->x)>>8;
    dy=(pos[1]-item->y)>>8;
    if((dx<0?-dx:dx)<=(box[0]+sz->width)>>1 && (dy<0?-dy:dy)<=(box[1]+sz->height)>>1) r=1; else r=0;
    return r;
}
s32 sub_0801F99C(s32 *pos, u16 *box)
{
    struct Size02099 size;
    struct Item02099 *item;
    u32 index;
    register u32 dm asm("r0");
    u16 power,defense,random;
    u32 damage;
    if(*(u32 *)(scene02099+0x48)==0) return 0;
    item=(struct Item02099 *)(scene02099+0x58C);
    for(index=0;index<*(u32 *)(scene02099+0x48);index++,item++) {
        if((u16)(item->state-10)<=2) continue;
        if(item->data[6]&3) continue;
        size.width=*(u16 *)(item->data+0xC);
        size.height=*(u16 *)(item->data+0xE);
        if(coll02099(pos,item,box,&size)) {
            power=gPl02099[sub_080020F4()].power;
            defense=*(u16 *)(item->data+2);
            random=((((u16)sub_080008C8()%50U)<<16)+0x640000)>>16;
            dm=(u16)((u16)((s32)(random*((s32)(power*power*10)/(s32)(power+defense)))/100)/10U);
            if(dm==0) dm=1;
            damage=dm;
            item->hp-=damage;
            item->f12=(u8)sub_0801DE60();
            sub_0805865C(0x1A);
            if(item->hp&0x8000) item->hp=0;
            damage02099(index,damage,sub_0801DE60());
            item->state=10;
            return 1;
        }
    }
    return 0;
}
extern u8 sub_0801DE60(void);
extern u8 *scene02014 asm("gUnk_03005CF4");
extern u8 players02014[] asm("gUnk_03003CE0");
extern void damage02014(u32,s32,u8) asm("sub_08028368");
union Size02014 { volatile u32 word; struct { u32 width:16; u32 height:16; } fields; };
s32 sub_0801FB14(void *arg0, void *arg1, s32 damage)
{
    union Size02014 size;
    u8 *item;
    register u8 *data asm("r2");
    u32 count;
    register u32 refreshed asm("r0");
    register u32 index asm("r6");
    s32 dx;
    s32 dy;
    register s32 hit asm("r0");
    register u32 sizeWord asm("r0");
    register u32 width asm("r2");
    register u32 heightBits asm("r2");
    register u32 keepMask asm("r1");
    register u8 *position asm("r12") = arg0;
    u16 *bounds = arg1;
    register union Size02014 *sizePtr asm("r5");
    register s32 savedDamage asm("r8") = damage;
    register u8 **sceneAddress asm("r9");
    register u8 *initialScene asm("r1");
    register u32 initialCount asm("r2");
    s32 rawX, rawY;




    initialScene=scene02014;
    initialCount=*(u32 *)(initialScene+0x48);
    asm("" : : "r"(initialCount));
    sceneAddress=&scene02014;
    count=initialCount;
    if(count==0) return 0;
    item=initialScene+0x58C;
    index=0;
    if(index<count) do {
        if((u16)(*(u16 *)(item+0x14)-10)<=2) goto next;
        data=*(u8 **)(item+0x20);
        if(data[6]&3) goto next;

        width=*(u16 *)(data+0xC);
        keepMask=0xFFFF0000;
        sizeWord=size.word;
        sizeWord=(sizeWord&keepMask)|width;
        size.word=sizeWord;
        heightBits=(u32)*(u16 *)(*(u8 **)(item+0x20)+0xE)<<16;
        keepMask=0xFFFF;
        sizeWord=(sizeWord&keepMask)|heightBits;
        size.word=sizeWord;
        sizePtr=&size;
        {
            register s32 *coordinates asm("r1") = (s32 *)position;
            rawX=coordinates[0]-*(s32 *)item;
            rawY=coordinates[1]-*(s32 *)(item+4);
        }
        dy=rawY>>8;
        dx=rawX>>8;
        if(dx<0) dx=-dx;
        {
        if(dx <= (s32)(bounds[0]+size.fields.width)>>1) {

            register s32 absoluteY asm("r2") = dy;
            register u32 boundHeight asm("r1");
            register u32 objectHeight asm("r0");
            if(absoluteY<0) absoluteY=-absoluteY;
            boundHeight=bounds[1];
            asm("" : "+r"(boundHeight));
            objectHeight=sizePtr->fields.height;
            boundHeight=boundHeight+objectHeight;
            boundHeight=(s32)boundHeight>>1;
            hit=1;
            if(absoluteY>(s32)boundHeight) hit=0;
        } else hit=0;
        }
        asm("" : "+r"(hit));
        if(hit) {
            register u32 zero asm("r5");
            register u32 reduced asm("r0")=*(u16 *)(item+0x10);
            register s32 damageCopy asm("r2")=savedDamage;
            asm("" : "+r"(damageCopy) : "r"(reduced));
            reduced-=damageCopy;
            zero=0;
            *(u16 *)(item+0x10)=reduced;
            *(u16 *)(item+0x12)=sub_0801DE60();
            if(*(u16 *)(item+0x10)&0x8000) {
                damage02014(index,0xFFF,sub_0801DE60());
                *(u16 *)(item+0x10)=zero;
            } else {
                damage02014(index,savedDamage,sub_0801DE60());
            }
            *(u16 *)(item+0x14)=10;
            return 1;
        }
next:
        index++;
        item+=0x24;
        {
            register u8 **address asm("r1") = sceneAddress;
            refreshed=*(u32 *)(*address+0x48);
        }
    } while(index<refreshed);
    return 0;
}
extern u8 sub_0801DE60(void);
extern u8 *scene02034 asm("gUnk_03005CF4");
extern s32 damage02034(u32, s32, u8) asm("sub_08028368");
union Size02034 { volatile u32 word; struct { u32 width:16; u32 height:16; } fields; };
/* Preserve r0 on skipped entries and the effect helper's result on hits. */
s32 sub_0801FC34(void *arg0, void *arg1, s32 damage)
{
    union Size02034 size;
    u8 *item;
    register u8 *position asm("r10") = arg0;
    register s32 result asm("r0") = (s32)position;
    register u16 *bounds asm("r9") = arg1;
    register s32 savedDamage asm("r8") = damage;
    register u8 **sceneAddress asm("r12");
    register u8 **initialAddress asm("r1");
    register u8 *initialScene asm("r2");
    register u32 initialCount asm("r3");
    u32 index;
    register u32 refreshed asm("r1");
    register u8 *data asm("r3");
    register u32 sizeWord asm("r1");
    register u32 width asm("r3");
    register u32 heightBits asm("r3");
    register u32 keepMask asm("r2");
    register union Size02034 *sizePtr asm("r6");
    register s32 dy asm("r5");
    register s32 hit asm("r1");
    s32 rawX, dx;
    register s32 rawY asm("r1");
    initialAddress=&scene02034;
    initialScene=*initialAddress;
    initialCount=*(u32 *)(initialScene+0x48);
    asm("" : : "r"(initialCount));
    sceneAddress=initialAddress;
    if(initialCount==0) return 0;
    item=initialScene+0x58C;
    index=0;
    if(index<initialCount) do {
        if((u16)(*(u16 *)(item+0x14)-10)<=2) goto next;
        data=*(u8 **)(item+0x20);
        if(data[6]&1) goto next;
        width=*(u16 *)(data+0xC);
        keepMask=0xFFFF0000;
        sizeWord=size.word;
        sizeWord=(sizeWord&keepMask)|width;
        size.word=sizeWord;
        heightBits=(u32)*(u16 *)(*(u8 **)(item+0x20)+0xE)<<16;
        keepMask=0xFFFF;
        sizeWord=(sizeWord&keepMask)|heightBits;
        size.word=sizeWord;
        sizePtr=&size;
        {
            register s32 *coordinates asm("r2") = (s32 *)position;
            rawX=coordinates[0]-*(s32 *)item;
            rawY=coordinates[1];
            {
                register s32 otherY asm("r2") = *(s32 *)(item+4);
                asm("" : "+r"(rawY), "+r"(otherY));
                rawY-=otherY;
            }
        }
        dy=rawY>>8;
        dx=rawX>>8;
        if(dx<0) dx=-dx;
        {
            register u16 *widthBounds asm("r2") = bounds;
            if(dx <= (s32)(widthBounds[0]+size.fields.width)>>1) {
                register s32 absoluteY asm("r3") = dy;
                register u32 boundHeight asm("r2");
                register u32 objectHeight asm("r1");
                if(absoluteY<0) absoluteY=-absoluteY;
                {
                register u16 *heightBounds asm("r1") = bounds;
                boundHeight=heightBounds[1];
                asm("" : "+r"(boundHeight));
                objectHeight=sizePtr->fields.height;
                boundHeight=boundHeight+objectHeight;
                boundHeight=(s32)boundHeight>>1;
                hit=1;
                if(absoluteY>(s32)boundHeight) hit=0;
                }
            } else hit=0;
        }
        asm("" : "+r"(hit));
        if(hit) {
            register u32 zero asm("r5");
            register u32 reduced asm("r0")=*(u16 *)(item+0x10);
            register s32 damageCopy asm("r2")=savedDamage;
            asm("" : "+r"(damageCopy) : "r"(reduced));
            reduced-=damageCopy;
            zero=0;
            *(u16 *)(item+0x10)=reduced;
            *(u16 *)(item+0x12)=sub_0801DE60();
            if(*(u16 *)(item+0x10)&0x8000) {
                *(u16 *)(item+0x10)=zero;
                result=damage02034(index,0xFFF,sub_0801DE60());
            } else {
                result=damage02034(index,savedDamage,sub_0801DE60());
            }
            *(u16 *)(item+0x14)=10;
            sceneAddress=&scene02034;
        }
next:
        index++;
        item+=0x24;
        {
            register u8 **address asm("r2") = sceneAddress;
            refreshed=*(u32 *)(*address+0x48);
        }
        asm("" : "+r"(result));
    } while(index<refreshed);
    return result;
}
struct Sh20FD64 { u8 pad0[0x62]; s16 amount; u8 pad64[4]; u8 enabled; u8 rate; u8 pad6A[0x20]; u16 accumulator; u8 pad8C[0x50]; u32 current; u32 pending; u8 padE4[0x28]; u32 previous; };
void sub_0801FD64(void *arg0)
{

    u16 amount;
    u8 rate;
    u32 blocked;
    u8 *rateAddress;
    if (((struct Sh20FD64 *)arg0)->previous != ((struct Sh20FD64 *)arg0)->current && ((struct Sh20FD64 *)arg0)->enabled != 0) {
        rateAddress=&((struct Sh20FD64 *)arg0)->rate;
        rate = *rateAddress;
        blocked = (u8)(0x80 & rate);
        if (blocked == 0 && rate != 0) {
            asm("" : : : "memory");
            amount = (s32)(((struct Sh20FD64 *)arg0)->amount * *rateAddress) / 100;
            if (amount == 0)
                amount = 1;
            ((struct Sh20FD64 *)arg0)->accumulator = amount + ((struct Sh20FD64 *)arg0)->accumulator;
            ((struct Sh20FD64 *)arg0)->previous = ((struct Sh20FD64 *)arg0)->current;
            ((struct Sh20FD64 *)arg0)->pending = blocked;
        }
    }
}
extern s32 call020DD_0800086C(void) asm("sub_0800086C");
extern u32 call020DD_080008C8(void) asm("sub_080008C8");
extern u32 call020DD_08002164(void) asm("sub_08002164");
extern s32 call020DD_0800CD8C(void) asm("sub_0800CD8C");
extern u8 call020DD_0801DE60(void) asm("sub_0801DE60");
extern s32 call020DD_0801F024(void *,s32,s32 *,void *,s32,s32) asm("sub_0801F024");
extern void call020DD_0801F374(void *,void *,void *,s32) asm("sub_0801F374");
extern void call020DD_0801F79C(void *,void *,void *,s32) asm("sub_0801F79C");
extern void call020DD_0801FD64(void *) asm("sub_0801FD64");
extern void call020DD_08022100(s32) asm("sub_08022100");
extern void call020DD_080223F4(s32,s32) asm("sub_080223F4");
extern void call020DD_08028368(u32,u16,u8) asm("sub_08028368");
extern void call020DD_0805865C(s32) asm("sub_0805865C");
extern void * call020DD_0805AD18(void) asm("sub_0805AD18");
extern u8 data020DD_03000060 asm("gUnk_03000060");
extern u8 *data020DD_030034E0 asm("gUnk_030034E0");
extern u8 data020DD_03003CE0 asm("gUnk_03003CE0");
extern u8 *data020DD_030056F4 asm("gUnk_030056F4");
extern s32 data020DD_030056FC asm("gUnk_030056FC");
extern u8 *data020DD_03005CF4 asm("gUnk_03005CF4");
extern u8 data020DD_0848FEE4 asm("gUnk_0848FEE4");
extern u8 data020DD_0848FEE8 asm("gUnk_0848FEE8");
extern u8 data020DD_0848FEEC asm("gUnk_0848FEEC");
extern u8 data020DD_0848FEF0 asm("gUnk_0848FEF0");
extern u8 data020DD_0848FF30 asm("gUnk_0848FF30");
extern u8 data020DD_0848FF34 asm("gUnk_0848FF34");
extern u8 data020DD_0848FF38 asm("gUnk_0848FF38");
extern u8 data020DD_0848FF3C asm("gUnk_0848FF3C");
extern u8 data020DD_0848FF40 asm("gUnk_0848FF40");
extern u8 data020DD_0848FF44 asm("gUnk_0848FF44");
extern u8 data020DD_0848FF48 asm("gUnk_0848FF48");
extern u8 data020DD_0848FF4C asm("gUnk_0848FF4C");
extern u8 data020DD_0848FF50 asm("gUnk_0848FF50");
extern u8 data020DD_0849E760 asm("gUnk_0849E760");
extern u8 data020DD_0849E770 asm("gUnk_0849E770");
struct InvFDD0 { u8 pad[0x68]; u16 sel; u8 pad6A[6]; struct { u8 b[16]; } items[16]; };
struct Copy4FDD0 { u8 b[4]; };
struct PosFDD0 { s32 x,y; };
struct OffFDD0 { s32 x,y; };
extern u8 atkFDD0[] asm("gUnk_03000060");
extern u8 *invFDD0 asm("gUnk_030034E0");
extern u8 *sceneFDD0 asm("gUnk_03005CF4");
extern u8 playersFDD0[] asm("gUnk_03003CE0");
extern u8 *enemiesFDD0 asm("gUnk_030056F4");
extern u32 maskFDD0 asm("gUnk_030056FC");
extern u16 limAFDD0[] asm("gUnk_0849E760");
extern u16 limBFDD0[] asm("gUnk_0849E770");
extern struct OffFDD0 offFDD0[] asm("gUnk_0848FEF0");
extern u8 cEC_FDD0[] asm("gUnk_0848FEEC");
extern u8 cE4_FDD0[] asm("gUnk_0848FEE4");
extern u8 cE8_FDD0[] asm("gUnk_0848FEE8");
extern u8 c38_FDD0[] asm("gUnk_0848FF38");
extern u8 c30_FDD0[] asm("gUnk_0848FF30");
extern u8 c34_FDD0[] asm("gUnk_0848FF34");
extern u8 c3C_FDD0[] asm("gUnk_0848FF3C");
extern u8 c40_FDD0[] asm("gUnk_0848FF40");
extern u8 c44_FDD0[] asm("gUnk_0848FF44");
extern u8 c48_FDD0[] asm("gUnk_0848FF48");
extern u8 c4C_FDD0[] asm("gUnk_0848FF4C");
extern u8 c50_FDD0[] asm("gUnk_0848FF50");
extern u8 *tmplFDD0(void) asm("sub_0805AD18");
extern s32 testFDD0(u8 *,u16,struct PosFDD0 *,void *,s32,s32) asm("sub_0801F024");
extern void hitEFDD0(u8 *,u8 *,u8 *,s32) asm("sub_0801F374");
extern void hitPFDD0(u8 *,u8 *,u8 *,s32) asm("sub_0801F79C");
extern void missFDD0(s32,s32) asm("sub_080223F4");
extern void dmgFDD0(u32,u32,u8) asm("sub_08028368");
#define COPY4(t) (atkFDD0[0xA5]=(t)[0],atkFDD0[0xA6]=(t)[1],atkFDD0[0xA7]=(t)[2],atkFDD0[0xA8]=(t)[3])
void sub_0801FDD0(u8 *p)
{
    struct PosFDD0 pos;
    struct PosFDD0 qpos;
    u8 *tmpl;
    u32 kind;
    s32 power; s32 *pp=&power;
    u8 *team;
    u32 i;
    u8 *e;
    u8 *item;
    u8 *q;
    u8 *qh;
    u8 *qt;
    u8 *spr;
    u32 *id;
    u32 *id2;
    s32 ok;
    s32 h;
    register u32 chance asm("r4");
    u16 pw,def,random;
    register u32 dm asm("r0");
    u32 damage;
    u8 t;
    tmpl=tmplFDD0();
    memcpy(atkFDD0,tmpl,0xC4);
    if(*(u16 *)(atkFDD0+0xBC)==0)
        *(u16 *)(atkFDD0+0xBC)=((struct InvFDD0 *)invFDD0)->items[((struct InvFDD0 *)invFDD0)->sel].b[7];
    pos=*(struct PosFDD0 *)(p+0x8C);
    switch(*(u16 *)(p+0x20)) {
    case 2:
        if(*(u16 *)(p+0x122)<=15) *(u32 *)(p+0x30)|=0x200000;
        if(*(u16 *)(p+0x64)>9) {
            if(*(u16 *)(*(u8 **)(p+0x138)+0x24)!=*(u16 *)(p+0xB2)) return;
        } else if(limAFDD0[(u8)sub_0801DE60()]!=*(u16 *)(p+0xB2)) return;
        if(*(u16 *)(p+0xB4)!=1) return;
        if(*(u32 *)(p+0x30)&0x200000) atkFDD0[0xA9]+=0x18;
        power=*(s16 *)(p+0x3A);
        break;
    case 5:
        power=*(s16 *)(p+0x3A)*3;
        switch((u8)sub_0801DE60()) {
        case 0:
            if(limBFDD0[0]>*(u16 *)(p+0xB2)) return;
            if(*(u16 *)(p+0xB4)!=1) return;
            t=atkFDD0[0x9B];
            if(t==2) { COPY4(cEC_FDD0); atkFDD0[0xA9]+=10; }
            else if(t==1) { atkFDD0[0xA9]+=8; COPY4(cE4_FDD0); }
            else if(t==3) COPY4(cE8_FDD0);
            break;
        case 3:
            if(limBFDD0[3]>*(u16 *)(p+0xB2)) return;
            if(*(u16 *)(p+0xB4)!=1) return;
            t=atkFDD0[0x9B];
            if(t==2) { COPY4(c38_FDD0); atkFDD0[0xA9]+=10; }
            else if(t==4) {
                if(*(u16 *)(p+0xB2)<=4) {
                    atkFDD0[0xA9]=0;
                    COPY4(c30_FDD0);
                    pos.x+=offFDD0[*(s16 *)(p+0x1C)].x<<8;
                    pos.y+=offFDD0[*(s16 *)(p+0x1C)].y<<8;
                } else COPY4(c34_FDD0);
            }
            break;
        case 4:
            t=atkFDD0[0x9B];
            if(t==4) {
                if(*(u16 *)(p+0xB2)!=0 && *(u16 *)(p+0xB2)!=3) return;
                COPY4(c3C_FDD0);
            } else if(t==5) {
                if(limBFDD0[(u8)sub_0801DE60()]>*(u16 *)(p+0xB2)) return;
                if(*(u16 *)(p+0xB4)!=1) return;
                atkFDD0[0xA9]+=0x10;
                COPY4(c40_FDD0);
            }
            break;
        case 5:
            t=atkFDD0[0x9B];
            if(t==6) {
                if(*(u16 *)(p+0xB2)==1) {
                    if(*(u16 *)(p+0xB4)!=1) return;
                } else {
                    COPY4(c44_FDD0);
                    atkFDD0[0xA9]+=8;
                }
            } else if(t==8) COPY4(c48_FDD0);
            break;
        case 1:
            switch(*(u16 *)(p+0xB2)) {
            case 2: case 5: case 7: break;
            default: return;
            }
            if(*(u16 *)(p+0xB4)!=1) return;
            COPY4(c4C_FDD0);
            if(atkFDD0[0x9B]!=5) return;
            break;
        case 6:
            if(limBFDD0[(u8)sub_0801DE60()]>*(u16 *)(p+0xB2)) return;
            if(*(u16 *)(p+0xB4)!=1) return;
            if(atkFDD0[0x9B]!=5) return;
            COPY4(c50_FDD0);
            atkFDD0[0xA9]+=0x10;
            break;
        case 7:
            if(*(u16 *)(p+0xB2)!=4) return;
            atkFDD0[0xA9]+=8;
            break;
        default:
            return;
        }
        break;
    default:
        return;
    }
    sub_0801FD64(p);
    kind=*(u16 *)(p+0x1C);
    i=0;
    team=p+0x68;
    goto echeck;
eloop:
        if(!(maskFDD0&(1<<i))) goto enext;
        e=enemiesFDD0+i*0x2E0;
        if((u16)(*(u16 *)(e+0xC)-11)<=1) goto enext;
        id=(u32 *)(p+0xDC);
        ok=*id!=*(u32 *)(e+0x54);
        if(e[0x1DC]==*team) ok=0;
        if(e[0x1DC]==0) ok=0;
        if(!ok) goto enext;
        if(testFDD0(atkFDD0,kind,&pos,e+0x14,e[0x22E],e[0x22F])==0) goto enext;
        {s16 *d=(s16 *)(e+0x206); {register u16 c asm("r4")=((((s16)power+10)*125)/((s16)power+*d+20)); chance=c;}}
        {u16 r=(u16)((u16)sub_080008C8()%100); if((s16)chance>=r) h=1; else h=0;}
        if(h) {
            hitEFDD0(p,e,atkFDD0,0);
            sub_0805865C(0x1A);
            if(*(u32 *)(p+0x30)&0x200000) sub_08022100(*(u16 *)e+4);
        } else { register u32 b asm("r1")=sub_0800086C()&1; if(!b) {
            hitEFDD0(p,e,atkFDD0,1);
            sub_0805865C(0x1A);
        } else {
            missFDD0(*(s32 *)(e+0x14),*(s32 *)(e+0x18));
            *(u32 *)(e+0x54)=*id;
            sub_0805865C(0x55);
        } }
enext:
        i++;
echeck:
    if(i<=4 && sub_0800CD8C()==0) goto eloop;
    item=sceneFDD0+0x58C;
    for(i=0;i<*(u32 *)(sceneFDD0+0x48);i++,item+=0x24) {
        if((u16)(*(u16 *)(item+0x14)-10)<=2) continue;
        if((*(u8 **)(item+0x20))[6]&3) continue;
        if(testFDD0(atkFDD0,kind,&pos,item,*(u16 *)(*(u8 **)(item+0x20)+0xC),*(u16 *)(*(u8 **)(item+0x20)+0xE))==0) continue;
        pw=*(u16 *)(p+0x58);
        def=*(u16 *)(*(u8 **)(item+0x20)+2);
        random=((((u16)sub_080008C8()%50U)<<16)+0x640000)>>16;
        dm=(u16)((u16)((s32)(random*((s32)(pw*pw*10)/(s32)(pw+def)))/100)/10U);
        if(dm==0) dm=1;
        damage=dm;
        *(u16 *)(item+0x10)-=damage;
        *(u16 *)(item+0x12)=(u8)sub_0801DE60();
        dmgFDD0(i,damage,sub_0801DE60());
        if(*(u16 *)(item+0x10)&0x8000) *(u16 *)(item+0x10)=0;
        *(u16 *)(item+0x14)=10;
        switch((*(u8 **)(item+0x20))[7]) {
        case 0: sub_0805865C(0x29); break;
        case 1: sub_0805865C(0x2A); break;
        case 2: sub_0805865C(0x2B); break;
        }
    }
    if(*team<=2) return;
    {u32 st=0x14C; for(q=playersFDD0,i=0,qh=q+0xF8,qt=q+0x68;i<sub_08002164() && sub_0800CD8C()==0;i++,qh+=st,qt+=st,q+=st) {
    if(q==p) continue;
    t=*qt;
    if(t<=2) continue;
    if(t==*team) continue;
    if(t==0) continue;
    spr=*(u8 **)(qh+0x50);
    if((u32)(spr[0]<<28)>>28==14) continue;
    if(((u32)(spr[0]<<28)>>28)-11<=1) continue;
    id2=(u32 *)(p+0xDC);
    ok=*id2!=(*(u32 *)(qh+(*(u16 *)p<<2)));
    if(!ok) continue;
    qpos.x=(((u16 *)spr)[0]>>4)<<8;
    qpos.y=(u32)((*(u16 **)(qh+0x50))[1]<<20)>>12;
    if(testFDD0(atkFDD0,kind,&pos,&qpos,16,32)!=0) {
        {register u16 c asm("r4")=((((s16)power+10)*125)/((s16)power+*(s16 *)(q+0x3A)+20)); chance=c;}
        {u16 r=(u16)((u16)sub_080008C8()%100); if((s16)chance>=r) h=1; else h=0;}
        if(h) {
            hitPFDD0(p,q,atkFDD0,0);
            sub_0805865C(0x1A);
        } else if(!(sub_0800086C()&1)) {
            hitPFDD0(p,q,atkFDD0,1);
            sub_0805865C(0x1A);
        } else {
            missFDD0(*(s32 *)(qt+0x24),*(s32 *)(qt+0x28));
            (*(u32 *)(qh+(*(u16 *)p<<2)))=*id2;
            sub_0805865C(0x55);
        }
    } else {
        switch(tmpl[0x9B]) {
        case 8: if((u8)sub_0801DE60()==7) continue; (*(u32 *)(qh+(*(u16 *)p<<2)))=*id2; break;
        case 3: if((u8)sub_0801DE60()==2) continue; (*(u32 *)(qh+(*(u16 *)p<<2)))=*id2; break;
        default: (*(u32 *)(qh+(*(u16 *)p<<2)))=*id2; break;
        }
    }
    }}
}
#undef COPY4
#ifdef NONMATCHING
extern void *getter020680(s32) asm("sub_08007290");
extern u16 call020680_ArcTan2(s16,s16) asm("ArcTan2");
extern u16 call020680_sub_080008C8(void) asm("sub_080008C8");
extern s32 call020680_sub_080020F4(void) asm("sub_080020F4");
extern s32 call020680_sub_08002204(void) asm("sub_08002204");
extern s32 call020680_sub_0800CCCC(void) asm("sub_0800CCCC");
extern s32 call020680_sub_0800CDF8(void) asm("sub_0800CDF8");
extern s32 call020680_sub_0800D11C(void) asm("sub_0800D11C");
extern s32 call020680_sub_0801AC78(void) asm("sub_0801AC78");
extern void call020680_sub_0801DB94(u16, s32, u8) asm("sub_0801DB94");
extern s32 call020680_sub_0801E164(void *, s32) asm("sub_0801E164");
extern s32 call020680_sub_0801E1A4(void *, u8) asm("sub_0801E1A4");
extern u16 call020680_sub_0801ED8C(void *, void *) asm("sub_0801ED8C");
extern u16 call020680_sub_0801EF14(void *, void *) asm("sub_0801EF14");
extern s32 call020680_sub_0801F024(void *, u16, void *, void *, s32, s32) asm("sub_0801F024");
extern void call020680_sub_0801F2CC(void *, u32 *) asm("sub_0801F2CC");
extern void call020680_sub_0801F320(void *, u32 *) asm("sub_0801F320");
extern void call020680_sub_08022504(s32, s32) asm("sub_08022504");
extern void call020680_sub_0805865C(s32) asm("sub_0805865C");
extern s32 call020680_sub_08058DB0(void) asm("sub_08058DB0");
extern s32 call020680_sub_08065AE8(void) asm("sub_08065AE8");
extern void call020680_sub_080660EC(u32 *) asm("sub_080660EC");
extern void call020680_sub_08069080(void *, u16, s32, s32, s32, s32) asm("sub_08069080");
extern void call020680_sub_08069224(u8, u16, s32) asm("sub_08069224");
extern void call020680_sub_08069388(u32 *, void *, s32, u16, s32) asm("sub_08069388");
extern u8 *data020680_030034E0 asm("gUnk_030034E0");
extern u8 data020680_03003CE0 asm("gUnk_03003CE0");
extern u8 *data020680_030056F4 asm("gUnk_030056F4");
extern u32 data020680_030056FC asm("gUnk_030056FC");
extern u8 data020680_084790B4 asm("gUnk_084790B4");
void sub_08020680(void *arg0) {
    u32 packet[2];
    u32 sp10;
    void *sp14;
    void *sp18;
    s16 temp_r1_5;
    s16 temp_r1_8;
    s32 temp_r0_5;
    s32 temp_r0_6;
    s32 temp_r1_2;
    s32 temp_r1_4;
    s32 temp_r1_7;
    s32 var_r1;
    s32 var_r1_3;
    u16 temp_r0_4;
    u16 temp_r1;
    u16 temp_r1_3;
    u16 temp_r2;
    u16 temp_r2_2;
    u16 temp_r2_3;
    u16 temp_r4;
    u16 temp_r4_2;
    u16 var_r1_2;
    u16 var_r4;
    u16 var_r9;
    u16 var_r9_2;
    u32 temp_r0_7;
    u32 temp_r1_6;
    u32 temp_r1_9;
    u32 temp_r2_4;
    u32 temp_r3;
    u32 temp_r3_2;
    u32 var_r2;
    u8 temp_r0;
    void *temp_r0_2;
    void *temp_r0_3;
    void *temp_r5;
    void *temp_r5_2;
    void *temp_r5_3;
    void *temp_r6;

    if (call020680_sub_0800CDF8() != 0) {
        return;
    }
    if (call020680_sub_0800D11C() != 0) {
        return;
    }
    if (call020680_sub_0801AC78() == 0) {
        return;
    }
    if (call020680_sub_08065AE8() != 0) {
        return;
    }
    if ((M2C_FIELD(arg0, u16 *, 0x228) != 0xFFFF) || (var_r4 = 2, (call020680_sub_0800CCCC() != 0))) {
        var_r4 = M2C_FIELD(arg0, u16 *, 0xC);
    }
    temp_r0 = M2C_FIELD(arg0, u8 *, 0x1FD);
    if (((s32) temp_r0 <= 0x14) && ((s32) temp_r0 >= 0x13)) {
        return;
    }
    if (var_r4 != 2) {
        return;
    }
    temp_r1 = M2C_FIELD(arg0, u16 *, 0x228);
    if (temp_r1 != 0xFFFF) {
        if (M2C_FIELD(arg0, u16 *, 0x6A) != temp_r1) {
            return;
        }
        if (M2C_FIELD(arg0, u16 *, 0x6C) != 1) {
            return;
        }
        goto block_21;
    }
block_21:
    temp_r0_2 = getter020680(M2C_FIELD(arg0, u16 *, 0x22C) | 0xB0000);
    sp14 = temp_r0_2;
    if (M2C_FIELD(temp_r0_2, u8 *, 0x9B) == 7) {
        return;
    }
    if (!(var_r4 & M2C_FIELD(arg0, u8 *, 0x201))) {
        temp_r6 = (call020680_sub_080020F4() * 0x14C) + &data020680_03003CE0;
        temp_r1_2 = M2C_FIELD(temp_r6, s32 *, 0x30);
        if (var_r4 & temp_r1_2) {
            return;
        }
        if (0x2000 & temp_r1_2) {
            return;
        }
        if (temp_r1_2 & 0x400) {
            return;
        }
        if (call020680_sub_08058DB0() != 0) {
            return;
        }
        if (M2C_FIELD(temp_r6, s16 *, 0x114) != 0) {
            return;
        }
        if (M2C_FIELD(temp_r6, u8 *, 0x68) == 0) {
            return;
        }
        temp_r1_3 = M2C_FIELD(temp_r6, u16 *, 0x20);
        if ((u32) (u16) (temp_r1_3 - 0xA) <= 1U) {
            return;
        }
        switch (temp_r1_3) {                        /* irregular */
        case 13:
            return;
        case 12:
            return;
        case 14:
            return;
        default:
            if (call020680_sub_0800CCCC() != 0) {
                return;
            }
            temp_r5 = temp_r6 + 0xE4;
            temp_r1_4 = M2C_FIELD(temp_r5,s32 *,M2C_FIELD(arg0,u16 *,0)*4) ^ M2C_FIELD(arg0, s32 *, 0x50);
            if ((s32) ((0 - temp_r1_4) | temp_r1_4) >= 0) {
                return;
            }
            temp_r0_3 = getter020680(M2C_FIELD(arg0, u16 *, 0x22C) | 0xB0000);
            sp14 = temp_r0_3;
            if (call020680_sub_0801F024(temp_r0_3, M2C_FIELD(arg0, u16 *, 8), arg0 + 0x14, temp_r6 + 0x8C, 0x10, 0x10) == 0) {
                return;
            }
            temp_r1_5 = M2C_FIELD(arg0, s16 *, 0x206);
            temp_r4 = (u16) ((s32) ((temp_r1_5 + 0xA) * 0x7D) / (s32) (temp_r1_5 + M2C_FIELD(temp_r6, s16 *, 0x3A) + 0x14));
            var_r1 = 0;
            if ((s32) (s16) temp_r4 >= (s32) (u16) (call020680_sub_080008C8() % 100U)) {
                var_r1 = 1;
            }
            if (var_r1 == 0) {
                M2C_FIELD(temp_r5,s32 *,M2C_FIELD(arg0,u16 *,0)*4) = M2C_FIELD(arg0, s32 *, 0x50);
                call020680_sub_0805865C(0x55);
            } else {
                temp_r2 = (u16) (call020680_sub_080008C8() % 100U);
                if ((M2C_FIELD(temp_r6, u8 *, 0x6E) != 0) && ((u32) temp_r2 < (u32) M2C_FIELD(temp_r6, u8 *, 0x6E))) {
                    call020680_sub_08022504(M2C_FIELD(temp_r6, s32 *, 0x8C), M2C_FIELD(temp_r6, s32 *, 0x90));
                    var_r9 = call020680_sub_0801ED8C(arg0, temp_r6);
                    if (0x8000 & var_r9) {
                        var_r9 &= 0x7FFF;
                    }
                    temp_r2_2 = M2C_FIELD(temp_r6, u16 *, 0x8A);
                    temp_r1_6 = var_r9 >> 2;
                    if (temp_r1_6 != 0) {
                        var_r1_2 = temp_r2_2 + temp_r1_6;
                    } else {
                        var_r1_2 = temp_r2_2 + 1;
                    }
                    M2C_FIELD(temp_r6, u16 *, 0x8A) = var_r1_2;
                    M2C_FIELD(temp_r5,s32 *,M2C_FIELD(arg0,u16 *,0)*4) = M2C_FIELD(arg0, s32 *, 0x50);
                    M2C_FIELD(temp_r6, s32 *, 0x110) = (s32) (M2C_FIELD(arg0, u16 *, 0) + 5);
                    call020680_sub_0805865C(0x164);
                    temp_r2_3 = (u16) (call020680_sub_080008C8() % 100U);
                    if ((M2C_FIELD(temp_r6, u8 *, 0x6F) != 0) && ((u32) temp_r2_3 <= (u32) M2C_FIELD(temp_r6, u8 *, 0x6F))) {
                        M2C_FIELD(&packet[0], u16 *, 4) = (u16) (var_r9 - temp_r1_6);
                        M2C_FIELD(&packet[0], u8 *, 1) = 0U;
                        M2C_FIELD(&packet[0], u8 *, 2) = 0U;
                        M2C_FIELD(&packet[0], s8 *, 3) = 0;
                        M2C_FIELD(arg0, u16 *, 0xC) = 0xAU;
                        M2C_FIELD(arg0, s32 *, 0x54) = (s32) M2C_FIELD(temp_r6, s32 *, 0xDC);
                        M2C_FIELD(&packet[0], s8 *, 0) = (s8) M2C_FIELD(arg0, u16 *, 2);
                        M2C_FIELD(arg0, u16 *, 0x4A) = (u16) (M2C_FIELD(&packet[0], u16 *, 4) + M2C_FIELD(arg0, u16 *, 0x4A));
                        M2C_FIELD(arg0, s32 *, 0x4C) = (s32) M2C_FIELD(&packet[0], u16 *, 4);
                        M2C_FIELD(arg0, s16 *, 0x62) = (s16) M2C_FIELD(&packet[0], u8 *, 1);
                        call020680_sub_0801F2CC(arg0, &packet[0]);
                        M2C_FIELD(arg0, u16 *, 0x58) = (u16) M2C_FIELD(temp_r6, u16 *, 0);
                        M2C_FIELD(arg0, u16 *, 0x5A) = (u16) ((1 << M2C_FIELD(temp_r6, u16 *, 0)) | M2C_FIELD(arg0, u16 *, 0x5A));
                        if (M2C_FIELD(arg0, u8 *, 0x226) != 3) {
                            M2C_FIELD(arg0, s16 *, 0x68) = 0xFFFE;
                        }
                        call020680_sub_080660EC(&packet[0]);
                        return;
                    }
                    return;
                }
                M2C_FIELD(temp_r6, u16 *, 0x20) = 0xAU;
                M2C_FIELD(temp_r6, s16 *, 0xB0) = 0xFFFE;
                var_r9_2 = call020680_sub_0801ED8C(arg0, temp_r6);
                if (0x8000 & var_r9_2) {
                    call020680_sub_0805865C(0x27);
                    var_r9_2 &= 0x7FFF;
                } else {
                    call020680_sub_0805865C(0x1A);
                    temp_r0_4 = M2C_FIELD(temp_r6, u16 *, 0xC);
                    if (temp_r0_4 == 8) {
                        call020680_sub_0805865C(0x4B);
                    } else {
                        call020680_sub_0805865C(temp_r0_4 + 0x45);
                    }
                }
                M2C_FIELD(temp_r6, u16 *, 0x88) = (u16) (M2C_FIELD(temp_r6, u16 *, 0x88) + var_r9_2);
                M2C_FIELD(temp_r5,s32 *,M2C_FIELD(arg0,u16 *,0)*4) = M2C_FIELD(arg0, s32 *, 0x50);
                M2C_FIELD(temp_r6, s32 *, 0x110) = (s32) (M2C_FIELD(arg0, u16 *, 0) + 5);
                M2C_FIELD(&packet[0], u8 *, 2) = (u8) M2C_FIELD(sp14, u8 *, 0xA9);
                call020680_sub_0801F320(temp_r6, &packet[0]);
                M2C_FIELD(temp_r6, u16 *, 0xD0) = (u16) M2C_FIELD(arg0, u16 *, 8);
                temp_r5_2 = temp_r6 + 0x4C;
                call020680_sub_08069388(&packet[0], temp_r5_2, 0, M2C_FIELD(sp14, u16 *, 0xBC), (s32) M2C_FIELD(temp_r6, u16 *, 0));
                M2C_FIELD(temp_r6, s32 *, 0xE0) = (s32) M2C_FIELD(&packet[0], u8 *, 1);
                call020680_sub_08069224(M2C_FIELD(&packet[0], u8 *, 1), var_r9_2, data020680_030034E0 + 0x24);
                temp_r0_5 = call020680_sub_0801E1A4(temp_r6, M2C_FIELD(&packet[0], u8 *, 1));
                if (temp_r0_5 != 0) {
                    call020680_sub_0801DB94(M2C_FIELD(temp_r6, u16 *, 0), temp_r0_5, M2C_FIELD(&packet[0], u8 *, 1));
                } else {
                    temp_r0_6 = call020680_sub_0801E164(temp_r6, 0);
                    if (temp_r0_6 != 0) {
                        call020680_sub_0801DB94(M2C_FIELD(temp_r6, u16 *, 0), temp_r0_6, M2C_FIELD(&packet[0], u8 *, 1));
                    }
                }
                call020680_sub_08069080(temp_r5_2, var_r9_2, 0, M2C_FIELD(arg0, u16 *, 0) + 4, (s32) M2C_FIELD(temp_r6, u16 *, 0), (s32) M2C_FIELD(sp14, u16 *, 0xBC));
                return;
            }
            break;
        }
    } else {
        if (call020680_sub_08002204() == 0) {
            return;
        }
        sp10 = 0;
        sp18 = arg0 + 0x218;
loop_28:
        if (sp10 == M2C_FIELD(arg0, u16 *, 0)) {

        } else if (!(data020680_030056FC & (1 << sp10))) {

        } else {
            temp_r5_3 = data020680_030056F4 + (sp10 * 0x2E0);
            if ((u32) (u16) (M2C_FIELD(temp_r5_3, u16 *, 0xC) - 0xB) <= 1U) {

            } else {
                temp_r1_7 = M2C_FIELD(arg0, s32 *, 0x50) ^ M2C_FIELD(temp_r5_3, s32 *, 0x54);
                var_r2 = (u32) ((0 - temp_r1_7) | temp_r1_7) >> 0x1F;
                if ((s32) (M2C_FIELD(temp_r5_3, s16 *, 0x5C) - M2C_FIELD(temp_r5_3, u16 *, 0x4A)) <= 0) {
                    var_r2 = 0;
                }
                if (M2C_FIELD(temp_r5_3, u8 *, 0x1DC) == 0) {
                    var_r2 = 0;
                }
                if (var_r2 == 0) {

                } else if (call020680_sub_0801F024(sp14, M2C_FIELD(arg0, u16 *, 8), arg0 + 0x14, temp_r5_3 + 0x14, (s32) M2C_FIELD(temp_r5_3, u8 *, 0x22E), (s32) M2C_FIELD(temp_r5_3, u8 *, 0x22F)) == 0) {

                } else {
                    temp_r1_8 = M2C_FIELD(arg0, s16 *, 0x206);
                    temp_r4_2 = (u16) ((s32) ((temp_r1_8 + 0xA) * 0x7D) / (s32) (temp_r1_8 + M2C_FIELD(temp_r5_3, s16 *, 0x206) + 0x14));
                    var_r1_3 = 0;
                    if ((s32) (s16) temp_r4_2 >= (s32) (u16) (call020680_sub_080008C8() % 100U)) {
                        var_r1_3 = 1;
                    }
                    if (var_r1_3 == 0) {

                    } else {
                        call020680_sub_0805865C(0x1A);
                        packet[1] = (packet[1] & 0xFFFF0000) | call020680_sub_0801EF14(arg0, temp_r5_3);
                        temp_r1_9 = (packet[0] & 0xFFFF00FF) | ((u8) M2C_FIELD(sp14, u16 *, 0xBC) << 8);
                        packet[0] = temp_r1_9;
                        temp_r2_4 = (0xFF00FFFF & temp_r1_9) | (M2C_FIELD(sp14, u8 *, 0xA9) << 0x10);
                        packet[0] = temp_r2_4;
                        temp_r3 = (0xFF00FFFF & temp_r2_4) | ((u32) (((temp_r2_4 >> 0x10) - M2C_FIELD(temp_r5_3, s32 *, 0x210)) << 0x18) >> 8);
                        packet[0] = temp_r3;
                        if (0x80 & (temp_r3 >> 0x10)) {
                            packet[0] = temp_r3 & 0xFF00FFFF;
                        }
                        if (M2C_FIELD(temp_r5_3, s32 *, 0x210) == 0xFF) {
                            packet[0] &= 0xFF00FFFF;
                        }
                        temp_r0_7 = (packet[0] & 0xFFFFFF) | (*(((u32) (call020680_ArcTan2((s32) ((M2C_FIELD(temp_r5_3, s32 *, 0x14) - M2C_FIELD(arg0, s32 *, 0x14)) << 8) >> 0x10, (s32) ((M2C_FIELD(temp_r5_3, s32 *, 0x18) - M2C_FIELD(arg0, s32 *, 0x18)) << 8) >> 0x10) << 0x10) >> 0x1C) + &data020680_084790B4) << 0x18);
                        packet[0] = temp_r0_7;
                        M2C_FIELD(temp_r5_3, u16 *, 0xC) = 0xAU;
                        M2C_FIELD(temp_r5_3, s32 *, 0x54) = (s32) M2C_FIELD(arg0, s32 *, 0x50);
                        packet[0] = (temp_r0_7 & 0xFFFFFF00) | M2C_FIELD(temp_r5_3, u8 *, 2);
                        M2C_FIELD(temp_r5_3, u16 *, 0x4A) = (u16) (M2C_FIELD(&packet[0], u16 *, 4) + M2C_FIELD(temp_r5_3, u16 *, 0x4A));
                        M2C_FIELD(temp_r5_3, s32 *, 0x4C) = (s32) M2C_FIELD(&packet[0], u16 *, 4);
                        M2C_FIELD(temp_r5_3, s16 *, 0x68) = 0xFFFE;
                        call020680_sub_08069388(&packet[0], sp18, 0, M2C_FIELD(sp14, u16 *, 0xBC), (s32) (u16) (M2C_FIELD(arg0, u16 *, 0) + 4));
                        M2C_FIELD(temp_r5_3, s16 *, 0x62) = (s16) M2C_FIELD(&packet[0], u8 *, 1);
                        call020680_sub_0801F2CC(temp_r5_3, &packet[0]);
                        M2C_FIELD(temp_r5_3, u16 *, 0x58) = (u16) M2C_FIELD(arg0, u16 *, 0);
                        M2C_FIELD(temp_r5_3, u16 *, 0x5A) = (u16) ((1 << *(u16 *)((call020680_sub_080020F4() * 0x14C) + (u8 *)&data020680_03003CE0)) | M2C_FIELD(temp_r5_3, u16 *, 0x5A));
                        call020680_sub_080660EC(&packet[0]);
                        call020680_sub_08069080(sp18, M2C_FIELD(&packet[0], u16 *, 4), 0, M2C_FIELD(arg0, u16 *, 0) + 4, M2C_FIELD(arg0, u16 *, 0) + 4, (s32) M2C_FIELD(sp14, u16 *, 0xBC));
                    }
                }
            }
        }
        temp_r3_2 = sp10 + 1;
        sp10 = temp_r3_2;
        if (temp_r3_2 <= 4U) {
            goto loop_28;
        }
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0801E244", sub_08020680);
#endif
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
