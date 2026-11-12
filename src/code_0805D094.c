#include "global.h"
extern void sub_08065158(void *,s32,s32,s32,s32);
extern void sub_0805E0C4(void);
extern void sub_0805D854(void);
extern void sub_0805B688(void);
extern u32 gUnk_03005D60;
struct PlayerReset61 {u8 pad[0xC6];u16 reset;u8 tail[0x84];};
extern struct PlayerReset61 gReset61[] asm("gUnk_03003CE0");
extern struct Player61 gParty61[] asm("gUnk_03003CE0");
struct Player61 { u8 pad[0x38]; s16 limit; u8 rest[0x112]; };
extern u32 sub_0805D2E0(void *);
extern u32 sub_0805D278(void *);
extern u32 sub_0805D210(void *);

u32 sub_0805D2E0(void *arg0);

extern u16 gUnk_03005D5C;

extern s32 gUnk_03005D64;
extern u8 gUnk_03005D70;

extern s32 gUnk_03005D68;
extern u8 gUnk_03005D6C;

/* [RefreshHeadgearActivation] For the equipped record at manager +0x100, writes activation byte +9 to 1
 * exactly when its kind is 4 and validator 0805D210 accepts it; otherwise writes zero. Does not copy, swap or
 * remove the item. No useful return-value contract is established by the original body. */
s32 sub_0805D094(void) {
    u8 *base=(u8 *)gUnk_030034E0;
    if(*(u16 *)(base+0x100)==4) {
        if(sub_0805D210(base+0x100)!=0) M2C_FIELD((void *)gUnk_030034E0,u8 *,0x109)=1;
        else M2C_FIELD((void *)gUnk_030034E0,u8 *,0x109)=0;
    } else *(u8 *)(base+0x109)=0;
}
/* [RefreshBodyEquipmentActivation] For the equipped record at manager +0x110, writes activation byte +9 to 1
 * exactly when its kind is 3 and validator 0805D278 accepts it; otherwise writes zero. Does not copy, swap or
 * remove the item. No useful return-value contract is established by the original body. */
s32 sub_0805D0E8(void) {
    u8 *base=(u8 *)gUnk_030034E0;
    if(*(u16 *)(base+0x110)==3) {
        if(sub_0805D278(base+0x110)!=0) M2C_FIELD((void *)gUnk_030034E0,u8 *,0x119)=1;
        else M2C_FIELD((void *)gUnk_030034E0,u8 *,0x119)=0;
    } else *(u8 *)(base+0x119)=0;
}
/* [RefreshGloveActivation] For the equipped record at manager +0x120, writes activation byte +9 to 1 exactly
 * when its kind is 5 and validator 0805D2E0 accepts it; otherwise writes zero. Does not copy, swap or remove
 * the item. No useful return-value contract is established by the original body. */
s32 sub_0805D13C(void) {
    u8 *base=(u8 *)gUnk_030034E0;
    if(*(u16 *)(base+0x120)==5) {
        if(sub_0805D2E0(base+0x120)!=0) M2C_FIELD((void *)gUnk_030034E0,u8 *,0x129)=1;
        else M2C_FIELD((void *)gUnk_030034E0,u8 *,0x129)=0;
    } else *(u8 *)(base+0x129)=0;
}
/* [UpdateTypeSevenActivation] Saved record+0x130 type7 sets activation byte+0x13A to1; otherwise clears that
 * byte and local runtime halfword+0xC6. Function has signed return declaration but no C return expression; no
 * status return contract claimed. */
s32 sub_0805D190(void) {
    u8 *base=(u8 *)gUnk_030034E0;
    if(*(u16 *)(base+0x130)==7) *(u8 *)(base+0x13A)=1;
    else { gReset61[sub_080020F4()].reset=0; M2C_FIELD((void *)gUnk_030034E0,u8 *,0x13A)=0; }
}
/* [RefreshRingActivation] Sets equipped manager +0x140 record activation byte +9 to 1 when its kind is 6,
 * otherwise zero. No class, requirement or broken-item check is made here; no useful return contract is
 * inferred. */
s32 sub_0805D1E0(void) {
    u8 *base=(u8 *)gUnk_030034E0;
    if(*(u16 *)(base+0x140)==6) *(u8 *)(base+0x149)=1;
    else *(u8 *)(base+0x149)=0;
}
/* [CanEquipHeadgearItem] Returns 0 for null, kind other than 4, or nonzero item byte +8. Resolves category D,
 * requires the class permission bit in record halfword +0xA2 indexed by the low byte of 1DE60, then requires
 * record byte +0xA0 not exceed signed local-player halfword +0x38. Returns 1 only when all tests pass. The
 * player field is not renamed as an unrelated stat. */
u32 sub_0805D210(void *state) {
    u8 *resource;
    s32 offset;
    register struct Player61 *player asm("r1");
    if(state!=0 && *(u16 *)state==4 && M2C_FIELD(state,u8 *,8)==0) {
        resource=(u8 *)sub_08007290(M2C_FIELD(state,u16 *,2)|0xD0000);
        if((*(u16 *)(resource+0xA2)>>sub_0801DE60())&1) {
            offset=sizeof(struct Player61)*sub_080020F4();
            asm volatile("" : "+r" (offset));
            player=(void *)((u8 *)gParty61+offset);
            
            if(resource[0xA0]<=player->limit) return 1;
        }
    }
    return 0;
}
/* [CanEquipBodyItem] Returns 0 for null, kind other than 3, or nonzero item byte +8. Resolves category C,
 * requires the class permission bit in record halfword +0xA2 indexed by the low byte of 1DE60, then requires
 * record byte +0xA0 not exceed signed local-player halfword +0x38. Returns 1 only when all tests pass. The
 * player field is not renamed as an unrelated stat. */
u32 sub_0805D278(void *state) {
    u8 *resource;
    s32 offset;
    register struct Player61 *player asm("r1");
    if(state!=0 && *(u16 *)state==3 && M2C_FIELD(state,u8 *,8)==0) {
        resource=(u8 *)sub_08007290(M2C_FIELD(state,u16 *,2)|0xC0000);
        if((*(u16 *)(resource+0xA2)>>sub_0801DE60())&1) {
            offset=sizeof(struct Player61)*sub_080020F4();
            asm volatile("" : "+r" (offset));
            player=(void *)((u8 *)gParty61+offset);
            
            if(resource[0xA0]<=player->limit) return 1;
        }
    }
    return 0;
}
/* [CanEquipGloveItem] Returns 0 for null, kind other than 5, or nonzero item byte +8. Resolves category E,
 * requires the class permission bit in record halfword +0xA2 indexed by the low byte of 1DE60, then requires
 * record byte +0xA1 not exceed signed local-player halfword +0x38. Returns 1 only when all tests pass. The
 * player field is not renamed as an unrelated stat. */
u32 sub_0805D2E0(void *arg0) {
    s32 temp_r4;
    s32 player;
    s16 *limitPtr;
    u8 resourceValue;
    s16 limit;

    if ((arg0 != NULL) && (M2C_FIELD(arg0, u16 *, 0) == 5) && (M2C_FIELD(arg0, u8 *, 8) == 0)) {
        temp_r4 = sub_08007290(M2C_FIELD(arg0, u16 *, 2) | 0xE0000);
        if ((((s32) M2C_FIELD(temp_r4, u16 *, 0xA2) >> sub_0801DE60()) & 1) != 0) {
            player = sub_080020F4();
            limitPtr = (s16 *)((u8 *)gUnk_03003CE0 + player * 0x14C);
            resourceValue = *(u8 *)((u8 *)temp_r4 + 0xA1);
            limit = *(s16 *)((u8 *)limitPtr + 0x38);
            if (resourceValue <= limit) {
                return 1U;
            }
        }
    }
    return 0U;
}
/* [HasNonfullBagCurrencyStack] Returns 1 if any of the 25 bag records is kind 10 with unsigned count at most
 * 99999; otherwise 0. It does not accept an empty bag slot as a substitute and does not check stash stacks. */
u32 sub_0805D348(void)
{
  u8 *entry = ((u8 *) gUnk_030034E0) + 0x150;
  int i;
  for (i = 0; i <= 0x18; i++, entry += 0x10)
  {
    if (((*((u16 *) entry)) == 0xA) && ((*((u32 *) (entry + 4))) <= 0x1869F))
    {
      return 1;
    }
  }

  return 0;
}
/* [FindNearbyFieldItemByKey] Scans 16 field-item records of 32 bytes at 03005D58 for active flag bit 0 at
 * +0xA, matching key +8, and absolute((query - record position) >> 8) <= 7 on both axes. Returns the first
 * match or null. The arithmetic shift precedes absolute value. */
void *sub_0805D37C(s32 x, s32 y, s32 key) {
    u8 *entry;
    u32 i;
    entry = gUnkP_03005D58;
    i = 0;
    do {
        if (*(u16 *)(entry + 0xA) & 1) {
            s32 dx;
            s32 dy;
            dx = (x - *(s32 *)entry) >> 8;
            if (dx < 0) dx = -dx;
            dy = (y - *(s32 *)(entry + 4)) >> 8;
            if (dy < 0) dy = -dy;
            if (dx <= 7 && dy <= 7 && key == *(u16 *)(entry + 8)) return entry;
        }
        i++;
        entry += 0x20;
    } while (i <= 0xF);
    return 0;
}
/* [SumBagCurrency] Sums the raw word +4 of kind-10 entries among exactly 25 records at manager +0x150, stride
 * 16, and returns the low 32-bit total without capacity or overflow checks. */
