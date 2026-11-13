#include "global.h"

/* [FindInlineActorStatusEffectByKey] Scans eight embedded actor records at+0x8C for counter not-1, matching
 * key+4 and category100+2; returns first pointer or null. */
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
/* [ResetPlayerStatusEffectsByKey] Repeatedly finds category100 records with matching key in player effect list
 * at+0x34 and calls1DB94(ownerID,record,0). Default initializer sets counter0xFFFF and key0; repeats until
 * none remain. */
void sub_0801E278(s32 arg0,u32 arg1)
{
    u32 i;
    u8 *entry,*found;
    register u32 type asm("r8")=100;
    register s32 invalid=-1;
    
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
/* [ResetInlineActorStatusEffectsByKey] Repeatedly finds category100 records with matching key at actor+0x8C
 * and calls1DB94(actorID+4,record,0), freeing them through its default initializer. Completes only when no
 * matching nonfree record remains. */
void sub_0801E2CC(s32 arg0,u32 arg1)
{
    u32 i;
    u8 *entry,*found;
    register u32 type asm("r8")=100;
    register s32 invalid=-1;
    
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
/* [RemovePlayerEffectsByTypeAndKey] Selects player effect list via playerIndex, scans eight records for
 * counter not-1 and matching type/key, sets only counter to0xFFFF. Existing alias removeEntries019 is
 * superseded by this reviewed narrower identity; other record bytes remain unchanged. */
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
/* [ApplyHigherIndexedSkillScaling] Class0 reads effective skill4 twice; class3 reads skill3 twice on
 * lines100-102; formula uses signed input halfword and returns low halfword. */
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
/* [ApplyLowerIndexedSkillScaling] Class0 uses skill3 and class3 uses skill2 on lines118-120; same scaling
 * arithmetic and low-halfword return. */
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
/* [ComputeClassSkillEightfoldValue] Fallback is low16 of arg1. */
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
/* [ComputeEnemyDefeatExperience] Takes the character save (level word +0x20) and the defeated enemy's data
 * (word +0x10, byte +0x22). Let L = level + 1 and limit = max(3L, level + 13). Returns 9L when the enemy word
 * exceeds limit, otherwise 3 * enemy word, multiplied by 10 when byte +0x22 is 3.
 * AddExperienceAndAdvanceOneLevel's evidence records that the matched actor defeat/loot path computes its
 * reward through this function before adding it. The exact meaning of the enemy fields is not claimed. */
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
/* [GetExperienceNeededForNextLevel] Indexes threshold table0848FF54 using saved level word+0x20 and subtracts
 * accumulated experience word+0x1C.1E4CC uses these same fields/table when awarding experience and advancing
 * level. */
s32 sub_0801E4B0(void) {
    s32 *p = (s32 *) gUnk_030034E0;
    s32 idx = p[8];
    return gUnk_0848FF54[idx] - p[7];
}
/* [AddExperienceAndAdvanceOneLevel] Rejects when local runtime player flags contain0x2000 or unsigned saved
 * level>198. Adds supplied amount to experience+0x1C; if threshold table value reached, increments level once,
 * adds4 to halfword+0x1A and1 to+0x30, calls61830 and returns1. Does not loop across multiple levels or
 * subtract threshold; exact point names are not inferred. */
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
/* [HasLocalPlayerActionSkillLevel] Calls the local class/action skill-level getter 1CCC8 and returns exactly 1
 * when its low 16 bits are nonzero, otherwise 0. Does not test energy affordability, validate the
 * action/resource domain or change player state. The long-long zero local in the matched C is a
 * code-generation form, not evidence of a 64-bit skill value. */
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
/* [SetPlayerEffectAmountByTypeAndKey] Scans eight player effect records and for every nonfree matching
 * type/key writes supplied16-bit amount/value at+6. Does not change counter, type or key. */
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
/* [MarkEightEffectRecordsFree] Walks eight40-byte records, writes0xFFFF to each counter halfword and preserves
 * remaining fields. Source performs a volatile read and redundant OR/write; no bytewise clearing or allocator
 * free occurs. */
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
struct Atk5B0 { u8 pad0[0x10]; u16 kind; u8 pad12[0xA]; u16 dir; u8 pad1E[2]; u16 type; u8 pad22[4]; u16 skill; u16 magic; u8 pad2A[6]; u32 flags; u8 pad34[8]; u16 bonus; u8 pad3E[0x1A]; s16 base; u8 pad5A[2]; s16 evade; u8 pad5E[0x54]; u16 level; u8 padB4[0x6E]; u16 mind; u8 pad124[0x1C]; u8 *ctx; };
struct Tgt5B0 { u8 pad0[2]; u16 id; u8 pad4[4]; u16 dir; u8 padA[2]; u16 kind; u8 padE[6]; s32 x, y; u8 pad1C[0x1B2]; u16 defense; u8 pad1D0[0x48]; u16 resist[6]; };
extern u8 *combat5B0 asm("gUnk_030034E0");
extern u32 notify5B0(u16, u16) asm("sub_08067FE0");
static inline s32 inl_08021C74(u16 arg0, u16 arg1, u16 arg2) {
    u16 temp_r5;
    u16 var_r0;

    temp_r5 = arg0;
    var_r0 = (u16) ((s32) (((u32) ((((u16) sub_080008C8() % 50U) << 0x10) + 0x640000) >> 0x10) * ((s32) (temp_r5 * temp_r5 * 0xA) / (s32) (temp_r5 + arg1))) / (s32) arg2);
    var_r0 /= 10;
    if (var_r0 == 0) {
        var_r0 = 1;
    }
    return (s32) var_r0;
}
static inline u16 inl_08021CE4(u16 arg0, u16 arg1) {
    return ((arg1 + 0x64) * arg0) / 0x64;
}
static inline s32 inl_08021D00(u16 arg0, s32 arg1, u8 *base, s32 off) {
    u16 *arg2;
    s16 temp_r1;
    u16 var_r3;
    u32 temp_r0;

    var_r3 = arg1;
    arg2 = (u16 *)(base + off);
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
/* [ComputePlayerAttackEnemyDamage] Normal critical roll uses divisor 100 or 200 and sound/sprite feedback;
 * nonzero noCrit uses divisor 1000 with no critical roll. */
s32 sub_0801E5B0(struct Atk5B0 *atk, struct Tgt5B0 *tgt, u8 *record, s32 noCrit)
{
    u8 *ctx;
    s32 defense;
    u16 divisor;
    s32 power;
    u16 attack;
    u16 mode;
    s32 extra;
    register u32 varianceWord;
    u16 variance;
    u16 firstDamage;
    u16 result;
    u32 damage;
    u16 resistance;
    u16 element;
    u16 *resists;
    u16 a, b;
    s32 d;

    ctx = atk->ctx;
    defense = tgt->defense;
    if (!noCrit) {
        if ((s32)(sub_080008C8() & 0x7F) <= atk->evade + 1) {
            sub_0805865C(0x27);
            sub_0802247C(tgt->x, tgt->y);
            divisor = 100;
        } else {
            sub_0805865C(0x1A);
            divisor = 200;
        }
    } else {
        divisor = 1000;
    }
    if (atk->type == 5) {
        mode = 0;
        switch (sub_0801DE60()) {
        case 0:
            if (atk->kind == 3)
                mode = 1;
            break;
        case 1:
            if (atk->kind != 5)
                break;
            goto mode3;
        case 2:
            if (atk->kind == 7)
                mode = 1;
            break;
        case 3:
            switch (atk->kind) {
            case 2:
                break;
            case 4:
                if (atk->level <= 4)
                    mode = 3;
                break;
            }
            break;
        case 4:
            if (atk->kind == 4) {
                mode = 2;
                extra = 2;
            }
        case 5:
            if (atk->kind == 6) {
            mode3:
                mode = 2;
                extra = 3;
            }
            break;
        case 6:
            break;
        case 7:
            if (atk->kind == 1)
                mode = 1;
            else if (atk->kind == 8) {
                mode = 2;
                extra = 5;
            }
            break;
        case 8:
        case 9:
            break;
        }
        switch (mode) {
        case 0:
            power = (u16)((atk->base + ((s16)atk->bonus >> 2)) * (atk->skill + 5) / 4);
            break;
        case 1:
            power = (u16)((atk->base + ((s16)atk->bonus >> 2)) * (atk->skill + 18) / 20);
            break;
        case 2:
            power = (u16)((atk->base + ((s16)atk->bonus >> 2)) * (atk->skill + 8) / (extra + 5));
            break;
        case 3:
            power = (u16)(atk->base >> 2);
            break;
        }
    } else if (atk->flags & 0x200000) {
        power = (u16)((atk->base + ((s16)atk->bonus >> 2)) * (atk->magic + 10) * 8 / (atk->mind + 0x48));
    } else {
        power = (u16)atk->base;
    }
    result = inl_08021C74(power, defense, divisor);
    if (ctx[*(u16 *)(ctx + 0x68) * 16 + 0x79] == 1) {
        {
            u32 fw = inl_08021D00(*(u16 *)(record + 0xBC), result, (u8 *)tgt, 0x218);
            asm("" : "+r"(fw));
            fw <<= 16;
            result = fw >> 16;
            if ((s32)fw <= 0)
                result = 1;
        }
    }
    if (!sub_0801DE60() && *(u16 *)(combat5B0 + 0x4C) && tgt->kind == 2) {
        u32 cur = result;
        result = inl_08021CE4(cur, sub_0801E0AC((s32)(combat5B0 + 0x30), 6) * 2 + 10);
        sub_0805865C(0x27);
    }
    if (sub_0801DE60() == 3 && *(u16 *)(combat5B0 + 0x44))
        notify5B0((tgt->id << 8) | 4, sub_0801E0AC((s32)(combat5B0 + 0x30), 4));
    if (sub_0801DE60() == 7 && *(u16 *)(combat5B0 + 0x50)) {
        if ((s16)atk->dir > 4)
            a = atk->dir - 8;
        else
            a = atk->dir;
        if ((s16)tgt->dir > 4)
            b = tgt->dir - 8;
        else
            b = tgt->dir;
        d = (s16)a - (s16)b;
        if (d < 0)
            d = -d;
        if (d <= 1)
            result = (u16)((s16)result * (sub_0801E0AC((s32)(combat5B0 + 0x30), 7) * 3 + 10) / 10);
    }
    return result;
}
struct Pos988 { u16 a; u8 b, c; };
struct Tgt988 { u16 id; u8 pad2[0x1E]; u16 kind; u8 pad22[0x38]; u16 defense; u8 pad5C[0x20]; u16 resist[6]; u8 pad88[0xC0]; struct Pos988 *pos; };
/* [ComputePlayerAttackPlayerDamage] Critical roll and feedback choose divisor 100/200; nonzero noCrit selects
 * 1000. */
s32 sub_0801E988(struct Atk5B0 *atk, struct Tgt988 *tgt, u8 *record, s32 noCrit)
{
    u8 *ctx;
    s32 defense;
    u16 divisor;
    s32 power;
    u16 attack;
    u16 mode;
    s32 extra;
    register u32 varianceWord;
    u16 variance;
    u16 firstDamage;
    u16 result;
    u32 damage;
    u16 resistance;
    u16 element;
    u16 *resists;
    u16 a, b;
    s32 d;

    ctx = atk->ctx;
    defense = tgt->defense;
    if (!noCrit) {
        if ((s32)(sub_080008C8() & 0x7F) <= atk->evade + 1) {
            sub_0805865C(0x27);
            sub_0802247C((tgt->pos->a >> 4) << 8, (u32)(*(u16 *)&tgt->pos->b << 20) >> 12);
            divisor = 100;
        } else {
            sub_0805865C(0x1A);
            divisor = 200;
        }
    } else {
        divisor = 1000;
    }
    if (atk->type == 5) {
        mode = 0;
        switch (sub_0801DE60()) {
        case 0:
            if (atk->kind == 3)
                mode = 1;
            break;
        case 1:
            if (atk->kind != 5)
                break;
            goto mode3;
        case 2:
            if (atk->kind == 7)
                mode = 1;
            break;
        case 3:
            switch (atk->kind) {
            case 2:
                break;
            case 4:
                if (atk->level <= 4)
                    mode = 3;
                break;
            }
            break;
        case 4:
            if (atk->kind == 4) {
                mode = 2;
                extra = 2;
            }
        case 5:
            if (atk->kind == 6) {
            mode3:
                mode = 2;
                extra = 3;
            }
            break;
        case 6:
            break;
        case 7:
            if (atk->kind == 1)
                mode = 1;
            else if (atk->kind == 8) {
                mode = 2;
                extra = 5;
            }
            break;
        case 8:
        case 9:
            break;
        }
        switch (mode) {
        case 0:
            power = (u16)((atk->base + ((s16)atk->bonus >> 2)) * (atk->skill + 5) / 4);
            break;
        case 1:
            power = (u16)((atk->base + ((s16)atk->bonus >> 2)) * (atk->skill + 18) / 20);
            break;
        case 2:
            power = (u16)((atk->base + ((s16)atk->bonus >> 2)) * (atk->skill + 8) / (extra + 5));
            break;
        case 3:
            power = (u16)(atk->base >> 2);
            break;
        }
    } else if (atk->flags & 0x200000) {
        power = (u16)((atk->base + ((s16)atk->bonus >> 2)) * (atk->magic + 10) * 8 / (atk->mind + 0x48));
    } else {
        power = (u16)atk->base;
    }
    result = inl_08021C74(power, defense, divisor);
    if (ctx[*(u16 *)(ctx + 0x68) * 16 + 0x79] == 1) {
        {
            u32 fw = inl_08021D00(*(u16 *)(record + 0xBC), result, (u8 *)tgt, 0x7C);
            asm("" : "+r"(fw));
            fw <<= 16;
            result = fw >> 16;
            if ((s32)fw <= 0)
                result = 1;
        }
    }
    if (atk->type == 5)
        result = inl_08021CE4(result, 10);
    if (!sub_0801DE60() && *(u16 *)(combat5B0 + 0x4C) && tgt->kind == 2) {
        u32 cur = result;
        result = inl_08021CE4(cur, sub_0801E0AC((s32)(combat5B0 + 0x30), 6) * 2 + 10);
    }
    if (sub_0801DE60() == 3 && *(u16 *)(combat5B0 + 0x44))
        notify5B0((tgt->id << 8) | 4, sub_0801E0AC((s32)(combat5B0 + 0x30), 4));
    if (sub_0801DE60() == 7 && *(u16 *)(combat5B0 + 0x50)) {
        if ((s16)atk->dir > 4)
            a = atk->dir - 8;
        else
            a = atk->dir;
        d = tgt->pos->c >> 4;
        if (d > 4)
            d = (u16)(d - 8);
        b = d;
        d = (s16)a - (s16)b;
        if (d < 0)
            d = -d;
        if (d <= 1)
            result = (u16)((s16)result * (sub_0801E0AC((s32)(combat5B0 + 0x30), 7) * 3 + 10) / 10);
    }
    {
        register s32 fin asm("r5") = (u16)((s16)result / 4);
        if ((s16)fin == 0)
            fin = 1;
        return fin;
    }
}
struct CombatCtxD8C { u8 pad[0x14]; u16 resist[6]; u8 pad20[8]; u16 key; };
struct CombatActorD8C { u8 pad[0x1CC]; u16 attack,defense; s16 evade; u8 pad1D2[0x32]; struct CombatCtxD8C ctx; };
struct TargetD8C { u8 pad[0xC]; u16 kind; u8 padE[0x6E]; u16 resist[6]; u8 pad88[0x4A]; u16 f5A_dummy; };
static inline s32 inl_ED8C(u16 arg0, u16 arg1, u32 arg2) {
    u16 temp_r5;
    u16 var_r0;

    temp_r5 = arg0;
    var_r0 = (u16) ((s32) (((u32) ((((u16) sub_080008C8() % 50U) << 0x10) + 0x640000) >> 0x10) * ((s32) (temp_r5 * temp_r5 * 0xA) / (s32) (temp_r5 + arg1))) / (s32) arg2);
    var_r0 /= 10;
    if (var_r0 == 0) {
        var_r0 = 1;
    }
    return (s32) var_r0;
}
/* [ComputeEnemyAttackPlayerDamage] Looks up enemy attack resource via key 0x 22C and reads player defense
 * 0x5A. */
u32 sub_0801ED8C(void *arg0, void *arg1)
{
  struct CombatActorD8C *src = arg0;
  u8 *dst = arg1;
  u8 *record;
  u16 rnd;
  u16 attack;
  s32 defense;
  u16 variance;
  u32 result;
  u16 firstDamage;
  u16 element;
  u32 damage;
  u32 divisor;
  s32 scaled;
  s32 weighted;
  u16 *resists;
  u16 resistance;
  {
    struct CombatCtxD8C *ctx = &src->ctx;
    record = (u8 *) sub_08007290(ctx->key | 0xB0000);
  }
  defense = *((u16 *) (dst + 0x5A));
  if (((s32) (sub_080008C8() & 0x7F)) <= (src->evade + 1))
  {
    sub_0802247C(*((u32 *) (dst + 0x8C)), *((u32 *) (dst + 0x90)));
    divisor = 100;
  }
  else
  {
    divisor = 200;
  }
  firstDamage = inl_ED8C(src->attack, defense, divisor);
  element = *((u16 *) (record + 0xBC));
  damage = firstDamage;
  resists = (u16 *) (dst + 0x7C);
  switch (element - 1U)
  {
    case 0:
      resistance = resists[0];
      goto attenuate;

    case 1:
      resistance = resists[1];
      goto attenuate;

    case 2:
      resistance = resists[2];
      goto attenuate;

    case 3:
      resistance = resists[3];
      goto attenuate;

    case 4:
      resistance = resists[4];
      goto attenuate;

    case 5:

    case 6:
      resistance = resists[5];
      attenuate:
    damage = (u16) (((s32) (damage * 5000)) / ((((s16) resistance) * ((s16) resistance)) + 2500));

      if (damage & 0x8000)
    {
      damage = 1;
    }
      break;

  }

  {
    u32 finishWord = damage;
    asm("" : "+r"(finishWord));
    finishWord <<= 16;
    result = finishWord >> 16;
    if ((s32) finishWord <= 0) result = 1;
  }
  if (sub_0800CDC0())
  {
    if (divisor == 100)
    {
      sub_0805865C(0x27);
    }
    else
      if ((*((u16 *) (dst + 0xC))) == 8)
    {
      sub_0805865C(0x4B);
    }
    else
    {
      sub_0805865C((*((u16 *) (dst + 0xC))) + 0x45);
    }
    return (u16)result;
  }
  if (divisor == 100)
  { u32 hi = 0x8000; hi |= result; return hi; }
  return result;
}
struct CombatCtx019 { u8 pad[0x14]; u16 resist[6]; u8 pad20[8]; u16 key; };
struct CombatActor019 { u8 pad[0x1CC]; u16 attack,defense; u8 pad1D0[0x34]; struct CombatCtx019 ctx; };
/* [ComputeElementalAttackDamage] Loads unsigned 16-bit attack and defense from actor +0x1CC/+0x1CE. Casts
 * NextRandom32 to u16 before modulo 50, then adds 100 for variance. Computes signed division of the low-32-bit
 * product attack*attack*10 by attack+defense, then signed division of the low-32-bit product with variance by
 * 200. Truncates that result to u16 before unsigned division by 10; replaces zero with 1. Item resource
 * (0xB0000 | attacker context key) supplies element halfword +0xBC. Elements 1..7 select target resistance
 * entries 0..5, with elements 6/7 sharing entry 5. Resistance is interpreted as s16 for r*r;
 * damage*5000/(r*r+2500) is truncated to u16 and a set sign bit becomes 1. */
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
        u32 finishWord=damage;
        asm("" : "+r"(finishWord));
        finishWord<<=16;
        result=finishWord>>16;
        if((s32)finishWord<=0) result=1;
        return result;
    }
}
extern s16 sinF024[] asm("gUnk_080B9704");
extern s16 dirF024[] asm("gUnk_0849E740");
static inline s32 overlapF024(s32 *arg0, s32 *arg1, u16 *arg2, u16 *arg3) {
    s32 var_r2;
    s32 var_r3;
    s32 dx = arg0[0] - arg1[0];
    s32 dy = arg0[1] - arg1[1];
    var_r2 = dy >> 8;
    var_r3 = dx >> 8;
    if (var_r3 < 0) {
        var_r3 = -var_r3;
    }
    if (var_r3 <= ((s32)(arg2[0] + arg3[0]) >> 1)) {
        if (var_r2 < 0) {
            var_r2 = -var_r2;
        }
        if (var_r2 <= ((s32)(arg2[1] + arg3[1]) >> 1)) {
            return 1;
        }
    }
    return 0;
}
struct SizeF024 { u16 w, h; };
/* [TestItemAttackBoxesAgainstTarget] For item record obj, places a square box of size obj[+0xA6] at reach
 * obj[+0xA5] along the facing direction (sine table, centre raised by 0x400). Tests it against the target box
 * (w, h) with the shared fixed-point overlap helper and returns 1 on a hit. Unless item kind +0x9B is 9, it
 * also tests a second box (reach +0xA7, size +0xA8). Kinds 3 and 8 return 0 for certain normalized class
 * indices (GetNormalizedCharacterClassIndex 2, plus 7 for kind 8). */
s32 sub_0801F024(u8 *obj, u16 dir, s32 *pos, s32 *target, u32 w, u32 h)
{
    s32 box[2];
    struct SizeF024 size;
    struct SizeF024 other;
    u8 kind = obj[0x9B];
    if (kind == 3)
        goto check2;
    if (kind == 8) {
        if ((u8)sub_0801DE60() == 7)
            return 0;
check2:
        if ((u8)sub_0801DE60() == 2)
            return 0;
    }
    other.w = w;
    other.h = h;
    box[1] = pos[1] - 0x400;
    box[0] = pos[0] + sinF024[dirF024[dir] * 16 + 0x40] * obj[0xA5];
    box[1] += sinF024[dirF024[dir] * 16] * obj[0xA5];
    size.w = size.h = obj[0xA6];
    if (overlapF024(box, target, (u16 *)&size, (u16 *)&other))
        return 1;
    if (obj[0x9B] == 9)
        return 0;
    box[1] = pos[1] - 0x400;
    box[0] = pos[0] + sinF024[dirF024[dir] * 16 + 0x40] * obj[0xA7];
    box[1] += sinF024[dirF024[dir] * 16] * obj[0xA7];
    size.w = size.h = obj[0xA8];
    if (overlapF024(box, target, (u16 *)&size, (u16 *)&other))
        return 1;
    return 0;
}
extern s32 sub_080020F4(void);
extern void sub_0801F2CC(u8 *,u8 *);
struct Sh20F1C4Packet { u8 player:8; u8 power:8; u8 impulse:8; s32 direction:8; u32 amount:16; u32 unused:16; };
/* [QueueEnemyDamageFromPosition] Sets reaction state10, builds amount and direction from supplied position. */
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
    
    *(u16 *)(object + 0x4A) = packet.amount + *(u16 *)(object + 0x4A);
    *(u32 *)(object + 0x4C) = packet.amount;
    {
        u32 power = packet.power;
        
        *(u16 *)(object + 0x62) = power;
    }
    {
        register u32 shifted asm("r1") = *(u32 *)&packet << 8;
        
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
        s32 direction = packet.direction;
        
        *(s16 *)(object + 0x7E) = direction;
    }
    *(u16 *)(object + 0x58) = 100;
    {
        s32 selected = sub_080020F4();
        u16 *flags = (u16 *)(object + 0x5A);
        u32 players = (u32)gUnk_03003CE0;
        
        *flags |= 1 << *(u16 *)(players + selected * 0x14C);
    }
    sub_080660EC(&packet);
}
struct Sh20F2CC { u8 pad[0x7C]; u16 duration; s16 direction; u16 speed; u16 value; };
struct Sh20F2CCData { u8 pad[2]; u8 value; s8 direction; };
/* [ConfigureEnemyKnockbackFromHit] Reads impulse byte; duration max(1,impulse/4), speed 256 or 1024, magnitude
 * and signed direction written on nonzero path. */
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
/* [ConfigurePlayerKnockbackFromHit] Writes player knockback duration +0xCE; lines 932-939 write speed,
 * magnitude and signed direction. */
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
extern u32 critical02074(u16) asm("sub_08068030");
struct Packet02074 {u8 player:8;u8 power:8;u8 impulse:8;s32 direction:8;u32 amount:16;u32 unused:16;};
/* [ApplyPlayerAttackToEnemy] Full link queue returns before mutation, even if a same-target message could
 * otherwise merge. */
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
/* [QueuePlayerAttackAgainstPlayer] Flags bit0 selects divisor 1000 damage OR 0x 8000 and zero
 * impulse/direction; ordinary path computes direction and kind8 charged-attack scaling. */
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
/* [AttackFirstOverlappingSceneObject] Empty object list returns0; states 10..12 and resource flag bits0/1 are
 * excluded. */
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
/* [DamageFirstOverlappingSceneObject] Zero object count returns0; scene object list begins at 0x 58C with
 * stride 0x 24. */