s32 sub_0805D3D4(void) {
    s32 var_r3;
    u32 var_r2;
    void *var_r1;

    var_r3 = 0;
    var_r2 = 0;
    var_r1 = gUnk_030034E0 + 0x150;
    do {
        if (M2C_FIELD(var_r1, u16 *, 0) == 0xA) {
            var_r3 += M2C_FIELD(var_r1, s32 *, 4);
        }
        var_r1 += 0x10;
        var_r2 += 1;
    } while (var_r2 <= 0x18U);
    return var_r3;
}
/* [SumStashCurrency] Sums the raw word +4 of kind-10 entries among exactly 75 records at manager +0x2E0,
 * stride 16, and returns the low 32-bit total without capacity or overflow checks. */
s32 sub_0805D404(void) {
    s32 var_r3;
    u32 var_r2;
    void *var_r1;

    var_r3 = 0;
    var_r2 = 0;
    var_r1 = gUnk_030034E0 + 0x2E0;
    do {
        if (M2C_FIELD(var_r1, u16 *, 0) == 0xA) {
            var_r3 += M2C_FIELD(var_r1, s32 *, 4);
        }
        var_r1 += 0x10;
        var_r2 += 1;
    } while (var_r2 <= 0x4AU);
    return var_r3;
}
/* [FindFreeFieldItemRecord] Returns the first of 16 field-item records whose flags at +0xA have both low bits
 * clear, or null. It does not reserve or initialize the record. */
void *sub_0805D434(void)
{
    u8 *entry = gUnk_03005D58;
    u32 i;
    for (i = 0; i < 16; i++, entry += 0x20)
        if ((*(u16 *)(entry + 0xA) & 3) == 0)
            return entry;
    return 0;
}
/* [FindActiveFieldItemById] Returns the first of 16 field-item records with flag bit 0 at +0xA set and
 * matching 16-bit ID at +0xC, or null. */
void *sub_0805D460(unsigned short id)
{
  u8 *entry = gUnk_03005D58;
  u32 i;
  for (i = 0; i < 16; i++, entry += 0x20)
  {
    if ((((*((u16 *) (entry + 0xA))) & 1) != 0) && ((*((u16 *) (entry + 0xC))) == ((u16) id)))
    {
      return entry;
    }
  }

  return 0;
}
/* [FindFieldItemByIdInStateTwo] Scans 16 field-item records for flags at +0xA equal to exactly 2 and ID at
 * +0xC equal to the input. Receiver 6690C uses it after pickup reservation; the name preserves the whole-flags
 * test without assigning a universal state meaning. */
void *sub_0805D498(unsigned short id)
{
  u8 *entry = gUnk_03005D58;
  u32 i;
  for (i = 0; i < 16; i++, entry += 0x20)
  {
    if (((*((u16 *) (entry + 0xA))) == 2) && ((*((u16 *) (entry + 0xC))) == ((u16) id)))
    {
      return entry;
    }
  }

  return 0;
}
/* [DeactivateFieldItemsById] Clears flags at +0xA and ID at +0xC on every matching-ID record among 16
 * field-item records and returns whether any matched. It requires no active flag and retains positions and
 * payload. */
s32 sub_0805D4C4(u16 arg0) {
    s32 var_r4;
    u32 var_r2;
    void *var_r1;

    var_r4 = 0;
    var_r1 = gUnk_03005D58;
    var_r2 = 0;
    do {
        if (M2C_FIELD(var_r1, u16 *, 0xC) == arg0) {
            M2C_FIELD(var_r1, s16 *, 0xA) = 0;
            M2C_FIELD(var_r1, u16 *, 0xC) = 0U;
            var_r4 = 1;
        }
        var_r2 += 1;
        var_r1 += 0x20;
    } while (var_r2 <= 0xFU);
    return var_r4;
}
/* [ResetFieldItemRecordsAndIdCounter] Sets field-item ID counter 03005D5C to 1 and clears flags and IDs on 16
 * records, retaining positions, keys and payload. */
void sub_0805D4F4(void) {
    u32 i;
    u8 *entry;
    entry = gUnkP_03005D58;
    gUnk_03005D5C = 1;
    i = 0;
    do {
        *(u16 *)(entry + 0xA) = 0;
        *(u16 *)(entry + 0xC) = 0;
        i++;
        entry += 0x20;
    } while (i <= 0xF);
}
/* [DeactivateFieldItemsWithoutRetainFlag] Clears flags and IDs on records whose key at +8 lacks bit 0x20.
 * Retention describes this operation only; no particular map or save lifetime is inferred. */
void sub_0805D518(void) {
    u16 temp_r0;
    u32 var_r3;
    void *var_r2;

    var_r2 = gUnk_03005D58;
    var_r3 = 0;
    do {
        temp_r0 = 0x20 & M2C_FIELD(var_r2, u16 *, 8);
        if (temp_r0 == 0) {
            M2C_FIELD(var_r2, u16 *, 0xA) = temp_r0;
            M2C_FIELD(var_r2, u16 *, 0xC) = temp_r0;
        }
        var_r3 += 1;
        var_r2 += 0x20;
    } while (var_r3 <= 0xFU);
}
/* [FindBagItemOneIndex] Scans25 sixteen-byte bag records from inventory+150 and returns first zero-based index
 * with category1 and id equal to the signed argument; otherwise returns-1. No inventory/null validation and no
 * mutation. */
s32 sub_0805D548(s32 arg0) {
    u32 var_r2;
    void *var_r1;

    var_r2 = 0;
    var_r1 = gUnk_030034E0 + 0x150;
loop_1:
    if ((M2C_FIELD(var_r1, u16 *, 0) == 1) && (M2C_FIELD(var_r1, u16 *, 2) == arg0)) {
        return (s32) var_r2;
    }
    var_r1 += 0x10;
    var_r2 += 1;
    if (var_r2 > 0x18U) {
        return -1;
    }
    goto loop_1;
}
/* [ClearInventoryItemKindAtIndex] For index <= 24, clears only the kind halfword in the 16-byte inventory slot
 * at 030034E0 + 0x150 + index * 16. ID, amount and remaining bytes are retained. */
void sub_0805D580(u32 index)
{
  s8 *new_var;
  s32 new_var2;
  if (index <= 0x18)
  {
    new_var2 = gUnk_030034E0;
    new_var = (s8 *) ((((u8 *) new_var2) + (8 * (2 * index))) + 0x150);
    *((u16 *) (new_var + 0)) = 0;
  }
}
/* [ClearBagCurrencyAndReturnHalfTotal] First sums all kind-10 bag counts over 25 records and saves the
 * unsigned total shifted right by one. Then visits the bag again and clears each still-kind-10 record via
 * 5D580. Returns the saved half total. It clears every currency stack rather than leaving half the money in
 * the bag; count payload bytes remain because 5D580 clears only the kind halfword. No death-penalty or drop
 * semantics are claimed. */
u32 sub_0805D5A0(void) {
    u32 total=0;
    u32 j;
    u32 i;
    u32 result;
    u8 *entry;
    for(j=0,entry=(u8 *)gUnk_030034E0+0x150;j<=24;entry+=16,j++)
        if(*(u16 *)entry==10) total+=*(u32 *)(entry+4);
    result=total>>1;
    for(i=0;i<=24;i++) {
        u8 *base=(u8 *)gUnk_030034E0;
        register u32 offset asm("r1")=i*16;
        
        base+=offset;
        
        if(*(u16 *)(base+0x150)==10) sub_0805D580(i);
    }
    return result;
}
/* [FindLargestUncappedBagCurrencyStack] Searches bag indices max(start,0)..24 and returns the first index with
 * the largest signed nonnegative count among kind-10 records, excluding count exactly 100000. Returns -1 when
 * none qualifies or start> 24. Uncapped here means not equal to the cap: malformed counts above 100000 are not
 * rejected, and high-bit signed-negative words are ignored. Equal counts retain the earlier index. Does not
 * reserve or mutate a stack. */
s32 sub_0805D5F4(s32 start) {
    u8 *entry;
    s32 bestIndex=start;
    s32 index;
    s32 bestValue;
    if(bestIndex<0) bestIndex=0;
    entry=(u8 *)gUnk_030034E0+(bestIndex*16+0x150);
    bestValue=-1;
    for(index=bestIndex;index<=24;index++,entry+=16)
        if(*(u16 *)entry==10) {
            s32 value=*(s32 *)(entry+4);
            if(bestValue<value && value!=100000) { bestIndex=index; bestValue=value; }
        }
    if(bestValue<0) return -1;
    return bestIndex;
}
/* [FindLargestUncappedStashCurrencyStack] Searches stash records starting at max(start,0), stopping before 15
 * times the unsigned halfword at character/inventory base +0x6A. That base is read through pointer global
 * 030034E0. Returns the first index with the largest signed nonnegative kind-10 count other than exactly
 * 100000, or -1 if none. It does not scan a fixed75 records independently of configured capacity, cap the
 * capacity to physical storage, reserve a slot or reject counts above 100000. Equal maxima retain the earlier
 * index. */
s32 sub_0805D650(s32 arg0) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 var_r2;
    s32 var_r4;
    s32 var_r5;
    void *var_r3;

    var_r4 = arg0;
    if (var_r4 < 0) {
        var_r4 = 0;
    }
    var_r3 = (u8 *)gUnk_030034E0 + ((var_r4 * 0x10) + 0x2E0);
    var_r5 = -1;
    var_r2 = var_r4;
    temp_r0 = M2C_FIELD((void *)gUnk_030034E0,u16 *,0x6A) * 0xF;
    
    if (var_r4 < temp_r0) {
        s32 excluded=100000;
        s32 limit;
        
        limit=temp_r0;
        do {
            if (M2C_FIELD(var_r3,u16 *,0) == 0xA) {
                temp_r0_2 = M2C_FIELD(var_r3,s32 *,4);
                if ((var_r5 < temp_r0_2) && (temp_r0_2 != excluded)) {
                    var_r4 = var_r2;
                    var_r5 = temp_r0_2;
                }
            }
            var_r2 += 1;
            var_r3 += 0x10;
        } while (var_r2 < limit);
    }
    if (var_r5<0) return -1;
    return var_r4;
}

/* [AdmitThrownItemTask] Searches six0x28-byte task controls for an inactive entry, writes control+8=0x34,
 * allocates0x800 bytes unchecked, assigns thrown-item callback5B688 and stack top+7FC, then starts it with two
 * unsigned halfword arguments. Full pool silently skips startup; no allocation or completion result. */
void sub_0805D6B8(u16 a,u16 b) {
    u8 *entry=(u8 *)gUnk_03005D60;
    u32 i;
    for(i=0;i<=5;i++,entry+=0x28) {
        u32 result=sub_08000470(entry);
        if(result==0) {
            void *mem;
            M2C_FIELD(entry,u32 *,8)=0x34;
            mem=sub_08001494(0x800);
            M2C_FIELD(entry,void **,0x20)=mem;
            M2C_FIELD(entry,void (**)(void),0xC)=sub_0805B688;
            M2C_FIELD(entry,void **,0x10)=(u8 *)mem+0x7FC;
            M2C_FIELD(entry,u32 *,0x24)=result;
            sub_08000274(entry,a,b);
            break;
        }
    }
}
/* [StartTextWindowTask] Finds a free low-four bitmap slot, initializes its 0x34-byte text-window task and
 * starts matching window animator 5D854 with a retried 0x400-byte stack allocation; returns the record
 * pointer, or zero if all slots are used. All four rectangle inputs are narrowed to bytes. Centers are first
 * derived from the unbounded narrowed dimensions, then stored dimensions are clamped to width 1..28 and height
 * 1..18. Preserves original coordinate corrections: X plus half-width above 30 sets X to 30 minus half-width;
 * Y plus half-height above 20 sets Y to 30 minus half-height, not 20. Lower corrections test bit 7 of
 * center-minus-half. Thus no general on-screen rectangle guarantee is inferred. */
s32 sub_0805D720(u8 arg0, u8 arg1, u32 arg2, u32 arg3) {
    u32 center;
    register u32 half asm("r1");
    u32 copy;
    register u32 mask asm("r5");
    u32 value;
    u32 temp_r1;
    u32 temp_r1_2;
    u8 temp_r3;
    u32 temp_r5;
    u32 temp_r6;
    register s32 var_r0 asm("r0");
    u32 var_r0_2;
    u32 var_r0_3;
    u32 var_r1;
    u32 flags;
    register u32 one asm("r3");
    void *temp_r0;
    void *temp_r4;

    temp_r5=(u8)arg2;
    
    temp_r6=(u8)arg3;
    var_r1=0;
    flags=gUnk_03005D70;
    one=1;
    
    do {
        if(((s32)flags>>var_r1 & one)==0) { var_r0=var_r1; goto found; }
        var_r0=var_r1+1;
        
        var_r1=(u8)var_r0;
    } while(var_r1<=3);
    var_r0=255;
found:
    
    temp_r3 = var_r0;
    if (temp_r3 == 0xFF) {
        return 0;
    }
    temp_r4 = gUnk_03005D64 + (0x34 * temp_r3);
    M2C_FIELD(temp_r4, u8 *, 0x31) = temp_r3;
    value=(temp_r5>>1)+1;
    asm volatile("" : "+r" (value));
    M2C_FIELD(temp_r4,u16 *,0x28)=arg0-(-value);
    value=(temp_r6>>1)+1;
    
    M2C_FIELD(temp_r4,u16 *,0x2A)=value+arg1;
    if (temp_r5 != 0) {
        var_r0_2 = 0x1C;
        if ((u32) temp_r5 <= 0x1CU) {
            var_r0_2 = temp_r5;
        }
    } else {
        var_r0_2 = 1;
    }
    M2C_FIELD(temp_r4, u16 *, 0x2c) = (u16) var_r0_2;
    if (temp_r6 != 0) {
        var_r0_3 = 0x12;
        if ((u32) temp_r6 <= 0x12U) {
            var_r0_3 = temp_r6;
        }
    } else {
        var_r0_3 = 1;
    }
    M2C_FIELD(temp_r4, u16 *, 0x2e) = (u16) var_r0_3;
    center=M2C_FIELD(temp_r4,u16 *,0x28);
    
    value=M2C_FIELD(temp_r4,u16 *,0x2C);
    
    half=value>>1;
    copy=half;
    
    value=center+copy;
    if((s32)value>30) M2C_FIELD(temp_r4,u16 *,0x28)=30-half;
    center=M2C_FIELD(temp_r4,u16 *,0x28);
    value=center-copy;
    mask=128;
    
    if(value&mask) M2C_FIELD(temp_r4,u16 *,0x28)=half;
    center=M2C_FIELD(temp_r4,u16 *,0x2A);
    
    value=M2C_FIELD(temp_r4,u16 *,0x2E);
    
    half=value>>1;
    copy=half;
    
    value=center+copy;
    if((s32)value>20) M2C_FIELD(temp_r4,u16 *,0x2A)=30-half;
    center=M2C_FIELD(temp_r4,u16 *,0x2A);
    value=center-copy;
    if(value&mask) M2C_FIELD(temp_r4,u16 *,0x2A)=half;
    M2C_FIELD(temp_r4, u8 *, 0x30) = 0;
    M2C_FIELD(temp_r4, void (**)(void), 0xC) = &sub_0805D854;
    while((M2C_FIELD(temp_r4, void **, 0x20)=(temp_r0=sub_08001494(0x400)))==NULL) sub_080003F0();
    M2C_FIELD(temp_r4, void * *, 0x10) = (void *) (temp_r0 + 0x3FC);
    M2C_FIELD(temp_r4, u32 *, 0x8) = 0x14;
    M2C_FIELD(temp_r4, u32 *, 0x0) = 0;
    M2C_FIELD(temp_r4, u32 *, 0x18) = 0;
    M2C_FIELD(temp_r4, u32 *, 0x24) = 0;
    sub_08000274(temp_r4, temp_r4);
    gUnk_03005D70 |= 1 << M2C_FIELD(temp_r4, u8 *, 0x31);
    return (s32) temp_r4;
}

struct D854Window { u8 data[0x28]; u16 x, y, width, height; u8 state, number; u16 pad32; };
struct D854Video { u16 scrollX, scrollY; u8 pad4[0x2C]; u16 win0H, win1H, win0V, win1V, winIn, winOut; };
struct D854State { u8 pad[0x14A]; u16 palette; };
extern struct D854Video d854_video asm("gUnk_03001250");
extern struct D854State *d854_game asm("gUnk_03005CF4");
extern u16 d854_paletteTable[] asm("gUnk_084EBD38");
extern u16 d854_palette0 asm("gUnk_03001F40");
extern u16 d854_tiles[][32] asm("gUnk_03005740");
extern u8 gUnk_03005D70;
extern void d854_endTask(void) asm("sub_0800035C");
extern void d854_clearFlags(u16, u16, u16) asm("sub_080009F8");
extern s32 d854_clearRows(u32, u32) asm("sub_0801A664");

/* Animate a window's opening, steady display and closing states. */
void d854_impl(void *arg) asm("sub_0805D854");
/* [TaskAnimateTextWindowFrame] Matching window task opens width and height, configures window shadows, palette
 * and frame tiles, holds state 3, then closes on state 4 and clears its used-slot bit before task exit.
 * Dialogue interpreter 5E0C4 is separate. */