s32 sub_0801FB14(void *arg0, void *arg1, s32 damage)
{
    union Size02014 size;
    u8 *item;
    u8 *data;
    u32 count;
    u32 refreshed;
    u32 index;
    s32 dx;
    s32 dy;
    s32 hit;
    register u32 sizeWord asm("r0");
    u32 width;
    u32 heightBits;
    register u32 keepMask asm("r1");
    u8 *position = arg0;
    u16 *bounds = arg1;
    union Size02014 *sizePtr;
    s32 savedDamage = damage;
    u8 **sceneAddress;
    u8 *initialScene;
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
            s32 *coordinates = (s32 *)position;
            rawX=coordinates[0]-*(s32 *)item;
            rawY=coordinates[1]-*(s32 *)(item+4);
        }
        dy=rawY>>8;
        dx=rawX>>8;
        if(dx<0) dx=-dx;
        {
        if(dx <= (s32)(bounds[0]+size.fields.width)>>1) {

            s32 absoluteY = dy;
            u32 boundHeight;
            u32 objectHeight;
            if(absoluteY<0) absoluteY=-absoluteY;
            boundHeight=bounds[1];
            
            objectHeight=sizePtr->fields.height;
            boundHeight=boundHeight+objectHeight;
            boundHeight=(s32)boundHeight>>1;
            hit=1;
            if(absoluteY>(s32)boundHeight) hit=0;
        } else hit=0;
        }
        asm("" : "+r"(hit));
        if(hit) {
            u32 zero;
            u32 reduced=*(u16 *)(item+0x10);
            register s32 damageCopy asm("r2")=savedDamage;
            
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
            u8 **address = sceneAddress;
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
/* [DamageAllOverlappingSceneObjects] Initializes return register to input position rather than a hit count or
 * boolean. */
s32 sub_0801FC34(void *arg0, void *arg1, s32 damage)
{
    union Size02034 size;
    u8 *item;
    u8 *position = arg0;
    register s32 result asm("r0") = (s32)position;
    u16 *bounds = arg1;
    s32 savedDamage = damage;
    u8 **sceneAddress;
    u8 **initialAddress;
    u8 *initialScene;
    register u32 initialCount asm("r3");
    u32 index;
    u32 refreshed;
    u8 *data;
    register u32 sizeWord asm("r1");
    u32 width;
    u32 heightBits;
    register u32 keepMask asm("r2");
    union Size02034 *sizePtr;
    s32 dy;
    s32 hit;
    s32 rawX, dx;
    s32 rawY;
    initialAddress=&scene02034;
    initialScene=*initialAddress;
    initialCount=*(u32 *)(initialScene+0x48);
    
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
                
                rawY-=otherY;
            }
        }
        dy=rawY>>8;
        dx=rawX>>8;
        if(dx<0) dx=-dx;
        {
            u16 *widthBounds = bounds;
            if(dx <= (s32)(widthBounds[0]+size.fields.width)>>1) {
                s32 absoluteY = dy;
                u32 boundHeight;
                u32 objectHeight;
                if(absoluteY<0) absoluteY=-absoluteY;
                {
                u16 *heightBounds = bounds;
                boundHeight=heightBounds[1];
                
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
            u32 zero;
            u32 reduced=*(u16 *)(item+0x10);
            register s32 damageCopy asm("r2")=savedDamage;
            
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
            u8 **address = sceneAddress;
            refreshed=*(u32 *)(*address+0x48);
        }
        
    } while(index<refreshed);
    return result;
}
struct Sh20FD64 { u8 pad0[0x62]; s16 amount; u8 pad64[4]; u8 enabled; u8 rate; u8 pad6A[0x20]; u16 accumulator; u8 pad8C[0x50]; u32 current; u32 pending; u8 padE4[0x28]; u32 previous; };
/* [QueueAttackHealthCost] Requires differing current/previous sequence and nonzero player team. */
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
/* [ResolvePlayerAttackContacts] Copies the attack template and adjusts geometry/power for player states2/5,
 * class/frame/tick gates and charge flags; rejected states or frames return early. Resolves active hostile
 * actor contacts with serial/team filtering and randomized full/partial/miss outcomes, damages eligible field
 * objects, and when team>2 similarly processes opposing players using packed positions and seen serials. Pause
 * gates bound actor/player scans; field-object scan remains independent. */
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
struct Packet20680 {u32 player:8;u32 power:8;u32 impulse:8;u32 direction:8;u32 amount:16;u32 unused:16;};
extern u8 *inv20680 asm("gUnk_030034E0");
extern u8 players20680[] asm("gUnk_03003CE0");
struct PH20680 {u8 pad[0xE4]; u32 hist[8];};
struct P20680 {u16 id; u8 pad[0x14A];};
extern struct P20680 plArr20680[] asm("gUnk_03003CE0");
extern u8 *enemies20680 asm("gUnk_030056F4");
extern u32 mask20680 asm("gUnk_030056FC");
extern u8 dirs20680[] asm("gUnk_084790B4");
extern u8 *atk20680(u32) asm("sub_08007290");
extern s32 test20680(u8 *,u16,u8 *,u8 *,s32,s32) asm("sub_0801F024");
extern u16 amtA20680(u8 *,u8 *) asm("sub_0801EF14");
extern u16 amtB20680(u8 *,u8 *) asm("sub_0801ED8C");
extern void hit20680(struct Packet20680 *,u8 *,s32,u16,s32) asm("sub_08069388");
extern void disp20680(u8 *,u16,s32,s32,s32,s32) asm("sub_08069080");
extern void notify20680(struct Packet20680 *) asm("sub_080660EC");
extern void apply20680(u8 *,struct Packet20680 *) asm("sub_0801F2CC");
extern void applyB20680(u8 *,struct Packet20680 *) asm("sub_0801F320");
extern void exp20680(u8,u16,u8 *) asm("sub_08069224");
extern void *statA20680(u8 *,u8) asm("sub_0801E1A4");
extern void *statB20680(u8 *,s32) asm("sub_0801E164");
extern void stat20680(u16,void *,u8) asm("sub_0801DB94");
extern void counter20680(u32,u32) asm("sub_08022504");
static inline s32 roll20680(s16 *a,s16 *b){ u16 c=((*a+10)*125)/(*a+*b+20); u16 r=(u16)sub_080008C8()%100; s32 x=(s16)c; return x>=r; }
static inline s32 seen20680(u32 *h,u8 *e){ return *(u32 *)((*(u16 *)e<<2)+(u8 *)h)!=*(u32 *)(e+0x50); }
/* [ProcessEnemyAttackContacts] Complete matching body plus inline helpers and complete original20680..20D40
 * read. Enemy actor pointer; global guards, effective state2, excluded actor byte1FD values19/20decimal
 * (0x13/0x14), optional animation-frame checks, and item attack-resource kind7 rejection precede collision
 * work. Actor BYTE+201 mask0x2 selects a scan of five enemy slots requiring08002204()!=0, excluding
 * self/inactive/state11..12/nonpositive pending-adjusted health/zero1DC targets and duplicate serial
 * target54==attacker50. */