void d854_impl(void *arg)
{
    struct D854Window *window = arg;
    u16 width, right, height;
    u16 left, top;
    u32 delay;
    s32 initialized;
    u16 bottom, column, row;
    window->state = 1;
    d854_video.scrollX = 0;
    d854_video.scrollY = 0;
    delay = 0;
    for (;;) {
        switch (window->state) {
        case 0:
            gUnk_03005D70 &= ~(1 << window->number);
            d854_endTask();
            /* The scheduler normally does not return from d854_endTask. */
        case 1:
            width = 0;
            height = 0;
            window->state = 2;
            d854_video.winIn = 0x101;
            d854_video.winOut = 0x3F3F;
            d854_palette0 = d854_paletteTable[d854_game->palette];
            initialized = 0;
            sub_08000B38();
            sub_0805865C(0xDC);
            break;
        case 2:
            if (sub_0800CC98() == 0) {
                if (initialized == 0) {
                    sub_080009C0(0, 0x4000, 1);
                    d854_palette0 = d854_paletteTable[d854_game->palette];
                    sub_08000B38();
                    initialized = 1;
                }
                d854_video.winIn = 0x101;
                d854_video.winOut = 0x3F3F;
            }
            width = (u16)(width + 2);
            if (width >= window->width) {
                width = window->width;
                height = (u16)(height + 2);
                if (height >= window->height) {
                    height = window->height;
                    window->state = 3;
                }
            }
            break;
        case 3:
            if (sub_0800CC98() == 0) {
                if (initialized == 0) {
                    sub_080009C0(0, 0x4000, 1);
                    d854_palette0 = d854_paletteTable[d854_game->palette];
                    initialized = 1;
                }
                d854_palette0 = d854_paletteTable[d854_game->palette];
                d854_video.winIn = 0x101;
                d854_video.winOut = 0x3F3F;
            }
            break;
        case 4:
            height = (u16)(height - 2);
            if (height & 0x8000) height = 0;
            width = (u16)(width - 2);
            if (width & 0x8000) width = 0;
            if (width == 0 && height == 0) {
                if (sub_0800CC98() == 0 && initialized == 1) {
                    d854_clearFlags(0, 0x4000, 1);
                    initialized = 0;
                }
                window->state = 5;
                delay = 0;
                d854_palette0 = 0;
                sub_08000B38();
            }
            break;
        case 5:
            { u16 h = window->height; d854_clearRows(~(h >> 1) + window->y, h + 2); }
            if (delay++ > 3) window->state = 0;
            break;
        }
        if (window->state != 5 && window->state != 0) {
            left = window->x - (width >> 1);
            right = window->x + (width >> 1);
            right += width & 1;
            top = window->y - (height >> 1);
            bottom = window->y + (height >> 1);
            bottom += height & 1;
            if (sub_0800CC98() == 0) {
                d854_tiles[top - 1][left - 1] = 0xF120;
                d854_tiles[bottom + 1][left - 1] = 0xF126;
                d854_tiles[top - 1][right + 1] = 0xF122;
                d854_tiles[bottom + 1][right + 1] = 0xF128;
                for (column = left; column <= right; column++) {
                    d854_tiles[top - 1][column] = 0xF121;
                    d854_tiles[bottom + 1][column] = 0xF127;
                }
                for (row = top; row <= bottom; row++) {
                    d854_tiles[row][left - 1] = 0xF123;
                    d854_tiles[row][right + 1] = 0xF125;
                }
                d854_video.win1H = ((((left - 1) * 8) + 3) << 8) | (((right + 2) * 8) - 3);
                d854_video.win1V = ((((top - 1) * 8) + 3) << 8) | (((bottom + 2) * 8) - 3);
                { u16 h = window->height; d854_clearRows(~(h >> 1) + window->y, h + 3); }
            }
        }
        sub_080003F0();
    }
}
struct DC1CWindow { u8 data[0x28]; u16 x, y, width, height; u8 state, number; u16 pad32; };
struct DC1CVideo { u16 scrollX, scrollY; u8 pad4[0x2C]; u16 win0H, win1H, win0V, win1V; };
extern struct DC1CWindow *dc1c_windows asm("gUnk_03005D64");
extern u16 dc1c_tiles[][32] asm("gUnk_03005740");
extern struct DC1CVideo dc1c_video asm("gUnk_03001250");
extern u8 dc1c_used asm("gUnk_03005D70");
extern s32 sub_0801A664();

static inline u8 findFreeDC1C(void)
{
    u8 i;
    for (i = 0; i <= 3; i++) {
        if (!((dc1c_used >> i) & 1))
            return i;
    }
    return 0xFF;
}

/* [CreateClampedBorderWindow] Truncates all inputs tobytes; no free window slot returns. Marks selected
 * windowstate1, resets scroll, computes center from original sizes, clamps dimensions1..28/1..18, adjusts
 * centers, draws border tiles and window clipping and requests line refresh. Upper y test uses20 but
 * assigns30-halfHeight as written; arbitrary coordinates are not asserted safe. */
void sub_0805DC1C(u32 xArg, u32 yArg, u32 widthArg, u32 heightArg)
{
    u8 x = xArg, y = yArg, width = widthArg, height = heightArg;
    struct DC1CWindow *window;
    u8 slot;
    register u16 halfWidth asm("r3");
    register u16 halfHeight asm("r4");
    u16 w, h;
    s32 clampHalf;
    u16 pos;
    u16 left, right, top, bottom, col, row;
    u8 *num;

    slot = findFreeDC1C();
    if (slot == 0xFF)
        return;
    window = &dc1c_windows[slot];
    window->state = 1;
    dc1c_video.scrollX = 0;
    dc1c_video.scrollY = 0;
    window->x = x + (u16)((width >> 1) + 1);
    window->y = y + (u16)((height >> 1) + 1);
    w = width ? (width > 28 ? 28 : width) : 1;
    window->width = w;
    h = height ? (height > 18 ? 18 : height) : 1;
    window->height = h;
    pos = window->x;
    w = window->width;
    halfWidth = w >> 1;
    clampHalf = halfWidth;
    if (pos + clampHalf > 30)
        window->x = 30 - halfWidth;
    pos = window->x;
    if ((pos - clampHalf) & 0x80)
        window->x = halfWidth;
    pos = window->y;
    h = window->height;
    halfHeight = h >> 1;
    clampHalf = halfHeight;
    if (pos + clampHalf > 20)
        window->y = 30 - halfHeight;
    pos = window->y;
    if ((pos - clampHalf) & 0x80)
        window->y = halfHeight;
    left = window->x - halfWidth;
    right = window->x + halfWidth;
    right += w & 1;
    top = window->y - halfHeight;
    bottom = window->y + halfHeight;
    bottom += h & 1;
    dc1c_tiles[top - 1][left - 1] = 0xF120;
    dc1c_tiles[bottom + 1][left - 1] = 0xF126;
    dc1c_tiles[top - 1][right + 1] = 0xF122;
    dc1c_tiles[bottom + 1][right + 1] = 0xF128;
    col = left;
    num = &window->number;
    for (; col <= right; col++) {
        dc1c_tiles[top - 1][col] = 0xF121;
        dc1c_tiles[bottom + 1][col] = 0xF127;
    }
    for (row = top; row <= bottom; row++) {
        dc1c_tiles[row][left - 1] = 0xF123;
        dc1c_tiles[row][right + 1] = 0xF125;
    }
    if (*num == 0) {
        dc1c_video.win1H = (((left - 1) * 8 + 3) << 8) | ((right + 2) * 8 - 3);
        dc1c_video.win1V = (((top - 1) * 8 + 3) << 8) | ((bottom + 2) * 8 - 3);
    } else {
        dc1c_video.win0H = (((left - 1) * 8 + 3) << 8) | ((right + 2) * 8 - 3);
        dc1c_video.win0V = (((top - 1) * 8 + 3) << 8) | ((bottom + 2) * 8 - 3);
    }
    pos = window->height;
    sub_0801A664(~(pos >> 1) + window->y, pos + 3);
}
/* [StopMaskedItemEffectTasks] For two four-entry pools, checks corresponding mask bits, stops tasks only if
 * active and clears each checked bit. First pool stride0x34, second0x88; does not free the pool allocations or
 * reset unmasked entries. No return value. */
void sub_0805DE98(void) {
    s32 temp_r4;
    s32 var_r6;
    u32 var_r5;
    u32 var_r5_2;
    register u8 *flags asm("r7");
    register u32 one asm("r8");

    var_r5 = 0;
    do {
        if (((s32) gUnk_03005D70 >> var_r5) & 1) {
            register s32 *pool asm("r6")=&gUnk_03005D64;
            
            temp_r4 = 0x34 * var_r5;
            if (sub_08000470(*pool + temp_r4) != 0) {
                sub_080003A8(*pool + temp_r4);
            }
            gUnk_03005D70 &= ~(1 << var_r5);
        }
        var_r5 += 1;
    } while (var_r5 <= 3U);
    var_r5_2 = 0;
    flags=&gUnk_03005D6C;
    one=1;
    
    var_r6 = 0;
    do {
        if (((s32)gUnk_03005D6C >> var_r5_2) & one) {
            if (sub_08000470(gUnk_03005D68 + var_r6) != 0) {
                sub_080003A8(gUnk_03005D68 + var_r6);
            }
            gUnk_03005D6C &= ~(one << var_r5_2);
        }
        var_r6 += 0x88;
        var_r5_2 += 1;
    } while (var_r5_2 <= 3U);
}

/* [StartFixedLayoutDialogueTask] Finds one of four free 0x88-byte dialogue tasks, starts a window at fixed
 * layout (0, 14, 27, 3), initializes script, timing and selection, allocates a 0x800-byte stack, and starts
 * 5E0C4. The first four parameters are unused. Positive duration becomes 140; duration -2 selects a special UI
 * sprite. */
u32 sub_0805DF38(u32 unused0,u32 unused1,u32 unused2,u32 unused3,s32 duration,u32 resource)
{
    u32 index;
    u32 counter;
    u32 flags;
    u32 bit;
    register s32 found asm("r0");
    u32 zero;
    u32 one;
    u8 *task;
    void *memory;
    u16 *cursor;
    u8 *address;
    u32 offset;
    u8 *base;
    s32 *basePtr;
    counter=0;
    flags=gUnk_03005D6C;
    bit=1;
    
    do {
        if(((s32)flags>>counter & bit)==0) { found=counter; goto slot_found; }
        found=counter+1;
        
        counter=(u8)found;
    } while(counter<=3);
    found=255;
slot_found:
    
    index=(u8)found;
    if(index==255) return 0;
    basePtr=&gUnk_03005D68;
    
    offset=index*0x88;
    base=(u8 *)*basePtr;
    
    task=base+offset;
    task[0x70]=index;
    M2C_FIELD(task,u32 *,0x28)=sub_0805D720(0,14,27,3);
    if(duration==-2) {
        switch(gUnk_03003470) {
        case 0: sub_08065158(task+0x2C,0x50002,0,0x80000000,0); break;
        case 1: sub_08065158(task+0x2C,0x5015B,0,0x80000000,0); break;
        case 2: sub_08065158(task+0x2C,0x5015C,0,0x80000000,0); break;
        case 3: sub_08065158(task+0x2C,0x5015D,0,0x80000000,0); break;
        case 4: sub_08065158(task+0x2C,0x5015E,0,0x80000000,0); break;
        }
    } else if(duration>0) duration=140;
    if(M2C_FIELD(task,u32 *,0x28)==0) return 0;
    address=task+0x69;
    
    zero=0;
    one=1;
    
    *address=one;
    task[0x6A]=15;
    task[0x68]=2;
    M2C_FIELD(task,u32 *,0x60)=sub_08007290(resource);
    cursor=(u16 *)(task+0x6C);
    *cursor++=zero;
    *cursor=zero;
    M2C_FIELD(task,u32 *,0x74)=one;
    cursor+=11;
    *(s32 *)cursor=duration;
    cursor-=2;
    *cursor=zero;
    cursor-=4;
    *cursor++=zero;
    *cursor++=zero;
    *cursor++=zero;
    
    *cursor=zero;
    M2C_FIELD(task,u32 *,0x64)=zero;
    M2C_FIELD(task,void (**)(void),0xC)=sub_0805E0C4;
    M2C_FIELD(task,u32 *,0x24)=zero;
    while((M2C_FIELD(task,void **,0x20)=(memory=sub_08001494(0x800)))==0) sub_080003F0();
    M2C_FIELD(task,void **,0x10)=(u8 *)memory+0x7FC;
    M2C_FIELD(task,u32 *,8)=0x15;
    M2C_FIELD(task,u32 *,0)=0;
    M2C_FIELD(task,u32 *,0x18)=0;
    sub_08000274(task,task);
    gUnk_03005D6C|=1<<task[0x70];
    return (u32)task;
}
struct Asset0C4 { s32 unk0; u32 unk4; s32 unk8; u8 *unkC; u32 unk10; u32 unk14; s32 unk18; u8 remap[16]; u8 tail[8]; };
struct Window0C4 { u8 pad[0x30]; u8 state; u8 index; };
struct Task0C4 {
    u8 header[0x28];
    struct Window0C4 *window;
    struct Asset0C4 text;
    u8 *script;
    u16 *str;
    u8 maxLines;
    u8 x;
    u8 y;
    u8 pad6B;
    u16 unk6C;
    u16 col;
    u8 index;
    u8 pad71[3];
    u32 state;
    u16 unk78;
    u16 unk7A;
    u16 unk7C;
    u16 unk7E;
    u16 cursor;
    u16 pad82;
    s32 timer;
};

extern s32 sub_08000498(s32 *, u32);
extern void text0C4(u8 *, u16, u32) asm("sub_0801A3D0");
extern void sub_08065264(void *, s32, s32, u16, u16);
extern s32 anim0C4(void *, u16, u16 *, u16 *, s32) asm("sub_08065370");
extern u16 keys0C4 asm("gUnk_03001324");
/* Party entries are 0x14C bytes; the name starts at gUnk_03003CE0 + 2. */
struct Party0C4 { u8 name[0x14C]; };
extern struct Party0C4 party0C4[] asm("gUnk_03003CE2");
extern u8 name1C4[] asm("gUnk_03003E2E");
extern u8 name2C4[] asm("gUnk_03003F7A");
extern u8 name3C4[] asm("gUnk_030040C6");
extern u8 gUnk_084EBD48[];
extern void draw0C4(void *, s32, s32, u32, s32) asm("sub_08065230");

void e0c4Impl(struct Task0C4 *task) asm("sub_0805E0C4");
/* [TaskDialogueScriptWindow] Window task interprets byte script controls, resolves player-name/numeric
 * substitutions and portrait resources, advances text according to timing/input, and draws buffered lines.
 * Exact script opcode names and complete encoding remain unassigned. This C remains a NONMATCHING draft; the
 * role is independently anchored by original ASM. */