void sub_08020680(u8 *e)
{
    struct Packet20680 packet;
    u32 i;
    u8 *atk;
    u8 *disp;
    u8 *t;
    u8 *p;
    u16 mode;
    u16 chance;
    u16 r;
    u16 dmg;
    u16 q;
    s32 ok;
    u8 zz;
    u16 angle;
    u32 *hist;
    void *st;
    if(sub_0800CDF8()!=0) return;
    if(sub_0800D11C()!=0) return;
    if(sub_0801AC78()==0) return;
    if(sub_08065AE8()!=0) return;
    if(*(u16 *)(e+0x228)==0xFFFF && sub_0800CCCC()==0) mode=2; else mode=*(u16 *)(e+0xC);
    switch(e[0x1FD]){case 19: case 20: return;}
    if(mode!=2) return;
    if(*(u16 *)(e+0x228)!=0xFFFF) {
        if(*(u16 *)(e+0x6A)!=*(u16 *)(e+0x228)) return;
        if(*(u16 *)(e+0x6C)!=1) return;
    }
    atk=atk20680(*(u16 *)(e+0x22C)|0xB0000);
    if(atk[0x9B]==7) return;
    if(e[0x201]&(u8)mode) {
        if(sub_08002204()==0) return;
        i=0;
        disp=e+0x218;
        for(;i<5;i++) {
            if(i==*(u16 *)e) continue;
            if(!(mask20680&(1<<i))) continue;
            t=enemies20680+i*0x2E0;
            if((u16)(*(u16 *)(t+0xC)-11)<=1) continue;
            ok=*(u32 *)(e+0x50)!=*(u32 *)(t+0x54);
            if(*(s16 *)(t+0x5C)-*(u16 *)(t+0x4A)<=0) ok=0;
            if(t[0x1DC]==0) ok=0;
            if(!ok) continue;
            if(test20680(atk,*(u16 *)(e+8),e+0x14,t+0x14,t[0x22E],t[0x22F])==0) continue;
            if(!roll20680((s16 *)(e+0x206),(s16 *)(t+0x206))) continue;
            sub_0805865C(0x1A);
            packet.amount=amtA20680(e,t);
            packet.power=atk[0xBC];
            packet.impulse=atk[0xA9];
            packet.impulse-=*(u32 *)(t+0x210);
            if(packet.impulse&0x80) packet.impulse=0;
            if(*(u32 *)(t+0x210)==0xFF) packet.impulse=0;
            angle=ArcTan2((s32)((*(s32 *)(t+0x14)-*(s32 *)(e+0x14))<<8)>>16,(s32)((*(s32 *)(t+0x18)-*(s32 *)(e+0x18))<<8)>>16);
            packet.direction=dirs20680[angle>>12];
            *(u16 *)(t+0xC)=10;
            *(u32 *)(t+0x54)=*(u32 *)(e+0x50);
            packet.player=t[2];
            *(u16 *)(t+0x4A)+=packet.amount;
            *(u32 *)(t+0x4C)=packet.amount;
            {u16 *a=(u16 *)(t+0x68); u16 v=0xFFFE; *a=v;}
            hit20680(&packet,disp,0,*(u16 *)(atk+0xBC),(u16)(*(u16 *)e+4));
            {u8 pw=packet.power; *(u16 *)(t+0x62)=pw;}
            apply20680(t,&packet);
            {u16 sid=*(u16 *)e; *(u16 *)(t+0x58)=sid;}
            *(u16 *)(t+0x5A)|=1<<plArr20680[sub_080020F4()].id;
            notify20680(&packet);
            disp20680(disp,packet.amount,0,*(u16 *)e+4,*(u16 *)e+4,*(u16 *)(atk+0xBC));
        }
        return;
    }
    p=players20680+0x14C*sub_080020F4();
    if(mode&*(u32 *)(p+0x30)) return;
    if(*(u32 *)(p+0x30)&0x2000) return;
    if(*(u32 *)(p+0x30)&0x400) return;
    if(sub_08058DB0()!=0) return;
    if(*(s16 *)(p+0x114)!=0) return;
    if(p[0x68]==0) return;
    if((u16)(*(u16 *)(p+0x20)-10)<=1) return;
    if(*(u16 *)(p+0x20)==13) return;
    if(*(u16 *)(p+0x20)==12) return;
    if(*(u16 *)(p+0x20)==14) return;
    if(sub_0800CCCC()!=0) return;
    ok=((struct PH20680 *)p)->hist[*(u16 *)e]!=*(u32 *)(e+0x50);
    hist=(u32 *)(p+0xE4);
    if(!ok) return;
    atk=atk20680(*(u16 *)(e+0x22C)|0xB0000);
    if(test20680(atk,*(u16 *)(e+8),e+0x14,p+0x8C,16,16)==0) return;
    if(roll20680((s16 *)(e+0x206),(s16 *)(p+0x3A))) {
        r=sub_080008C8()%100;
        if(p[0x6E]==0 || r>=p[0x6E]) {
            *(u16 *)(p+0x20)=10;
            {u16 *a=(u16 *)(p+0xB0); u16 v=0xFFFE; *a=v;}
            dmg=amtB20680(e,p);
            if(dmg&0x8000) {
                sub_0805865C(0x27);
                dmg&=0x7FFF;
            } else {
                sub_0805865C(0x1A);
                {u16 w=*(u16 *)(p+0xC); if(w==8) sub_0805865C(0x4B);
                else sub_0805865C(w+0x45);}
            }
            *(u16 *)(p+0x88)+=dmg;
            hist[*(u16 *)e]=*(u32 *)(e+0x50);
            *(u32 *)(p+0x110)=*(u16 *)e+5;
            packet.impulse=atk[0xA9];
            applyB20680(p,&packet);
            {u16 a8=*(u16 *)(e+8); *(u16 *)(p+0xD0)=a8;}
            hit20680(&packet,p+0x4C,0,*(u16 *)(atk+0xBC),*(u16 *)p);
            *(u32 *)(p+0xE0)=packet.power;
            exp20680(packet.power,dmg,inv20680+0x24);
            st=statA20680(p,packet.power);
            if(st!=0) stat20680(*(u16 *)p,st,packet.power);
            else {
                st=statB20680(p,0);
                if(st!=0) stat20680(*(u16 *)p,st,packet.power);
            }
            disp20680(p+0x4C,dmg,0,*(u16 *)e+4,*(u16 *)p,*(u16 *)(atk+0xBC));
            return;
        }
        counter20680(*(u32 *)(p+0x8C),*(u32 *)(p+0x90));
        dmg=amtB20680(e,p);
        if(dmg&0x8000) dmg&=0x7FFF;
        {
            /* Original keeps the counter address in r0, the sum in r1 and zz live in r4. */
            register u16 *hp asm("r0") = (u16 *)(p+0x8A);
            register u32 v asm("r1");
            register u32 cur asm("r2") = *hp;
            if (dmg>>2) v = cur + (dmg>>2);
            else v = cur + 1;
            zz = 0;
            asm("" : "+r"(zz));
            *hp = v;
        }
        hist[*(u16 *)e]=*(u32 *)(e+0x50);
        *(u32 *)(p+0x110)=*(u16 *)e+5;
        sub_0805865C(0x164);
        r=sub_080008C8()%100;
        if(p[0x6F]==0 || r>p[0x6F]) return;
        packet.amount=dmg-(dmg>>2);
        packet.power=zz;
        packet.impulse=zz;
        packet.direction=zz;
        *(u16 *)(e+0xC)=10;
        *(u32 *)(e+0x54)=*(u32 *)(p+0xDC);
        packet.player=*(u16 *)(e+2);
        *(u16 *)(e+0x4A)+=packet.amount;
        *(u32 *)(e+0x4C)=packet.amount;
        {u8 pw=packet.power; *(u16 *)(e+0x62)=pw;}
        apply20680(e,&packet);
        {u16 sid=*(u16 *)p; *(u16 *)(e+0x58)=sid;}
        *(u16 *)(e+0x5A)|=1<<*(u16 *)p;
        if(e[0x226]!=3) {u16 *a=(u16 *)(e+0x68); u16 v=0xFFFE; *a=v;}
        asm("" : : "r"(zz));
        notify20680(&packet);
    } else {
        ((struct PH20680 *)p)->hist[*(u16 *)e]=*(u32 *)(e+0x50);
        sub_0805865C(0x55);
    }
}
extern void t21_BC08(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
void t21_20D40(s32 arg0, s32 arg1) asm("sub_08020D40");
/* [TaskAnimateCriticalHitSprite] Unpacks packed world coordinates into Q8 values. */
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
/* [TaskAnimateActorEffect8] Initializes resource and remaps palette entries7/8. */
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
/* [TaskAnimateWorldSprite14] Initializes effect resource and palette. */
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
/* [TaskAnimateSelectedActorEffect] Initializes resource 0x 50074 and palette 23 with remapping7/8. */
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
/* [TaskAnimateSelectedWorldSprite] Initializes resource 0x 50074 and shared palette 23. */
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
/* [TaskAnimateActorEffect34] Initializes resource 0x 5008C and palette 23 remapped7/8. */
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
/* [TaskAnimateActorEffect11] Initializes resource 0x 5008C and shared palette 23 remapped7/8. */
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
/* [TaskDrawShortEffect] Countdown starts30; pre-decrement test produces at most30 draw/wait iterations. */
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
/* [TaskAnimateWorldSprite1] Initializes resource 0x 5008C, loads palette 23 and remaps sprite palette entries
 * to7/8. */
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
/* [TaskShowResistanceIncreaseIndicator] Packed r0: low16 actor id, high16 selector; r1 pool bit.
 * Resource5008C, palette23, descriptor bytes7/8. Captures actor position once: ids0..3 read player position
 * at+148, ids>=4 use enemy base+(id-4)*2E0+14/18. Initializes frame counters and20-iteration timer; each body
 * raises captured y when03002344 bit0 is0. UnderCC98/CD8C guards usesCCCC as tile-query mode, updates/draws
 * animation(u16)(selector+1), yields, then exits on timer/shutdown and clears pool bit03005CE4. No stat
 * mutation, following current actor motion, completion-time or successful visibility guarantee; no
 * actor/resource/selector/bit validation. */
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
/* [TaskShowResistanceDecreaseIndicator] Packed r0 low16 actor id/high16 selector, r1 pool bit.
 * Resource5008C/palette23 and initial position domains as217D8, captured once.60-iteration timer; raises y
 * when03002344 low2bits are0. UnderCC98/CD8C guards queries tile modeCCCC but discards result; animation
 * updater receives(u16)(selector+33), drawing65230 receives(u16)(selector+34), an original distinction
 * preserved. Yields and clears pool bit on timer/shutdown. Does not decrement resistance or validate
 * selector/actor/bit; visibility or exact elapsed duration is not guaranteed. Position is captured when the
 * task actually starts, not when requested by its starter. */
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
/* [TaskAnimateWorldSprite41] World-map-active early return occurs before resource loading and bypasses final
 * pool-bit clear. */
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
/* [NoOpWorldSceneAllocateHook] Lines 2400-2402 define an empty leaf; src/code_08009088.c:1940-1941 calls it
 * immediately after AllocateActorSpriteEffectTaskPool during scene resource startup. */
void sub_08021C6C(void) {

}
/* [NoOpWorldSceneFreeHook] Lines 2403-2405 define an empty leaf; src/code_08009088.c:1965-1966 calls it
 * immediately after FreeActorSpriteEffectTaskPool during teardown. */
void sub_08021C70(void) {

}
/* [ComputeRandomizedQuadraticDamage] Combines a random factor from 100 through 149 with a * a * 10 / (a + b),
 * divides by the third input and 10 with the original 16-bit truncations, and replaces a zero result with 1.
 * Matched combat callers use it for damage calculation. */
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
/* [ScaleValueByPercentBonus] Returns signed division of ((bonus + 100) * value) by 100, truncated to u16. The
 * original uses low 32-bit multiplication and does not saturate the result. */
u16 sub_08021CE4(u16 arg0, u16 arg1) {
    return __divsi3((arg1 + 0x64) * arg0, 0x64);
}
/* [ApplySquaredResistanceFactor] For selectors 1 through 7, selects one of six signed resistance halfwords,
 * with selectors 6/7 sharing index 5. Scales the 16-bit amount by 5000 / (resistance * resistance + 2500),
 * truncates to u16 and replaces high-bit results with 1. Other selectors retain the input amount; matched
 * combat callers supply a target resistance array. */
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
/* [AllocateActorSpriteEffectTaskPool] Allocates 0x500 bytes for 32 task records of 0x28 bytes at 0x03005CE0
 * and clears activity bitmap 0x03005CE4. Actor status/damage sprite starters in 0x08021DC4..0x08022504 use
 * this pool. */
void sub_08021D88(void) {
    gUnk_03005CE0 = sub_08001494(0x500);
    gUnk_03005CE4 = 0;
}
/* [FreeActorSpriteEffectTaskPool] Frees the actor sprite-effect task pool at 0x03005CE0 and clears its
 * pointer. It does not cancel active tasks or reset activity bitmap 0x03005CE4. */
void sub_08021DAC(void) {
    sub_08001538(gUnk_03005CE0);
    gUnk_03005CE0 = 0;
}