void e0c4Impl(struct Task0C4 *task)
{
    u8 lines[2][30];
    struct Asset0C4 asset;
    u8 numBuf[12];
    u8 nameBuf[16];
    s32 value;
    u32 skip;
    u16 scroll;
    u16 line;
    u32 drawFlag;
    u16 sfx;
    u8 delay;
    u8 speed;
    u32 hold;
    u32 blink;
    /* Original first reads uninitialized frame slot SP+0xB8 at 0805EA88. */
    u8 blinkTimer;
    u16 numIdx;
    u16 strIdx;
    u16 idx0;
    u16 idx1;
    u16 idx2;
    u16 idx3;
    u16 nameIdx;
    u8 *playerName;
    u32 voice;
    u8 *num;
    u8 *name;
    u8 *script;
    u32 portrait;
    s32 *pValue;
    s32 i;
    s32 j;
    s32 k;
    s32 first;
    u32 started;
    u8 *s;
    /* One r4 pointer in the ROM: script + 1, the &value conversion pointer
       and task->str in both text paths. */
    register u8 *next asm("r4");
    u8 c;
    u16 attr;
    u8 cf;
    /* Set-once name pointers: spilled and rematerialised per use, which gives
       the ROM `ldr r5, =name; adds r0, r5, idx` operand order. n0 is set
       right before the name copy (from the same constant as playerName, so
       reload_cse turns its first reload into a register copy). */
    u8 *n0;
    u8 *n1 = name1C4;
    u8 *n2 = name2C4;
    u8 *n3 = name3C4;

    script = task->script;
    drawFlag = 0;
    sfx = 0;
    idx1 = 0;
    idx2 = 0;
    idx3 = 0;
    pValue = &value;
    num = numBuf;
    name = nameBuf;
    next = script + 1;
    for (i = 0; i < 2; i++) {
        for (line = 0; line < 18; line++)
            lines[i][line] = 0xFD;
    }
    c = *script;
    if (c != 0)
        portrait = (u8)(c - 1);
    else
        portrait = 0xFF;
    script = next;
    voice = *script;
    script++;
    if (sub_0800CE30() != 0) {
        if (portrait != 0xFF) {
            if (portrait < 0x10) {
                sub_08065158(&asset, 0x500A8, 0xF, -1, 0);
            } else if (portrait < 0x20) {
                sub_08065158(&asset, 0x500A7, 0xF, -1, 0);
                portrait = (u8)(portrait - 0x10);
            } else {
                sub_08065158(&asset, 0x500C1, 0xF, -1, 0);
                portrait = (u8)(portrait - 0x20);
            }
        }
    } else {
        if (portrait != 0xFF) {
            if (portrait < 0x10) {
                sub_08065158(&asset, 0x500A8, 0xF, -1, 0);
            } else if (portrait < 0x20) {
                sub_08065158(&asset, 0x500A7, 0xF, -1, 0);
                portrait = (u8)(portrait - 0x10);
            } else {
                sub_08065158(&asset, 0x500C1, 0xF, -1, 0);
                portrait = (u8)(portrait - 0x20);
            }
        }
    }
    *pValue = sub_0801E4B0();
    s = num;
    /* The loop end stops cse1 from folding *(s32 *)next back to &value. */
    do {
        next = (u8 *)&value;
    } while (0);
    /* i is cleared between the first call and its store (ROM movs r5,#0). */
    s[i = 0] =sub_08000498((s32 *)next, 10000000);
    s[1] = sub_08000498((s32 *)next, 1000000);
    s[2] = sub_08000498((s32 *)next, 100000);
    s[3] = sub_08000498((s32 *)next, 10000);
    s[4] = sub_08000498((s32 *)next, 1000);
    s[5] = sub_08000498((s32 *)next, 100);
    s[6] = sub_08000498((s32 *)next, 10);
    s[7] = *(s32 *)next;
    s[8] = 0;
    numIdx = 0;
    first = 0;
    for (i = 0; i <= 8; i++) {
        if (num[i] == 0 && numIdx == 0) {
            /* A u16 temp keeps the loop bigger in the first loop pass, so the
               0xFF constant is only hoisted in the rerun, after the giv init. */
            u16 kk = num[i];
            kk |= 0xFF;
            num[i] = kk;
        } else {
            num[i] += 0x41;
            if (numIdx == 0)
                first = i;
            numIdx = 1;
        }
    }
    for (i = 0; first <= 7; first++, i++) {
        /* num copy hoisted past the loop guard (ROM ldr r2 after bgt). */
        asm("" : "=r"(s) : "0"(num));
        s[i] = s[first];
    }
    {
        /* ROM: num + i first, then the 0 in a register, then the 0xFD. */
        u8 *p = &num[i];
        u8 z = 0;
        *p = 0xFD;
        k = i + 1;
        num[k] = z;
    }

    playerName = party0C4[sub_080020F4()].name;
    n0 = party0C4[0].name;
    i = 0;
    if ((name[i] = n0[i]) != 0xFD) {
        s = name;
        do {
            if (++i > 9)
                break;
        } while ((s[i] = party0C4[0].name[i]) != 0xFD);
    }
    if (sub_08002204() == 0) {
        u8 *p, *t;
        p = (u8 *)sub_08007290(0x1404DF);
        for (j = 0; i <= 12; i++, j++) {
            /* name copy hoisted after the guard; k = j + 2 makes the p + k
               giv worth reducing (init p + 2 after the guard, as in the ROM). */
            asm("" : "=r"(t) : "0"(name));
            k = j + 2;
            if ((t[i] = p[k]) > 0xF1)
                goto found;
        }
        goto done;
    found:
        t[i] = 0xFD;
        /* Block-local index: the address is tied to it (ROM r0), zero in r1. */
        {
            s32 kk = i + 1;
            name[kk] = 0;
        }
    } else {
        s32 kk = i + 1;
        name[kk] = 0;
    }
done:
    strIdx = 0;
    numIdx = 0;
    idx0 = 0;
    nameIdx = 0;
    attr = 0;
    delay = 1;
    hold = 0;
    blink = 0;
    skip = 0;
    speed = 1;
    sub_080653CC();

    for (;;) {
        switch (task->state) {
        case 0:
            gUnk_03005D6C &= ~(1 << task->index);
            sub_0800035C();
        case 1:
        {
            struct Window0C4 *w = task->window;
            u32 r = 0;
            if (w->state == 3)
                r = 1;
            if (r) {
                line = 0;
                drawFlag = 1;
                scroll = 0;
                task->state = 3;
            }
            break;
        }
        case 2:
            break;
        case 3:
            if (*script == 0xFE) {
                task->state = 4;
                break;
            }
            if (*script == 0xFF) {
                if (line >= task->maxLines) {
                    task->state = 4;
                    script++;
                    break;
                }
                line++;
                task->col = 0;
                script++;
                break;
            }
            if (*script == 0xFA) {
                speed = 10;
                script++;
            } else if (*script == 0xF9) {
                speed = 20;
                script++;
            } else if (*script == 0xF8) {
                speed = 1;
                script++;
            } else if (*script == 0xFD) {
                task->state = 6;
                break;
            }
            if (--delay != 0xFF && (keys0C4 & 3) == 0)
                break;
            if ((sfx++ & 3) == 0) {
                if (voice != 0)
                    sub_0805865C(voice + 0xC7);
                else
                    sub_0805865C(0xC8);
            }
            if (*script == 0xFC) {
                lines[line][task->col] = playerName[strIdx];
                strIdx++;
                if (playerName[strIdx] == 0) {
                    script++;
                    strIdx = 0;
                    task->col--;
                }
            } else if (*script == 0xF6) {
                lines[line][task->col] = n0[idx0];
                idx0++;
                if (n0[idx0] == 0) {
                    script++;
                    idx0 = 0;
                    task->col--;
                }
            } else if (*script == 0xF4) {
                lines[line][task->col] = n1[idx1];
                idx1++;
                if (n1[idx1] == 0) {
                    script++;
                    idx1 = 0;
                    task->col--;
                }
            } else if (*script == 0xF3) {
                lines[line][task->col] = n2[idx2];
                idx2++;
                if (n2[idx2] == 0) {
                    script++;
                    idx2 = 0;
                    task->col--;
                }
            } else if (*script == 0xF2) {
                lines[line][task->col] = n3[idx3];
                idx3++;
                if (n3[idx3] == 0) {
                    script++;
                    idx3 = 0;
                    task->col--;
                }
            } else if (*script == 0xF5) {
                lines[line][task->col] = name[nameIdx];
                nameIdx++;
                if (name[nameIdx] == 0) {
                    script++;
                    nameIdx = 0;
                    task->col--;
                }
            } else if (*script == 0xFB) {
                lines[line][task->col] = num[numIdx];
                numIdx++;
                if (num[numIdx] == 0) {
                    script++;
                    numIdx = 0;
                    task->col--;
                }
            } else if (*script == 0xFA) {
                script++;
            } else if (*script == 0xF9) {
                script++;
            } else if (*script == 0xF8) {
                script++;
            } else if ((next = (u8 *)task->str) != 0) {
                lines[line][task->col] = ((u16 *)next)[strIdx];
                strIdx++;
                if (((u16 *)next)[strIdx] == 0) {
                    task->str = 0;
                    strIdx = 0;
                    task->col--;
                }
            } else {
                lines[line][task->col] = *script;
                script++;
            }
            task->col++;
            lines[line][task->col] = 0xFD;
            if (task->timer < 0 && (keys0C4 & 3) != 0) {
                cf = *script;
                if ((u8)(cf + 3) > 2) {
                    /* Copied at their use (no code emitted) so loop.c hoists
                       them after the &col / line*30 copies, as in the ROM. */
                    u8 *fastName;
                    u8 *fastNum;
                    do {
                        c = cf;
                        if (c == 0xFC || strIdx != 0) {
                            lines[line][task->col] = playerName[strIdx];
                            strIdx++;
                            if (playerName[strIdx] == 0) {
                                script++;
                                strIdx = 0;
                                task->col--;
                            }
                        } else if (c == 0xF6 || idx0 != 0) {
                            lines[line][task->col] = n0[idx0];
                            idx0++;
                            if (playerName[idx0] == 0) {
                                script++;
                                idx0 = 0;
                                task->col--;
                            }
                        } else if (c == 0xF5 || nameIdx != 0) {
                            asm("" : "=r"(fastName) : "0"(name));
                            lines[line][task->col] = fastName[nameIdx];
                            nameIdx++;
                            if (fastName[nameIdx] == 0) {
                                script++;
                                nameIdx = 0;
                                task->col--;
                            }
                        } else if (c == 0xFB || numIdx != 0) {
                            /* "=g": the spilled copy needs no in/out reload
                               register, leaving ldr r4 / str r4 as in the ROM. */
                            asm("" : "=g"(fastNum) : "0"(num));
                            lines[line][task->col] = fastNum[numIdx];
                            numIdx++;
                            if (fastNum[numIdx] == 0) {
                                script++;
                                numIdx = 0;
                                task->col--;
                            }
                        } else if ((next = (u8 *)task->str) != 0) {
                            lines[line][task->col] = ((u16 *)next)[strIdx];
                            strIdx++;
                            if (((u16 *)next)[strIdx] == 0) {
                                task->str = 0;
                                strIdx = 0;
                                task->col--;
                            }
                        } else {
                            if (c > 0xF1)
                                script++;
                            lines[line][task->col] = *script;
                            script++;
                        }
                        task->col++;
                        cf = *script;
                    } while ((u8)(cf + 3) > 2);
                }
                lines[line][task->col] = 0xFD;
                delay = speed;
            } else {
                delay = speed;
            }
            break;
        case 4:
            if (task->timer >= 0) {
                skip = 1;
            } else if (task->timer == -2) {
                if (keys0C4 & 1) {
                    hold = 0x8D;
                    skip = 1;
                }
            } else {
                if (keys0C4 & 1) {
                    skip = 1;
                    hold = 0x8D;
                }
            }
            if (skip != 0 && hold++ > 0x8C) {
                if (*script == 0xFE) {
                    script++;
                    c = *script;
                    if (c == 0)
                        portrait = 0xFF;
                    else
                        portrait = (u8)(c - 1);
                    script++;
                    voice = *script;
                    if (sub_0800CE30() != 0) {
                        if (portrait != 0xFF) {
                            if (portrait < 0x10) {
                                sub_08065158(&asset, 0x500A8, 0xF, -1, 0);
                            } else if (portrait < 0x20) {
                                sub_08065158(&asset, 0x500A7, 0xF, -1, 0);
                                portrait = (u8)(portrait - 0x10);
                            } else {
                                sub_08065158(&asset, 0x500C1, 0xF, -1, 0);
                                portrait = (u8)(portrait - 0x20);
                            }
                        }
                    } else {
                        if (portrait != 0xFF) {
                            if (portrait < 0x10) {
                                sub_08065158(&asset, 0x500A8, 0xF, -1, 0);
                            } else if (portrait < 0x20) {
                                sub_08065158(&asset, 0x500A7, 0xF, -1, 0);
                                portrait = (u8)(portrait - 0x10);
                            } else {
                                sub_08065158(&asset, 0x500C1, 0xF, -1, 0);
                                portrait = (u8)(portrait - 0x20);
                            }
                        }
                    }
                }
                skip = 0;
                hold = 0;
                lines[0][0] = 0xFD;
                lines[1][0] = 0xFD;
                line = 0;
                task->state = 3;
                scroll = 0;
                script++;
                task->col = line;
                delay = speed;
                blink = 0;
                break;
            }
            if (task->timer < 0) {
                if (blinkTimer++ <= 0x1D)
                    blink = 1;
                else if (blinkTimer > 0x1D)
                    blink = 0;
                if (blinkTimer > 0x28)
                    blinkTimer = 0;
            }
            break;
        case 5:
            if (--scroll == 0)
                task->state = 3;
            break;
        case 6:
            if (task->timer == -1) {
                if (keys0C4 & 1) {
                    drawFlag = 0;
                    task->state = 7;
                    {
                        struct Window0C4 *w = task->window;
                        if ((gUnk_03005D70 >> w->index) & 1) {
                            if (w->state == 1 || w->state == 3 || w->state == 4 || w->state == 2) {
                                w->state = 4;
                                sub_0805865C(0xDD);
                            }
                        }
                    }
                    blink = 0;
                    break;
                }
                if (blinkTimer++ <= 0x1D)
                    blink = 1;
                else if (blinkTimer > 0x1D)
                    blink = 0;
                if (blinkTimer > 0x28)
                    blinkTimer = 0;
                break;
            }
            if (task->timer == -2) {
                if (sub_08058DB0() == 0 && (keys0C4 & 0x20)) {
                    if (task->cursor != 0)
                        sub_0805865C(0xC6);
                    task->cursor = 0;
                    break;
                }
                if (sub_08058DB0() == 0 && (keys0C4 & 0x10)) {
                    if (task->cursor != 1)
                        sub_0805865C(0xC7);
                    task->cursor = 1;
                    break;
                }
                if (sub_08058DB0() == 0 && (keys0C4 & 1)) {
                    sub_0805865C(0xF);
                    drawFlag = 0;
                    task->state = 7;
                    {
                        struct Window0C4 *w = task->window;
                        if ((gUnk_03005D70 >> w->index) & 1) {
                            if (w->state == 1 || w->state == 3 || w->state == 4 || w->state == 2) {
                                w->state = 4;
                                sub_0805865C(0xDD);
                            }
                        }
                    }
                    break;
                }
                if (sub_08058DB0() == 0 && (keys0C4 & 2)) {
                    sub_0805865C(0x10);
                    task->cursor = 1;
                    drawFlag = 0;
                    task->state = 7;
                    {
                        struct Window0C4 *w = task->window;
                        if ((gUnk_03005D70 >> w->index) & 1) {
                            if (w->state == 1 || w->state == 3 || w->state == 4 || w->state == 2) {
                                w->state = 4;
                                sub_0805865C(0xDD);
                            }
                        }
                    }
                    break;
                }
                break;
            }
            if (task->timer-- <= 0) {
                drawFlag = 0;
                blink = 0;
                {
                    struct Window0C4 *w = task->window;
                    if ((gUnk_03005D70 >> w->index) & 1) {
                        if (w->state == 1 || w->state == 3 || w->state == 4 || w->state == 2) {
                            w->state = 4;
                            sub_0805865C(0xDD);
                        }
                    }
                }
                task->state = 7;
            }
            break;
        case 7:
        {
            u32 r;
            struct Window0C4 *w;
            drawFlag = 0;
            w = task->window;
            r = 0;
            if (w->state == 0)
                r = 1;
            if (r)
                task->state = drawFlag;
            break;
        }
        }
        if (sub_0800CC98() == 0 && drawFlag != 0) {
            for (i = 0; i <= line; i++)
                text0C4(lines[i], task->x | attr, (u16)(scroll + task->y + i * 2));
            if (blink != 0)
                text0C4(gUnk_084EBD48, 0x1C, 0x11);
            if (portrait != 0xFF) {
                sub_08000AF0(0x1F, asset.unkC + portrait * 32, 1);
                asset.remap[portrait] = 0xF;
                draw0C4(&asset, task->x * 8 + 0x18, task->y * 8 - 0x28, portrait, 0);
            }
            if (task->state == 6 && task->timer == -2) {
                if (task->cursor != 0) {
                    anim0C4(&task->text, 5, &task->unk7A, &task->unk7E, 1);
                    sub_08065230(&task->text, 0x78, task->y * 8 - 0x18, 9, 0);
                    sub_08065264(&task->text, 0x88, task->y * 8 - 0x18, 5, task->unk7A);
                    sub_08065230(&task->text, 0x68, task->y * 8 - 0x18, 4, task->unk78);
                } else {
                    anim0C4(&task->text, 4, &task->unk78, &task->unk7C, 1);
                    sub_08065230(&task->text, 0x78, task->y * 8 - 0x18, 8, 0);
                    sub_08065230(&task->text, 0x88, task->y * 8 - 0x18, 5, task->unk7A);
                    sub_08065264(&task->text, 0x68, task->y * 8 - 0x18, 4, task->unk78);
                }
            }
        }
        sub_080003F0();
    }
}
/* [TryRequestDialogueWindowClose] Returns 1 for null. For window state 3, requests state 4 when its used bit
 * is set, plays sound 0xDD, sets dialogue state +0x74 to 7, and returns 1. Window state 0 also returns 1;
 * other states return 0. */
s32 sub_0805EE6C(void *arg0) {
    s32 var_r0;
    s32 var_r3;
    u32 temp_r2;
    void *temp_r1;

    if (arg0 != NULL) {
        temp_r1 = M2C_FIELD(arg0,void **,0x28);
        var_r3 = 0;
        temp_r2 = M2C_FIELD(temp_r1,u8 *,0x30);
        if (temp_r2 == 3) {
            var_r3 = 1;
        }
        if (var_r3 != 0) {
            void *saved=temp_r1;
            
            if ((((s32) gUnk_03005D70 >> M2C_FIELD(temp_r1,u8 *,0x31)) & 1) && ((temp_r2 == 1) || (temp_r2 == 3) || (temp_r2 == 4) || (temp_r2 == 2))) {
                register u8 *writePtr asm("r1")=saved;
                
                writePtr+=0x30;
                *writePtr=4;
                sub_0805865C(0xDD);
            }
            M2C_FIELD(arg0,u32 *,0x74) = 7;
            goto block_15;
        }
        var_r0 = 0;
        if (temp_r2 == 0) {
            var_r0 = 1;
        }
        if (var_r0 == 0) {
            return 0;
        }
        goto block_15;
    }
block_15:
    return 1;
}

/* [TextWindowIsFullyOpen] Returns whether window byte +0x30 equals 3, the steady open state established by
 * matching task 5D854. Requires a nonnull input. */
u32 sub_0805EEDC(u8 *p)
{
    u32 r = 0;
    if (p[0x30] == 3)
        r = 1;
    return r;
}
/* [TextWindowIsClosed] Returns whether window byte +0x30 equals 0, the exit/closed state in matching task
 * 5D854. Requires a nonnull input. */
u32 sub_0805EEEC(u8 *p)
{
    u32 r = 0;
    if (p[0x30] == 0)
        r = 1;
    return r;
}
/* [DialogueStateIsComplete] Returns 0 for null; otherwise tests whether dialogue state word +0x74 is zero. It
 * does not inspect scheduler activity or the used-slot bitmap. */
s32 sub_0805EEFC(void *arg0)
{
    s32 r;
    if (arg0 == 0)
        return 0;
    r = 0;
    if (*(s32 *)((u8 *)arg0 + 0x74) == 0)
        r = 1;
    return r;
}
/* [DialogueSelectionIsZero] Returns 0 for null; otherwise tests whether selection halfword +0x80 is zero. It
 * does not return the selected index or a general accept/cancel result. */
u32 sub_0805EF14(u8 *arg0)
{
    u32 r;
    if (arg0 == NULL) return 0;
    r = 0;
    if (*(u16 *)(arg0 + 0x80) == 0) r = 1;
    return r;
}
/* [CancelUsedTextWindowTasks] Visits four window slots whose current used bit in 03005D70 is set. If scheduler
 * query 00470 says the corresponding 0x34-byte task is scheduled, cancels it through 003A8; then clears its
 * used bit even if unscheduled. Does not explicitly clear window state +0x30, dialogue state, all record bytes
 * or hardware window registers. This differs from requesting an animated close. */
void sub_0805EF2C(void) {
    s32 temp_r4;
    s32 var_r6;
    u32 var_r5;
    u32 var_r5_2;
    u8 *flags;
    u32 one;

    var_r5 = 0;
    do {
        if (((s32) gUnk_03005D70 >> var_r5) & 1) {
            register s32 *pool asm("r6")=&gUnk_03005D64;
            
            temp_r4 = 0x34 * var_r5;
            if (sub_08000470(*pool + temp_r4) != 0) {
                sub_080003A8(*pool + temp_r4);
            }
            gUnk_03005D70 &= ~(1 << var_r5);
        }
        var_r5 += 1;
    } while (var_r5 <= 3U);
}
/* [SetDialogueSelectionIndex] For a nonnull pointer, truncates the input to 16 bits and writes dialogue
 * selection +0x80 without checking the option count. */
void sub_0805EF84(u8 *p, u32 v)
{
    if (p != 0)
        *(u16 *)(p + 0x80) = v;
}
/* [IsAnyTextWindowSlotUsed] Tests the low four used bits of window bitmap 03005D70. Dialogue tasks have a
 * separate bitmap at 03005D6C. */
u32 sub_0805EF90(void)
{
  char i;
  for (i = 0; i < 4; i++)
  {
    if ((gUnk_03005D70 >> i) & 1)
    {
      return 1;
    }
  }

  return 0;
}
extern u8 *efbcBase62 asm("gUnk_03005D68");
void sub_0805EFBC_impl(void) asm("sub_0805EFBC");
/* [CloseUsedDialogueWindowsAndWait] Caches the dialogue pool base 03005D68, then visits slots 0..3 and checks
 * each used bit in 03005D6C when reached. For a used 0x88-byte dialogue record, repeatedly calls 5EE6C with
 * scheduler waits until close is accepted, then waits until its state word +0x74 becomes zero via 5EEFC.
 * Processes slots sequentially; it does not cancel task headers or revisit earlier slots allocated later. No
 * timeout or fixed elapsed-frame guarantee. */
void sub_0805EFBC_impl(void)
{
    u8 i;
    u8 *base = efbcBase62;
    for (i = 0; i <= 3; i++) {
        if ((gUnk_03005D6C >> i) & 1) {
            while (sub_0805EE6C(base + i * 0x88) == 0)
                sub_080003F0();
            while (sub_0805EEFC(base + i * 0x88) == 0)
                sub_080003F0();
        }
    }
}
/* [InitializeTextWindowGraphicsAndPool] Copies 0x4000 bytes of resolved resource key 0x10010003 plus global
 * 03003470 to VRAM 06008000 with CpuFastSet. Loads one 32-byte palette from resource 70003 +0x1E0 into
 * palette-shadow bank 15 through 00AF0, allocates 0xD0 bytes for four 0x34-byte window records, and clears
 * their used bitmap. Does not initialize every allocated byte or guard allocation failure, free a previous
 * pool or allocate the distinct dialogue-task pool. */
void sub_0805F020(void)
{
    void *src = sub_08007290((u8 *)(uintptr_t)gUnk_03003470 + 0x10010003);
    CpuFastSet(src, (void *)0x06008000, 0x1000);
    {
        u8 *palette=sub_08007290((void *)0x70003);
        
        palette+=0x1E0;
        
        sub_08000AF0(15,palette,1);
    }
    gUnk_03005D64 = sub_08001494(0xD0);
    gUnk_03005D70 = 0;
}
/* [ReloadTextWindowGraphics] Submits a 0x4000-byte copy of resource key 0x10010003 plus global 03003470 to
 * VRAM 06008000, reloads the palette-shadow bank 15 from resource 70003 +0x1E0, then waits for scheduler
 * signal 1 once. Does not reallocate window pool or clear used bits. Transfer queue 01348 silently drops
 * submissions when full, so this routine does not establish unconditional completed hardware upload or a fixed
 * elapsed-video-frame wait. */
void sub_0805F07C(void) {
    sub_08001348(sub_08007290(gUnk_03003470 + 0x10010003), 0x06008000, 0x4000);
    sub_08000AF0(0xF, sub_08007290(0x70003) + 0x1E0, 1);
    sub_080003F0();
}
/* [FindFreeTextWindowSlot] Returns the first clear bit index among the low four bits of window bitmap
 * 03005D70, or 0xFF. It does not reserve the slot. */
u32 sub_0805F0C4(void)
{
  unsigned char i;
  for (i = 0; i < 4; i++)
  {
    if (((gUnk_03005D70 >> i) & 1) == 0)
    {
      return i;
    }
  }

  return 0xFF;
}
/* [RequestTextWindowClose] For a window whose index byte +0x31 has its used bit set, accepts states 1,2,3 or4,
 * writes state4 and plays sound 0xDD. Other states or unused slots do nothing. Repeating while already state4
 * can play the sound again. Does not wait for closure, alter dialogue state or validate a null pointer/index. */
void sub_0805F0F0(void *arg0) {
    u8 temp_r1;

    if ((((s32) gUnk_03005D70 >> M2C_FIELD(arg0, u8 *, 0x31)) & 1) && ((temp_r1 = M2C_FIELD(arg0, u8 *, 0x30), (temp_r1 == 1)) || (temp_r1 == 3) || (temp_r1 == 4) || (temp_r1 == 2))) {
        M2C_FIELD(arg0, u8 *, 0x30) = 4U;
        sub_0805865C(0xDD);
    }
}
/* [AllocateDialogueTaskPool] Allocates 0x220 bytes at 03005D68 for four 0x88-byte dialogue records and clears
 * their used bitmap 03005D6C. It does not initialize the entire allocation. */
void sub_0805F134(void)
{
    gUnk_03005D68 = sub_08001494(0x220);
    gUnk_03005D6C = 0;
}
/* [FindFreeDialogueTaskSlot] Returns the first clear bit index among the low four bits of dialogue bitmap
 * 03005D6C, or 0xFF. It does not reserve the slot. */
u32 sub_0805F158(void)
{
  char i;
  for (i = 0; i < 4; i++)
  {
    if (((gUnk_03005D6C >> i) & 1) == 0)
    {
      return i;
    }
  }

  return 0xFF;
}
/* [IsAnyDialogueTaskSlotUsed] Tests whether any low-four used bit of dialogue bitmap 03005D6C is set,
 * separately from window bitmap 03005D70. */
u32 sub_0805F184(void)
{
  char i;
  for (i = 0; i < 4; i++)
  {
    if ((gUnk_03005D6C >> i) & 1)
    {
      return 1;
    }
  }

  return (long long) 0;
}
struct Asset62 { s32 unk0; u32 unk4; s32 unk8; s32 unkC; u32 unk10; u32 unk14; s32 unk18; u8 remap[16]; u8 tail[8]; };
extern struct Asset62 asset62_03005D80 asm("gUnk_03005D80");
extern struct Asset62 asset62_03005DC0 asm("gUnk_03005DC0");
extern struct Asset62 asset62_03005DF4 asm("gUnk_03005DF4");
extern struct Asset62 asset62_03005E28 asm("gUnk_03005E28");
extern struct Asset62 asset62_03005E5C asm("gUnk_03005E5C");
extern struct Asset62 asset62_03005E90 asm("gUnk_03005E90");
extern struct Asset62 asset62_03005EC4 asm("gUnk_03005EC4");
extern struct Asset62 asset62_03005EF8 asm("gUnk_03005EF8");
extern struct Asset62 asset62_03005F2C asm("gUnk_03005F2C");
extern struct Asset62 asset62_03005F60 asm("gUnk_03005F60");
extern struct Asset62 asset62_03005F94 asm("gUnk_03005F94");
extern struct Asset62 asset62_03005FC8 asm("gUnk_03005FC8");
extern struct Asset62 asset62_03006040 asm("gUnk_03006040");
extern struct Asset62 asset62_03006074 asm("gUnk_03006074");
extern struct Asset62 asset62_030060A8 asm("gUnk_030060A8");
extern struct Asset62 asset62_030060DC asm("gUnk_030060DC");
static inline void load62(u32 id,struct Asset62 *p,s32 a,s32 b,void *t) {
    u32 i;
    s32 data;
    p->unk10=id;
    p->unk14=a;
    p->unk18=b;
    p->unk8=data=sub_08006EE0(id,t);
    if(data!=0) {
        id&=0xFFFF;
        p->unk0=data=sub_08006EE0(id|0x60000,t);
        if(data!=0) {
            p->unkC=data=sub_08006EE0(id|0x80000,t);
            if(data!=0) {
                if(b>=0)
                    sub_08000AF0(p->unk14+16,(void *)(data+(p->unk14<<5)),p->unk18);
                for(i=0;i<=15;i++) p->remap[i]=i;
                sub_080653B8(p,0x120,0xE0,8);
            }
        }
    }
}
void sub_0805F1B0_void(void) asm("sub_0805F1B0");
/* [LoadSixteenSpriteAssets] Loads four fixed sprites, one selected sprite50006..5000A for selector0..4, and
 * eleven more fixed sprites. Each inline loader stores metadata, fetches sprite/animation/palette resources in
 * sequence, and on any null stops only that asset setup. Success optionally uploads palette, sets
 * identity16-entry remap and initializes bounds. Invalid selector leaves selected asset unchanged. */
void sub_0805F1B0_void(void) {
    load62(0x5000B,&asset62_03006040,9,-1,&gUnk_08518938);
    load62(0x50003,&asset62_03006074,9,-1,&gUnk_08518938);
    load62(0x50004,&asset62_030060A8,9,-1,&gUnk_08518938);
    load62(0x50005,&asset62_030060DC,9,-1,&gUnk_08518938);
    switch(gUnk_03003470) {
    case 0:
        load62(0x50006,&asset62_03005D80,9,4,&gUnk_08518938);
        break;
    case 1:
        load62(0x50007,&asset62_03005D80,9,4,&gUnk_08518938);
        break;
    case 2:
        load62(0x50008,&asset62_03005D80,9,4,&gUnk_08518938);
        break;
    case 3:
        load62(0x50009,&asset62_03005D80,9,4,&gUnk_08518938);
        break;
    case 4:
        load62(0x5000a,&asset62_03005D80,9,4,&gUnk_08518938);
        break;
    }
    load62(0x500A3,&asset62_03005DC0,9,-1,&gUnk_08518938);
    load62(0x500A1,&asset62_03005DF4,9,-1,&gUnk_08518938);
    load62(0x500A4,&asset62_03005E28,9,-1,&gUnk_08518938);
    load62(0x500A2,&asset62_03005E5C,9,-1,&gUnk_08518938);
    load62(0x500DB,&asset62_03005E90,9,-1,&gUnk_08518938);
    load62(0x500DC,&asset62_03005EC4,9,-1,&gUnk_08518938);
    load62(0x500DE,&asset62_03005EF8,9,-1,&gUnk_08518938);
    load62(0x500DD,&asset62_03005F2C,9,-1,&gUnk_08518938);
    load62(0x500BD,&asset62_03005F60,9,-1,&gUnk_08518938);
    load62(0x500AF,&asset62_03005F94,9,-1,&gUnk_08518938);
    load62(0x500F1,&asset62_03005FC8,9,-1,&gUnk_08518938);
}
struct NumAsset63 { u32 f0, f4, f8; u8 data[40]; };
extern struct NumAsset63 numAssets63[] asm("gUnk_03006040");
/* [DrawClampedThreeDigitNumber] Clamps unsigned value to999, extracts hundreds quotient and stores remainder
 * modulo100, uses style-indexed descriptor. Draws hundreds at x-12 if nonzero; draws leading0 at x-6 only when
 * hundreds present and remainder<=9; draws remainder as frame index0..99 at x. No descriptor/style validation.
 * Uses paired-digit glyph frames, not three repeated decimal division calls. */
void sub_0805FAC0(s32 x, s32 y, u32 value, u8 style)
{
    u8 digits[2];
    struct NumAsset63 *asset;
    if (value > 999) value = 999;
    asset = &numAssets63[style];
    digits[0] = sub_08000498(&value, 100);
    digits[1] = value;
    if (digits[0] != 0)
        sub_08007CF0(x - 12, y, 0, digits[0], 0, (s32)((u8 *)asset + 0x1C), asset->f8, asset->f0);
    if (digits[1] <= 9 && digits[0] != 0)
        sub_08007CF0(x - 6, y, 0, 0, 0, (s32)((u8 *)asset + 0x1C), asset->f8, asset->f0);
    sub_08007CF0(x, y, 0, digits[1], 0, (s32)((u8 *)asset + 0x1C), asset->f8, asset->f0);
}
