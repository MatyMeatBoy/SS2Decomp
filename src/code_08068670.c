#include "global.h"

void sub_08066720(void);

extern u8 gUnk_084EBF1C[];

void sub_08068670(void) {
    sub_08001538(gUnk_03006258);
    sub_08001538(gUnk_03006368);
    sub_08001538(gUnk_03006300);
    gUnk_03006258 = 0;
    gUnk_03006368 = 0;
    gUnk_03006300 = 0;
}
u32 sub_080686A4(const void *src)
{
    u8 *entry;
    u32 *n = (u32 *)0x03006338;
    if (*n <= 0x31) {
        entry =  *(u8 **)0x03006300 + *n * 0x88;
        *(u32 *)(entry + 4) = 1;
        entry[0] = 0x98;
        CpuSet(src, entry + 8, 0x04000008);
        entry[1] = 4;
        (*n)++;
        return 1;
    }
    return 0;
}
u32 sub_080686F4(const u8 *arg0)
{
    u8 *entry;


    if (gUnk_03006338 > 0x31)
        return 0;
    if (sub_0805CFA0() == -1 &&
        (*(const u16 *)(arg0 + 0x10) != 0xA || sub_0805D348() == 0))
        return 0;

    entry = (u8 *)gUnk_03006300 + gUnk_03006338 * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x99;
    *(u32 *)(entry + 8) = *(const u16 *)(arg0 + 0xC);
    entry[1] = 1;
    gUnk_03006338++;
    return 1;
}
u32 sub_08068758(u16 lo, u16 hi, const u8 *src)
{
    u32 *count;
    u8 *e;
    count=(u32 *)0x03006338; if(*count>0x31)return 0;
    e=*(u8 **)0x03006300+*count*0x88;
    *(u32 *)(e+4)=1; e[0]=0x9A; *(u32 *)(e+8)=((u32)hi<<16)|lo;
    *(u32 *)(e+0xC)=*(const u16 *)(src+0xC); e[1]=1; (*count)++; return 1;
}
u32 sub_080687A8(const u8 *arg0)
{
    u8 *entry;
    u32 *n = (u32 *)0x03006338;
    if (*n > 0x31)
        return 0;
    entry =  *(u8 **)0x03006300 + *n * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x9B;
    *(u32 *)(entry + 8) = *(const u16 *)(arg0 + 0xC);
    entry[1] = 1;
    (*n)++;
    return 1;
}
s32 sub_080687E8(void)
{
    u8 *p;
    if (gUnk_03006338 > 0x31)
        return 0;
    p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x88;
    *(u32 *)(p + 4) = 1;
    *p = 0x9F;
    *(u32 *)(p + 8) = 1;
    p[1] = 1;
    gUnk_03006338++;
    return 1;
}
u32 sub_08068820(void *a, void *b, void *c)
{
    u8 *entry;
    u32 *n = (u32 *)0x03006338;
    if (*n > 0x31)
        return 0;
    entry =  *(u8 **)0x03006300 + *n * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0xA4;
    *(void **)(entry + 8) = a;
    *(void **)(entry + 0xC) = b;
    *(void **)(entry + 0x10) = c;
    entry[1] = 2;
    (*n)++;
    return 1;
}
s32 sub_08068868(void) {
    return 1;
}
s32 sub_0806886C(void) {
    return 1;
}
s32 sub_08068870(void) {
    return 1;
}
void *sub_08068874(void)
{
    void *p = (void *)gUnk_03006300;
    if (M2C_FIELD(p, u32 *, 4) == 1)
        return p;
    return NULL;
}
s32 sub_0806888C(void)
{
    u8 buf[136];
    return 1;
}
void sub_08068894(u32 a, u32 b)
{
    u8 *obj;
    u32 mem;
    if (sub_08000470(gUnk_03006368)) return;
    while (1) {
        mem = (u32)sub_08001494(0x800);
        *(u32 *)((u8 *)gUnk_03006368 + 0x20) = mem;
        if (mem != 0) break;
        sub_080003F0();
    }
    obj = (u8 *)gUnk_03006368;
    *(u32 *)(obj + 0xC) = (u32)sub_08066720;
    *(u32 *)(obj + 0x10) = *(u32 *)(obj + 0x20) + 0x7FC;
    *(u32 *)(obj + 8) = 0x65;
    *(u32 *)(obj + 0x24) = 0;
    sub_08000274_(obj, a, b);
}
void sub_080688F4(void) {

}
void sub_080688F8(u32 index)
{
    extern u32 slots[] asm("gUnk_030063B0");
    extern u32 buffers[] asm("gUnk_03006380");
    extern u32 task asm("gUnk_03006370");
    extern u32 buffer asm("gUnk_03006420");
    if (slots[index] != 0) {
        while (sub_08000470(slots[index]) != 0)
            sub_080003F0();
    }
    sub_08001538(slots[index]);
    slots[index] = 0;
    if (task != 0) {
        while (sub_08000470(task) != 0)
            sub_080003F0();
    }
    sub_08001538(buffers[index]);
    buffers[index] = 0;
    sub_08001538(task);
    sub_08001538(buffer);
    task = 0;
    buffer = 0;
}
s32 sub_0806898C(s32 arg0, s32 arg1)
{
    struct CostEntry { u8 pad[6]; s16 cost[9]; };
    extern struct CostEntry costs[] asm("gUnk_084EBF1C");
    u8 *player;
    s16 result;
    s32 value;
    u16 candidate;
    s16 *cost;
    u8 *table;
    s32 offset;

    player = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14C;
    if (arg1 == 0)
        return 0;

    arg1--;
    table = (u8 *)costs;
    offset = arg1 * 2 + arg0 * 24;
    table += 6;
    cost = (s16 *)(offset + table);
    value = *(s8 *)(player + 0x6C) * 5; value = *cost + value * 2;
    /* The game truncates to 16 bits before testing the sign. */
    candidate = value;
    if ((s32)(value << 16) < 0)
        candidate = 0;
    result = candidate;
    if (*(s16 *)(player + 0xC2) - result < 0)
        return 0;
    return (s16)(result + 1);
}
#ifdef NONMATCHING
struct Position68 { s32 x, y; };
/* Resolve an area attack against nearby enemies or players. The result
 * combines target-present (1) and effect-applied (2) flags. */
s32 sub_08068A00(struct Position68 pos, u8 *attack) {
    void sub_08029A7C(u32, s32, s32);
    void sub_08029B98(u32, u32, s32, s32, s32, s32);
    s16 damage68_raw(void *,s32) asm("sub_08068F9C");
    void sub_080694AC(void *);
    void sub_08069A30(s32, s32, u32, u16, u16);
    extern u8 gUnk_084EBF1C[];
    extern u16 attackEffect asm("gUnk_084EBF7E");
    extern u16 effects[] asm("gUnk_084EC14C");
    extern u16 radii[] asm("gUnk_084EC17C");
    extern u32 enemyActive asm("gUnk_030056FC");
    u8 *sourceEnemy;
    u8 *sourcePlayer;
    register u32 zero asm("r7");
    register s16 signedDamage asm("r1");
    register s32 extended asm("r2");
    register u8 *sourceStatus asm("r1");
    u8 *targetStatus68;
    s32 radius;
    register u32 id asm("r0");
    register u32 effect asm("r1");
    register s16 damage asm("r2");
    register u32 kind asm("r3");
    register u16 *table asm("r4");
    register u16 *effectPtr asm("r3");
    register s32 radiusValue asm("r1");

    u16 deltaY;
    s32 localPlayer;
    s16 temp_r1_3;
    s16 temp_r1_5;
    s16 temp_r2_2;
    s32 var_r0_2;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r2;
    register s32 var_r2_2 asm("r2");
    register s32 var_r2_3 asm("r2");
    s32 temp_r0;
    register s32 localPlayerMask asm("r10");
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r0_7;
    register s32 temp_r1 asm("r1");
    s32 var_r0_3;
    register s32 var_r1 asm("r1");
    u16 *var_r0_6;
    u16 *allyEffects68;
    u16 temp_r4_2;
    u16 temp_r4_4;
    u16 var_r0;
    u16 var_r1_2;
    u32 temp_r0_5;
    u32 temp_r0_6;
    register u32 temp_r2 asm("r2");
    register u32 playerCount asm("r10");
    register u32 hitFlags asm("r8");
    register u32 enemyIndex asm("r9");
    register u32 playerIndexEnemy asm("r9");
    register u32 playerIndexAlly asm("r9");
    register u8 temp_r2_3 asm("r2");
    register u8 *enemyTargetPosition asm("r1");
    u8 *enemyHitHistory;
    register u8 *historyAddress68 asm("r1");
    register u32 historyValue68 asm("r2");
    register u32 historyIndex68 asm("r0");
    u8 *playerHitHistory;
    register u8 *allyTargetPosition asm("r3");
    u8 *targetPlayerEnemy;
    u8 *targetPlayerAlly;
    u8 *targetEnemy;

    localPlayer = (s32) (u16) sub_080020F4();
    if ((sub_08058DB0() != 0) || (sub_0800CDF8() != 0)) {
        return 0;
    }
    temp_r2 = M2C_FIELD(attack, u32 *, 0x0);
    if (temp_r2 <= 3U) {
        sourcePlayer = (0x14C * temp_r2) + (u8 *)gUnk_03003CE0;
    } else {
        sourceEnemy = (u8 *)gUnk_030056F4 + ((temp_r2 * 0x2E0) + 0xFFFFF480);
    }
    hitFlags = 0;
    temp_r0 = M2C_FIELD(attack, u32 *, 0xC);
    if(temp_r0 == 12) goto radius32;
    if(temp_r0 != 13) goto radiusTable;
    var_r0=22; goto radiusStore;
radius32: radiusValue=32; radius=radiusValue; goto radiusDone;
radiusTable: var_r0=radii[M2C_FIELD(attack,u32 *,0x14)];
radiusStore: radius=var_r0;
radiusDone:
    /* Enemy slots are checked first when the target is not a player. */
    if ((u32) M2C_FIELD(attack, u32 *, 0x8) <= 3U) {

    } else {
        {register u32 initialIndex asm("r2")=0;asm("" : "+r"(initialIndex));enemyIndex=initialIndex;}
        {register u32 one asm("r3")=1;asm("" : "+r"(one));localPlayerMask=one;}
        asm("" : "+r"(localPlayerMask));
        {register u32 mask asm("r0")=localPlayerMask;register u32 shift asm("r1")=localPlayer;asm("" : "+r"(mask), "+r"(shift));localPlayerMask=mask<<shift;}
loop_15:
        if (!(enemyActive & (1 << enemyIndex))) {

        } else {
            targetEnemy = (u8 *)gUnk_030056F4 + (enemyIndex * 0x2E0);
            if (M2C_FIELD(targetEnemy, u8 *, 0x1DC) == 0) {

            } else if (M2C_FIELD(targetEnemy, u16 *, 0xC) == 0xB) {

            } else {
                var_r1 = (M2C_FIELD(targetEnemy,s32 *,0x14)-pos.x)<<8;
                deltaY = (u16) ((s16) ((u32) ((M2C_FIELD(targetEnemy, s32 *, 0x18) - pos.y) << 8) >> 0x10));
                var_r1 >>= 16;
                if (var_r1 < 0) {
                    var_r1 = 0 - var_r1;
                }
                temp_r2_2 = (s16) radius;
                if (var_r1 > (s32) temp_r2_2) {

                } else {
                    var_r0_2 = (s16) deltaY;
                    if ((s32) var_r0_2 < 0) {
                        var_r0_2 = 0 - var_r0_2;
                    }
                    if ((s32) var_r0_2 > (s32) temp_r2_2) {

                    } else {
                        if (localPlayer == M2C_FIELD(attack, u32 *, 0x0)) {
                            if (M2C_FIELD(targetEnemy, u32 *, 0x54) != M2C_FIELD(sourcePlayer, u32 *, 0xDC)) {
                            M2C_FIELD(attack, u32 *, 0x8) = (u32) (M2C_FIELD(targetEnemy, u16 *, 0x0) + 4);
                            temp_r0_4 = M2C_FIELD(attack, u32 *, 0xC);
                            if(temp_r0_4==4) goto local4;
                            if(temp_r0_4==7) goto local7;
                            sub_080694AC(attack); goto localDone;
local4:
                            if(M2C_FIELD(targetEnemy,u8 *,0x226)!=1) goto localNormal;
                            signedDamage=damage68_raw(attack,0); signedDamage=(s16)signedDamage; extended=signedDamage*15/10;
                            id=M2C_FIELD(targetEnemy,u16 *,0);
                            effectPtr=&attackEffect;
                            effect=*effectPtr;
                            kind=M2C_FIELD(attack,u32 *,0x14);
                            goto callLocal;
localNormal:
                            damage=damage68_raw(attack,0); extended=(s16)damage;
                            id=M2C_FIELD(targetEnemy,u16 *,0);
                            effectPtr=&attackEffect;
                            effect=*effectPtr;
                            kind=M2C_FIELD(attack,u32 *,0x14);
                            sub_08029B98(id,effect,extended,kind,0,0);
                            goto localStore;
local7:
                            damage=damage68_raw(attack,0); extended=(s16)damage;
                            id=M2C_FIELD(targetEnemy,u16 *,0);
                            table=effects;
                            kind=M2C_FIELD(attack,u32 *,0x14);
                            effect=table[kind];
callLocal:
                            sub_08029B98(id,effect,extended,kind,0,0);
localStore:
                            M2C_FIELD(targetEnemy,u32 *,0x54)=M2C_FIELD(sourcePlayer,u32 *,0xDC);
                            {
                                register u16 *status68 asm("r2") = (u16 *)(targetEnemy + 0x5A);
                                register u32 oldStatus68 asm("r1") = *status68;
                                register u32 maskStatus68 asm("r0") = localPlayerMask;
                                asm("" : "+r"(status68), "+r"(oldStatus68), "+r"(maskStatus68));
                                *status68 = maskStatus68 | oldStatus68;
                            }
localDone:
                            if ((sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                                sub_0805865C(0x1A);
                            }
                            sub_08069A30(pos.x, pos.y, M2C_FIELD(attack, u32 *, 0x0), (u16) M2C_FIELD(attack, u32 *, 0xC), (s32) (u16) M2C_FIELD(attack, u32 *, 0x14));
                            {register u32 flagsValue68 asm("r0") = 2; asm("" : "+r"(flagsValue68)); hitFlags = flagsValue68;}
                        }
                        } else {
                            if ((sub_08002204() != 0) && ((u32) M2C_FIELD(attack, u32 *, 0x0) > 3U) && (M2C_FIELD(targetEnemy, u16 *, 0xC) != 0xB) && (M2C_FIELD(targetEnemy, u32 *, 0x54) != M2C_FIELD(sourcePlayer, u32 *, 0xDC))) {
                                zero=0; M2C_FIELD(targetEnemy, u16 *, 0x58) = zero;
                                M2C_FIELD(attack, u32 *, 0x8) = (u32) (M2C_FIELD(targetEnemy, u16 *, 0x0) + 4);
                                temp_r0_3 = M2C_FIELD(attack, u32 *, 0xC);
                                if(temp_r0_3==4) goto remote4;
                                if(temp_r0_3==7) goto remote7;
                                sub_080694AC(attack); goto remoteDone;
remote4:
                                damage=damage68_raw(attack,0); extended=(s16)damage;
                                id=M2C_FIELD(targetEnemy,u16 *,0);
                                effectPtr=&attackEffect; effect=*effectPtr;
                                kind=M2C_FIELD(attack,u32 *,0x14);
                                sub_08029B98(id,effect,extended,kind,zero,zero);
                                var_r0_3=M2C_FIELD(sourceEnemy,u32 *,0x50);
                                goto remoteStore;
remote7:
                                damage=damage68_raw(attack,0); extended=(s16)damage;
                                id=M2C_FIELD(targetEnemy,u16 *,0);
                                table=effects; kind=M2C_FIELD(attack,u32 *,0x14);
                                effect=table[kind];
                                sub_08029B98(id,effect,extended,kind,zero,zero);
                                var_r0_3=M2C_FIELD(sourceEnemy,u32 *,0x50);
remoteStore:
                                M2C_FIELD(targetEnemy,u32 *,0x54)=var_r0_3;
                                M2C_FIELD(targetEnemy,u16 *,0x5A)=localPlayerMask | M2C_FIELD(targetEnemy,u16 *,0x5A);
remoteDone:
                                if ((sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                                    sub_0805865C(0x1A);
                                }
                                sub_08069A30(pos.x, pos.y, M2C_FIELD(attack, u32 *, 0x0), (u16) M2C_FIELD(attack, u32 *, 0xC), (s32) (u16) M2C_FIELD(attack, u32 *, 0x14));
                                hitFlags = 2;
                            }
                        }
                        hitFlags |= 1;
                    }
                }
            }
        }
        enemyIndex += 1;
        if (enemyIndex <= 4U) {
            goto loop_15;
        }
    }
    /* Only search players if no enemy target was in range. */
    if (hitFlags != 0) {

    } else {
        playerCount = sub_08002164();
        if ((u32) M2C_FIELD(attack, u32 *, 0x0) <= 3U) {
            playerIndexAlly = 0;
            if (hitFlags >= playerCount) {

            } else {
loop_69:
                targetPlayerAlly = (0x14C * playerIndexAlly) + (u8 *)gUnk_03003CE0;
                targetStatus68 = targetPlayerAlly + 0x68;
                sourceStatus = sourcePlayer + 0x68;
                temp_r2_3 = *targetStatus68;
                if (temp_r2_3 == *sourceStatus) {

                } else {
                    allyTargetPosition = M2C_FIELD(targetPlayerAlly, u8 * *, 0x148);
                    temp_r0_6 = (u32) (M2C_FIELD(allyTargetPosition, u8 *, 0x0) << 0x1C) >> 0x1C;
                    if(temp_r0_6!=14 && temp_r0_6!=11 && temp_r0_6!=10) {
                        if (temp_r2_3 == 0) {

                        } else if (!(((u32) (M2C_FIELD(allyTargetPosition, u8 *, 0x4) << 0x1A) >> 0x1A) & 0x20)) {
                            var_r2_3 = (((u16) M2C_FIELD(allyTargetPosition, u16 *, 0x0) >> 4) - (pos.x >> 8));
                            deltaY = (u16) ((s16) (u16) (((u32) (M2C_FIELD(allyTargetPosition, u16 *, 0x2) << 0x14) >> 0x14) - (pos.y >> 8)));
                            var_r2_3 = (s16)var_r2_3;
                            if ((s32) var_r2_3 < 0) {
                                var_r2_3 = 0 - var_r2_3;
                            }
                            temp_r1_5 = (s16) radius;
                            if ((s32) var_r2_3 <= (s32) temp_r1_5) {
                                var_r0_5 = (s16) deltaY;
                                if ((s32) var_r0_5 < 0) {
                                    var_r0_5 = 0 - var_r0_5;
                                }
                                if ((s32) var_r0_5 <= (s32) temp_r1_5) {
                                    if ((localPlayer == playerIndexAlly) && (M2C_FIELD(targetPlayerAlly, u16 *, 0x20) != 0xB)) {
                                        playerHitHistory = targetPlayerAlly + 0xF8;
                                        if (M2C_FIELD(playerHitHistory, u32 *, M2C_FIELD(sourcePlayer, u16 *, 0x0) * 4) != M2C_FIELD(sourcePlayer, u32 *, 0xDC)) {
                                            M2C_FIELD(attack, u32 *, 0x8) = (u32) M2C_FIELD(targetPlayerAlly, u16 *, 0x0);
                                            temp_r0_7 = M2C_FIELD(attack, u32 *, 0xC);
                                            if(temp_r0_7==4) goto ally4;
                                            if(temp_r0_7==7) goto ally7;
                                            sub_080694AC(attack); goto allyDone;
ally4:
                                            var_r0_6=(u16 *)gUnk_084EBF1C; asm("" : "+r"(var_r0_6)); var_r0_6=(u16 *)((u8 *)var_r0_6+0x62); goto allyCall;
ally7:
                                            allyEffects68 = effects;
                                            var_r0_6 = &allyEffects68[M2C_FIELD(attack,u32 *,0x14)];
allyCall:
                                            temp_r4_4=*var_r0_6;
                                            sub_08029A7C(temp_r4_4,(s16)damage68_raw(attack,0),M2C_FIELD(attack,u32 *,0x14));
allyDone:
                                            M2C_FIELD(playerHitHistory, u32 *, M2C_FIELD(sourcePlayer, u16 *, 0x0) * 4) = M2C_FIELD(sourcePlayer, u32 *, 0xDC);
                                            if ((sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                                                sub_0805865C(0x1A);
                                            }
                                            sub_08069A30(pos.x, pos.y, M2C_FIELD(attack, u32 *, 0x0), (u16) M2C_FIELD(attack, u32 *, 0xC), (s32) (u16) M2C_FIELD(attack, u32 *, 0x14));
                                            hitFlags = 2;
                                        }
                                    }
                                    hitFlags |= 1;
                                }
                            }
                        }
                    }
                }
                playerIndexAlly += 1;
                if (playerIndexAlly < playerCount) {
                    goto loop_69;
                }
            }
        } else {
            playerIndexEnemy = 0;
            if (hitFlags >= playerCount) {

            } else {
loop_105:
                targetPlayerEnemy = (0x14C * playerIndexEnemy) + (u8 *)gUnk_03003CE0;
                temp_r1 = M2C_FIELD(targetPlayerEnemy, u32 *, 0x30);
                id=0x2000; id &= temp_r1;
                if (id) goto nextEnemyPlayer;
                id=0x400; temp_r1 &= id;
                if (temp_r1==0) {
                    enemyTargetPosition = M2C_FIELD(targetPlayerEnemy, u8 * *, 0x148);
                    temp_r0_5 = (u32) (M2C_FIELD(enemyTargetPosition, u8 *, 0x0) << 0x1C) >> 0x1C;
                    if ((temp_r0_5 != 0xE) && (temp_r0_5 != 0xB) && (temp_r0_5 != 0xA) && (M2C_FIELD(targetPlayerEnemy, u8 *, 0x68) != 0)) {
                        var_r2_2 = (((u16) M2C_FIELD(enemyTargetPosition, u16 *, 0x0) >> 4) - (pos.x >> 8));
                        deltaY = (u16) ((s16) (u16) (((u32) (M2C_FIELD(enemyTargetPosition, u16 *, 0x2) << 0x14) >> 0x14) - (pos.y >> 8)));
                            var_r2_2 = (s16)var_r2_2;
                        if ((s32) var_r2_2 < 0) {
                            var_r2_2 = 0 - var_r2_2;
                        }
                        temp_r1_3 = (s16) radius;
                        if ((s32) var_r2_2 <= (s32) temp_r1_3) {
                            var_r0_4 = (s16) deltaY;
                            if ((s32) var_r0_4 < 0) {
                                var_r0_4 = 0 - var_r0_4;
                            }
                            if ((s32) var_r0_4 <= (s32) temp_r1_3) {
                                if ((localPlayer == playerIndexEnemy) && (sub_0800CCCC() == 0) && (M2C_FIELD(targetPlayerEnemy, u16 *, 0x20) != 0xB)) {
                                    historyIndex68 = M2C_FIELD(sourceEnemy, u16 *, 0x0) * 4;
                                    asm("" : "+r"(historyIndex68));
                                    historyAddress68 = targetPlayerEnemy + 0xE4;
                                    historyValue68 = M2C_FIELD(historyAddress68, u32 *, historyIndex68);
                                    asm("" : "+r"(historyAddress68), "+r"(historyValue68));
                                    historyIndex68 = M2C_FIELD(sourceEnemy, u32 *, 0x50);
                                    asm("" : "+r"(historyIndex68), "+r"(historyAddress68));
                                    enemyHitHistory = historyAddress68;
                                    if (historyValue68 != historyIndex68) {
                                        M2C_FIELD(attack, u32 *, 0x8) = (u32) M2C_FIELD(targetPlayerEnemy, u16 *, 0x0);
                                        if (M2C_FIELD(attack, u32 *, 0xC) == 4) {
                                            {u8 *effectBase=gUnk_084EBF1C;asm("" : "+r"(effectBase));effectBase+=0x62;temp_r4_2=*(u16 *)effectBase;}
                                            sub_08029A7C(temp_r4_2, (s16)damage68_raw(attack, 0), M2C_FIELD(attack, u32 *, 0x14));
                                        } else {
                                            sub_080694AC(attack);
                                        }
                                        M2C_FIELD(enemyHitHistory, u32 *, M2C_FIELD(sourceEnemy, u16 *, 0x0) * 4) = M2C_FIELD(sourceEnemy, u32 *, 0x50);
                                        if ((sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                                            sub_0805865C(0x1A);
                                        }
                                        hitFlags = 2;
                                    }
                                }
                                hitFlags |= 1;
                            }
                        }
                    }
                }
nextEnemyPlayer:
                playerIndexEnemy += 1;
                if (playerIndexEnemy < playerCount) {
                    goto loop_105;
                }
            }

        }
    }

    return (s32) hitFlags;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08068A00);
#endif
struct Attack69 {u32 attacker,unk4,unk8,kind,power,level;};
struct AttackPlayer69 {u8 pad0[0x3C];s16 value;u8 pad3E[0x14C-0x3E];};
struct AttackTable69 {s16 power;u16 effect;u8 pad4[20];};
extern struct AttackPlayer69 attackPlayers69[] asm("gUnk_03003CE0");
extern u8 *attackEnemies69 asm("gUnk_030056F4");
extern struct AttackTable69 attackTable69[] asm("gUnk_084EBF1C");
extern u16 attackSpecial69[] asm("gUnk_084EC15C");
extern u32 attackRoot69(s32) asm("Sqrt");
extern u16 attackAdjust69(u16,u16,s32) asm("sub_08021D00");
s32 sub_08068F9C(struct Attack69 *a,s32 target)
{
    s32 value;
    s32 random;
    s32 factor;
    register u32 root asm("r0");
    u32 packed;
    u32 result;
    u32 index;
    u16 *special;
    index=a->attacker;
    if(index<=3) value=((struct AttackPlayer69 *)(index*0x14C+(u32)attackPlayers69))->value;
    else { register u32 address asm("r1"); register u8 **base asm("r0"); base=&attackEnemies69; address=index*0x2E0; address+=(u32)*base; address-=0x978; value=*(s16 *)address; }
    random=sub_080008C8()%20U+100;
    if(a->kind!=19) {
        root=attackRoot69(value+15);
        factor=attackTable69[a->kind].power*(a->level+1);
    } else {
        root=attackRoot69(value+15);
        special=attackSpecial69;
        packed=a->level;
        factor=special[packed>>16]*((packed&0xFFFF)+1);
    }
    result=(u32)(((a->power+20)*factor*(u16)root)*random)/27000U;
    if(target!=0) result=attackAdjust69(attackTable69[a->kind].effect,(u16)result,target);
    return (s16)result;
}
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08069080);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08069224);
struct ResistPlayer69 {u8 pad0[0x73];s8 modifier;u8 pad74[0x14C-0x74];};
extern struct ResistPlayer69 resistPlayers69[] asm("gUnk_03003CE0");
extern u8 *resistEnemies69 asm("gUnk_030056F4");
void sub_08069388(u8 *out,s16 *res,u16 magnitude,u16 kind,u16 target)
{
    s32 stat;
    s32 numerator;
    s32 divisor;
    s32 probability;
    u32 random;
    random=sub_080008C8()%100U;
    switch(kind-2U) {
    case 0:
        numerator=(s32)((u32)(100-res[1])*((u32)magnitude*10+5));divisor=100;
        goto divide;
    case 1:stat=res[2];goto half;
    case 3:
        numerator=(s32)((u32)(100-res[4])*((u32)magnitude*10+5));divisor=25;
        goto divide;
    case 4:case 5:
        stat=res[5];
half:
        numerator=(s32)((u32)(100-stat)*((u32)magnitude*10+5));divisor=50;
divide:
        probability=numerator/divisor;
        break;
    default:probability=0;out[1]=0;break;
    }
    if(target==sub_080020F4() || (sub_0800CF80() && target<=3))
        probability=((u32)probability*resistPlayers69[target].modifier)/100U;
    out[1]=((u32)probability>random)?kind:0;
    if(target>3 && *(u8 *)((u32)resistEnemies69+target*0x2E0-0x95A)==3) out[1]=0;
}
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_080694AC);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_080698D4);
struct Task9A30 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
struct Info9A30 { u16 x, y, c, d, b, i; };
extern vu32 gMask9A30 asm("gUnk_0300641C");
extern u8 *gInfo9A30 asm("gUnk_03006420");
extern u8 *gTasks9A30 asm("gUnk_03006370");
extern void sub_08000274_2(void *, void *) asm("sub_08000274");
extern void sub_080698D4();
void sub_08069A30(s32 x, s32 y, u32 b, u16 c, u16 d)
{
    u32 i = 0;
    u32 mem;
    struct Task9A30 *t;
    struct Info9A30 *e;
    vu32 *m = &gMask9A30;
    while (*m & (1 << i)) {
        i++;
        if (i > 0x1F)
            return;
    }
    if (i > 0x1F)
        return;
    e = &((struct Info9A30 *)gInfo9A30)[i];
    e->x = x >> 8;
    e->y = y >> 8;
    e->b = b;
    e->i = i;
    e->c = c;
    e->d = d;
    mem = sub_08001494(0x500);
    {
        u8 *p = gTasks9A30;
        t = (struct Task9A30 *)(i * 0x28 + (u32)p);
    }
    t->f20 = mem;
    if (mem == 0)
        return;
    t->f8 = 0x34;
    t->fC = (u32)sub_080698D4;
    t->f10 = mem + 0x4FC;
    t->f24 = 0;
    sub_08000274_2(t, e);
    gMask9A30 |= 1 << i;
}
struct Effect69 { u32 data,unk4,tiles; u8 *palette; s32 unk10; u32 paletteId,paletteCount; u8 style[16]; s16 scale,step,max,min; };
extern vu32 effectMask69 asm("gUnk_0300641C");
extern u32 effectStep69(struct Effect69 *,u16,u16 *,u16 *,u32) asm("sub_08065370");
extern u32 effectCoords69(s32,s32,s16 *,s16 *,u32,u32) asm("sub_0800BC08");
extern void effectDraw69(s32,s32,u32,u32,u32,void *,u32,u32) asm("sub_08007870");
void sub_08069AEC(u32 pos,u32 slot)
{
    struct Effect69 obj;
    u16 frame;
    u16 timer;
    s16 screenX;
    s16 screenY;
    s16 x;
    s16 y;
    u16 done;
    u32 second;
    slot &= 0xFFFF;
    x=pos;
    y=pos>>16;
    obj.style[5]=8;
    timer=0;
    frame=0;
    do {
        done=effectStep69(&obj,0,&frame,&timer,0);
        if(!sub_0800CC98() && !sub_0800CD8C() && (second=sub_0800CCCC())==0) {
            effectCoords69(x,y,&screenX,&screenY,0x30,second);
            effectDraw69(screenX,screenY+1,0,frame,second,obj.style,obj.tiles,obj.data);
        }
        sub_080003F0();
    } while(!done);
    effectMask69 &= ~(1<<slot);
}
struct Task9BBC { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern u32 gMask0300641C asm("gUnk_0300641C");
extern struct Task9BBC *gTasks03006370 asm("gUnk_03006370");
extern void sub_08000274_3(u32, u32, u32) asm("sub_08000274");
extern void sub_08069AEC();
void sub_08069BBC(u32 a, u32 b)
{
  int new_var;
  u32 i = 0;
  u32 mem;
  struct Task9BBC *t;
  u32 *m = &gMask0300641C;
  new_var = 1;
  if ((*m) & 1)
  {
    u32 one = new_var;
    do
    {
      i++;
      if (i > 0x1F)
      {
        return;
      }
    }
    while ((*m) & (one << i));
  }
  if (i > 0x1F)
  {
    return;
  }
  mem = sub_08001494(0x400);
  {
    u8 *base = (u8 *) gTasks03006370;
    t = (struct Task9BBC *)(i * 0x28 + (u32)base);
  }
  t->f20 = mem;
  if (mem == 0)
  {
    return;
  }
  t->f8 = 0x34;
  t->fC = (u32) sub_08069AEC;
  t->f10 = mem + 0x3FC;
  t->f24 = 0;
  sub_08000274_3((u32) t, (b << 16) | a, i);
  gMask0300641C |= 1 << i;
}
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08069C44);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806A19C);
struct T070Sprite { u32 f0, f4, f8, fC; u8 pad10[12]; u8 f1C, f1D; u8 pad1E[22]; };
struct T070Player { u8 pad0[32]; u16 state; u8 pad22[14]; u32 flags; u8 pad34[88]; s32 x,y; u8 pad94[46]; u16 resource; u8 padC4[24]; u32 counter; u8 padE0[104]; u16 *sprite; };
struct T070Enemy { u8 pad0[20]; s32 x,y; u8 pad1C[52]; u32 counter; u8 pad54[10]; u16 resource; u8 pad60[640]; };
struct T070Args { u32 player, bit, target, value, f10, level; };
extern struct T070Player t070Players[] asm("gUnk_03003CE0");
extern struct T070Enemy *t070Enemies asm("gUnk_030056F4");
extern u32 t070Flags[] asm("gUnk_030063E0");
struct T070Cost { s16 pad[3]; s16 values[9]; };
extern struct T070Cost t070Costs[] asm("gUnk_084EBF1C");
extern void t070Init(void *,s32,s32,s32,s32) asm("sub_08065158");
extern void t070Coords(s32,s32,s16 *,s16 *,s32,void *) asm("sub_0800BC08");
extern void t070Draw(s32,s32,u16,u16,u32,void *,u32,u32) asm("sub_08007870");
extern s32 t070Hit(s32,s32,void *) asm("sub_08068A00");
extern s16 t070Damage(void *,s32) asm("sub_08068F9C");
extern void t070Effect(void *,void *,s16) asm("sub_0801FB14");
extern void t070Animate(void *,u32,u16 *,s16 *,s32) asm("sub_08065370");
void sub_0806A88C(struct T070Args *arg) {
    struct T070Sprite sprite;
    s16 dx,dy;
    u16 frame;
    s16 phase;
    s32 pos[2];
    s32 size;
    struct T070Player *p,*costPlayer;
    struct T070Enemy *enemy;
    s32 timeout,remaining;
    register u32 initialLevel;
    u32 level;
    u32 local,bit,counter;
    u32 player,offset;
    u16 delta;
    s32 resource;
    register s16 *cost asm("r2");
    u32 costOffset;
    register u8 *costBase asm("r3");
    register u32 shade asm("r10");
    u16 *cfg;
    u32 old;
    local=sub_080020F4();
    player=arg->player; bit=arg->bit; level=(u16)arg->level; initialLevel=level;
    if(player<=3) p=&t070Players[player];
    else enemy=(struct T070Enemy *)((u8 *)t070Enemies+(player*0x2E0+0xFFFFF480));
    frame=0; phase=0; counter=0;
    if(sub_080020F4()!=player) {
        if(player>3) {
            costBase=(u8 *)t070Costs;
            costOffset=initialLevel*2+arg->value*24;
            costBase+=6;
            cost=(s16 *)(costOffset+(u32)costBase);
            resource=enemy->resource-*cost; enemy->resource=resource;
            if((s16)resource<0) {
                t070Flags[player]&=~(1<<bit); enemy->resource=counter; return;
            }
        }
    } else {
        costPlayer=&t070Players[sub_080020F4()];
        delta=sub_0806898C(arg->value,arg->level)-1;
        costPlayer->resource-=delta;
        if((s16)costPlayer->resource<0) costPlayer->resource=counter;
    }
    if(sub_080020F4()==player && sub_0800CCCC()==0 && sub_0800CD34()==0) sub_0805865C(0x169);
    t070Init(&sprite,0x5008C,8,-1,0);
    sprite.f1C=7; sprite.f1D=8;
    frame=0;phase=0;timeout=0xB4;
    for (;;) {
        remaining=timeout; timeout=(u16)(remaining-1);
        if(!remaining || sub_0800BA6C()==0 || sub_08056E90()!=0) break;
        if(player==local && (sub_0801DF8C()!=0 || p->state==11 || p->state==12 || sub_0800D11C()!=0)) {sub_08015D98();goto finish;}
        if(player<=3) {
            cfg=p->sprite;
            if(t070Hit((cfg[0]>>4)<<8,(u32)(cfg[1]<<20)>>12,arg)!=0 && level==0) { p->flags&=0xFFFEFFEF; goto finish; }
        } else {
            if(t070Hit(enemy->x,enemy->y,arg)!=0 && level==0) goto finish;
            old=counter++;
            if(old>32) {enemy->counter++; counter=0;}
        }
        if(player==local) {
            sub_08015D74(); pos[0]=p->x;pos[1]=p->y;size=0x200020;
            t070Effect(pos,&size,t070Damage(arg,0));
        }
        old=counter++;
        if(old>32) {p->counter++;counter=0;}
        cfg=p->sprite;
        t070Coords(cfg[0]>>4,(u32)(cfg[1]<<20)>>20,&dx,&dy,0x30,0);
        cfg=p->sprite;
        shade=(u8)sub_0800BC44(cfg[0]>>4,(u32)(cfg[1]<<20)>>20,0);
        t070Animate(&sprite,20,&frame,&phase,1);
        if(sub_0800CC98()==0 && sub_0800CD8C()==0 && sub_0800CCCC()==0) {
            if(!(gUnk_03002344&1)) sub_08000AF0(23,sprite.fC,2);
            if((gUnk_03002344&1)==(player&1)) t070Draw(dx,dy+1,20,frame,shade,&sprite.f1C,sprite.f8,sprite.f0);
        }
        sub_080003F0();
    }
finish:
    sub_08015D98();
    t070Flags[player]&=~(1<<bit);
}
#ifdef NONMATCHING
struct T071Player {u16 id;u8 pad2[30];u16 state;u8 pad22[14];u32 flags;u8 pad34[52];u8 team;u8 pad69[89];u16 resource;u8 padC4[24];u32 counter;u8 padE0[4];u32 enemyHistory[5];u32 playerHistory[4];u8 pad108[64];u8 *sprite;};
struct T071Enemy {u16 id,target;u8 pad4[4];s16 direction;u8 padA[2];u16 state;u8 padE[6];s32 x,y;u8 pad1C[52];u32 counter,lastHit; s16 owner;u8 pad5A[4];u16 resource;u8 pad60[10];u16 wait;u8 pad6C[368];u8 active;u8 pad1DD[78];u8 threshold;u8 pad22C[180];};
struct T071Args {u32 player,bit,target,value,unused,level;};
struct T071Sprite { u32 f0,f4,f8,fC; u8 pad10[12]; u8 f1C,f1D; u8 pad1E[22]; };
/* local */ extern u8 t071Players[] asm("gUnk_03003CE0");
/* local */ extern u8 *t071Enemies asm("gUnk_030056F4");
/* local */ extern u32 t071Flags[] asm("gUnk_030063E0");
/* local */ extern u8 t071Costs[] asm("gUnk_084EBF1C");
/* local */ extern u8 t071Radius[] asm("gUnk_084EC17C");
/* local */ extern u8 t071Frames[] asm("gUnk_084790B4");
/* local */ extern u8 t071Offsets[] asm("gUnk_084EBEBC");
/* local */ extern void t071Init(void *,s32,s32,s32,s32) asm("sub_08065158");
/* local */ extern void t071Coords(s32,s32,s16 *,s16 *,s32,void *) asm("sub_0800BC08");
/* local */ extern void t071Animate(void *,u32,u16 *,s16 *,s32) asm("sub_08065370");
/* local */ extern void t071Spawn(s32,s32,u32,s32,s32) asm("sub_08069A30");
/* local */ extern s32 t071Effect(void *,void *,s16) asm("sub_0801FB14");
/* local */ extern s16 t071Damage(void *,s32) asm("sub_08068F9C");
/* local */ extern void t071Impact(void *,s32,s32) asm("sub_08079ED0");
/* local */ extern void t071Draw(s32,s32,u32,u32,u32,void *,u32,u32) asm("sub_08007870");
void sub_0806ABC0(u8 *arg0) {
    struct T071Sprite sp10;
    s16 sp44;
    s16 sp46;
    u16 sp48;
    s16 sp4A;
    s32 sp4C[2];
    s32 sp54;
    u8 *costBase;
    s16 *costPtr;
    u32 costOffset;
    u16 costDelta;
    u32 contact;
    u32 impact;
    s32 x;
    s32 y;
    u32 radius;
    u16 i;
    u32 count;
    u32 angle;
    u32 waitMask;
    u8 *sp58;
    u8 *sp5C;
    u8 *sp60;
    u32 sp64;
    u32 sp68;
    u32 sp6C;
    s32 sp70;
    u32 sp74;
    u32 sp78;
    s32 sp7C;
    s32 sp80;
    s32 sp84;
    s32 sp88;
    s32 sp8C;
    s32 sp90;
    s16 temp_r1_5;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r0_6;
    s32 var_r0_7;
    s32 var_r0_8;
    s32 *temp_r2;
    s32 *temp_r2_5;
    s32 *temp_r4;
    s32 temp_r1_12;
    s32 temp_r1_13;
    s32 temp_r2_4;
    s32 temp_r4_6;
    s32 temp_r5;
    s32 var_r0;
    u16 temp_r0_2;
    s32 temp_r0_3;
    u16 temp_r1_10;
    s32 temp_r1_4;
    u16 temp_r1_9;
    u16 temp_r3;
    u16 temp_r3_3;
    u16 var_r0_2;
    u32 temp_r0;
    u32 temp_r1_6;
    u32 temp_r1_7;
    u32 temp_r1_8;
    u8 temp_r1_11;
    u8 temp_r3_2;
    u8 var_r7;
    u8 *temp_r1;
    u8 *temp_r1_2;
    u8 *temp_r1_3;
    u8 *temp_r2_2;
    u8 *temp_r2_3;
    u8 *temp_r4_2;
    u8 *temp_r4_3;
    u8 *temp_r4_4;
    u8 *temp_r4_5;

    sp58 = arg0;
    sp80 = sub_080020F4();
    sp64 = (u32) ((u16)((struct T071Args *)arg0)->target);
    sp78 = (((struct T071Args *)sp58)->player);
    sp7C = (((struct T071Args *)sp58)->bit);
    temp_r3 = (u16)(((struct T071Args *)sp58)->level);
    sp6C = (u32) temp_r3;
    sp70 = (s32) temp_r3;
    sp68 = (u32) temp_r3;
    sp4A = 0;
    sp48 = 0;
    if (sp64 <= 3U) {
        count = sub_08002164();
        i = 0;
        sp8C = sp78 * 4;
        if ((u32)i < count) {
            if ((*(u16 *)((u8 *)t071Players + 0x0)) != sp64) {
                do {
                i += 1;
                if ((u32) i < count) {
                    if (*(u16 *)((0x14C * i) + t071Players) == sp64) {
                        goto block_6;
                    }
                    continue;
                }
                goto block_7;
                } while (1);
            }
block_6:
            if ((u32) i >= count) {
                goto block_7;
            }
        } else {
block_7:
            sp64 = 0xFFFF;
        }
    } else {
        i = 0;
        sp5C = t071Enemies;
        var_r0 = gUnk_030056FC & 1;
        sp8C = sp78 * 4;
loop_11:
        if ((var_r0 != 0) && ((((struct T071Enemy *)sp5C)->target) == sp64)) {
            if ((u32) i > 4U) {
                goto block_14;
            }
        } else {
            i += 1;
            if ((u32) i <= 4U) {
                sp5C = t071Enemies + (i * 0x2E0);
                var_r0 = gUnk_030056FC & (1 << i);
                goto loop_11;
            }
block_14:
            sp64 = 0xFFFF;
        }
    }
    if (sp78 <= 3U) {
        temp_r1 = (0x14C * sp78) + t071Players;
        sp60 = temp_r1;
        temp_r1_2 = (((struct T071Player *)temp_r1)->sprite);
        x = ((u16) (*(u16 *)((u8 *)temp_r1_2 + 0x0)) >> 4) << 8;
        y = (u32) ((*(u16 *)((u8 *)temp_r1_2 + 0x2)) << 0x14) >> 0xC;
        temp_r0 = (u8) (*(u8 *)((u8 *)temp_r1_2 + 0x3)) >> 4;
        sp74 = temp_r0;
        angle = gUnk_0847AD0A[temp_r0];
        goto block_25;
    }
    temp_r1_3 = t071Enemies + ((sp78 * 0x2E0) + 0xFFFFF480);
    sp5C = temp_r1_3;
    x = (((struct T071Enemy *)temp_r1_3)->x);
    y = (((struct T071Enemy *)temp_r1_3)->y);
    sp74 = (u16) (((struct T071Enemy *)temp_r1_3)->direction);
    angle = gUnk_0847AD0A[(((struct T071Enemy *)sp5C)->direction)];
    if ((u32) (((struct T071Enemy *)sp5C)->wait) < (u32) (((struct T071Enemy *)sp5C)->threshold)) {
        temp_r4 = (s32 *)((u8 *)t071Flags+sp8C);
        waitMask=~(1 << sp7C);
loop_19:
        if ((sub_08056E90() != 0) || (sub_0800BA6C() == 0) || (temp_r0_2 = (((struct T071Enemy *)sp5C)->state), (temp_r0_2 == 0xA)) || (temp_r0_2 == 0xB)) {
            *temp_r4 &= waitMask;
            return;
        }
        sub_080003F0();
        if ((u32) (((struct T071Enemy *)sp5C)->wait) >= (u32) (((struct T071Enemy *)sp5C)->threshold)) {
            goto block_25;
        }
        goto loop_19;
    }
block_25:
    if (sub_080020F4() != sp78) {
        if (sp78 > 3U) {
            costBase=t071Costs;
            costOffset=sp6C*2+((struct T071Args *)sp58)->value*24;
            costBase+=6; costPtr=(s16 *)(costOffset+(u32)costBase);
            temp_r0_3=((struct T071Enemy *)sp5C)->resource-*costPtr;
            (((struct T071Enemy *)sp5C)->resource) = temp_r0_3;
            if ((s32) (temp_r0_3 << 0x10) < 0) {
                temp_r2 = (s32 *)((u8 *)t071Flags+sp8C);
                *temp_r2 &= ~(1 << sp7C);
                (((struct T071Enemy *)sp5C)->resource) = 0U;
                return;
            }
        }
        goto block_31;
    }
    temp_r4_2 = (0x14C * sub_080020F4()) + t071Players;
    costDelta=sub_0806898C(((struct T071Args *)sp58)->value,((struct T071Args *)sp58)->level)-1;
    temp_r1_4=((struct T071Player *)temp_r4_2)->resource-costDelta;
    (((struct T071Player *)temp_r4_2)->resource) = temp_r1_4;
    if ((s32) (temp_r1_4 << 0x10) < 0) {
        (((struct T071Player *)temp_r4_2)->resource) = 0U;
    }
block_31:
    if ((sub_080020F4() == sp78) && (sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
        sub_0805865C(sp6C + 0x147);
    }
    temp_r1_5 = (s16) angle;
    x = x + (gUnk_080B9704[temp_r1_5 + 0x40] * 4);
    y = y + (gUnk_080B9704[temp_r1_5] * 4);
    sp90 = angle << 0x10;
    if (sp6C <= 4U) {
        t071Init(&sp10, 0x50051, 8, -1,0);
        var_r0_2 = sp6C - 1;
    } else if (sp6C <= 6U) {
        t071Init(&sp10, 0x50054, 8, -1,0);
        var_r0_2 = sp6C - 5;
    } else {
        t071Init(&sp10, 0x5005F, 8, -1,0);
        var_r0_2 = sp6C - 7;
    }
    sp6C = (u32) var_r0_2;
    sp6C = (u32) (u16) (sp6C * 8);
    sp10.f1C = 7;
    sp10.f1D = 8;
    sp48 = 0;
    sp4A = 0;
    sp68 = (u32) ((sp68 << 0x13) + 0x140000) >> 0x10;
    radius = *(u16 *)(((s32) (((struct T071Args *)sp58)->level) * 2) + t071Radius);
    sp84 = sp90;
    sp88 = sp90 >> 0x14;
    impact=0;
    while ((temp_r1_6=sp68, sp68=(u16)(temp_r1_6-1), temp_r1_6 != 0) && (sub_0800BA6C() != 0) && ((sp78 != sub_080020F4()) || (((u32)(u16)(((struct T071Player *)sp60)->state-0xB)>1U) && (sub_0800D11C()==0)))) {
            contact=0;
            if (sp64 > 3U) {
                for(i=0;i <= 4U;i=(u16)(i+1)) {
                if (gUnk_030056FC & (1 << i)) {
                    temp_r4_3 = t071Enemies + (i * 0x2E0);
                    if ((((struct T071Enemy *)temp_r4_3)->active) != 0) {
                        sp44 = (s16) ((u32) ((((struct T071Enemy *)temp_r4_3)->x) - x) >> 8);
                        temp_r1_7 = (u32) (((((struct T071Enemy *)temp_r4_3)->y) - y) << 8) >> 0x10;
                        sp46 = (u16) temp_r1_7;
                        var_r0_3 = sp44;
                        if ((s32) var_r0_3 < 0) {
                            var_r0_3 = 0 - var_r0_3;
                        }
                        if ((s32) var_r0_3 < (s32) radius) {
                            var_r0_4 = (s16) temp_r1_7;
                            if ((s32) var_r0_4 < 0) {
                                var_r0_4 = 0 - var_r0_4;
                            }
                            if ((s32) var_r0_4 < (s32) radius) {
                                temp_r1_8 = (((struct T071Args *)sp58)->player);
                                if (temp_r1_8 <= 3U) {
                                    if (sp80 == temp_r1_8) {
                                        if (((((struct T071Enemy *)temp_r4_3)->state) != 0xB) && ((((struct T071Enemy *)temp_r4_3)->lastHit) != (((struct T071Player *)sp60)->counter))) {
                                            contact=1; goto block_64;
                                        }
                                        goto block_63;
                                    }
                                    (((struct T071Enemy *)temp_r4_3)->owner) = (s16) temp_r1_8;
                                    goto block_63;
                                }
                                if ((sub_08002204() != 0) && ((((struct T071Enemy *)temp_r4_3)->id) != ((((struct T071Args *)sp58)->player) - 4)) && ((((struct T071Enemy *)temp_r4_3)->state) != 0xB) && ((((struct T071Enemy *)temp_r4_3)->lastHit) != (((struct T071Player *)sp60)->counter))) {
                                    contact=1; goto block_64;
                                }
                                goto block_63;
                            }
                            goto block_63;
                        }
                        goto block_63;
                    }
                }
block_63: ;
                }
            }
block_64:
            if (contact != 0) {
                impact=1; goto block_129;
            }
            contact=0;
            count = sub_08002164();
            if ((u32) (((struct T071Args *)sp58)->player) <= 3U) {
                for(i=0;(u32)i<count;i=(u16)(i+1)) {
                temp_r4_4 = (0x14C * i) + t071Players;
                temp_r3_2 = (((struct T071Player *)temp_r4_4)->team);
                if (temp_r3_2 != (((struct T071Player *)sp60)->team)) {
                    temp_r2_2 = (((struct T071Player *)temp_r4_4)->sprite);
                    if ((((u32) ((*(u16 *)((u8 *)temp_r2_2 + 0x0)) << 0x1C) >> 0x1C) != 0xE) && (temp_r3_2 != 0)) {
                        sp44 = ((u16) (*(u16 *)((u8 *)temp_r2_2 + 0x0)) >> 4) - (x >> 8);
                        temp_r1_9 = ((u32) ((*(u16 *)((u8 *)temp_r2_2 + 0x2)) << 0x14) >> 0x14) - (y >> 8);
                        sp46 = temp_r1_9;
                        var_r0_5 = sp44;
                        if ((s32) var_r0_5 < 0) {
                            var_r0_5 = 0 - var_r0_5;
                        }
                        if ((s32) var_r0_5 < (s32) radius) {
                            var_r0_6 = (s16) temp_r1_9;
                            if ((s32) var_r0_6 < 0) {
                                var_r0_6 = 0 - var_r0_6;
                            }
                            if (((s32) var_r0_6 < (s32) radius) && (sp80 == i) && ((((struct T071Player *)temp_r4_4)->state) != 0xB) && (*(u32 *)(temp_r4_4 + 0xF8 + ((((struct T071Player *)sp60)->id) * 4)) != (((struct T071Player *)sp60)->counter))) {
                                contact=1; goto block_102;
                            }
                            goto block_83;
                        }
                        goto block_83;
                    }
                }
block_83: ;
                }
            }
            if (count > 0U) {
                for(i=0;(u32)i<count;i=(u16)(i+1)) {
                temp_r4_5 = (0x14C * i) + t071Players;
                if (!((((struct T071Player *)temp_r4_5)->flags) & 0x2000)) {
                    temp_r2_3 = (((struct T071Player *)temp_r4_5)->sprite);
                    if ((((u32) ((*(u16 *)((u8 *)temp_r2_3 + 0x0)) << 0x1C) >> 0x1C) != 0xE) && ((((struct T071Player *)temp_r4_5)->team) != 0)) {
                        temp_r3_3 = (((struct T071Player *)temp_r4_5)->state);
                        if (temp_r3_3 != 0xC) {
                            sp44 = ((u16) (*(u16 *)((u8 *)temp_r2_3 + 0x0)) >> 4) - (x >> 8);
                            temp_r1_10 = ((u32) ((*(u16 *)((u8 *)temp_r2_3 + 0x2)) << 0x14) >> 0x14) - (y >> 8);
                            sp46 = temp_r1_10;
                            var_r0_7 = sp44;
                            if ((s32) var_r0_7 < 0) {
                                var_r0_7 = 0 - var_r0_7;
                            }
                            if ((s32) var_r0_7 < (s32) radius) {
                                var_r0_8 = (s16) temp_r1_10;
                                if ((s32) var_r0_8 < 0) {
                                    var_r0_8 = 0 - var_r0_8;
                                }
                                if (((s32) var_r0_8 < (s32) radius) && (sp80 == i) && (temp_r3_3 != 0xB) && (*(u32 *)(temp_r4_5 + 0xE4 + ((((struct T071Enemy *)sp5C)->id) * 4)) != (((struct T071Enemy *)sp5C)->counter))) {
                                    contact=1; goto block_102;
                                }
                                goto block_101;
                            }
                            goto block_101;
                        }
                    }
                }
block_101: ;
                }
            }
block_102:
            if (contact != 0) {
                impact=1; goto block_129;
            }
            temp_r1_11 = (u8) sub_0800AE50(x, y, 0U);
            if ((0xF & temp_r1_11) && !(0x10 & temp_r1_11)) {
                t071Spawn(x,y,sp78,0xD,sp70);
                impact=1; goto block_129;
            }
            if (sp78 == sp80) {
                sp4C[0] = x;
                sp4C[1] = y;
                sp54 = 0x80008;
                if (t071Effect(sp4C, &sp54, t071Damage(sp58, 0)) != 0) {
                    impact=1; goto block_129;
                }
            }
            temp_r1_12 = sp84 >> 0x10;
            x += gUnk_080B9704[temp_r1_12 + 0x40] * 2;
            y += gUnk_080B9704[temp_r1_12] * 2;
            temp_r5 = x >> 8;
            temp_r4_6 = y >> 8;
            t071Coords((s16)temp_r5,(s16)temp_r4_6,&sp44,&sp46,0x30,0);
            var_r7 = (u8) sub_0800BC44((u32) temp_r5, (u32) temp_r4_6, 0U);
            t071Animate(&sp10,(u16)(sp6C+*(u8 *)(sp88+t071Frames)),&sp48,&sp4A,1);
            if (!(4 & (*(u32 *)((u8 *)gUnk_03005CF4 + 0x4))) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0) && (sub_0800CCCC() == 0)) {
                if (!(gUnk_03002344 & 1)) {
                    sub_08000AF0(0x17U, sp10.fC, 2U);
                }
                if ((gUnk_03003170.curLevel == 4) && (sub_0800CDC0() != 0)) {
                    var_r7 = 0;
                }
                if ((gUnk_03002344 & 1) == (sp78 & 1)) {
                    temp_r2_4 = *(u8 *)(sp88 + t071Frames) * 4;
                    t071Draw(sp44+*(s16 *)(temp_r2_4+t071Offsets),(s16)sp46+*(s16 *)(temp_r2_4+t071Offsets+2),(u16)(sp6C+sp74),sp48,var_r7,&sp10.f1C,sp10.f8,sp10.f0);
                }
            }
            sub_080003F0();
    }
block_129:
    if (impact != 0) {
        temp_r1_13 = sp90 >> 0x10;
        x+=gUnk_080B9704[temp_r1_13+0x40]*2;
        y+=gUnk_080B9704[temp_r1_13]*2;
        t071Impact(sp58,x,y);
    }
    if ((sp78 <= 3U) && (sp78 != sp80)) {
        (((struct T071Player *)sp60)->counter) = (s32) ((((struct T071Player *)sp60)->counter) + 1);
    }
    temp_r2_5 = (s32 *)((u8 *)t071Flags+sp8C);
    *temp_r2_5 &= ~(1 << sp7C);
}





#else
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806ABC0);
#endif
#ifdef NONMATCHING
struct T073Sprite {u32 f0,f4,f8,fC;u8 pad10[12];u8 f1C,f1D;u8 pad1E[22];};
/* local */ extern u8 t073Players[] asm("gUnk_03003CE0");
/* local */ extern u8 *t073Enemies asm("gUnk_030056F4");
/* local */ extern u32 t073Flags[] asm("gUnk_030063E0");
/* local */ extern u8 t073Costs[] asm("gUnk_084EBF1C");
/* local */ extern u8 t073Rects[] asm("gUnk_084EC12C");
/* local */ extern void t073Init(void *,s32,s32,s32,s32) asm("sub_08065158");
/* local */ extern void t073Coords(s32,s32,s16 *,s16 *,s32,void *) asm("sub_0800BC08");
/* local */ extern s32 t073Animate(void *,u32,u16 *,s16 *,s32) asm("sub_08065370");
/* local */ extern void t073Spawn(s32,u32,u32,s32,s32) asm("sub_08069A30");
/* local */ extern void t073Send(void *) asm("sub_080694AC");
/* local */ extern void t073Draw(s32,s32,u32,u32,u32,void *,u32,u32) asm("sub_08007870");
void sub_0806B3C4(u8 *arg0) {
    struct T073Sprite sp10;
    u8 sp44[8];
    u8 sp4C[8];
    u16 sp54[6];
    s16 sp60[6];
    s16 sp6C;
    s16 sp6E;
    u32 i;
    u32 random;
    u8 *delayBase;
    u16 costDelta;
    u8 *dst,*prev;
    u8 *sp70;
    u8 *sp74;
    s32 sp78;
    u32 sp7C;
    u32 sp80;
    u32 sp84;
    s32 sp88;
    s32 sp8C;
    s32 sp90;
    s32 sp94;
    u8 *costBase;
    s16 *costPtr;
    u32 costOffset;
    s32 sp98;
    s32 sp9C;
    s32 spA0;
    s16 *spA4;
    u8 *spA8;
    s32 spAC;
    s16 *spB0;                                      /* compiler-managed */
    s16 *spB4;
    s16 temp_r0_11;
    s16 temp_r0_7;
    s16 temp_r1_9;
    s32 var_r0;
    s32 var_r0_2;
    s16 var_r0_3;
    s16 var_r0_4;
    s16 var_r1_3;
    s16 var_r1_4;
    s32 var_r2;
    s32 var_r2_2;
    s32 var_r2_3;
    s32 var_r2_4;
    s32 *temp_r2;
    s32 *temp_r2_7;
    s32 *temp_r4_2;
    s32 temp_r0_13;
    s32 temp_r0_15;
    s32 temp_r4_7;
    u16 temp_r0_10;
    s32 temp_r0_2;
    u16 temp_r0_3;
    u16 temp_r0_4;
    u16 temp_r0_5;
    u16 temp_r0_6;
    s32 temp_r1;
    u16 temp_r1_5;
    u16 var_r1;
    u16 var_r1_2;
    u16 var_r3;
    u16 var_r3_2;
    u16 var_r8_2;
    u32 var_sl;
    u32 temp_r0;
    u32 temp_r0_8;
    u32 temp_r0_9;
    u32 temp_r1_3;
    u32 temp_r2_2;
    u32 temp_r2_4;
    u8 temp_r0_12;
    u8 temp_r0_14;
    u8 temp_r8;
    u8 temp_r8_2;
    u8 var_r8_3;
    u8 *temp_r1_2;
    u8 *temp_r1_4;
    u8 *temp_r1_6;
    u8 *temp_r1_7;
    u8 *temp_r1_8;
    u8 *temp_r2_3;
    u8 *temp_r2_5;
    u8 *temp_r2_6;
    u8 *temp_r4;
    u8 *temp_r4_3;
    u8 *temp_r4_4;
    u8 *temp_r4_5;
    u8 *temp_r4_6;
    u8 *var_r8;


    sp70 = arg0;
    sp90 = (s32) (u16) sub_080020F4();
    temp_r0 = *(u32 *)arg0;
    sp94 = (*(u32 *)((u8 *)sp70+0x4));
    var_sl = (u16)(*(u32 *)((u8 *)sp70+0x14));
    if (temp_r0 <= 3U) {
        sp74 = (0x14C * temp_r0) + t073Players;
    } else {
        var_r8 = t073Enemies + ((temp_r0 * 0x2E0) + 0xFFFFF480);
    }
    if (sp90 != temp_r0) {
        if (temp_r0 > 3U) {
            costBase=t073Costs;
            costOffset=var_sl*2+(*(u32 *)(sp70+0xC))*24;
            costBase+=6;
            costPtr=(s16 *)(costOffset+(u32)costBase);
            temp_r0_2=(*(u16 *)(var_r8+0x5E))-*costPtr;
            (*(u16 *)((u8 *)var_r8+0x5E)) = temp_r0_2;
            if ((s32) (temp_r0_2 << 0x10) < 0) {
                temp_r2 = (s32 *)((temp_r0 * 4) + (u8 *)t073Flags);
                *temp_r2 &= ~(1 << sp94);
                (*(u16 *)((u8 *)var_r8+0x5E)) = 0U;
                return;
            }
        }
        goto block_9;
    }
    temp_r4 = (0x14C * sub_080020F4()) + t073Players;
    costDelta=sub_0806898C((*(u32 *)((u8 *)sp70+0xC)), (s32) (*(u32 *)((u8 *)sp70+0x14)))-1;
    temp_r1 = (*(u16 *)((u8 *)temp_r4+0xC2))-costDelta;
    (*(u16 *)((u8 *)temp_r4+0xC2)) = temp_r1;
    if ((s32) (temp_r1 << 0x10) < 0) {
        (*(u16 *)((u8 *)temp_r4+0xC2)) = 0U;
    }
block_9:
    sp54[0] = 0;
    sp60[0] = 0;
    sp4C[0] = 0;
    i = 1;
    delayBase=sp4C;
    spAC = temp_r0 * 4;
    do {
        sp54[i] = 0;
        sp60[i] = 0;
        random=sub_080008C8();
        dst=delayBase+i; prev=delayBase+i-1;
        random%=20U;
        random+=10;
        *dst=random+*prev;
        i=(u16)(i+1);
    } while ((u32) i <= 4U);
    if (temp_r0 <= 3U) {
        temp_r1_2 = (*(u8 * *)((u8 *)sp74+0x148));
        sp78 = ((u16) (*(u16 *)((u8 *)temp_r1_2+0x0)) >> 4) << 8;
        sp7C = (u32) ((*(u16 *)((u8 *)temp_r1_2+0x2)) << 0x14) >> 0xC;
        temp_r0_3 = gUnk_0847AD0A[(u8) (*(u8 *)((u8 *)temp_r1_2+0x3)) >> 4];
        sp88 = (s32) temp_r0_3;
        sp8C = (s32) (u16) ((s32) (temp_r0_3 << 0x10) >> 0x13);
        goto block_21;
    }
    sp78 = (*(u32 *)((u8 *)var_r8+0x14));
    sp7C = (*(u32 *)((u8 *)var_r8+0x18));
    temp_r0_4 = gUnk_0847AD0A[(*(s16 *)((u8 *)var_r8+0x8))];
    sp88 = (s32) temp_r0_4;
    sp8C = (s32) (u16) ((s32) (temp_r0_4 << 0x10) >> 0x13);
    if ((u32) (*(u16 *)((u8 *)var_r8+0x6A)) < (u32) (*(u8 *)((u8 *)var_r8+0x22B))) {
        temp_r4_2 = (s32 *)(spAC + (u8 *)t073Flags);
loop_15:
        if ((sub_08056E90() != 0) || (sub_0800BA6C() == 0) || (temp_r0_5 = (*(u16 *)((u8 *)var_r8+0xC)), (temp_r0_5 == 0xA)) || (temp_r0_5 == 0xB)) {
            *temp_r4_2 &= ~(1 << sp94);
            return;
        }
        sub_080003F0();
        if ((u32) (*(u16 *)((u8 *)var_r8+0x6A)) >= (u32) (*(u8 *)((u8 *)var_r8+0x22B))) {
            goto block_21;
        }
        goto loop_15;
    }
block_21:
    var_r8_2 = 0;
    sp84 = 0;
    if (sub_0800CDF8() == 0) {
        if (*(u32 *)(sp70+8) <= 3U) {
        temp_r0_8 = sub_08002164();
        i = 0;
        if (sp84 >= temp_r0_8) {

        } else {
            do {
                temp_r4_4 = (0x14C * i) + t073Players;
                if (((temp_r0 > 3U) || ((*(u8 *)((u8 *)temp_r4_4+0x68)) != (*(u8 *)((u8 *)sp74+0x68)))) && ((*(u8 *)((u8 *)temp_r4_4+0x68)) != 0)) {
                    temp_r2_3 = (*(u8 * *)((u8 *)temp_r4_4+0x148));
                    temp_r0_9 = (u32) ((*(u16 *)((u8 *)temp_r2_3+0x0)) << 0x1C) >> 0x1C;
                    if ((temp_r0_9 != 0xB) && (temp_r0_9 != 0xA) && (temp_r0_9 != 0xE) && !(((u32) ((*(u8 *)((u8 *)temp_r2_3+0x4)) << 0x1A) >> 0x1A) & 0x20)) {
                        sp6C = (s16) (((u16) (*(u16 *)((u8 *)temp_r2_3+0x0)) >> 4) - (sp78 >> 8));
                        temp_r1_5 = ((u32) ((*(u16 *)((u8 *)temp_r2_3+0x2)) << 0x14) >> 0x14) - ((s32) sp7C >> 8);
                        sp6E = (s16) temp_r1_5;
                        temp_r0_10 = ((u32) (ArcTan2(sp6C, (s16) temp_r1_5) << 0x10) >> 0x1B) - (s16) sp8C;
                        var_r1_2 = temp_r0_10;
                        temp_r0_11 = (s16) temp_r0_10;
                        if ((s32) temp_r0_11 > 0x10) {
                            var_r1_2 = temp_r0_11 - 0x20;
                        }
                        var_r0_2 = (s16) var_r1_2;
                        if ((s32) var_r0_2 < 0) {
                            var_r0_2 = 0 - var_r0_2;
                        }
                        if ((s32) var_r0_2 <= 5) {
                            var_r2_3 = sp6C;
                            if ((s32) var_r2_3 < 0) {
                                var_r2_3 = 0 - var_r2_3;
                            }
                            temp_r1_6 = (var_sl * 4) + t073Rects;
                            if ((s32) var_r2_3 < (s32) (*(s16 *)((u8 *)temp_r1_6+0x0))) {
                                var_r2_4 = sp6E;
                                if ((s32) var_r2_4 < 0) {
                                    var_r2_4 = 0 - var_r2_4;
                                }
                                if ((s32) var_r2_4 < (s32) (*(s16 *)((u8 *)temp_r1_6+0x2))) {
                                    temp_r2_4 = sp84;
                                    sp84 = (u32) (u16) (temp_r2_4 + 1);
                                    sp44[temp_r2_4] = i;
                                    var_r8_2 += 1;
                                }
                            }
                        }
                    }
                }
                i = (u16) (i + 1);
            } while ((u32) i < temp_r0_8);
        }
            } else {
        i = 0;
        do {
            if (gUnk_030056FC & (1 << i)) {
                temp_r4_3 = t073Enemies + (i * 0x2E0);
                if (((*(u16 *)((u8 *)temp_r4_3+0xC)) != 0xB) && ((*(u8 *)((u8 *)temp_r4_3+0x1DC)) != 0)) {
                    sp6C = (s16) ((u32) ((*(u32 *)((u8 *)temp_r4_3+0x14)) - sp78) >> 8);
                    temp_r1_3 = (u32) (((*(u32 *)((u8 *)temp_r4_3+0x18)) - sp7C) << 8) >> 0x10;
                    sp6E = (s16) temp_r1_3;
                    temp_r0_6 = ((u32) (ArcTan2(sp6C, (s16) temp_r1_3) << 0x10) >> 0x1B) - (s16) sp8C;
                    var_r1 = temp_r0_6;
                    temp_r0_7 = (s16) temp_r0_6;
                    if ((s32) temp_r0_7 > 0x10) {
                        var_r1 = temp_r0_7 - 0x20;
                    }
                    var_r0 = (s16) var_r1;
                    if ((s32) var_r0 < 0) {
                        var_r0 = 0 - var_r0;
                    }
                    if ((s32) var_r0 <= 5) {
                        var_r2 = sp6C;
                        if ((s32) var_r2 < 0) {
                            var_r2 = 0 - var_r2;
                        }
                        temp_r1_4 = (var_sl * 4) + t073Rects;
                        if ((s32) var_r2 < (s32) (*(s16 *)((u8 *)temp_r1_4+0x0))) {
                            var_r2_2 = sp6E;
                            if ((s32) var_r2_2 < 0) {
                                var_r2_2 = 0 - var_r2_2;
                            }
                            if ((s32) var_r2_2 < (s32) (*(s16 *)((u8 *)temp_r1_4+0x2))) {
                                temp_r2_2 = sp84;
                                sp84 = (u32) (u16) (temp_r2_2 + 1);
                                sp44[temp_r2_2] = i;
                                var_r8_2 += 1;
                            }
                        }
                    }
                }
            }
            i = (u16) (i + 1);
        } while ((u32) i <= 4U);
            }
    }
    t073Init(&sp10,0x50074,8,-1,0);
    sp10.f1C = 7;
    sp10.f1D = 8;
    if ((u32) var_sl > 6U) {
        var_sl = 6;
    }
    if (var_r8_2 == 0) {
        temp_r1_9 = (s16) sp88;
        sp78 += gUnk_080B9704[temp_r1_9 + 0x40] * 0x14;
        sp7C += gUnk_080B9704[temp_r1_9] * 0x14;
        sp80 = 0;
        if (((sp90 == temp_r0) || (temp_r0 > 3U)) && (sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
            sub_0805865C(var_sl + 0x11C);
        }
        if (sp80 != 0) {

        } else {
            temp_r4_7 = sp78 >> 8;
            sp98 = temp_r4_7;
            spA0 = (s32) sp7C >> 8;
            spA4 = &sp6C;
            sp9C = temp_r4_7 << 0x10;
            do {
                t073Coords(sp9C >> 0x10, (s32) (s16) spA0, spA4, &sp6E,0x30,0);
                temp_r8_2 = (u8) sub_0800BC44((u32) sp98, (u32) spA0, 0U);
                if (t073Animate(&sp10, var_sl, sp54, sp60, 0) != 0) {
                    sp80 = (u32) (u16) (sp80 + 1);
                }
                if ((sub_0800CC98() == 0) && (sub_0800CD8C() == 0) && (sub_0800CCCC() == 0)) {
                    if (!(gUnk_03002344 & 1)) {
                        sub_08000AF0(0x17U, sp10.fC, 2U);
                    }
                    if (sub_0800CB9C() != 0) {
                        if ((gUnk_03002344 & 1) == (temp_r0 & 1)) {
                            t073Draw(*spA4,sp6E,var_sl,sp54[0],temp_r8_2,&sp10.f1C,sp10.f8,sp10.f0);
                        }
                    } else {
                        t073Draw(*spA4,sp6E,var_sl,sp54[0],temp_r8_2,&sp10.f1C,sp10.f8,sp10.f0);
                    }
                }
                sub_080003F0();
            } while (sp80 == 0);
        }
        t073Spawn(sp78, sp7C, temp_r0, 3,var_sl);
        } else {
        sp80 = 0;
loop_170:
        if ((sp80 < sp84) && (sub_0800BA6C() != 0)) {
            if (temp_r0 != sub_080020F4()) {
                goto block_91;
            }
            if (((u32) (u16) ((*(u16 *)((u8 *)sp74+0x20)) - 0xB) > 1U) && (sub_0800D11C() == 0)) {
block_91:
                if ((u32) (*(u32 *)((u8 *)sp70+0x8)) > 3U) {
                    i = 0;
                    if (sp84 <= 0U) {

                    } else {
                        spB0 = &sp6C;
                        spB4 = &sp6E;
loop_129:
                        temp_r4_5 = t073Enemies + (sp44[i] * 0x2E0);
                        t073Coords((s32) ((*(u32 *)((u8 *)temp_r4_5+0x14)) << 8) >> 0x10, (s32) ((*(u32 *)((u8 *)temp_r4_5+0x18)) << 8) >> 0x10, &sp6C, &sp6E,0x30,0);
                        var_r8_3 = (u8) sub_0800BC44((u32) (sp78 >> 8), (u32) ((s32) sp7C >> 8), 0U);
                        temp_r2_5 = sp4C + i;
                        temp_r0_12 = *temp_r2_5;
                        switch (temp_r0_12) {       /* switch 2; irregular */
                        case 0xF0:                  /* switch 2 */
                            break;
                        case 0x0:                   /* switch 2 */
                            temp_r0_13 = i * 2;
                            if ((*(u16 *)((u8 *)sp54+temp_r0_13) == 1) && (*(s16 *)((u8 *)sp60+temp_r0_13) == 0) && ((sp90 == temp_r0) || (temp_r0 > 3U)) && (sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                                sub_0805865C(var_sl + 0x11C);
                            }
                            if (t073Animate(&sp10, var_sl, (u16 *)((u8 *)sp54+temp_r0_13), (s16 *)((u8 *)sp60+temp_r0_13), 0) != 0) {
                                sp80 = (u32) (u16) (sp80 + 1);
                                sp4C[i] = 0xF0;
                                if (sp90 == temp_r0) {
                                    (*(u32 *)((u8 *)sp70+0x8)) = (u32) ((*(u16 *)((u8 *)temp_r4_5+0x0)) + 4);
                                    t073Send(sp70);
                                    if ((sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                                        sub_0805865C(0x1A);
                                    }
                                } else if ((temp_r0 > 3U) && (sub_08002204() != 0)) {
                                    (*(u32 *)((u8 *)sp70+0x8)) = (u32) ((*(u16 *)((u8 *)temp_r4_5+0x0)) + 4);
                                    t073Send(sp70);
                                    if ((sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                                        sub_0805865C(0x1A);
                                    }
                                }
                                t073Spawn((*(u32 *)((u8 *)temp_r4_5+0x14)), (*(u32 *)((u8 *)temp_r4_5+0x18)), temp_r0, 2,var_sl);
                            }
                            if ((sub_0800CC98() == 0) && (sub_0800CD8C() == 0) && (sub_0800CCCC() == 0)) {
                                if ((gUnk_03003170.curLevel == 4) && (sub_0800CDC0() != 0)) {
                                    var_r8_3 = 0;
                                }
                                if (sub_0800CB9C() != 0) {
                                    if ((gUnk_03002344 & 1) == (temp_r0 & 1)) {
                                        var_r0_3 = *spB0;
                                        var_r1_3 = *spB4;
                                        var_r3 = *(u16 *)((u8 *)sp54+temp_r0_13);
                                        goto block_159;
                                    }
                                } else {
                                    var_r0_3 = *spB0;
                                    var_r1_3 = *spB4;
                                    var_r3 = *(u16 *)((u8 *)sp54+temp_r0_13);
block_159:
                                    t073Draw(var_r0_3,var_r1_3,var_sl,var_r3,var_r8_3,&sp10.f1C,sp10.f8,sp10.f0);
                                }
                            }
                            break;
                        default:                    /* switch 2 */
                            *temp_r2_5 = (u8) (temp_r0_12 - 1);
                            break;
                        }
                        i=(u16)(i+1);
                        if ((u32) i < sp84) {
                            goto loop_129;
                        }
                    }
                } else {
                    i = 0;
                    if (sp84 <= 0U) {

                    } else {
                        spA8 = sp44;
                        spB0 = &sp6C;
                        spB4 = &sp6E;
loop_96:
                        temp_r4_6 = (0x14C * *(spA8 + i)) + t073Players;
                        temp_r1_7 = (*(u8 * *)((u8 *)temp_r4_6+0x148));
                        t073Coords((s32) ((u16) (*(u16 *)((u8 *)temp_r1_7+0x0)) >> 4), (s32) ((u32) ((*(u16 *)((u8 *)temp_r1_7+0x2)) << 0x14) >> 0x14), &sp6C, &sp6E,0x30,0);
                        temp_r8 = (u8) sub_0800BC44((u32) (sp78 >> 8), (u32) ((s32) sp7C >> 8), 0U);
                        temp_r2_6 = sp4C + i;
                        temp_r0_14 = *temp_r2_6;
                        switch (temp_r0_14) {       /* switch 1; irregular */
                        case 0xF0:                  /* switch 1 */
                            break;
                        case 0x0:                   /* switch 1 */
                            temp_r0_15 = i * 2;
                            if ((*(u16 *)((u8 *)sp54+temp_r0_15) == 1) && (*(s16 *)((u8 *)sp60+temp_r0_15) == 0) && ((sp90 == temp_r0) || (temp_r0 > 3U)) && (sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                                sub_0805865C(var_sl + 0x11C);
                            }
                            if (t073Animate(&sp10, var_sl, (u16 *)((u8 *)sp54+temp_r0_15), (s16 *)((u8 *)sp60+temp_r0_15), 0) != 0) {
                                sp80 = (u32) (u16) (sp80 + 1);
                                sp4C[i] = 0xF0;
                                if (sp90 == *(spA8 + i)) {
                                    (*(u32 *)((u8 *)sp70+0x8)) = (u32) (*(u16 *)((u8 *)temp_r4_6+0x0));
                                    t073Send(sp70);
                                    if ((sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                                        sub_0805865C(0x1A);
                                    }
                                }
                                temp_r1_8 = (*(u8 * *)((u8 *)temp_r4_6+0x148));
                                t073Spawn(((u16) (*(u16 *)((u8 *)temp_r1_8+0x0)) >> 4) << 8, (u32) ((*(u16 *)((u8 *)temp_r1_8+0x2)) << 0x14) >> 0xC, temp_r0, 2,var_sl);
                            }
                            if ((sub_0800CC98() == 0) && (sub_0800CD8C() == 0) && (sub_0800CCCC() == 0)) {
                                if (!(gUnk_03002344 & 1)) {
                                    sub_08000AF0(0x17U, sp10.fC, 2U);
                                }
                                if (sub_0800CB9C() != 0) {
                                    if ((gUnk_03002344 & 1) == (temp_r0 & 1)) {
                                        var_r0_4 = *spB0;
                                        var_r1_4 = *spB4;
                                        var_r3_2 = *(u16 *)((u8 *)sp54+temp_r0_15);
                                        goto block_120;
                                    }
                                } else {
                                    var_r0_4 = *spB0;
                                    var_r1_4 = *spB4;
                                    var_r3_2 = *(u16 *)((u8 *)sp54+temp_r0_15);
block_120:
                                    t073Draw(var_r0_4,var_r1_4,var_sl,var_r3_2,temp_r8,&sp10.f1C,sp10.f8,sp10.f0);
                                }
                            }
                            break;
                        default:                    /* switch 1 */
                            *temp_r2_6 = (u8) (temp_r0_14 - 1);
                            break;
                        }
                        i=(u16)(i+1);
                        if ((u32) i < sp84) {
                            goto loop_96;
                        }
                    }
                }
                if ((sub_0800CC98() == 0) && (sub_0800CD8C() == 0) && (sub_0800CCCC() == 0) && !(gUnk_03002344 & 1)) {
                    sub_08000AF0(0x17U, sp10.fC, 2U);
                }
                sub_080003F0();
                goto loop_170;
            }
        }
        }
    if ((temp_r0 <= 3U) && ((*(u16 *)((u8 *)sp74+0xB6)) == 0)) {
        do {
            sub_080003F0();
        } while ((*(u16 *)((u8 *)sp74+0xB6)) == 0);
    }
    temp_r2_7 = (s32 *)(spAC + (u8 *)t073Flags);
    *temp_r2_7 &= ~(1 << sp94);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806B3C4);
#endif
#ifdef NONMATCHING
#define T71B_U8(p,o) (*(u8 *)((u8 *)(p)+(o)))
#define T71B_U16(p,o) (*(u16 *)((u8 *)(p)+(o)))
#define T71B_S16(p,o) (*(s16 *)((u8 *)(p)+(o)))
#define T71B_U32(p,o) (*(u32 *)((u8 *)(p)+(o)))
#define T71B_PTR(p,o) (*(u8 **)((u8 *)(p)+(o)))
 extern u32 t71BFlags[] asm("gUnk_030063E0");
 extern u8 gUnk_084EBF1C[];
 extern u16 t71BFacing[] asm("gUnk_0849E730");
 extern s16 t71BRange[] asm("gUnk_084EC12C");
s32 t71BProbe(s32,s32,void *) asm("sub_08068A00");
void sub_0806BE24(void *arg0) {
    struct { u32 desc[13]; s16 x, y; u16 hit, other; } frame;
    void *sp4C;
    void *sp50;
    void *sp54;
    void *sp58;
    u8 *sp5C;
    u32 sp60;
    s32 sp64;
    u32 sp68;
    s32 sp6C;
    s32 sp70;
    s32 sp74;
    u32 sp78;
    s32 sp7C;
    s32 sp80;
    s32 sp84;
    s16 *var_r1_2;
    s16 temp_r0_8;
    s16 temp_r0_9;
    s16 temp_r1_7;
    s16 temp_r2_2;
    s16 temp_r4_5;
    s32 *temp_r2;
    s32 *temp_r4_2;
    s32 *temp_r4_4;
    s32 *var_r2;
    s32 temp_r0_7;
    s32 temp_r1_5;
    s32 temp_r3_2;
    s32 temp_r4;
    s32 temp_r4_7;
    s32 temp_r5;
    s32 temp_r6;
    s32 var_r0;
    s32 var_r1;
    s32 var_r7_2;
    s32 var_r8;
    s32 var_r8_2;
    u8 *temp_r0_4;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r0_5;
    u16 temp_r0_6;
    u16 temp_r1_3;
    u16 temp_r3;
    u16 temp_r4_6;
    u16 var_r0_3;
    u16 var_r4;
    u16 var_r4_2;
    u16 var_r5;
    u16 var_r6;
    u16 var_r6_2;
    u32 temp_r0_3;
    u32 temp_r1;
    u32 var_r0_2;
    u32 var_r2_2;
    u32 var_r7;
    u8 temp_r1_6;
    u8 var_r5_2;
    void *temp_r1_2;
    void *temp_r1_4;
    void *temp_r2_3;
    void *temp_r4_3;

    sp4C = arg0;
    temp_r6 = sub_080020F4();
    sp60 = (u32) T71B_U16(arg0,0x8);
    temp_r1 = T71B_U32(sp4C,0x0);
    sp78 = temp_r1;
    sp7C = T71B_U32(sp4C,0x4);
    temp_r3 = T71B_U16(sp4C,0x14);
    sp68 = (u32) temp_r3;
    sp6C = (s32) temp_r3;
    sp64 = (s32) temp_r3;
    if (temp_r1 <= 3U) {
        sp58 = (0x14C * temp_r1) + ((u8 *)gUnk_03003CE0);
        sp80 = temp_r1 * 4;
        goto block_10;
    }
    temp_r1_2 = gUnk_030056F4 + ((sp78 * 0x2E0) + 0xFFFFF480);
    sp54 = temp_r1_2;
    temp_r4 = sp78 * 4;
    sp80 = temp_r4;
    if ((u32) T71B_U16(temp_r1_2,0x6A) <= (u32) T71B_U8(temp_r1_2,0x22B)) {
        temp_r4_2 = temp_r4 + ((u8 *)t71BFlags);
loop_4:
        if ((sub_08056E90() != 0) || (sub_0800BA6C() == 0) || (temp_r0 = T71B_U16(sp54,0xC), (temp_r0 == 0xA)) || (temp_r0 == 0xB)) {
            *temp_r4_2 &= ~(1 << sp7C);
            return;
        }
        sub_080003F0();
        if ((u32) T71B_U16(sp54,0x6A) > (u32) T71B_U8(sp54,0x22B)) {
            goto block_10;
        }
        goto loop_4;
    }
block_10:
    frame.hit = 0;
    frame.other = 0;
    switch (sp68) {                                 /* switch 1 */
    case 0:                                         /* switch 1 */
        sp70 = 1;
        break;
    case 1:                                         /* switch 1 */
        sp70 = 2;
        break;
    case 2:                                         /* switch 1 */
        sp70 = 3;
        break;
    case 3:                                         /* switch 1 */
        sp70 = 4;
        break;
    case 4:                                         /* switch 1 */
        sp70 = 5;
        break;
    case 5:                                         /* switch 1 */
    case 6:                                         /* switch 1 */
    case 7:                                         /* switch 1 */
        sp70 = 6;
        break;
    }
    if (temp_r6 != sp78) {
        if (sp78 > 3U) {
            temp_r0_2 = T71B_U16(sp54,0x5E) - T71B_S16(gUnk_084EBF1C,sp68 * 2 + T71B_U32(sp4C,0xC) * 0x18 + 6);
            T71B_U16(sp54,0x5E) = temp_r0_2;
            if ((s32) (temp_r0_2 << 0x10) < 0) {
                temp_r2 = sp80 + ((u8 *)t71BFlags);
                *temp_r2 &= ~(1 << sp7C);
                T71B_U16(sp54,0x5E) = 0U;
                return;
            }
        }
        goto block_24;
    }
    temp_r4_3 = (0x14C * sub_080020F4()) + ((u8 *)gUnk_03003CE0);
    temp_r1_3 = T71B_U16(temp_r4_3,0xC2) - (u16) (sub_0806898C(T71B_U32(sp4C,0xC), (s32) T71B_U32(sp4C,0x14)) - 1);
    T71B_U16(temp_r4_3,0xC2) = temp_r1_3;
    if ((s32) (temp_r1_3 << 0x10) < 0) {
        T71B_U16(temp_r4_3,0xC2) = 0U;
    }
block_24:
    if (sp60 <= 3U) {
        temp_r0_3 = sub_08002164();
        var_r4 = 0;
        var_r5 = sp68 - 1;
        if (temp_r0_3 > 0U) {
            sp5C = ((u8 *)gUnk_03003CE0);
            if (T71B_U16(((u8 *)gUnk_03003CE0),0) != sp60) {
loop_28:
                var_r4 += 1;
                if ((u32) var_r4 < temp_r0_3) {
                    temp_r0_4 = (0x14C * var_r4) + ((u8 *)gUnk_03003CE0);
                    sp5C = temp_r0_4;
                    if (T71B_U16(temp_r0_4,0x0) == sp60) {
                        goto block_30;
                    }
                    goto loop_28;
                }
                goto block_31;
            }
block_30:
            if ((u32) var_r4 >= temp_r0_3) {
                goto block_31;
            }
        } else {
block_31:
            sp60 = 0xFFFF;
        }
    } else {
        var_r4_2 = 0;
        sp50 = gUnk_030056F4;
        var_r0 = gUnk_030056FC & 1;
        var_r5 = sp68 - 1;
loop_35:
        if ((var_r0 != 0) && (T71B_U16(sp50,0x2) == sp60)) {
            if ((u32) var_r4_2 > 4U) {
                goto block_38;
            }
        } else {
            var_r4_2 += 1;
            if ((u32) var_r4_2 <= 4U) {
                sp50 = gUnk_030056F4 + (var_r4_2 * 0x2E0);
                var_r0 = gUnk_030056FC & (1 << var_r4_2);
                goto loop_35;
            }
block_38:
            sp60 = 0xFFFF;
        }
    }
    if (sp78 <= 3U) {
        temp_r1_4 = T71B_PTR(sp58,0x148);
        var_r8 = ((u16) T71B_U16(temp_r1_4,0x0) >> 4) << 8;
        var_r7 = (u32) (T71B_U16(temp_r1_4,0x2) << 0x14) >> 0xC;
        var_r0_2 = (u8) T71B_U8(temp_r1_4,0x3) >> 4;
    } else {
        var_r8 = T71B_U32(sp54,0x14);
        var_r7 = T71B_U32(sp54,0x18);
        var_r0_2 = (u32) T71B_S16(sp54,0x8);
    }
    var_r6 = gUnk_0847AD0A[var_r0_2];
    switch (sp68) {                                 /* switch 2 */
    case 0:                                         /* switch 2 */
        sp64 = 0x1E;
        break;
    case 1:                                         /* switch 2 */
    case 2:                                         /* switch 2 */
        sp64 = 0xB4;
        break;
    case 3:                                         /* switch 2 */
    case 4:                                         /* switch 2 */
        sp64 = 0xF0;
        break;
    case 5:                                         /* switch 2 */
    case 6:                                         /* switch 2 */
    case 7:                                         /* switch 2 */
        sp64 = 0x12C;
        break;
    }
    sp68 = (u32) var_r5;
    if (0x8000 & sp68) {
        sp68 = 0;
    }
    temp_r2_2 = (s16) var_r6;
    var_r8_2 = var_r8 + (gUnk_080B9704[temp_r2_2 + 0x40] * 5);
    var_r7_2 = var_r7 + (gUnk_080B9704[temp_r2_2] * 5);
    sp84 = var_r6 << 0x10;
    if (sp78 <= 3U) {
        if (sp6C != 0) {
            T71B_U16(sp58,0xB2) = 1U;
        }
        if (T71B_U16(sp58,0xB2) != 1) {
            temp_r4_4 = sp80 + ((u8 *)t71BFlags);
loop_58:
            if ((T71B_U16(sp58,0x20) == 0xA) || !(2 & T71B_U32(gUnk_03005CF4,0x4))) {
                *temp_r4_4 &= ~(1 << sp7C);
                return;
            }
            sub_080003F0();
            if (T71B_U16(sp58,0xB2) == 1) {
                goto block_62;
            }
            goto loop_58;
        }
block_62:
        if ((sub_080020F4() == sp78) && (sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
            sub_0805865C(sp68 + 0x123);
        }
        goto block_66;
    }
block_66:
    sp74 = 0;

    sub_08065158(frame.desc, 0x50097, 8, -1, 0);
    T71B_U8(frame.desc,0x1C) = 7;
    T71B_U8(frame.desc,0x1D) = 8;
loop_116:
    temp_r1_5 = sp64;
    sp64 = (s32) (u16) (temp_r1_5 - 1);
    if ((temp_r1_5 != 0) && (sub_0800BA6C() != 0)) {
        if (sp78 != sub_080020F4()) {
            goto block_67;
        }
        if (((u32) (u16) (T71B_U16(sp58,0x20) - 0xB) > 1U) && (sub_0800D11C() == 0)) {
block_67:
            if ((sp74 == 0) && (t71BProbe(var_r8_2, var_r7_2, sp4C) != 0)) {
                if (sp60 <= 3U) {
                    if (T71B_U16(sp5C,0x20) != 0xA) {
                        temp_r0_5 = sp70 - 1;
                        sp70 = (s32) temp_r0_5;
                        if (temp_r0_5 == 0) {
                            var_r2 = sp80 + ((u8 *)t71BFlags);
                            var_r1 = 1 << sp7C;
                        } else {
                            if (sp78 <= 3U) {
                                T71B_U32(sp58,0xDC) = (s32) (T71B_U32(sp58,0xDC) + 1);
                            } else {
                                T71B_U32(sp54,0x50) = (s32) (T71B_U32(sp54,0x50) + 1);
                            }
                            sp74 = 0xA;
                            goto block_84;
                        }
                    } else {
                        goto block_84;
                    }
                } else if (T71B_U16(sp50,0xC) != 0xA) {
                    temp_r0_6 = sp70 - 1;
                    sp70 = (s32) temp_r0_6;
                    if (temp_r0_6 == 0) {
                        var_r2 = sp80 + ((u8 *)t71BFlags);
                        var_r1 = 1 << sp7C;
                    } else {
                        if (sp78 <= 3U) {
                            T71B_U32(sp58,0xDC) = (s32) (T71B_U32(sp58,0xDC) + 1);
                        } else {
                            T71B_U32(sp54,0x50) = (s32) (T71B_U32(sp54,0x50) + 1);
                        }
                        sp74 = 0xA;
                        goto block_84;
                    }
                } else {
                    goto block_84;
                }
            } else {
block_84:
                temp_r0_7 = sp74;
                sp74 = (s32) (u16) (temp_r0_7 - 1);
                if (temp_r0_7 & 0x8000) {
                    sp74 = 0;
                }
                if ((sp60 != 0xFFFF) && (sp74 == 0)) {
                    if (sp60 <= 3U) {
                        temp_r2_3 = T71B_PTR(sp5C,0x148);
                        frame.x = ((u16) T71B_U16(temp_r2_3,0x0) >> 4) - (var_r8_2 >> 8);
                        var_r1_2 = &frame.y;
                        frame.y = (s16) (((u32) (T71B_U16(temp_r2_3,0x2) << 0x14) >> 0x14) - (var_r7_2 >> 8));
                        var_r0_3 = T71B_U16(sp5C,0x20);
                    } else {
                        frame.x = (s16) ((u32) (T71B_U32(sp50,0x14) - var_r8_2) >> 8);
                        var_r1_2 = &frame.y;
                        frame.y = (s16) ((u32) (T71B_U32(sp50,0x18) - var_r7_2) >> 8);
                        var_r0_3 = T71B_U16(sp50,0xC);
                    }
                    if (var_r0_3 == 0xB) {
                        sp60 = 0xFFFF;
                    }
                    var_r2_2 = (u32) (ArcTan2(frame.x, *var_r1_2) << 0x10) >> 0x18;
                    temp_r3_2 = var_r2_2 - (sp84 >> 0x10);
                    if (temp_r3_2 > 0x80) {
                        var_r2_2 = (u32) (u16) (var_r2_2 + 0xFFFFFF00);
                    } else if (temp_r3_2 < -0x80) {
                        var_r2_2 |= 0x100;
                    }
                    temp_r4_5 = (s16) var_r6;
                    temp_r4_6 = temp_r4_5 + (s16) ((s32) ((s16) var_r2_2 - temp_r4_5) / 7);
                    var_r6_2 = temp_r4_6;
                    temp_r0_8 = (s16) temp_r4_6;
                    if ((s32) temp_r0_8 < 0) {
                        var_r6_2 = temp_r0_8 + 0x100;
                    }
                    temp_r0_9 = (s16) var_r6_2;
                    if ((s32) temp_r0_9 > 0x100) {
                        var_r6_2 = temp_r0_9 + 0xFFFFFF00;
                    }
                    var_r6 = (u16) (u8) var_r6_2;
                }
                temp_r1_6 = (u8) sub_0800AE50(var_r8_2, var_r7_2, 0U);
                if ((temp_r1_6 & 0xF) && !(0x10 & temp_r1_6)) {

                    sub_08069A30(var_r8_2, var_r7_2, sp78, 4, sp6C);
                    goto block_123;
                }
                temp_r1_7 = (s16) var_r6;
                var_r8_2 += gUnk_080B9704[temp_r1_7 + 0x40];
                var_r7_2 += gUnk_080B9704[temp_r1_7];
                sp84 = var_r6 << 0x10;
                temp_r5 = var_r8_2 >> 8;
                temp_r4_7 = var_r7_2 >> 8;


                sub_0800BC08((s16) temp_r5, (s16) temp_r4_7, &frame.x, &frame.y, 0x30, 0);
                var_r5_2 = (u8) sub_0800BC44((u32) temp_r5, (u32) temp_r4_7, 0U);

                sub_08065370(frame.desc, (u16) sp68, (s32) &frame.hit, (s32) &frame.other, 1);
                if ((sub_0800CC98() == 0) && (sub_0800CD8C() == 0) && (sub_0800CCCC() == 0)) {
                    if (!(gUnk_03002344 & 1)) {
                        sub_08000AF0(0x17U, frame.desc[3], 2U);
                    }
                    if ((gUnk_03003170.curLevel == 4) && (sub_0800CDC0() != 0)) {
                        var_r5_2 = 0;
                    }
                    if ((gUnk_03002344 & 1) == (sp78 & 1)) {




                        sub_08007870(frame.x, frame.y, sp68, frame.hit, var_r5_2, (u8 *)frame.desc + 0x1C, frame.desc[2], frame.desc[0]);
                    }
                }
                sub_080003F0();
                goto loop_116;
            }
        } else {
            goto block_123;
        }
    } else {
block_123:
        var_r2 = sp80 + ((u8 *)t71BFlags);
        var_r1 = 1 << sp7C;
    }
    *var_r2 &= ~var_r1;
}


#else
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806BE24);
#endif
#ifdef NONMATCHING
#define T71C_U8(p,o) (*(u8 *)((u8 *)(p)+(o)))
#define T71C_U16(p,o) (*(u16 *)((u8 *)(p)+(o)))
#define T71C_S16(p,o) (*(s16 *)((u8 *)(p)+(o)))
#define T71C_U32(p,o) (*(u32 *)((u8 *)(p)+(o)))
#define T71C_PTR(p,o) (*(u8 **)((u8 *)(p)+(o)))
 extern u32 t71CFlags[] asm("gUnk_030063E0");
 extern u8 gUnk_084EBF1C[];
 extern u16 t71CFacing[] asm("gUnk_0849E730");
 extern s16 t71CRange[] asm("gUnk_084EC12C");
void sub_0806C568(u32 *arg0) {
    struct { u32 desc[13]; u8 targets[8]; u16 xs[6], ys[6], timers[6]; s16 x, y; } frame;
    u32 *sp74;
    void *sp78;
    s32 sp7C;
    u32 sp80;
    s32 sp84;
    u32 sp88;
    s32 sp8C;
    u32 sp90;
    u32 sp94;
    s32 sp98;
    s32 sp9C;
    s32 spA0;
    u16 *spA4;
    s16 temp_r1_5;
    s16 var_r0_4;
    s32 var_r1;
    s32 var_r1_2;
    s32 var_r1_3;
    s32 var_r2;
    s32 *temp_r2;
    s32 *temp_r2_8;
    s32 *temp_r4_2;
    s32 *temp_r4_4;
    s32 temp_r0_4;
    s32 temp_r0_9;
    s32 temp_r2_7;
    s32 temp_r4;
    s32 var_r8;
    u16 var_r7_2;
    u16 var_r7_3;
    u16 temp_r0_10;
    u16 temp_r0_2;
    u16 temp_r0_3;
    u16 temp_r1;
    u16 temp_r2_5;
    u16 temp_r3_2;
    u16 var_r0;
    u16 var_r0_2;
    u16 var_r0_3;
    u16 var_r0_5;
    u16 var_r7;
    u16 var_r7_4;
    u16 var_r7_5;
    u16 var_r7_6;
    u16 var_r7_7;
    u16 var_sl;
    u32 temp_r0;
    u32 temp_r0_5;
    u32 temp_r0_6;
    u32 temp_r0_7;
    u32 temp_r0_8;
    u32 temp_r1_3;
    u32 var_r6;
    u8 temp_r1_4;
    u8 temp_r1_8;
    u8 temp_r6;
    u8 var_r6_2;
    void *temp_r1_2;
    void *temp_r1_6;
    void *temp_r1_7;
    void *temp_r2_2;
    void *temp_r2_3;
    void *temp_r2_4;
    void *temp_r2_6;
    void *temp_r3;
    void *temp_r4_10;
    void *temp_r4_3;
    void *temp_r4_5;
    void *temp_r4_6;
    void *temp_r4_7;
    void *temp_r4_8;
    void *temp_r4_9;
    void *temp_r5;
    void *var_r9;

    sp74 = arg0;
    sp8C = (s32) (u16) sub_080020F4();
    temp_r0 = *arg0;
    sp94 = temp_r0;
    sp98 = T71C_U32(sp74,0x4);
    var_sl = T71C_U16(sp74,0x14);
    sp7C = (s32) var_sl;
    if (temp_r0 <= 3U) {
        sp78 = (0x14C * sp94) + ((u8 *)gUnk_03003CE0);
        spA0 = sp94 * 4;
        goto block_10;
    }
    var_r9 = gUnk_030056F4 + ((sp94 * 0x2E0) + 0xFFFFF480);
    temp_r4 = sp94 * 4;
    spA0 = temp_r4;
    if ((u32) T71C_U16(var_r9,0x6A) < (u32) T71C_U8(var_r9,0x22B)) {
        temp_r4_2 = temp_r4 + ((u8 *)t71CFlags);
loop_4:
        if ((sub_08056E90() != 0) || (sub_0800BA6C() == 0) || (temp_r0_2 = T71C_U16(var_r9,0xC), (temp_r0_2 == 0xA)) || (temp_r0_2 == 0xB)) {
            *temp_r4_2 &= ~(1 << sp98);
            return;
        }
        sub_080003F0();
        if ((u32) T71C_U16(var_r9,0x6A) >= (u32) T71C_U8(var_r9,0x22B)) {
            goto block_10;
        }
        goto loop_4;
    }
block_10:
    if (sp8C != T71C_U32(sp74,0x0)) {
        if (sp94 > 3U) {
            temp_r0_3 = T71C_U16(var_r9,0x5E) - T71C_S16(gUnk_084EBF1C,var_sl * 2 + T71C_U32(sp74,0xC) * 0x18 + 6);
            T71C_U16(var_r9,0x5E) = temp_r0_3;
            if ((s32) (temp_r0_3 << 0x10) < 0) {
                temp_r2 = spA0 + ((u8 *)t71CFlags);
                *temp_r2 &= ~(1 << sp98);
                T71C_U16(var_r9,0x5E) = 0U;
                return;
            }
        }
        goto block_16;
    }
    temp_r4_3 = (0x14C * sub_080020F4()) + ((u8 *)gUnk_03003CE0);
    temp_r1 = T71C_U16(temp_r4_3,0xC2) - (u16) (sub_0806898C(T71C_U32(sp74,0xC), (s32) T71C_U32(sp74,0x14)) - 1);
    T71C_U16(temp_r4_3,0xC2) = temp_r1;
    if ((s32) (temp_r1 << 0x10) < 0) {
        T71C_U16(temp_r4_3,0xC2) = 0U;
    }
block_16:
    frame.xs[0] = 0;
    frame.ys[0] = 0;
    frame.timers[0] = 0;
    var_r7 = 1;
    do {
        frame.xs[var_r7] = 0;
        frame.ys[var_r7] = 0;
        frame.timers[var_r7] = (sub_080008C8() % 20U) + 0xA + frame.timers[var_r7 - 1] + 1;
        var_r7 += 1;
    } while ((u32) var_r7 <= 4U);
    if (sp94 <= 3U) {
        if (sp7C != 0) {
            T71C_U16(sp78,0xB2) = 2U;
        }
        if ((u32) T71C_U16(sp78,0xB2) <= 1U) {
            temp_r4_4 = spA0 + ((u8 *)t71CFlags);
loop_23:
            if ((T71C_U16(sp78,0x20) == 0xA) || !(2 & T71C_U32(gUnk_03005CF4,0x4))) {
                *temp_r4_4 &= ~(1 << sp98);
                return;
            }
            sub_080003F0();
            if ((u32) T71C_U16(sp78,0xB2) > 1U) {
                goto block_27;
            }
            goto loop_23;
        }
block_27:
        temp_r1_2 = T71C_PTR(sp78,0x148);
        var_r8 = ((u16) T71C_U16(temp_r1_2,0x0) >> 4) << 8;
        var_r6 = (u32) (T71C_U16(temp_r1_2,0x2) << 0x14) >> 0xC;
        goto block_29;
    }
    var_r8 = T71C_U32(var_r9,0x14);
    var_r6 = T71C_U32(var_r9,0x18);
block_29:
    sp84 = 0;
    sp88 = 0;
    temp_r0_4 = sub_0800CDF8();
    spA4 = sp78 + 0xB6;
    if (temp_r0_4 != 0) {

    } else if ((u32) T71C_U32(sp74,0x8) > 3U) {
        var_r7_2 = 0;
        sp9C = gUnk_030056FC;
        do {
            if ((1 << var_r7_2) & sp9C) {
                temp_r4_5 = gUnk_030056F4 + (var_r7_2 * 0x2E0);
                if ((T71C_U16(temp_r4_5,0xC) != 0xB) && (T71C_U8(temp_r4_5,0x1DC) != 0)) {
                    frame.x = (s16) ((u32) (T71C_U32(temp_r4_5,0x14) - var_r8) >> 8);
                    temp_r1_3 = (u32) ((T71C_U32(temp_r4_5,0x18) - var_r6) << 8) >> 0x10;
                    frame.y = (u16) temp_r1_3;
                    var_r2 = frame.x;
                    if ((s32) var_r2 < 0) {
                        var_r2 = 0 - var_r2;
                    }
                    temp_r3 = (var_sl * 4) + ((u8 *)t71CRange);
                    if ((s32) var_r2 < (s32) T71C_S16(temp_r3,0x0)) {
                        var_r1 = (s16) temp_r1_3;
                        if ((s32) var_r1 < 0) {
                            var_r1 = 0 - var_r1;
                        }
                        if ((s32) var_r1 < (s32) T71C_S16(temp_r3,0x2)) {
                            temp_r0_5 = sp88;
                            sp88 = (u32) (u16) (temp_r0_5 + 1);
                            *(temp_r0_5 + frame.targets) = var_r7_2;
                            sp84 = (s32) (u16) (sp84 + 1);
                        }
                    }
                }
            }
            var_r7_2 = (u16) (var_r7_2 + 1);
        } while ((u32) var_r7_2 <= 4U);
    } else {
        temp_r0_6 = sub_08002164();
        sp90 = temp_r0_6;
        var_r7_3 = 0;
        if (sp88 >= temp_r0_6) {

        } else {
            do {
                temp_r2_2 = (0x14C * var_r7_3) + ((u8 *)gUnk_03003CE0);
                if (T71C_U16(temp_r2_2,0x20) != 0xB) {
                    if (sp94 <= 3U) {
                        temp_r1_4 = T71C_U8(temp_r2_2,0x68);
                        if (T71C_U8(sp78,0x68) != temp_r1_4) {
                            temp_r4_6 = T71C_PTR(temp_r2_2,0x148);
                            temp_r0_7 = (u32) (T71C_U8(temp_r4_6,0x0) << 0x1C) >> 0x1C;
                            if ((temp_r0_7 != 0xB) && (temp_r0_7 != 0xA) && (temp_r0_7 != 0xE) && (temp_r1_4 != 0) && !(((u32) (T71C_U8(temp_r4_6,0x4) << 0x1A) >> 0x1A) & 0x20)) {
                                frame.x = ((u16) T71C_U16(temp_r4_6,0x0) >> 4) - (var_r8 >> 8);
                                var_r0 = T71C_U16(temp_r4_6,0x2);
                                goto block_46;
                            }
                        }
                    } else {
                        temp_r2_3 = T71C_PTR(temp_r2_2,0x148);
                        frame.x = ((u16) T71C_U16(temp_r2_3,0x0) >> 4) - (var_r8 >> 8);
                        var_r0 = T71C_U16(temp_r2_3,0x2);
block_46:
                        temp_r3_2 = ((u32) (var_r0 << 0x14) >> 0x14) - ((s32) var_r6 >> 8);
                        frame.y = temp_r3_2;
                        var_r1_2 = frame.x;
                        if ((s32) var_r1_2 < 0) {
                            var_r1_2 = 0 - var_r1_2;
                        }
                        temp_r2_4 = (var_sl * 4) + ((u8 *)t71CRange);
                        if ((s32) var_r1_2 < (s32) T71C_S16(temp_r2_4,0x0)) {
                            var_r1_3 = (s16) temp_r3_2;
                            if ((s32) var_r1_3 < 0) {
                                var_r1_3 = 0 - var_r1_3;
                            }
                            if ((s32) var_r1_3 < (s32) T71C_S16(temp_r2_4,0x2)) {
                                temp_r0_8 = sp88;
                                sp88 = (u32) (u16) (temp_r0_8 + 1);
                                *(temp_r0_8 + frame.targets) = var_r7_3;
                                sp84 = (s32) (u16) (sp84 + 1);
                            }
                        }
                    }
                }
                var_r7_3 = (u16) (var_r7_3 + 1);
            } while ((u32) var_r7_3 < sp90);
        }
    }
    if (var_sl == 7) {
        var_sl = 6;
    }
    if ((sp8C == sp94) && (sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
        sub_0805865C(var_sl + 0x155);
    }

    sub_08065158(frame.desc, 0x5009E, 8, -1, 0);
    T71C_U8(frame.desc,0x1C) = 7;
    T71C_U8(frame.desc,0x1D) = 8;
    if (sp84 == 0) {
        if (sp94 <= 3U) {
            var_r0_2 = t71CFacing[(u8) T71C_U8(T71C_PTR(sp78,0x148),3) >> 4];
        } else {
            var_r0_2 = t71CFacing[T71C_S16(var_r9,0x8)];
        }
        temp_r1_5 = (s16) (u16) (var_r0_2 * 0x10);

        sub_08069A30(var_r8 + (gUnk_080B9704[temp_r1_5 + 0x40] * 0xA), var_r6 + (gUnk_080B9704[temp_r1_5] * 0xA), sp94, 5, var_sl);
    } else {
        sp80 = 0;
loop_126:
        if (sp80 < sp88) {
            if (sp94 != sub_080020F4()) {
                goto block_79;
            }
            if (((u32) (u16) (T71C_U16(sp78,0x20) - 0xB) > 1U) && (sub_0800D11C() == 0)) {
block_79:
                if ((u32) T71C_U32(sp74,0x8) > 3U) {
                    var_r7_4 = 0;
                    if (sp88 <= 0U) {

                    } else {
loop_101:
                        temp_r4_7 = gUnk_030056F4 + (*(frame.targets + var_r7_4) * 0x2E0);


                        sub_0800BC08((s32) (T71C_U32(temp_r4_7,0x14) << 8) >> 0x10, (s32) (T71C_U32(temp_r4_7,0x18) << 8) >> 0x10, &frame.x, &frame.y, 0x30, 0);
                        var_r6_2 = (u8) sub_0800BC44((u32) ((s32) T71C_U32(temp_r4_7,0x14) >> 8), (u32) ((s32) T71C_U32(temp_r4_7,0x18) >> 8), 0U);
                        temp_r0_9 = var_r7_4 * 2;

                        temp_r2_5 = frame.timers[temp_r0_9 / 2];
                        if (temp_r2_5 == 0) {

                            if (sub_08065370(frame.desc, var_sl, (s32) &frame.xs[temp_r0_9 / 2], (s32) &frame.ys[temp_r0_9 / 2], 0) != 0) {
                                sp80 = (u32) (u16) (sp80 + 1);
                                var_r0_3 = 0xF0;
                                goto block_117;
                            }
                            if ((sub_0800CC98() == 0) && (sub_0800CD8C() == 0) && (sub_0800CCCC() == 0)) {
                                if ((gUnk_03003170.curLevel == 4) && (sub_0800CDC0() != 0)) {
                                    var_r6_2 = 0;
                                }
                                if (sub_0800CB9C() != 0) {
                                    if ((gUnk_03002344 & 1) == (var_r7_4 & 1)) {
                                        var_r0_4 = frame.x;
                                        goto block_114;
                                    }
                                } else {
                                    var_r0_4 = frame.x;
block_114:




                                    sub_08007870(var_r0_4, frame.y, (s32) var_sl, frame.xs[temp_r0_9 / 2], var_r6_2, (u8 *)frame.desc + 0x1C, frame.desc[2], frame.desc[0]);
                                }
                            }
                        } else if (temp_r2_5 != 0xF0) {
                            var_r0_3 = temp_r2_5 - 1;
block_117:
                            frame.timers[temp_r0_9 / 2] = var_r0_3;
                        }
                        var_r7_4 += 1;
                        if ((u32) var_r7_4 < sp88) {
                            goto loop_101;
                        }
                    }
                } else {
                    var_r7_5 = 0;
                    if (sp88 <= 0U) {

                    } else {
                        do {
                            temp_r2_6 = (0x14C * *(frame.targets + var_r7_5)) + ((u8 *)gUnk_03003CE0);
                            temp_r1_6 = T71C_PTR(temp_r2_6,0x148);


                            sub_0800BC08((s32) ((u16) T71C_U16(temp_r1_6,0x0) >> 4), (s32) ((u32) (T71C_U16(temp_r1_6,0x2) << 0x14) >> 0x14), &frame.x, &frame.y, 0x30, 0);
                            temp_r1_7 = T71C_PTR(temp_r2_6,0x148);
                            temp_r6 = (u8) sub_0800BC44((u16) T71C_U16(temp_r1_7,0x0) >> 4, (u32) (T71C_U16(temp_r1_7,0x2) << 0x14) >> 0x14, 0U);
                            temp_r2_7 = var_r7_5 * 2;

                            temp_r0_10 = frame.timers[temp_r2_7 / 2];
                            if (temp_r0_10 == 0) {

                                if (sub_08065370(frame.desc, var_sl, (s32) &frame.xs[temp_r2_7 / 2], (s32) &frame.ys[temp_r2_7 / 2], 0) != 0) {
                                    sp80 = (u32) (u16) (sp80 + 1);
                                    var_r0_5 = 0xF0;
                                    goto block_95;
                                }
                                if ((sub_0800CC98() == 0) && (sub_0800CD8C() == 0) && (sub_0800CCCC() == 0)) {
                                    if (!(gUnk_03002344 & 1)) {
                                        sub_08000AF0(0x17U, frame.desc[3], 2U);
                                    }




                                    sub_08007870(frame.x, frame.y, (s32) var_sl, frame.xs[temp_r2_7 / 2], temp_r6, (u8 *)frame.desc + 0x1C, frame.desc[2], frame.desc[0]);
                                }
                            } else if (temp_r0_10 != 0xF0) {
                                var_r0_5 = temp_r0_10 - 1;
block_95:
                                frame.timers[temp_r2_7 / 2] = var_r0_5;
                            }
                            var_r7_5 += 1;
                        } while ((u32) var_r7_5 < sp88);
                    }
                }
                if ((sub_0800CC98() == 0) && (sub_0800CD8C() == 0) && (sub_0800CCCC() == 0) && !(gUnk_03002344 & 1)) {
                    sub_08000AF0(0x17U, frame.desc[3], 2U);
                }
                sub_080003F0();
                goto loop_126;
            }
        }
        if ((u32) T71C_U32(sp74,0x8) <= 3U) {
            var_r7_6 = 0;
            if (sp88 > 0U) {
                do {
                    temp_r1_8 = *(frame.targets + var_r7_6);
                    if (sp8C == temp_r1_8) {
                        T71C_U32(sp74,0x8) = (u32) T71C_U16(gUnk_03003CE0,0x14C * temp_r1_8);
                        sub_080694AC(sp74);
                        if ((sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                            sub_0805865C(0x1A);
                        }
                    }
                    var_r7_6 += 1;
                } while ((u32) var_r7_6 < sp88);
            }
        } else {
            var_r7_7 = 0;
            if (sp88 > 0U) {
                do {
                    temp_r4_10 = gUnk_030056F4 + (*(frame.targets + var_r7_7) * 0x2E0);
                    if (sp8C == sp94) {
                        T71C_U32(sp74,0x8) = (u32) (T71C_U16(temp_r4_10,0x0) + 4);
                        goto block_147;
                    }
                    if ((sp94 > 3U) && (sub_08002204() != 0)) {
                        T71C_U32(sp74,0x8) = (u32) (T71C_U16(temp_r4_10,0x0) + 4);
block_147:
                        sub_080694AC(sp74);
                        if ((sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                            sub_0805865C(0x1A);
                        }
                    } else {
                        T71C_U16(temp_r4_10,0x58) = (u16) sp94;
                    }
                    var_r7_7 += 1;
                } while ((u32) var_r7_7 < sp88);
            }
        }
    }
    if (*spA4 == 0) {
        do {
            sub_080003F0();
        } while (*spA4 == 0);
    }
    temp_r2_8 = spA0 + ((u8 *)t71CFlags);
    *temp_r2_8 &= ~(1 << sp98);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806C568);
#endif
#ifdef NONMATCHING
 extern u8 gUnk_084EBF1C[];
#define T71_S16(p,o) (*(s16 *)((u8 *)(p)+(o)))
#define T71_U8(p,o) (*(u8 *)((u8 *)(p)+(o)))
#define T71_U16(p,o) (*(u16 *)((u8 *)(p)+(o)))
#define T71_U32(p,o) (*(u32 *)((u8 *)(p)+(o)))
#define T71_PTR(p,o) (*(u8 **)((u8 *)(p)+(o)))
 extern u32 t71Flags[] asm("gUnk_030063E0");
 extern u16 t71Heal[] asm("gUnk_084EC18E");
 extern u8 *t71Save asm("gUnk_030034E0");
struct T71CDFPlayer {
    u16 f0;
    u8 pad2[0x1E];
    u16 f20;
    u8 pad22[0x2];
    u16 f24;
    u16 f26;
    u8 pad28[0x8];
    u32 f30;
    u8 pad34[0x2E];
    u16 f62;
    u8 pad64[0x4];
    u8 f68;
    u8 pad69[0x4B];
    u16 fB4;
    u8 padB6[0xC];
    u16 fC2;
    u16 fC4;
    u8 padC6[0x1A];
    u32 fE0;
    u8 padE4[0x64];
    u8 * f148;
};
 extern struct T71CDFPlayer t71CDFPlayers[] asm("gUnk_03003CE0");
void sub_0806CDF0(void *arg0) {
    u8 sp0[4];
    u16 sp4[6];
    s32 sp10;
    u32 sp14;
    u32 sp18;
    s32 sp1C;
    s32 sp20;
    s32 sp24;
    s32 sp28;
    s16 temp_r1_4;
    s16 temp_r1_6;
    s16 temp_r2_5;
    s16 temp_r2_7;
    s16 var_r1_3;
    s32 *temp_r2_3;
    s32 *temp_r4;
    s32 *var_r2;
    s32 temp_r2_2;
    s32 temp_r2_8;
    s32 temp_r2_9;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r1;
    u16 *var_r0_6;
    u16 temp_r0_2;
    u16 temp_r0_3;
    u16 temp_r0_6;
    u16 temp_r0_7;
    u16 temp_r0_8;
    u16 temp_r1;
    u16 temp_r1_3;
    u16 temp_r1_5;
    u16 temp_r1_7;
    u16 temp_r2;
    u16 temp_r2_4;
    u16 temp_r2_6;
    u16 temp_r3;
    u16 temp_r3_2;
    u16 var_r1_2;
    u16 var_r5_2;
    u16 var_r5_3;
    u16 var_r5_4;
    u16 var_r5_5;
    u16 var_r7_2;
    u32 temp_r0;
    u32 temp_r0_9;
    u32 var_r5;
    u8 temp_r0_4;
    void *temp_r0_5;
    void *temp_r1_2;
    struct T71CDFPlayer *temp_r4_2;
    void *temp_r4_3;
    void *temp_r4_4;
    struct T71CDFPlayer *temp_r6;
    struct T71CDFPlayer *var_r0_5;
    struct T71CDFPlayer *var_r6;
    void *var_r7;
    struct T71CDFPlayer *var_r9;

    sp1C = sub_080020F4();
    temp_r0 = T71_U32(arg0,0x0);
    sp20 = T71_U32(arg0,0x4);
    if ((u32) T71_U32(arg0,0x14) > 7U) {
        T71_U32(arg0,0x14) = 7U;
    }
    temp_r2 = (u16) T71_U32(arg0,0x14);
    sp10 = (s32) temp_r2;
    if (temp_r0 <= 3U) {
        var_r9 = &t71CDFPlayers[temp_r0];
        sp28 = temp_r0 * 4;
        goto block_12;
    }
    var_r7 = gUnk_030056F4 + ((temp_r0 * 0x2E0) + 0xFFFFF480);
    temp_r2_2 = temp_r0 * 4;
    sp28 = temp_r2_2;
    if ((u32) T71_U16(var_r7,0x6A) < (u32) T71_U8(var_r7,0x22B)) {
        temp_r4 = temp_r2_2 + ((u8 *)t71Flags);
        sp24 = ~(1 << sp20);
loop_6:
        if ((sub_08056E90() != 0) || (sub_0800BA6C() == 0) || (temp_r0_2 = T71_U16(var_r7,0xC), (temp_r0_2 == 0xA)) || (temp_r0_2 == 0xB)) {
            *temp_r4 &= sp24;
            return;
        }
        sub_080003F0();
        if ((u32) T71_U16(var_r7,0x6A) >= (u32) T71_U8(var_r7,0x22B)) {
            goto block_12;
        }
        goto loop_6;
    }
block_12:
    if (sp1C != temp_r0) {
        if (temp_r0 > 3U) {
            temp_r0_3 = T71_U16(var_r7,0x5E) - T71_S16(gUnk_084EBF1C, sp10 * 2 + T71_U32(arg0,0xC) * 0x18 + 6);
            T71_U16(var_r7,0x5E) = temp_r0_3;
            if ((s32) (temp_r0_3 << 0x10) < 0) {
                temp_r2_3 = sp28 + ((u8 *)t71Flags);
                *temp_r2_3 &= ~(1 << sp20);
                T71_U16(var_r7,0x5E) = 0U;
                return;
            }
            goto block_18;
        }
        goto block_19;
    }
    temp_r4_2 = &t71CDFPlayers[sub_080020F4()];
    temp_r1 = temp_r4_2->fC2 - (u16) (sub_0806898C(T71_U32(arg0,0xC), (s32) T71_U32(arg0,0x14)) - 1);
    temp_r4_2->fC2 = temp_r1;
    if ((s32) (temp_r1 << 0x10) < 0) {
        temp_r4_2->fC2 = 0U;
    }
block_18:
    if (temp_r0 <= 3U) {
block_19:
        if ((u32) var_r9->fB4 <= 6U) {
loop_20:
            if (var_r9->f20 == 0xA) {
                var_r2 = sp28 + ((u8 *)t71Flags);
                var_r1 = 1 << sp20;
            } else {
                sub_080003F0();
                if ((u32) var_r9->fB4 > 6U) {
                    goto block_23;
                }
                goto loop_20;
            }
        } else {
block_23:
            temp_r1_2 = var_r9->f148;
            sp14 = (u16) T71_U16(temp_r1_2,0x0) >> 4;
            sp18 = (u32) (T71_U16(temp_r1_2,0x2) << 0x14) >> 0x14;
            var_r7_2 = 0;
            var_r5 = 0;
loop_37:
            if (var_r5 < sub_08002164()) {
                var_r6 = &t71CDFPlayers[var_r5];
                if (((s32) (T71_U8(var_r6->f148,4) << 0x1A) >= 0) && ((temp_r0_4 = var_r6->f68, (temp_r0_4 == var_r9->f68)) || ((temp_r0_4 == 0) && (sub_0800CF80() == 0)))) {
                    temp_r0_5 = var_r6->f148;
                    temp_r2_4 = ((u16) T71_U16(temp_r0_5,0x0) >> 4) - sp14;
                    temp_r1_3 = ((u32) (T71_U16(temp_r0_5,0x2) << 0x14) >> 0x14) - sp18;
                    if (sp10 != 0) {
                        temp_r2_5 = (s16) temp_r2_4;
                        var_r0 = (s32) (temp_r2_4 << 0x10) >> 0x13;
                        if (var_r0 < 0) {
                            var_r0 = 0 - var_r0;
                        }
                        if (var_r0 <= 0xC) {
                            temp_r1_4 = (s16) temp_r1_3;
                            var_r0_2 = (s32) (temp_r1_3 << 0x10) >> 0x13;
                            if (var_r0_2 < 0) {
                                var_r0_2 = 0 - var_r0_2;
                            }
                            if (var_r0_2 <= 0xC) {
                                temp_r3 = var_r7_2;
                                (&sp4[0])[temp_r3] = Sqrt((temp_r2_5 * temp_r2_5) + (temp_r1_4 * temp_r1_4));
                                var_r7_2 = temp_r3 + 1;
                                *(sp0 + temp_r3) = (s8) var_r5;
                            }
                        }
                    }
                }
                var_r5 = (u32) (u16) (var_r5 + 1);
                goto loop_37;
            }
            goto block_50;
        }
    } else {
        sp14 = (u32) T71_U16(var_r7,0x14);
        sp18 = (u32) T71_U16(var_r7,0x18);
        var_r7_2 = 0;
        var_r5_2 = 0;
        do {
            if (gUnk_030056FC & (1 << var_r5_2)) {
                temp_r4_3 = gUnk_030056F4 + (var_r5_2 * 0x2E0);
                temp_r2_6 = T71_U32(temp_r4_3,0x14) - (s16) sp14;
                temp_r1_5 = T71_U32(temp_r4_3,0x18) - (s16) sp18;
                if (sp10 != 0) {
                    temp_r2_7 = (s16) temp_r2_6;
                    var_r0_3 = (s32) (temp_r2_6 << 0x10) >> 0x13;
                    if (var_r0_3 < 0) {
                        var_r0_3 = 0 - var_r0_3;
                    }
                    if (var_r0_3 <= 0xC) {
                        temp_r1_6 = (s16) temp_r1_5;
                        var_r0_4 = (s32) (temp_r1_5 << 0x10) >> 0x13;
                        if (var_r0_4 < 0) {
                            var_r0_4 = 0 - var_r0_4;
                        }
                        if (var_r0_4 <= 0xC) {
                            temp_r3_2 = var_r7_2;
                            (&sp4[0])[temp_r3_2] = Sqrt((temp_r2_7 * temp_r2_7) + (temp_r1_6 * temp_r1_6));
                            var_r7_2 = temp_r3_2 + 1;
                            *(sp0 + temp_r3_2) = var_r5_2 + 4;
                        }
                    }
                }
            }
            var_r5_2 += 1;
        } while ((u32) var_r5_2 <= 4U);
block_50:
        var_r5_3 = 0;
        if ((u32) var_r7_2 > 0U) {
            do {
                sub_08074DE8(*(sp0 + var_r5_3), 8);
                var_r5_3 += 1;
            } while ((u32) var_r5_3 < (u32) var_r7_2);
        }
        if (sp1C == temp_r0) {
            if ((sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                sub_0805865C(0x91);
            }
            if (sp1C == temp_r0) {
                temp_r0_6 = t71Heal[temp_r2] + var_r9->fC4;
                var_r9->fC4 = temp_r0_6;
                if ((s32) (s16) temp_r0_6 > (s32) (s16) var_r9->f62) {
                    var_r9->fC4 = (u16) var_r9->f62;
                }
                var_r9->f24 = 0;
                var_r9->f26 = 0;
                temp_r2_8 = var_r9->f30;
                if ((0x20000 & temp_r2_8) && ((s32) (s16) var_r9->fC4 >= (s32) ((s32) (var_r6->f62 << 0x10) >> 0x11))) {
                    var_r9->f30 = (s32) (temp_r2_8 & 0xFFFDFFFF);
                }
                if ((u32) temp_r2 > 2U) {
                    sub_0801E278((s32) var_r9, 6U);
                    sub_0801E278((s32) var_r9, 7U);
                }
                if ((u32) temp_r2 > 3U) {
                    sub_0801E278((s32) var_r9, 5U);
                    sub_0801E278((s32) var_r9, 2U);
                }
                if ((u32) temp_r2 <= 4U) {

                } else {
                    var_r0_5 = var_r9;
                    goto block_90;
                }
            } else {
                goto block_69;
            }
        } else {
block_69:
            if (temp_r0 > 3U) {
                var_r5_4 = 0;
                do {
                    if ((gUnk_030056FC & (1 << var_r5_4)) && (*(sp0 + var_r5_4) == (var_r5_4 + 4))) {
                        temp_r4_4 = gUnk_030056F4 + (var_r5_4 * 0x2E0);
                        temp_r0_7 = (u16) ((s32) (t71Heal[sp10] * 0x78) / (s32) ((&sp4[0])[var_r5_4] + 0x78));
                        temp_r0_8 = T71_U16(temp_r4_4,0x5C) + temp_r0_7;
                        T71_U16(temp_r4_4,0x5C) = temp_r0_8;
                        if ((s32) (s16) temp_r0_8 > (s32) (s16) T71_U16(temp_r4_4,0x1D6)) {
                            T71_U16(temp_r4_4,0x5C) = (u16) T71_U16(temp_r4_4,0x1D6);
                        }
                        if ((u32) temp_r0_7 > 2U) {
                            sub_0801E2CC((s32) temp_r4_4, 6U);
                            sub_0801E2CC((s32) temp_r4_4, 7U);
                        }
                        if ((u32) temp_r0_7 > 3U) {
                            sub_0801E2CC((s32) temp_r4_4, 5U);
                            sub_0801E2CC((s32) temp_r4_4, 2U);
                        }
                        if ((u32) temp_r0_7 > 4U) {
                            sub_0801E2CC((s32) temp_r4_4, 3U);
                        }
                    }
                    var_r5_4 += 1;
                } while ((u32) var_r5_4 <= 4U);
            } else {
                var_r5_5 = 0;
                if ((u32) var_r7_2 <= 0U) {

                } else if (sp10 == 0) {

                } else {
loop_75:
                    if (*(sp0 + var_r5_5) != sp1C) {
                        var_r5_5 += 1;
                        if ((u32) var_r5_5 < (u32) var_r7_2) {
                            if (sp10 != 0) {
                                goto loop_75;
                            }
                        }
                    } else {
                        temp_r6 = &t71CDFPlayers[sp1C];
                        if (sub_0801DF8C() == 0) {
                            temp_r1_7 = temp_r6->fC4 + ((s32) (t71Heal[temp_r2] * 0x78) / (s32) ((&sp4[0])[var_r5_5] + 0x78));
                            temp_r6->fC4 = temp_r1_7;
                            if ((s32) (s16) temp_r1_7 > (s32) (s16) temp_r6->f62) {
                                temp_r6->fC4 = (u16) temp_r6->f62;
                            }
                            temp_r2_9 = temp_r6->f30;
                            if ((0x20000 & temp_r2_9) && ((s32) (s16) temp_r6->fC4 >= (s32) ((s32) (temp_r6->f62 << 0x10) >> 0x11))) {
                                temp_r6->f30 = (s32) (temp_r2_9 & 0xFFFDFFFF);
                            }
                            if ((u32) temp_r2 > 2U) {
                                sub_0801E278((s32) temp_r6, 6U);
                                sub_0801E278((s32) temp_r6, 7U);
                            }
                            if ((u32) temp_r2 > 3U) {
                                sub_0801E278((s32) temp_r6, 5U);
                                sub_0801E278((s32) temp_r6, 2U);
                            }
                            if ((u32) temp_r2 <= 4U) {

                            } else {
                                var_r0_5 = temp_r6;
block_90:
                                sub_0801E278((s32) var_r0_5, 3U);
                            }
                        } else if (sub_0800CF80() != 0) {

                        } else if ((u32) temp_r2 <= 5U) {

                        } else {
                            if ((u32) temp_r2 > 6U) {
                                var_r1_2 = temp_r6->f62;
                                var_r0_6 = (u8 *)temp_r6 + 0x62 + 0x62;
                            } else {
                                var_r1_3 = (s16) temp_r6->f62;
                                if ((s32) var_r1_3 < 0) {
                                    var_r1_3 += 3;
                                }
                                var_r1_2 = (u16) (var_r1_3 >> 2);
                                var_r0_6 = (u8 *)temp_r6 + 0xC4;
                            }
                            *var_r0_6 = var_r1_2;
                            if (temp_r6->f20 == 0xB) {
                                temp_r6->f20 = 0U;
                            }
                            temp_r6->f68 = 1;
                            sub_0806617C();
                            temp_r6->f30 = (s32) (temp_r6->f30 & 0xFFFFDFFF);
                            sub_08067D74();
                            sub_08022200((s32) temp_r6->f0, var_r9->fE0);
                            temp_r0_9 = temp_r6->fE0 - 1;
                            switch (temp_r0_9) {    /* irregular */
                            case 0:
                                T71_U16(t71Save,0x24) = (u16) (T71_U16(t71Save,0x24) + 1);
                                break;
                            case 1:
                                T71_U16(t71Save,0x26) = (u16) (T71_U16(t71Save,0x26) + 1);
                                break;
                            case 2:
                                T71_U16(t71Save,0x28) = (u16) (T71_U16(t71Save,0x28) + 1);
                                break;
                            case 3:
                                T71_U16(t71Save,0x2A) = (u16) (T71_U16(t71Save,0x2A) + 1);
                                break;
                            case 4:
                                T71_U16(t71Save,0x2C) = (u16) (T71_U16(t71Save,0x2C) + 1);
                                break;
                            case 5:
                                T71_U16(t71Save,0x2E) = (u16) (T71_U16(t71Save,0x2E) + 1);
                                break;
                            }
                        }
                    }
                }
            }
        }
        var_r2 = sp28 + ((u8 *)t71Flags);
        var_r1 = 1 << sp20;
    }
    *var_r2 &= ~var_r1;
}


#else
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806CDF0);
#endif
struct T072D4Effect { s16 timer; u16 owner, kind, level, a, b, c, d; u8 pad[24]; };
struct T072D4Player { u8 pad0[0x20]; u16 state; u8 pad22[2]; u16 x24, x26; u8 pad28[12]; struct T072D4Effect *effects; u8 pad38[0x2c]; u16 mode; u8 pad66[2]; u8 team; u8 pad69[0x4b]; u16 wait; u8 padB6[12]; s16 resource; u8 padC4[0x84]; u16 *sprite; };
struct T072D4Args { u32 player, bit, f8, value, f10, level; };
extern struct T072D4Player t072D4Players[] asm("gUnk_03003CE0");
extern u32 t072D4Flags[] asm("gUnk_030063E0");
void sub_08074DE8(u32, u32);
extern void t072D4_E0BC(void *, s16) asm("sub_0801E0BC");
void sub_0806D4A4(struct T072D4Args *arg) {
    u8 list[4];
    u32 x;
    u32 y;
    s32 local;
    u32 player;
    u32 bit;
    u16 level;
    u16 range;
    u16 i;
    u16 count;
    struct T072D4Player *p;
    struct T072D4Player *q;
    struct T072D4Player *other;
    struct T072D4Effect *start;
    struct T072D4Effect *e;
    struct T072D4Effect *e2;
    u16 *sprite;
    u16 dx;
    u16 dy;
    u16 cost;
    s32 ax;
    s32 ay;
    s32 limit;
    u32 found;
    s32 duration;
    s32 amount;

    local = sub_080020F4();
    player = arg->player;
    bit = arg->bit;
    level = arg->level;
    range = level;
    if (player <= 3) p = &t072D4Players[player];
    if (local == player) {
        q = &t072D4Players[sub_080020F4()];
        cost = sub_0806898C(arg->value, arg->level) - 1;
        q->resource -= cost;
        if (q->resource < 0) q->resource = 0;
    }
    while (p->wait <= 6) {
        if (p->state == 10) {
            t072D4Flags[player] &= ~(1 << bit);
            return;
        }
        sub_080003F0();
    }
    if (local == player && sub_0800CCCC() == 0 && sub_0800CD34() == 0) sub_0805865C(0x166);
    x = p->sprite[0] >> 4;
    y = ((u32)p->sprite[1] << 20) >> 20;
    count = 0;
    for (i = 0; i < sub_08002164(); i++) {
        other = &t072D4Players[i];
        sprite = other->sprite;
        if ((s32)((u32)((u8 *)sprite)[4] << 26) < 0) continue;
        if (other->team != p->team || other->team == 0) continue;
        dx = (sprite[0] >> 4) - x;
        dy = (((u32)sprite[1] << 20) >> 20) - y;
        if (range != 5) {
            ax = (s16)dx >> 3;
            if (ax < 0) ax = -ax;
            limit = (range + 1) * 2;
            if (ax >= limit) continue;
            ay = (s16)dy >> 3;
            if (ay < 0) ay = -ay;
            if (ay >= limit) continue;
        }
        list[count++] = i;
    }
    for (i = 0; i < count; i++) sub_08074DE8(list[i], 10);
    if (local == player) {
        e = p->effects;
        i = 0;
        start = e;
        found = 0;
        for (; i < 8; i++, e++) {
            if (e->timer > 0 && e->owner <= 3 && t072D4Players[e->owner].mode == 4 && e->kind == 4) {
                if (e->level < level) {
                    e->level = level;
                    e->timer = (level * 10 + 40) * 60;
                    t072D4_E0BC((u8 *)e + 0x1C, level * 10);
                    e->owner = player;
                }
                found = 1;
                break;
            }
        }
        if (!found) {
            e = start;
            for (i = 0; i < 8; i++, e++) {
                if (e->timer == -1) {
                    e->owner = player;
                    e->kind = 4;
                    e->level = level;
                    e->timer = (level * 10 + 40) * 60;
                    ;
                    t072D4_E0BC((u8 *)e + 0x1C, level * 10);
                    break;
                }
            }
        }
        p->x24 = 0;
        p->x26 = 0;
    } else {
        for (i = 0; i < count; i++) {
            if (list[i] == local) {
                p = &t072D4Players[local];
                e2 = p->effects;
                found = 0;
                ;
                ;
                for (i = 0; i < 8; i++, e2++) {
                    if (e2->timer > 0 && e2->owner <= 3 && t072D4Players[e2->owner].mode == 4 && e2->kind == 4) {
                        if (e2->level < level) {
                            e2->owner = player;
                            e2->level = level;
                            e2->timer = (level * 10 + 40) * 60;
                            t072D4_E0BC((u8 *)e2 + 0x1C, level * 10);
                        }
                        found = 1;
                        break;
                    }
                }
                if (!found) {
                    e2 = p->effects;
                    for (i = 0; i < 8; i++, e2++) {
                        if (e2->timer == -1) {
                            e2->owner = player;
                            e2->kind = 4;
                            e2->level = level;
                            e2->timer = (level * 10 + 40) * 60;
                    ;
                            t072D4_E0BC((u8 *)e2 + 0x1C, level * 10);
                            break;
                        }
                    }
                }
                break;
            }
        }
    }
finish:
    t072D4Flags[player] &= ~(1 << bit);
}
#ifdef NONMATCHING
struct T072Effect { s16 timer; u16 owner, kind, level, a, b, c, d; u8 pad[24]; };
struct T072Player { u8 pad0[0x20]; u16 state; u8 pad22[2]; u16 x24, x26; u8 pad28[12]; struct T072Effect *effects; u8 pad38[0x2c]; u16 mode; u8 pad66[2]; u8 team; u8 pad69[0x4b]; u16 wait; u8 padB6[12]; s16 resource; u8 padC4[0x84]; u16 *sprite; };
struct T072Args { u32 player, bit, f8, value, f10, level; };
extern struct T072Player t072Players[] asm("gUnk_03003CE0");
extern u32 t072Flags[] asm("gUnk_030063E0");
void sub_0806D7EC(struct T072Args *arg) {
    u8 list[4];
    u32 x;
    u32 y;
    s32 local;
    u32 player;
    u32 bit;
    u16 level;
    u16 range;
    u16 i;
    u16 j;
    u16 count;
    struct T072Player *p;
    struct T072Player *q;
    struct T072Player *other;
    struct T072Effect *start;
    struct T072Effect *e;
    struct T072Effect *e2;
    u16 *sprite;
    u16 dx;
    u16 dy;
    u16 cost;
    s32 ax;
    s32 ay;
    s32 limit;
    u32 found;
    s32 duration;
    s32 amount;

    local = sub_080020F4();
    player = arg->player;
    bit = arg->bit;
    level = arg->level;
    range = level;
    if (player <= 3) p = &t072Players[player];
    if (local == player) {
        q = &t072Players[sub_080020F4()];
        cost = sub_0806898C(arg->value, arg->level) - 1;
        q->resource -= cost;
        if (q->resource < 0) q->resource = 0;
    }
    while (p->wait <= 6) {
        if (p->state == 10) {
            t072Flags[player] &= ~(1 << bit);
            return;
        }
        sub_080003F0();
    }
    if (local == player && sub_0800CCCC() == 0 && sub_0800CD34() == 0) sub_0805865C(0x168);
    x = p->sprite[0] >> 4;
    y = ((u32)p->sprite[1] << 20) >> 20;
    count = 0;
    for (i = 0; i < sub_08002164(); i++) {
        other = &t072Players[i];
        sprite = other->sprite;
        if ((s32)((u32)((u8 *)sprite)[4] << 26) < 0) continue;
        if (other->team != p->team || other->team == 0) continue;
        dx = (sprite[0] >> 4) - x;
        dy = (((u32)sprite[1] << 20) >> 20) - y;
        if (range != 5) {
            ax = (s16)dx >> 3;
            if (ax < 0) ax = -ax;
            limit = (range + 1) * 2;
            if (ax >= limit) continue;
            ay = (s16)dy >> 3;
            if (ay < 0) ay = -ay;
            if (ay >= limit) continue;
        }
        list[count] = i;
        count++;
    }
    for (i = 0; i < count; i++) sub_08074DE8(list[i], 11);
    if (local == player) {
        e = p->effects;
        j = 0;
        start = e;
        found = 0;
        for (; j < 8; j++, e++) {
            if (e->timer > 0 && e->owner <= 3 && t072Players[e->owner].mode == 4 && e->kind == 5) {
                if (e->level <= level) {
                    e->owner = player;
                    e->level = level;
                    e->timer = (level * 10 + 40) * 60;
                    e->a = level * 8; e->b = level * 8; e->c = level * 8; e->d = level * 8;
                }
                found = 1;
                break;
            }
        }
        if (!found) {
            e = start;
            for (j = 0; j < 8; j++, e++) {
                if (e->timer == -1) {
                    e->owner = player;
                    e->kind = 5;
                    e->level = level;
                    e->timer = (level * 10 + 40) * 60;
                    ;
                    e->a = level * 8; e->b = level * 8; e->c = level * 8; e->d = level * 8;
                    break;
                }
            }
        }
        p->x24 = 0;
        p->x26 = 0;
    } else {
        for (i = 0; i < count; i++) {
            if (list[i] == local) {
                p = &t072Players[local];
                e2 = p->effects;
                found = 0;
                ;
                ;
                for (i = 0; i < 8; i++, e2++) {
                    if (e2->timer > 0 && e2->owner <= 3 && t072Players[e2->owner].mode == 4 && e2->kind == 5) {
                        if (e2->level <= level) {
                            e2->level = level;
                            e2->timer = (level * 10 + 40) * 60;
                            e2->a = level * 8; e2->b = level * 8; e2->c = level * 8; e2->d = level * 8;
                        }
                        found = 1;
                        break;
                    }
                }
                if (!found) {
                    e2 = p->effects;
                    for (i = 0; i < 8; i++, e2++) {
                        if (e2->timer == -1) {
                            e2->owner = player;
                            e2->kind = 5;
                            e2->level = level;
                            e2->timer = (level * 10 + 40) * 60;
                    ;
                            e2->a = level * 8; e2->b = level * 8; e2->c = level * 8; e2->d = level * 8;
                            break;
                        }
                    }
                }
                break;
            }
        }
    }
finish:
    t072Flags[player] &= ~(1 << bit);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806D7EC);
#endif
#ifdef NONMATCHING
struct T072DBEffect { s16 timer; u16 owner, kind, level, a, b, c, d; s16 strength; u8 pad[22]; };
struct T072DBPlayer { u8 pad0[0x20]; u16 state; u8 pad22[2]; u16 x24, x26; u8 pad28[12]; struct T072DBEffect *effects; u8 pad38[0x2c]; u16 mode; u8 pad66[2]; u8 team; u8 pad69[0x4b]; u16 wait; u16 ready; u8 padB8[10]; s16 resource; u8 padC4[0x84]; u16 *sprite; };
struct T072DBArgs { u32 player, bit, f8, value, f10, level; };
extern struct T072DBPlayer t072DBPlayers[] asm("gUnk_03003CE0");
extern u32 t072DBFlags[] asm("gUnk_030063E0");
void sub_0806DB1C(struct T072DBArgs *arg) {
    u8 list[4];
    s16 distances[6];
    u32 x, y;
    u32 bit;
    u32 offset;
    u16 level, range, count, i;
    u32 player;
    s32 local;
    struct T072DBPlayer *p, *other, *costPlayer; u16 *wait, *ready;
    struct T072DBEffect *e, *start;
    u16 *sprite;
    u16 dx, dy, cost;
    s32 ax, ay, limit;
    s32 duration, amount;
    local = sub_080020F4();
    player = arg->player;
    bit = arg->bit;
    level = arg->level;
    range = level;
    if (player <= 3) p = &t072DBPlayers[player];
    if (local == player) {
        costPlayer = &t072DBPlayers[sub_080020F4()];
        cost = sub_0806898C(arg->value, arg->level) - 1;
        costPlayer->resource -= cost;
        if (costPlayer->resource < 0) costPlayer->resource = 0;
    }
    offset = player * 4;
    wait = &p->wait;
    while (*wait <= 6) {
        if (p->state == 10) goto finish;
        sub_080003F0();
    }
    sprite = p->sprite;
    x = sprite[0] >> 4;
    y = ((u32)sprite[1] << 20) >> 20;
    count = 0;
    i = 0;
    ready = &p->ready;
    goto testPlayers;
nextPlayer:
    other = &t072DBPlayers[i];
    sprite = other->sprite;
    if ((s32)((u32)((u8 *)sprite)[4] << 26) < 0) goto skipPlayer;
    if (other->team != p->team || other->team == 0) goto skipPlayer;
    dx = (sprite[0] >> 4) - x;
    dy = (((u32)sprite[1] << 20) >> 20) - y;
    if (range == 0) goto skipPlayer;
    {
        ax = (s16)dx >> 3;
        if (ax < 0) ax = -ax;
        limit = 12;
        if (ax > limit) goto skipPlayer;
        ay = (s16)dy >> 3;
        if (ay < 0) ay = -ay;
        if (ay > limit) goto skipPlayer;
    }
    distances[count] = Sqrt((s16)dx * (s16)dx + (s16)dy * (s16)dy);
    list[count++] = i;
skipPlayer:
    i++;
testPlayers:
    if (i < sub_08002164()) goto nextPlayer;
    for (i = 0; i < count; i++) sub_08074DE8(list[i], 9);
    while (*ready == 0) sub_080003F0();
    if ((local == player || player > 3) && sub_0800CCCC() == 0 && sub_0800CD34() == 0) sub_0805865C(0x167);
    if (local == player) {
        e = p->effects;
        i = 0;
        start = e;
        duration = (level * 10 + 40) * 60;
        amount = level * 8;
        do {
            if (e->timer > 0 && t072DBPlayers[local].mode == 4 && e->kind == 3 && e->owner <= 99) {
                if (e->level < level) {
                    e->level = level;
                    e->timer = duration;
                    e->strength = level * 20;
                }
                goto clear;
            }
            i++; e++;
        } while (i <= 7);
        e = start; i = 0;
        do {
            if (e->timer == -1) {
                e->owner = player; e->kind = 3; e->level = level;
                e->timer = (level * 10 + 40) * 60;
                amount = level * 8;
                e->strength = level * 20;
                break;
            }
            i++; e++;
        } while (i <= 7);
clear:
        p->x24 = 0; p->x26 = 0;
    } else {
        for (i = 0; i < count && range != 0; i++) {
            if (list[i] == local) {
                p = &t072DBPlayers[local];
                e = p->effects; i = 0;
                duration = (level * 10 + 40) * 60;
                amount = level * 8;
                do {
                    if (e->timer > 0 && e->owner <= 3 && t072DBPlayers[e->owner].mode == 4 && e->kind == 3) {
                        if (e->level < level) {
                            e->level = level; e->timer = duration;
                            e->strength = level * 20;
                        }
                        goto finish;
                    }
                    i++; e++;
                } while (i <= 7);
                e = p->effects; i = 0;
                do {
                    if (e->timer == -1) {
                        e->owner = player; e->kind = 3; e->level = level;
                        e->timer = (level * 10 + 40) * 60;
                        amount = level * 8;
                        e->strength = level * 20;
                        goto finish;
                    }
                    i++; e++;
                } while (i <= 7);
                goto finish;
            }
        }
    }
finish:
    *(u32 *)((u8 *)t072DBFlags + offset) &= ~(1 << bit);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806DB1C);
#endif
#ifdef NONMATCHING
struct T072DESprite { u32 f0, f4, f8, fC; u8 pad10[12]; u8 f1C, f1D; u8 pad1E[22]; };
struct T072DEPlayer { u16 id; u8 pad2[0x1e]; u16 state; u8 pad22[0x46]; u8 team; u8 pad69[0x49]; u16 phase, wait, ready; u8 padB8[10]; s16 resource; u8 padC4[24]; u32 counter; u8 padE0[0x64]; u8 *config; u16 *sprite; };
struct T072DEEnemy { u16 id; u8 pad2[6]; s16 direction; u8 padA[2]; u16 state; u8 padE[6]; s32 x,y; u8 pad1C[0x42]; s16 resource; u8 pad60[10]; u16 wait; u8 pad6C[0x170]; u8 active; u8 pad1DD[0x4e]; u8 threshold; u8 pad22C[0xb4]; };
struct T072DEArgs { u32 player, bit, target, value, f10, level; };
extern struct T072DEPlayer t072DEPlayers[] asm("gUnk_03003CE0");
extern struct T072DEEnemy *t072DEEnemies asm("gUnk_030056F4");
extern u32 t072DEFlags[] asm("gUnk_030063E0");
extern s16 t072DECosts[] asm("gUnk_084EBF1C");
extern u16 t072DEDirections[] asm("gUnk_0849E730");
void t072DEInit(void *,s32,s32,s32,s32) asm("sub_08065158");
void t072DECoords(s32,s32,s16 *,s16 *,s32,void *) asm("sub_0800BC08");
void t072DEDraw(s16,s16,u16,u16,u32,void *,u32,u32) asm("sub_08007870");
void t072DESend(struct T072DEArgs *) asm("sub_080694AC");
void sub_0806DE94(struct T072DEArgs *arg) {
    struct T072DESprite sprite;
    u8 targets[8];
    u8 delays[8];
    u16 animation[6];
    s16 timers[6];
    s16 dx, dy;
    struct T072DEPlayer *p, *q, *costPlayer;
    struct T072DEEnemy *enemy, *caster;
    u32 nplayers, originalLevel;
    s32 x, y;
    u32 done, total;
    u16 local;
    u32 player, bit;
    s32 px, py;
    u16 level, direction, selected, i;
    s32 angle, ax, ay, radius, index;
    s32 cost; u16 delta;
    u8 shade;
    u16 *ready;
    u8 *delayDst, *delayPrev;
    u32 random, offset;
    s16 *costEntry;
    local = sub_080020F4();
    player = arg->player; bit = arg->bit;
    level = arg->level; originalLevel = level;
    if (player <= 3) p = &t072DEPlayers[player];
    else {
        offset = player * 0x2E0 - 0xB80;
        caster = (struct T072DEEnemy *)((u32)t072DEEnemies + offset);
        while (caster->wait < caster->threshold) {
            if (sub_08056E90() != 0 || sub_0800BA6C() == 0 || caster->state == 10 || caster->state == 11) {
                t072DEFlags[player] &= ~(1 << bit); return;
            }
            sub_080003F0();
        }
    }
    if (local != player) {
        if (player > 3) {
            costEntry = (s16 *)((u8 *)t072DECosts + 6 + arg->value * 24 + level * 2);
            cost = (u16)caster->resource - *costEntry;
            caster->resource = cost;
            if ((s16)cost < 0) {
                t072DEFlags[player] &= ~(1 << bit); caster->resource = 0; return;
            }
        }
    } else {
        costPlayer = &t072DEPlayers[sub_080020F4()];
        delta = sub_0806898C(arg->value, arg->level) - 1;
        costPlayer->resource -= delta;
        if (costPlayer->resource < 0) costPlayer->resource = 0;
    }
    animation[0] = 0; timers[0] = 0; delays[0] = 0;
    i = 1;
    do {
        animation[i] = 0; timers[i] = 0;
        random = sub_080008C8();
        delayDst = &delays[i];
        delayPrev = &delays[i-1];
        random %= 10U;
        random += 20;
        *delayDst = random + *delayPrev;
        i++;
    } while (i <= 4);
    if (player <= 3) {
        if (originalLevel != 0) p->phase = 2;
        while (p->phase <= 1) {
            if (p->state == 10 || !(gGameState->flags & 2)) {
                t072DEFlags[player] &= ~(1 << bit); return;
            }
            sub_080003F0();
        }
        if (player <= 3) {
            x = (p->sprite[0] >> 4) << 8;
            y = ((u32)p->sprite[1] << 20) >> 12;
            direction = t072DEDirections[p->config[3] >> 4];
        } else goto enemyOrigin;
    } else {
enemyOrigin:
        x = caster->x; y = caster->y;
        direction = t072DEDirections[caster->direction];
    }
    direction *= 2;
    selected = 0; total = 0;
    ready = &p->ready;
    if (sub_0800CDF8() == 0) {
        if (arg->target > 3) {
            for (i = 0; i <= 4 && sub_0800CD8C() == 0; i++) {
                if (!(gUnk_030056FC & (1 << i))) continue;
                enemy = &t072DEEnemies[i];
                if (enemy->state == 11 || enemy->active == 0) continue;
                dx = (u32)(enemy->x - x) >> 8;
                dy = ((u32)(enemy->y - y) << 8) >> 16;
                angle = (u16)(((u32)(ArcTan2(dx,dy) << 16) >> 27) - (s16)direction);
                if ((s16)angle > 16) angle = (u16)((s16)angle - 32);
                angle = (s16)angle;
                if (angle < 0) angle = -angle;
                if (angle > 3) continue;
                ax = dx; if (ax < 0) ax = -ax;
                radius = level * 10 + 48;
                if (ax >= radius) continue;
                ay = dy; if (ay < 0) ay = -ay;
                if (ay >= radius) continue;
                targets[total] = i; total = (u16)(total + 1); selected++;
            }
        } else {
            nplayers = sub_08002164();
            for (i = 0; i < nplayers; i++) {
                q = &t072DEPlayers[i];
                if (sub_0800CD8C() != 0) break;
                index = ((u8 *)q->sprite)[0] & 15;
                if (index == 11 || index == 10 || index == 14) continue;
                if (q->team == 0 || (((u8 *)q->sprite)[4] & 32) || (player <= 3 && q->team == p->team) || q->state == 11) continue;
                dx = (q->sprite[0] >> 4) - (x >> 8);
                dy = (((u32)q->sprite[1] << 20) >> 20) - (y >> 8);
                angle = (u16)(((u32)(ArcTan2(dx,dy) << 16) >> 27) - (s16)direction);
                if ((s16)angle > 16) angle = (u16)((s16)angle - 32);
                angle = (s16)angle;
                if (angle < 0) angle = -angle;
                if (angle > 3) continue;
                ax = dx; if (ax < 0) ax = -ax;
                radius = level * 10 + 48;
                if (ax >= radius) continue;
                ay = dy; if (ay < 0) ay = -ay;
                if (ay >= radius) continue;
                targets[total] = i; total = (u16)(total + 1); selected++;
            }
        }
    }
    if ((local == player || player > 3) && sub_0800CCCC() == 0 && sub_0800CD34() == 0) sub_0805865C(level + 0x140);
    t072DEInit(&sprite,0x5008B,8,-1,0);
    sprite.f1C = 7; sprite.f1D = 8;
    if (level > 6) level = 6;
    done = 0;
    if (selected != 0) {
        while (done < total) {
            if (player == sub_080020F4() && ((u16)(p->state - 11) <= 1 || sub_0800D11C() != 0)) break;
            if (arg->target > 3) {
                for (i = 0; i < total; i++) {
                    enemy = &t072DEEnemies[targets[i]];
                    t072DECoords((s16)(enemy->x >> 8),(s16)(enemy->y >> 8),&dx,&dy,48,0);
                    shade = sub_0800BC44(x >> 8,y >> 8,0);
                    if (delays[i] == 0) {
                        if (sub_08065370(&sprite,level,(s32)&animation[i],(s32)&timers[i],0) != 0) {
                            done = (u16)(done + 1); delays[i] = 240;
                            if (local == player) {
                                arg->target = enemy->id + 4;
                                t072DESend(arg);
                                if (sub_0800CCCC() == 0 && sub_0800CD34() == 0) sub_0805865C(26);
                            }
                        }
                        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0) {
                            if (gUnk_03003170.curLevel == 4 && sub_0800CDC0() != 0) shade = 0;
                            if ((gUnk_03002344 & 1) == (i & 1)) t072DEDraw(dx,dy,level,animation[i],shade,&sprite.f1C,sprite.f8,sprite.f0);
                        }
                    } else if (delays[i] != 240) delays[i]--;
                }
            } else {
                for (i = 0; i < total; i++) {
                    q = &t072DEPlayers[targets[i]];
                    t072DECoords(q->sprite[0] >> 4,((u32)q->sprite[1] << 20) >> 20,&dx,&dy,48,0);
                    shade = sub_0800BC44(x >> 8,y >> 8,0);
                    if (delays[i] == 0) {
                        if (sub_08065370(&sprite,level,(s32)&animation[i],(s32)&timers[i],0) != 0) {
                            done = (u16)(done + 1); delays[i] = 240;
                            if (local == targets[i]) {
                                arg->target = (u16)q->id;
                                t072DESend(arg);
                                if (sub_0800CCCC() == 0 && sub_0800CD34() == 0) sub_0805865C(26);
                            }
                        }
                        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0 && (gUnk_03002344 & 1) == (i & 1)) t072DEDraw(dx,dy,level,animation[i],shade,&sprite.f1C,sprite.f8,sprite.f0);
                    } else if (delays[i] != 240) delays[i]--;
                }
            }
            if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0 && (gUnk_03002344 & 1) == (player & 1)) sub_08000AF0(23,sprite.fC,2);
            sub_080003F0();
        }
    } else {
        index = (s16)(t072DEDirections[((u8 *)p->sprite)[3] >> 4] * 16);
        px = (x + gUnk_080B9704[index + 64] * 30) >> 8;
        py = (y + gUnk_080B9704[index] * 30) >> 8;
        do {
            t072DECoords((s16)px,(s16)py,&dx,&dy,48,0);
            shade = sub_0800BC44(px,py,0);
            if (sub_08065370(&sprite,level,(s32)&animation[0],(s32)&timers[0],0) != 0) done = (u16)(done + 1);
            if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0 && (gUnk_03002344 & 1) == (player & 1)) t072DEDraw(dx,dy,level,animation[0],shade,&sprite.f1C,sprite.f8,sprite.f0);
            sub_080003F0();
        } while (done == 0);
    }
    while (*ready == 0) sub_080003F0();
    if (player <= 3 && player != local) p->counter++;
    t072DEFlags[player] &= ~(1 << bit);
}

#else
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806DE94);
#endif
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806E7D4);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806F0CC);
struct T06FE1CPlayer { u8 pad0[0x24]; u16 x24, x26; u8 pad28[0x8e]; u16 wait; u8 padB8[10]; s16 resource; u8 padC4[0x88]; };
struct T06FE1CArgs { u32 player, bit, f8, value, f10, level; };
extern struct T06FE1CPlayer t06FE1CPlayers[] asm("gUnk_03003CE0");
extern u32 t06FE1CFlags[] asm("gUnk_030063E0");
extern u16 gUnk_084EC1C0[];
void sub_0806FE1C(struct T06FE1CArgs *arg)
{
    u8 buf[0x10];
    u32 local;
    u32 player;
    u32 bit;
    u16 level;
    struct T06FE1CPlayer *p;
    struct T06FE1CPlayer *costPlayer;
    u16 cost;
    u16 *wait;
    u16 *e;
    local = sub_080020F4();
    player = arg->player;
    bit = arg->bit;
    level = arg->level;
    if (player <= 3)
        p = &t06FE1CPlayers[player];
    if (local == player) {
        costPlayer = &t06FE1CPlayers[sub_080020F4()];
        cost = sub_0806898C(arg->value, arg->level) - 1;
        costPlayer->resource -= cost;
        if (costPlayer->resource < 0)
            costPlayer->resource = 0;
    }
    while (p->wait == 0)
        sub_080003F0();
    if (local == player) {
        if (sub_0800CCCC() == 0 && sub_0800CD34() == 0)
            sub_0805865C(0x2D);
        e = (u16 *)sub_0801E164(&t06FE1CPlayers[player], 4);
        if (e != NULL) {
            u16 z = 0;
            e[1] = player;
            e[0] = (level * 5 + 15) * 60;
            e[2] = 4;
            e[3] = gUnk_084EC1C0[level] - 1;
            p->x24 = z;
            p->x26 = z;
        }
    }
    t06FE1CFlags[player] &= ~(1 << bit);
}
#ifdef NONMATCHING
#ifndef M2C_FIELD
#define M2C_FIELD(p,t,o) (*(t)((u8 *)(p)+(o)))
#endif
u16 t6f_Sqrt(s32) asm("Sqrt");
u8 t6f_sub_080003F0() asm("sub_080003F0");
u8 t6f_sub_08000AF0(s32, s32, s32) asm("sub_08000AF0");
s32 t6f_sub_080020F4() asm("sub_080020F4");
u32 t6f_sub_08002164() asm("sub_08002164");
u8 t6f_sub_0800AE50(s32, s32, s32) asm("sub_0800AE50");
s32 t6f_sub_0800BA6C() asm("sub_0800BA6C");
void t6f_sub_0800BC08() asm("sub_0800BC08");
u8 t6f_sub_0800BC44(s32, s32, s32) asm("sub_0800BC44");
s32 t6f_sub_0800CC98() asm("sub_0800CC98");
u8 *t6f_sub_0800CCCC() asm("sub_0800CCCC");
s32 t6f_sub_0800CD34() asm("sub_0800CD34");
s32 t6f_sub_0800CD8C() asm("sub_0800CD8C");
s32 t6f_sub_0800CDC0() asm("sub_0800CDC0");
s32 t6f_sub_0800CF10() asm("sub_0800CF10");
u8 *t6f_sub_0800D11C() asm("sub_0800D11C");
s32 t6f_sub_0801DF8C() asm("sub_0801DF8C");
u8 t6f_sub_08029A7C(u16, s16, u32) asm("sub_08029A7C");
u8 t6f_sub_08029B98(u16, u16, s16, u32, s32, s32) asm("sub_08029B98");
s32 t6f_sub_08056E90() asm("sub_08056E90");
u8 t6f_sub_0805865C(s32) asm("sub_0805865C");
s32 t6f_sub_08058DB0() asm("sub_08058DB0");
s32 t6f_sub_0806898C(s32, s32) asm("sub_0806898C");
s16 t6f_sub_08068F9C(void *, s32) asm("sub_08068F9C");
u16 t6f_sub_08073EE8(s32, s32) asm("sub_08073EE8");
u16 t6f_sub_0807414C(void *, s32, s32) asm("sub_0807414C");
u16 t6f_sub_08074398(u16, s32, s32, u32, s32) asm("sub_08074398");
extern s32 t6f_gUnk_03002344 asm("gUnk_03002344");
extern u8 t6f_gUnk_03003170 asm("gUnk_03003170");
extern u8 t6f_gUnk_03003CE0 asm("gUnk_03003CE0");
extern u8 t6f_gUnk_03003E28 asm("gUnk_03003E28");
extern void *t6f_gUnk_030056F4 asm("gUnk_030056F4");
extern s32 t6f_gUnk_030056FC asm("gUnk_030056FC");
extern void *t6f_gUnk_03005CF4 asm("gUnk_03005CF4");
extern u8 t6f_gUnk_030063E0 asm("gUnk_030063E0");
extern u8 t6f_gUnk_03006430 asm("gUnk_03006430");
extern u8 t6f_gUnk_080B9704 asm("gUnk_080B9704");
extern u8 t6f_gUnk_084790B4 asm("gUnk_084790B4");
extern u8 t6f_gUnk_0847AD0A asm("gUnk_0847AD0A");
extern u8 t6f_gUnk_084EBF1C asm("gUnk_084EBF1C");
extern void t6f_sub_08065158() asm("sub_08065158");
extern u16 t6f_sub_08065370() asm("sub_08065370");
extern void t6f_sub_08007870() asm("sub_08007870");


void sub_0806FF1C(void *arg0) {

    u8 anim[0x34];
    s16 sp4A;
    s16 sp44;
    s16 sp46;
    s16 sp48;
    void *sp4C;
    void *sp50;
    void *sp54;
    void *sp58;
    u8 *sp5C;
    u32 sp60;
    u32 sp64;
    s32 sp68;
    u32 sp6C;
    s32 sp70;
    u32 sp74;
    u32 sp78;
    s32 sp7C;
    s32 sp80;
    s32 sp84;
    u32 sp88;
    s32 sp8C;
    s32 sp90;
    s32 *sp94;
    s16 *sp98;
    s32 sp9C;
    s32 spA0;
    s32 spA4;
    void **spA8;
    s32 *spAC;
    s32 spB0;
    s32 spB4;
    u8 *spB8;
    u8 *temp_r0_13;
    u8 *temp_r0_17;
    u8 *temp_r0_7;
    s16 *var_r6;
    s16 temp_r0_10;
    s16 temp_r0_11;
    s16 temp_r0_18;
    s16 temp_r0_19;
    s16 temp_r0_20;
    s16 temp_r0_9;
    s16 temp_r1_14;
    s16 temp_r1_16;
    s16 temp_r1_5;
    s16 temp_r1_7;
    s16 temp_r1_9;
    s16 temp_r2_11;
    s16 temp_r2_7;
    s16 temp_r4_6;
    s16 var_r0;
    s16 var_r0_4;
    s16 var_r0_5;
    s16 var_r0_6;
    s16 var_r0_7;
    s16 var_r1_2;
    s16 var_r1_3;
    s16 var_r1_4;
    s16 var_r1_5;
    s32 *temp_r2_3;
    s32 *temp_r4;
    s32 *var_r2;
    s32 temp_r0_16;
    s32 temp_r1_13;
    s32 temp_r1_15;
    s32 temp_r1_8;
    s32 temp_r2_2;
    s32 temp_r3_2;
    s32 temp_r4_13;
    s32 temp_r4_3;
    s32 temp_r4_7;
    s32 temp_r4_9;
    s32 temp_r5;
    s32 temp_r5_3;
    s32 temp_r5_5;
    s32 temp_r9;
    s32 temp_sl;
    s32 var_r0_9;
    s32 var_r1;
    s32 var_r1_6;
    s32 var_r7;
    s32 var_r7_2;
    s32 var_sl;
    u8 *temp_r0_4;
    u16 temp_r0;
    u16 temp_r0_14;
    u16 temp_r0_15;
    u16 temp_r0_2;
    u16 temp_r0_5;
    u16 temp_r0_6;
    u16 temp_r0_8;
    u16 temp_r1_10;
    u16 temp_r1_17;
    u32 temp_r1_3;
    u16 temp_r4_10;
    u16 temp_r4_11;
    u16 temp_r4_12;
    u16 temp_r5_4;
    u16 temp_r6;
    u16 var_r0_10;
    u16 var_r0_2;
    u16 var_r0_3;
    u16 var_r5;
    u16 var_r5_2;
    u16 var_r5_3;
    u16 var_r5_4;
    u16 var_r5_5;
    u32 temp_r0_12;
    u32 temp_r0_3;
    u32 temp_r1;
    u32 var_r0_8;
    u32 var_r2_2;
    u32 var_r2_3;
    u32 var_r3;
    u32 var_r9;
    u8 *temp_r1_12;
    u8 *temp_r1_4;
    u8 *temp_r2_12;
    u8 *temp_r2_5;
    u8 *temp_r2_8;
    u8 *temp_r3;
    u8 *temp_r4_5;
    u8 temp_r1_11;
    u8 temp_r2;
    u8 temp_r2_10;
    u8 temp_r2_4;
    u8 temp_r2_6;
    u8 temp_r5_2;
    u8 var_r4;
    u8 var_r4_2;
    u8 var_r4_3;
    void *temp_r1_2;
    void *temp_r1_6;
    void *temp_r2_9;
    void *temp_r3_3;
    void *temp_r4_2;
    void *temp_r4_4;
    void *temp_r4_8;


    sp4C = (void *)(arg0);
    sp7C = t6f_sub_080020F4();
    sp84 = M2C_FIELD(arg0, s32 *, 4);
    temp_r1 = M2C_FIELD(sp4C, u32 *, 0);
    temp_r3 = (u8 *)(temp_r1 + &t6f_gUnk_03006430);
    temp_r2 = *temp_r3;
    if (temp_r2 == 0) {
        goto block_2;
    }
    var_r2 = (s32 *)((temp_r1 * 4) + &t6f_gUnk_030063E0);
    var_r1 = 1 << sp84;
    goto block_307;
block_2:
    *temp_r3 = 1;
    sp60 = (u32) M2C_FIELD(sp4C, u16 *, 8);
    temp_r6 = M2C_FIELD(sp4C, u16 *, 0x14);
    sp68 = (s32) temp_r6;
    sp64 = (u32) temp_r6;
    sp44 = (s16) temp_r2;
    sp46 = (s16) temp_r2;
    if (temp_r1 > 3U) {
        goto block_4;
    }
    sp54 = (void *)((0x14C * temp_r1) + &t6f_gUnk_03003CE0);
    spB0 = temp_r1 * 4;
    goto block_12;
block_4:
    temp_r1_2 = (void *)(t6f_gUnk_030056F4 + ((temp_r1 * 0x2E0) + 0xFFFFF480));
    sp58 = (void *)(temp_r1_2);
    temp_r2_2 = temp_r1 * 4;
    spB0 = temp_r2_2;
    if ((u32) M2C_FIELD(temp_r1_2, u16 *, 0x6A) >= (u32) M2C_FIELD(temp_r1_2, u8 *, 0x22B)) {
        goto block_12;
    }
    temp_r4 = (s32 *)(temp_r2_2 + &t6f_gUnk_030063E0);
loop_6:
    if (t6f_sub_08056E90() != 0) {
        goto block_10;
    }
    if (t6f_sub_0800BA6C() == 0) {
        goto block_10;
    }
    temp_r0 = M2C_FIELD(sp58, u16 *, 0xC);
    if (temp_r0 == 0xA) {
        goto block_10;
    }
    if (temp_r0 != 0xB) {
        goto block_11;
    }
block_10:
    *temp_r4 &= ~(1 << sp84);
    *temp_r3 = 0;
    return;
block_11:
    t6f_sub_080003F0();
    if ((u32) M2C_FIELD(sp58, u16 *, 0x6A) < (u32) M2C_FIELD(sp58, u8 *, 0x22B)) {
        goto loop_6;
    }
block_12:
    if (sp7C == temp_r1) {
        goto block_16;
    }
    if (temp_r1 <= 3U) {
        goto block_19;
    }
    temp_r0_2 = M2C_FIELD(sp58, u16 *, 0x5E) - *(s16 *)((sp64 * 2) + (M2C_FIELD(sp4C, s32 *, 0xC) * 0x18) + (&t6f_gUnk_084EBF1C + 6));
    M2C_FIELD(sp58, u16 *, 0x5E) = temp_r0_2;
    if ((s32) (temp_r0_2 << 0x10) >= 0) {
        goto block_18;
    }
    temp_r2_3 = (s32 *)(spB0 + &t6f_gUnk_030063E0);
    *temp_r2_3 &= ~(1 << sp84);
    *(&t6f_gUnk_03006430 + temp_r1) = 0;
    M2C_FIELD(sp58, u16 *, 0x5E) = 0U;
    return;
block_16:
    temp_r4_2 = (void *)((0x14C * t6f_sub_080020F4()) + &t6f_gUnk_03003CE0);
    temp_r1_3 = M2C_FIELD(temp_r4_2, u16 *, 0xC2) - (u16) (t6f_sub_0806898C(M2C_FIELD(sp4C, s32 *, 0xC), M2C_FIELD(sp4C, s32 *, 0x14)) - 1);
    M2C_FIELD(temp_r4_2, u16 *, 0xC2) = temp_r1_3;
    if ((s32) (temp_r1_3 << 0x10) >= 0) {
        goto block_18;
    }
    M2C_FIELD(temp_r4_2, u16 *, 0xC2) = 0U;
block_18:
    if (temp_r1 > 3U) {
        goto block_20;
    }
block_19:
    var_r0 = (s16) ((u8) M2C_FIELD(M2C_FIELD(sp54, u8 **, 0x148), u8 *, 3) >> 4);
    sp78 = (u32) var_r0;
    goto block_21;
block_20:
    sp78 = (u32) M2C_FIELD(sp58, u16 *, 8);
    var_r0 = (s16) M2C_FIELD(sp58, u16 *, 8);
block_21:
    sp70 = (s32) *(u16 *)((var_r0 * 2) + &t6f_gUnk_0847AD0A);
    if (sp7C == temp_r1) {
        goto block_23;
    }
    if (temp_r1 <= 3U) {
        goto block_26;
    }
block_23:
    if (t6f_sub_0800CCCC() != NULL) {
        goto block_26;
    }
    if (t6f_sub_0800CD34() != 0) {
        goto block_26;
    }
    t6f_sub_0805865C(M2C_FIELD(sp4C, s32 *, 0x14) + 0x15C);
block_26:
    t6f_sub_08065158(anim, 0x500A5U, 8U, -1, (u32)(NULL));
    if (sp64 > 7U) {
        goto block_34;
    }
    switch (sp64) {
case 0:
case 1:
case 2:
    sp64 = 0;
    goto block_34;
case 3:
    sp64 = 1;
    goto block_34;
case 4:
    sp64 = 2;
    goto block_34;
case 5:
    sp64 = 3;
    goto block_34;
case 6:
    sp64 = 4;
    goto block_34;
case 7:
    sp64 = 5;
}
block_34:
    sp6C = sp64;
    sp68 = (s32) (u16) (sp68 + 2);
    M2C_FIELD(anim, s8 *, 0x1C) = 7;
    M2C_FIELD(anim, s8 *, 0x1D) = 8;
    sp44 = 0;
    sp46 = 0;
    if (sp60 > 3U) {
        goto block_42;
    }
    temp_r0_3 = t6f_sub_08002164();
    var_r5 = 0;
    var_r3 = sp64 << 0x13;
    if (temp_r0_3 <= 0U) {
        goto block_41;
    }
    sp5C = (u8 *)(&t6f_gUnk_03003CE0);
    if (*(u16 *)&t6f_gUnk_03003CE0 == sp60) {
        goto block_40;
    }
loop_38:
    var_r5 += 1;
    if ((u32) var_r5 >= temp_r0_3) {
        goto block_41;
    }
    temp_r0_4 = (u8 *)((0x14C * var_r5) + &t6f_gUnk_03003CE0);
    sp5C = (u8 *)(temp_r0_4);
    if (*(u16 *)temp_r0_4 != sp60) {
        goto loop_38;
    }
block_40:
    if ((u32) var_r5 < temp_r0_3) {
        goto block_50;
    }
block_41:
    sp60 = 0xFFFF;
    goto block_50;
block_42:
    var_r5_2 = 0;
    sp50 = (void *)(t6f_gUnk_030056F4);
    var_r3 = sp64 << 0x13;
    if (!(t6f_gUnk_030056FC & 1)) {
        goto loop_44;
    }
    var_r0_2 = M2C_FIELD(t6f_gUnk_030056F4, u16 *, 2);
    goto block_47;
loop_44:
    var_r5_2 += 1;
    if ((u32) var_r5_2 > 4U) {
        goto block_49;
    }
    sp50 = (void *)(t6f_gUnk_030056F4 + (var_r5_2 * 0x2E0));
    if (!(t6f_gUnk_030056FC & (1 << var_r5_2))) {
        goto loop_44;
    }
    var_r0_2 = M2C_FIELD(sp50, u16 *, 2);
block_47:
    if (var_r0_2 != sp60) {
        goto loop_44;
    }
    if ((u32) var_r5_2 <= 4U) {
        goto block_50;
    }
block_49:
    sp60 = 0xFFFF;
block_50:
    sp64 = var_r3 >> 0x10;
loop_51:
    sp8C = temp_r1 & 1;
    temp_r3_2 = 0x14C * temp_r1;
    sp90 = temp_r3_2;
    sp94 = (s32 *)(temp_r3_2 + (&t6f_gUnk_03003E28 + 0xFFFFFEE8));
loop_52:
    if (temp_r1 != sp7C) {
        goto block_58;
    }
    if (t6f_sub_08058DB0() != 0) {
        goto block_306;
    }
    if (t6f_sub_0801DF8C() != 0) {
        goto block_306;
    }
    temp_r0_5 = M2C_FIELD(sp54, u16 *, 0x20);
    if (temp_r0_5 == 0xB) {
        goto block_306;
    }
    if (temp_r0_5 == 0xC) {
        goto block_306;
    }
    if (t6f_sub_0800D11C() != NULL) {
        goto block_306;
    }
block_58:
    if (temp_r1 > 3U) {
        goto block_64;
    }
    temp_r1_4 = (u8 *)(M2C_FIELD(sp54, u8 **, 0x148));
    var_sl = ((u16) M2C_FIELD(temp_r1_4, u16 *, 0) >> 4) << 8;
    var_r9 = (u32) (M2C_FIELD(temp_r1_4, u16 *, 2) << 0x14) >> 0xC;
    if (temp_r1 != sp7C) {
        goto block_62;
    }
    if ((t6f_gUnk_03002344 & 1) != sp8C) {
        goto block_71;
    }
    var_r0_3 = t6f_sub_08073EE8(0x20, 0x64);
    goto block_69;
block_62:
    if ((t6f_gUnk_03002344 & 1) != sp8C) {
        goto block_71;
    }
    var_r0_3 = t6f_sub_0807414C(sp90 + &t6f_gUnk_03003CE0, 0x20, 0x64);
    goto block_69;
block_64:
    var_sl = M2C_FIELD(sp58, s32 *, 0x14);
    var_r9 = M2C_FIELD(sp58, u32 *, 0x18);
    if (sp60 > 3U) {
        goto block_68;
    }
    if (((u32) (M2C_FIELD(*(void * *)((0x14C * sp60) + &t6f_gUnk_03003E28), u8 *, 4) << 0x1A) >> 0x1A) & 0x20) {
        goto block_67;
    }
    goto block_91;
block_67:
    goto block_71;
block_68:
    var_r0_3 = t6f_sub_08074398((u16) (M2C_FIELD(sp58, u16 *, 0) + 4), 0xFF, var_sl, var_r9, 100);
block_69:
    temp_r0_6 = var_r0_3;
    sp60 = (u32) temp_r0_6;
    if (temp_r0_6 == 0xFF) {
        goto block_71;
    }
    goto block_91;
block_71:
    temp_r1_5 = (s16) sp74;
    temp_sl = var_sl + (*(s16 *)(((temp_r1_5 + 0x40) * 2) + &t6f_gUnk_080B9704) * 0x10);
    temp_r9 = var_r9 + ((*(s16 *)((temp_r1_5 * 2) + &t6f_gUnk_080B9704) * 8) + 0xFFFFF800);
    sp74 = (u32) (0xFF0000 & ((temp_r1_5 + 8) << 0x10)) >> 0x10;
    if (4 & M2C_FIELD(t6f_gUnk_03005CF4, u16 *, 4)) {
        goto block_82;
    }
    t6f_sub_08065370(anim, sp64, &sp44, &sp46, (u32)((u8 *)1));
    if (t6f_sub_0800CC98() != 0) {
        goto block_82;
    }
    if (t6f_sub_0800CD8C() != 0) {
        goto block_82;
    }
    temp_r0_7 = (u8 *)(t6f_sub_0800CCCC());
    if (temp_r0_7 != NULL) {
        goto block_82;
    }
    if (t6f_gUnk_03002344 & 1) {
        goto block_77;
    }
    t6f_sub_08000AF0(0x17, (*(u32 *)(anim + 0xC)), 2);
block_77:
    temp_r5 = temp_sl >> 8;
    temp_r4_3 = temp_r9 >> 8;
    t6f_sub_0800BC08((s16) temp_r5, (s16) temp_r4_3, &sp48, &sp4A, (u32)((u8 *)0x30), (temp_r0_7));
    var_r4 = t6f_sub_0800BC44(temp_r5, temp_r4_3, 0);
    if (M2C_FIELD(&t6f_gUnk_03003170, u16 *, 0x8C) != 4) {
        goto block_80;
    }
    if (t6f_sub_0800CDC0() == 0) {
        goto block_80;
    }
    var_r4 = 0;
block_80:
    if ((t6f_gUnk_03002344 & 1) != sp8C) {
        goto block_82;
    }
    t6f_sub_08007870(sp48, sp4A, sp64, (u16) sp44, (u32)(var_r4), ((anim + 0x1C)), ((*(u32 *)(anim + 8))), ((*(u32 *)anim)));
block_82:
    t6f_sub_080003F0();
    if (t6f_sub_08056E90() != 0) {
        goto block_306;
    }
    if (temp_r1 > 3U) {
        goto block_85;
    }
    if (*sp94 & 2) {
        goto block_306;
    }
block_85:
    if (((u32) (*M2C_FIELD(sp54, u8 **, 0x148) << 0x1C) >> 0x1C) == 0xC) {
        goto block_306;
    }
    if (t6f_sub_08058DB0() != 0) {
        goto block_306;
    }
    if (*sp94 & 0x2400) {
        goto block_306;
    }
    if (t6f_sub_0800CF10() != 0) {
        goto block_306;
    }
    if (t6f_sub_0800D11C() != NULL) {
        goto block_306;
    }
    goto loop_52;
block_91:
    if (sp60 > 3U) {
        goto block_94;
    }
    sp5C = (u8 *)((0x14C * sp60) + &t6f_gUnk_03003CE0);
    goto block_98;
block_93:
    sp50 = (void *)(temp_r1_6);
    goto block_98;
block_94:
    var_r5_3 = 0;
loop_95:
    if (!((1 << var_r5_3) & t6f_gUnk_030056FC)) {
        goto block_97;
    }
    temp_r1_6 = (void *)((var_r5_3 * 0x2E0) + t6f_gUnk_030056F4);
    if (M2C_FIELD(temp_r1_6, u16 *, 2) == sp60) {
        goto block_93;
    }
block_97:
    var_r5_3 += 1;
    if ((u32) var_r5_3 <= 4U) {
        goto loop_95;
    }
block_98:
    sp88 = 0;
    sp98 = (s16 *)(&sp48);
loop_99:
    if (temp_r1 != sp7C) {
        goto block_105;
    }
    if (t6f_sub_08058DB0() != 0) {
        goto block_306;
    }
    if (t6f_sub_0801DF8C() != 0) {
        goto block_306;
    }
    temp_r0_8 = M2C_FIELD(sp54, u16 *, 0x20);
    if (temp_r0_8 == 0xB) {
        goto block_306;
    }
    if (temp_r0_8 == 0xC) {
        goto block_306;
    }
    if (t6f_sub_0800D11C() != NULL) {
        goto block_306;
    }
block_105:
    var_r7 = 0;
    if (sp60 == 0xFF) {
        goto block_132;
    }
    if (sp60 <= 3U) {
        goto block_118;
    }
    var_r5_4 = 0;
loop_108:
    if (!((1 << var_r5_4) & t6f_gUnk_030056FC)) {
        goto block_117;
    }
    temp_r4_4 = (void *)(t6f_gUnk_030056F4 + (var_r5_4 * 0x2E0));
    if (M2C_FIELD(temp_r4_4, u8 *, 0x1DC) == 0) {
        goto block_117;
    }
    sp48 = (s16) ((s32) (M2C_FIELD(temp_r4_4, s32 *, 0x14) - var_sl) >> 8);
    sp4A = (s16) ((s32) (M2C_FIELD(temp_r4_4, s32 *, 0x18) - var_r9) >> 8);
    var_r0_4 = sp48;
    if ((s32) var_r0_4 >= 0) {
        goto block_112;
    }
    var_r0_4 = 0 - var_r0_4;
block_112:
    if ((s32) var_r0_4 > 7) {
        goto block_117;
    }
    var_r1_2 = sp4A;
    if ((s32) var_r1_2 >= 0) {
        goto block_115;
    }
    var_r1_2 = 0 - var_r1_2;
block_115:
    if ((s32) var_r1_2 > 7) {
        goto block_117;
    }
    var_r7 = 1;
block_117:
    var_r5_4 += 1;
    if ((u32) var_r5_4 <= 4U) {
        goto loop_108;
    }
block_118:
    if (sp60 == 0xFF) {
        goto block_132;
    }
    if (var_r7 == 0) {
        goto block_121;
    }
    goto block_172;
block_121:
    if (sp60 > 3U) {
        goto block_132;
    }
    temp_r2_4 = M2C_FIELD(sp5C, u8 *, 0x68);
    if (temp_r2_4 == M2C_FIELD(sp54, u8 *, 0x68)) {
        goto block_132;
    }
    temp_r4_5 = (u8 *)(M2C_FIELD(sp5C, u8 **, 0x148));
    if (((u32) (M2C_FIELD(temp_r4_5, u8 *, 0) << 0x1C) >> 0x1C) == 0xE) {
        goto block_132;
    }
    if (temp_r2_4 == 0) {
        goto block_132;
    }
    *sp98 = (s16) (((u16) M2C_FIELD(temp_r4_5, u16 *, 0) >> 4) - (var_sl >> 8));
    sp4A = (s16) (((u32) (M2C_FIELD(temp_r4_5, u16 *, 2) << 0x14) >> 0x14) - ((s32) var_r9 >> 8));
    var_r0_5 = *sp98;
    if ((s32) var_r0_5 >= 0) {
        goto block_127;
    }
    var_r0_5 = 0 - var_r0_5;
block_127:
    if ((s32) var_r0_5 > 0xF) {
        goto block_132;
    }
    var_r1_3 = sp4A;
    if ((s32) var_r1_3 >= 0) {
        goto block_130;
    }
    var_r1_3 = 0 - var_r1_3;
block_130:
    if ((s32) var_r1_3 > 0xF) {
        goto block_132;
    }
    var_r7 = 1;
block_132:
    if (var_r7 == 0) {
        goto block_134;
    }
    goto block_172;
block_134:
    if (t6f_sub_08056E90() != 0) {
        goto block_306;
    }
    if (temp_r1 > 3U) {
        goto block_137;
    }
    if (*(u32 *)((0x14C * temp_r1) + (&t6f_gUnk_03003CE0 + 0x30)) & 2) {
        goto block_306;
    }
block_137:
    if (((u32) (*M2C_FIELD(sp54, u8 **, 0x148) << 0x1C) >> 0x1C) == 0xC) {
        goto block_306;
    }
    if (t6f_sub_08058DB0() != 0) {
        goto block_306;
    }
    if (*(u32 *)((0x14C * temp_r1) + (&t6f_gUnk_03003CE0 + 0x30)) & 0x2400) {
        goto block_306;
    }
    if (t6f_sub_0800CF10() != 0) {
        goto block_306;
    }
    if (t6f_sub_0800D11C() != NULL) {
        goto block_306;
    }
    if (sp60 > 3U) {
        goto block_144;
    }
    temp_r2_5 = (u8 *)(M2C_FIELD(sp5C, u8 **, 0x148));
    *sp98 = (s16) (((u16) M2C_FIELD(temp_r2_5, u16 *, 0) >> 4) - (var_sl >> 8));
    sp4A = (s16) (((u32) (M2C_FIELD(temp_r2_5, u16 *, 2) << 0x14) >> 0x14) - ((s32) var_r9 >> 8));
    var_r6 = (s16 *)(&sp4A);
    goto block_145;
block_144:
    *sp98 = (s16) ((s32) (M2C_FIELD(sp50, s32 *, 0x14) - var_sl) >> 8);
    sp4A = (s16) ((s32) (M2C_FIELD(sp50, s32 *, 0x18) - var_r9) >> 8);
    var_r6 = (s16 *)(&sp4A);
block_145:
    temp_r0_9 = sp48;
    temp_r1_7 = *var_r6;
    if ((u32) t6f_Sqrt((temp_r0_9 * temp_r0_9) + (temp_r1_7 * temp_r1_7)) > 7U) {
        goto block_147;
    }
    goto block_172;
block_147:
    var_r2_2 = (u32) (ArcTan2(sp48, *var_r6) << 0x10) >> 0x18;
    temp_r1_8 = var_r2_2 - (s16) sp70;
    if (temp_r1_8 <= 0x80) {
        goto block_149;
    }
    var_r2_2 = (u32) (u16) (var_r2_2 + 0xFFFFFF00);
    goto block_151;
block_149:
    if (temp_r1_8 >= -0x80) {
        goto block_151;
    }
    var_r2_2 |= 0x100;
block_151:
    temp_r1_9 = (s16) sp70;
    temp_r1_10 = temp_r1_9 + (s16) ((s16) var_r2_2 - temp_r1_9);
    sp70 = (s32) temp_r1_10;
    temp_r0_10 = (s16) temp_r1_10;
    if ((s32) temp_r0_10 >= 0) {
        goto block_153;
    }
    sp70 = (s32) (u16) (temp_r0_10 + 0x100);
block_153:
    temp_r0_11 = (s16) sp70;
    if ((s32) temp_r0_11 <= 0x100) {
        goto block_155;
    }
    sp70 = (s32) (u16) (temp_r0_11 + 0xFFFFFF00);
block_155:
    temp_r5_2 = (u8) sp70;
    sp70 = (s32) temp_r5_2;
    temp_r4_6 = (s16) temp_r5_2;
    sp78 = (u32) *(((s32) (temp_r5_2 << 0x10) >> 0x14) + &t6f_gUnk_084790B4);
    temp_r1_11 = t6f_sub_0800AE50(var_sl, (s32) var_r9, 0);
    if (!(0xF & temp_r1_11)) {
        goto block_157;
    }
    if (!(0x10 & temp_r1_11)) {
        goto block_158;
    }
block_157:
    var_sl += *(s16 *)(((temp_r4_6 + 0x40) * 2) + &t6f_gUnk_080B9704) * 3;
    var_r9 += *(s16 *)((temp_r4_6 * 2) + &t6f_gUnk_080B9704) * 3;
    goto block_160;
block_158:
    temp_r0_12 = sp88;
    sp88 = temp_r0_12 + 1;
    if (temp_r0_12 <= 0x78U) {
        goto block_160;
    }
    goto block_245;
block_160:
    temp_r5_3 = var_sl >> 8;
    temp_r4_7 = (s32) var_r9 >> 8;
    t6f_sub_0800BC08((s16) temp_r5_3, (s16) temp_r4_7, &sp48, var_r6, (u32)((u8 *)0x30), (NULL));
    var_r4_2 = t6f_sub_0800BC44(temp_r5_3, temp_r4_7, 0);
    t6f_sub_08065370(anim, (u32) (u16) (sp64 + *(((s32) (sp70 << 0x10) >> 0x14) + &t6f_gUnk_084790B4)), &sp44, &sp46, (u32)((u8 *)1));
    if (4 & M2C_FIELD(t6f_gUnk_03005CF4, u16 *, 4)) {
        goto block_171;
    }
    if (t6f_sub_0800CC98() != 0) {
        goto block_171;
    }
    if (t6f_sub_0800CD8C() != 0) {
        goto block_171;
    }
    if (t6f_sub_0800CCCC() != NULL) {
        goto block_171;
    }
    if (t6f_gUnk_03002344 & 1) {
        goto block_166;
    }
    t6f_sub_08000AF0(0x17, (*(u32 *)(anim + 0xC)), 2);
block_166:
    if (M2C_FIELD(&t6f_gUnk_03003170, u16 *, 0x8C) != 4) {
        goto block_169;
    }
    if (t6f_sub_0800CDC0() == 0) {
        goto block_169;
    }
    var_r4_2 = 0;
block_169:
    if ((t6f_gUnk_03002344 & 1) != (temp_r1 & 1)) {
        goto block_171;
    }
    t6f_sub_08007870(sp48, *var_r6, (u32) (u16) (sp64 + sp78), (u16) sp44, (u32)(var_r4_2), ((anim + 0x1C)), ((*(u32 *)(anim + 8))), ((*(u32 *)anim)));
block_171:
    t6f_sub_080003F0();
    goto loop_99;
block_172:
    sp80 = 0x46;
    if ((s32) (s16) sp78 > 3) {
        goto block_174;
    }
    sp80 = 0x3F;
block_174:
    spA0 = temp_r1 & 1;
    spA4 = 1 << temp_r1;
    sp9C = var_sl >> 8;
loop_175:
    var_r7_2 = 0;
    if (sp60 == 0xFFFF) {
        goto block_188;
    }
    if (sp60 <= 3U) {
        goto block_188;
    }
    var_r5_5 = 0;
loop_178:
    if (!((1 << var_r5_5) & t6f_gUnk_030056FC)) {
        goto block_187;
    }
    temp_r4_8 = (void *)(t6f_gUnk_030056F4 + (var_r5_5 * 0x2E0));
    if (M2C_FIELD(temp_r4_8, u8 *, 0x1DC) == 0) {
        goto block_187;
    }
    sp48 = (s16) ((s32) (M2C_FIELD(temp_r4_8, s32 *, 0x14) - var_sl) >> 8);
    sp4A = (s16) ((s32) (M2C_FIELD(temp_r4_8, s32 *, 0x18) - var_r9) >> 8);
    var_r0_6 = sp48;
    if ((s32) var_r0_6 >= 0) {
        goto block_182;
    }
    var_r0_6 = 0 - var_r0_6;
block_182:
    if ((s32) var_r0_6 > 0x1F) {
        goto block_187;
    }
    var_r1_4 = sp4A;
    if ((s32) var_r1_4 >= 0) {
        goto block_185;
    }
    var_r1_4 = 0 - var_r1_4;
block_185:
    if ((s32) var_r1_4 > 0x1F) {
        goto block_187;
    }
    var_r7_2 = 1;
block_187:
    var_r5_5 += 1;
    if ((u32) var_r5_5 <= 4U) {
        goto loop_178;
    }
block_188:
    if (sp60 == 0xFF) {
        goto block_201;
    }
    if (var_r7_2 != 0) {
        goto block_203;
    }
    if (sp60 > 3U) {
        goto block_201;
    }
    temp_r2_6 = M2C_FIELD(sp5C, u8 *, 0x68);
    if (temp_r2_6 == M2C_FIELD(sp54, u8 *, 0x68)) {
        goto block_201;
    }
    temp_r1_12 = (u8 *)(M2C_FIELD(sp5C, u8 **, 0x148));
    if (((u32) (M2C_FIELD(temp_r1_12, u8 *, 0) << 0x1C) >> 0x1C) == 0xE) {
        goto block_201;
    }
    if (temp_r2_6 == 0) {
        goto block_201;
    }
    sp48 = ((u16) M2C_FIELD(temp_r1_12, u16 *, 0) >> 4) - sp9C;
    sp4A = (s16) (((u32) (M2C_FIELD(temp_r1_12, u16 *, 2) << 0x14) >> 0x14) - ((s32) var_r9 >> 8));
    var_r0_7 = sp48;
    if ((s32) var_r0_7 >= 0) {
        goto block_196;
    }
    var_r0_7 = 0 - var_r0_7;
block_196:
    if ((s32) var_r0_7 > 0xF) {
        goto block_201;
    }
    var_r1_5 = sp4A;
    if ((s32) var_r1_5 >= 0) {
        goto block_199;
    }
    var_r1_5 = 0 - var_r1_5;
block_199:
    if ((s32) var_r1_5 > 0xF) {
        goto block_201;
    }
    var_r7_2 = 1;
block_201:
    if (var_r7_2 != 0) {
        goto block_203;
    }
    goto block_245;
block_203:
    temp_r4_9 = (s32) var_r9 >> 8;
    t6f_sub_0800BC08((s16) sp9C, (s16) temp_r4_9, &sp48, &sp4A, (u32)((u8 *)0x30), (NULL));
    t6f_sub_0800BC44(sp9C, temp_r4_9, 0);
    temp_r4_10 = sp6C + sp80;
    temp_r5_4 = t6f_sub_08065370(anim, (u32) temp_r4_10, &sp44, &sp46, (u32)(NULL));
    if (4 & M2C_FIELD(t6f_gUnk_03005CF4, u16 *, 4)) {
        goto block_213;
    }
    if (t6f_sub_0800CC98() != 0) {
        goto block_213;
    }
    if (t6f_sub_0800CD8C() != 0) {
        goto block_213;
    }
    if (t6f_sub_0800CCCC() != NULL) {
        goto block_213;
    }
    if (t6f_gUnk_03002344 & 1) {
        goto block_209;
    }
    t6f_sub_08000AF0(0x17, (*(u32 *)(anim + 0xC)), 2);
block_209:
    if (M2C_FIELD(&t6f_gUnk_03003170, u16 *, 0x8C) != 4) {
        goto block_211;
    }
    t6f_sub_0800CDC0();
block_211:
    if ((t6f_gUnk_03002344 & 1) != spA0) {
        goto block_213;
    }
    t6f_sub_08007870(sp48, sp4A, (u32) temp_r4_10, (u16) sp44, (u32)(NULL), ((anim + 0x1C)), ((*(u32 *)(anim + 8))), ((*(u32 *)anim)));
block_213:
    t6f_sub_080003F0();
    if (t6f_sub_08056E90() == 0) {
        goto block_215;
    }
    goto block_306;
block_215:
    if (temp_r1 > 3U) {
        goto block_218;
    }
    if (!(*(u32 *)((0x14C * temp_r1) + (&t6f_gUnk_03003CE0 + 0x30)) & 2)) {
        goto block_218;
    }
    goto block_306;
block_218:
    if (((u32) (*M2C_FIELD(sp54, u8 **, 0x148) << 0x1C) >> 0x1C) != 0xC) {
        goto block_220;
    }
    goto block_306;
block_220:
    if (t6f_sub_08058DB0() == 0) {
        goto block_222;
    }
    goto block_306;
block_222:
    if (!(*(u32 *)((0x14C * temp_r1) + (&t6f_gUnk_03003CE0 + 0x30)) & 0x2400)) {
        goto block_224;
    }
    goto block_306;
block_224:
    if (t6f_sub_0800CF10() == 0) {
        goto block_226;
    }
    goto block_306;
block_226:
    temp_r0_13 = (u8 *)(t6f_sub_0800D11C());
    if (temp_r0_13 == NULL) {
        goto block_228;
    }
    goto block_306;
block_228:
    if (temp_r5_4 == 0) {
        goto block_237;
    }
    if (sp60 > 3U) {
        goto block_232;
    }
    if (sp60 != sp7C) {
        goto block_234;
    }
    temp_r4_11 = M2C_FIELD(&t6f_gUnk_084EBF1C, u16 *, 0x19A);
    t6f_sub_08029A7C(temp_r4_11, t6f_sub_08068F9C(sp4C, 0), sp64);
    goto block_234;
block_232:
    if (temp_r1 != sp7C) {
        goto block_234;
    }
    temp_r2_7 = t6f_sub_08068F9C(sp4C, 0);
    t6f_sub_08029B98(M2C_FIELD(sp50, u16 *, 0), M2C_FIELD(&t6f_gUnk_084EBF1C, u16 *, 0x19A), temp_r2_7, sp64, 0, 0);
    M2C_FIELD(sp50, u16 *, 0x5A) = (u16) (spA4 | M2C_FIELD(sp50, u16 *, 0x5A));
block_234:
    if (temp_r1 > 3U) {
        goto block_236;
    }
    M2C_FIELD(sp54, s32 *, 0xDC) = (s32) (M2C_FIELD(sp54, s32 *, 0xDC) + 1);
    goto block_237;
block_236:
    M2C_FIELD(sp58, s32 *, 0x50) = (s32) (M2C_FIELD(sp58, s32 *, 0x50) + 1);
block_237:
    if (sp60 > 3U) {
        goto block_239;
    }
    var_r0_8 = (u32) (*M2C_FIELD(sp5C, u8 **, 0x148) << 0x1C) >> 0x1C;
    goto block_240;
block_239:
    var_r0_8 = (u32) M2C_FIELD(sp50, u16 *, 0xC);
block_240:
    if (var_r0_8 == 0xB) {
        goto block_245;
    }
    if (temp_r5_4 != 0) {
        goto block_243;
    }
    goto loop_175;
block_243:
    temp_r0_14 = sp68 - 1;
    sp68 = (s32) temp_r0_14;
    sp46 = 0;
    sp44 = 0;
    if (temp_r0_14 != 0) {
        goto block_245;
    }
    goto block_306;
block_245:
    if (sp68 != 0) {
        goto block_247;
    }
    goto block_306;
block_247:
    if (sp7C == temp_r1) {
        goto block_249;
    }
    if (temp_r1 <= 3U) {
        goto block_252;
    }
block_249:
    if (t6f_sub_0800CCCC() != NULL) {
        goto block_252;
    }
    if (t6f_sub_0800CD34() != 0) {
        goto block_252;
    }
    t6f_sub_0805865C(M2C_FIELD(sp4C, s32 *, 0x14) + 0x15C);
block_252:
    temp_r1_13 = 0x14C * temp_r1;
    spA8 = (void **)(temp_r1_13 + &t6f_gUnk_03003E28);
    spAC = (s32 *)(temp_r1_13 + (&t6f_gUnk_03003E28 + 0xFFFFFEE8));
loop_253:
    if (temp_r1 != sp7C) {
        goto block_264;
    }
    if (t6f_sub_08058DB0() == 0) {
        goto block_256;
    }
    goto block_306;
block_256:
    if (t6f_sub_0801DF8C() == 0) {
        goto block_258;
    }
    goto block_306;
block_258:
    temp_r0_15 = M2C_FIELD(sp54, u16 *, 0x20);
    if (temp_r0_15 != 0xB) {
        goto block_260;
    }
    goto block_306;
block_260:
    if (temp_r0_15 != 0xC) {
        goto block_262;
    }
    goto block_306;
block_262:
    if (t6f_sub_0800D11C() == NULL) {
        goto block_264;
    }
    goto block_306;
block_264:
    if (4 & M2C_FIELD(t6f_gUnk_03005CF4, u16 *, 4)) {
        goto block_275;
    }
    temp_r4_12 = sp64 + sp78;
    t6f_sub_08065370(anim, (u32) temp_r4_12, &sp44, &sp46, (u32)((u8 *)1));
    temp_r0_16 = t6f_sub_0800CC98();
    spB4 = (s32) temp_r4_12;
    if (temp_r0_16 != 0) {
        goto block_275;
    }
    if (t6f_sub_0800CD8C() != 0) {
        goto block_275;
    }
    temp_r0_17 = (u8 *)(t6f_sub_0800CCCC());
    if (temp_r0_17 != NULL) {
        goto block_275;
    }
    if (t6f_gUnk_03002344 & 1) {
        goto block_270;
    }
    spB8 = (u8 *)(temp_r0_17);
    t6f_sub_08000AF0(0x17, (*(u32 *)(anim + 0xC)), 2);
block_270:
    temp_r5_5 = var_sl >> 8;
    temp_r4_13 = (s32) var_r9 >> 8;
    t6f_sub_0800BC08((s16) temp_r5_5, (s16) temp_r4_13, &sp48, &sp4A, (u32)((u8 *)0x30), (temp_r0_17));
    var_r4_3 = t6f_sub_0800BC44(temp_r5_5, temp_r4_13, 0);
    if (M2C_FIELD(&t6f_gUnk_03003170, u16 *, 0x8C) != 4) {
        goto block_273;
    }
    if (t6f_sub_0800CDC0() == 0) {
        goto block_273;
    }
    var_r4_3 = 0;
block_273:
    if ((t6f_gUnk_03002344 & 1) != (temp_r1 & 1)) {
        goto block_275;
    }
    t6f_sub_08007870(sp48, sp4A, (u32) (u16) spB4, (u16) sp44, (u32)(var_r4_3), ((anim + 0x1C)), ((*(u32 *)(anim + 8))), ((*(u32 *)anim)));
block_275:
    if (temp_r1 > 3U) {
        goto block_279;
    }
    if (temp_r1 != sp7C) {
        goto block_278;
    }
    temp_r2_8 = (u8 *)(M2C_FIELD(sp54, u8 **, 0x148));
    sp48 = ((u16) M2C_FIELD(temp_r2_8, u16 *, 0) >> 4) - (var_sl >> 8);
    var_r0_9 = ((u32) (M2C_FIELD(temp_r2_8, u16 *, 2) << 0x14) >> 0x14) - ((s32) var_r9 >> 8);
    goto block_280;
block_278:
    temp_r2_9 = (void *)(*spA8);
    sp48 = ((u16) M2C_FIELD(temp_r2_9, u16 *, 0) >> 4) - (var_sl >> 8);
    var_r0_9 = ((u32) (M2C_FIELD(temp_r2_9, u16 *, 2) << 0x14) >> 0x14) - ((s32) var_r9 >> 8);
    goto block_280;
block_279:
    sp48 = (s16) ((s32) (M2C_FIELD(sp50, s32 *, 0x14) - var_sl) >> 8);
    var_r0_9 = (s32) (M2C_FIELD(sp50, s32 *, 0x18) - var_r9) >> 8;
block_280:
    sp4A = (s16) var_r0_9;
    t6f_sub_080003F0();
    temp_r0_18 = sp48;
    temp_r1_14 = sp4A;
    if ((u32) t6f_Sqrt((temp_r0_18 * temp_r0_18) + (temp_r1_14 * temp_r1_14)) > 7U) {
        goto block_282;
    }
    goto block_299;
block_282:
    var_r2_3 = (u32) (ArcTan2(sp48, sp4A) << 0x10) >> 0x18;
    temp_r1_15 = var_r2_3 - (s16) sp70;
    if (temp_r1_15 <= 0x80) {
        goto block_284;
    }
    var_r2_3 = (u32) (u16) (var_r2_3 + 0xFFFFFF00);
    goto block_286;
block_284:
    if (temp_r1_15 >= -0x80) {
        goto block_286;
    }
    var_r2_3 |= 0x100;
block_286:
    temp_r1_16 = (s16) sp70;
    temp_r1_17 = temp_r1_16 + (s16) ((s16) var_r2_3 - temp_r1_16);
    sp70 = (s32) temp_r1_17;
    temp_r0_19 = (s16) temp_r1_17;
    if ((s32) temp_r0_19 >= 0) {
        goto block_288;
    }
    sp70 = (s32) (u16) (temp_r0_19 + 0x100);
block_288:
    temp_r0_20 = (s16) sp70;
    if ((s32) temp_r0_20 <= 0x100) {
        goto block_290;
    }
    sp70 = (s32) (u16) (temp_r0_20 + 0xFFFFFF00);
block_290:
    temp_r2_10 = (u8) sp70;
    sp70 = (s32) temp_r2_10;
    temp_r2_11 = (s16) temp_r2_10;
    sp78 = (u32) *(((s32) (temp_r2_10 << 0x10) >> 0x14) + &t6f_gUnk_084790B4);
    var_sl += *(s16 *)(((temp_r2_11 + 0x40) * 2) + &t6f_gUnk_080B9704) * 3;
    var_r9 += *(s16 *)((temp_r2_11 * 2) + &t6f_gUnk_080B9704) * 3;
    if (t6f_sub_08056E90() != 0) {
        goto block_306;
    }
    if (temp_r1 > 3U) {
        goto block_293;
    }
    if (*spAC & 2) {
        goto block_306;
    }
block_293:
    if (((u32) (*M2C_FIELD(sp54, u8 **, 0x148) << 0x1C) >> 0x1C) == 0xC) {
        goto block_306;
    }
    if (t6f_sub_08058DB0() != 0) {
        goto block_306;
    }
    if (*spAC & 0x2400) {
        goto block_306;
    }
    if (t6f_sub_0800CF10() != 0) {
        goto block_306;
    }
    if (t6f_sub_0800D11C() != NULL) {
        goto block_306;
    }
    goto loop_253;
block_299:
    if (temp_r1 > 3U) {
        goto block_304;
    }
    if (temp_r1 != sp7C) {
        goto block_302;
    }
    temp_r2_12 = (u8 *)(M2C_FIELD(sp54, u8 **, 0x148));
    sp48 = (var_sl >> 8) - ((u16) M2C_FIELD(temp_r2_12, u16 *, 0) >> 4);
    var_r1_6 = (s32) var_r9 >> 8;
    var_r0_10 = M2C_FIELD(temp_r2_12, u16 *, 2);
    goto block_303;
block_302:
    temp_r3_3 = (void *)(*(u32 *)((0x14C * temp_r1) + (&t6f_gUnk_03003CE0 + 0x148)));
    sp48 = (var_sl >> 8) - ((u16) M2C_FIELD(temp_r3_3, u16 *, 0) >> 4);
    var_r1_6 = (s32) var_r9 >> 8;
    var_r0_10 = M2C_FIELD(temp_r3_3, u16 *, 2);
block_303:
    sp4A = (s16) (var_r1_6 - ((u32) (var_r0_10 << 0x14) >> 0x14));
    goto block_305;
block_304:
    sp48 = (s16) ((s32) (var_sl - M2C_FIELD(sp50, s32 *, 0x14)) >> 8);
    sp4A = (s16) ((s32) (var_r9 - M2C_FIELD(sp50, s32 *, 0x18)) >> 8);
block_305:
    sp74 = (u32) (ArcTan2(sp48, sp4A) << 0x10) >> 0x18;
    goto loop_51;
block_306:
    *(&t6f_gUnk_03006430 + temp_r1) = 0;
    var_r2 = (s32 *)(spB0 + &t6f_gUnk_030063E0);
    var_r1 = 1 << sp84;
block_307:
    *var_r2 &= ~var_r1;
    return;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806FF1C);
#endif
#ifdef NONMATCHING
#ifndef M2C_FIELD
#define M2C_FIELD(p,t,o) (*(t)((u8 *)(p)+(o)))
#endif
u16 t6g_Sqrt(s32) asm("Sqrt");
u8 t6g_sub_080003F0() asm("sub_080003F0");
u8 t6g_sub_08000AF0(s32, s32, s32) asm("sub_08000AF0");
s32 t6g_sub_080020F4() asm("sub_080020F4");
u32 t6g_sub_08002164() asm("sub_08002164");
u8 t6g_sub_0800AE50(s32, s32, s32) asm("sub_0800AE50");
s32 t6g_sub_0800BA6C() asm("sub_0800BA6C");
void t6g_sub_0800BC08() asm("sub_0800BC08");
u8 t6g_sub_0800BC44(s32, s32, s32) asm("sub_0800BC44");
s32 t6g_sub_0800CB9C() asm("sub_0800CB9C");
s32 t6g_sub_0800CC98() asm("sub_0800CC98");
u8 *t6g_sub_0800CCCC() asm("sub_0800CCCC");
s32 t6g_sub_0800CD34() asm("sub_0800CD34");
s32 t6g_sub_0800CD8C() asm("sub_0800CD8C");
s32 t6g_sub_0800CDC0() asm("sub_0800CDC0");
s32 t6g_sub_0800CF10() asm("sub_0800CF10");
s32 t6g_sub_0800D11C() asm("sub_0800D11C");
s32 t6g_sub_0801DF8C() asm("sub_0801DF8C");
s32 t6g_sub_08056E90() asm("sub_08056E90");
u8 t6g_sub_0805865C(s32) asm("sub_0805865C");
s32 t6g_sub_08058DB0() asm("sub_08058DB0");
s32 t6g_sub_0806898C(s32, s32) asm("sub_0806898C");
u8 t6g_sub_08068A00(s32, s32, void *) asm("sub_08068A00");
u16 t6g_sub_08073EE8(s32, s32) asm("sub_08073EE8");
u16 t6g_sub_0807414C(void *, s32, s32) asm("sub_0807414C");
u16 t6g_sub_0807A040(u16, s32, s32, s32) asm("sub_0807A040");
extern s32 t6g_gUnk_03002344 asm("gUnk_03002344");
extern u8 t6g_gUnk_03003170 asm("gUnk_03003170");
extern u8 t6g_gUnk_03003CE0 asm("gUnk_03003CE0");
extern u8 t6g_gUnk_03003D10 asm("gUnk_03003D10");
extern u8 t6g_gUnk_03003E28 asm("gUnk_03003E28");
extern void *t6g_gUnk_030056F4 asm("gUnk_030056F4");
extern s32 t6g_gUnk_030056FC asm("gUnk_030056FC");
extern void *t6g_gUnk_03005CF4 asm("gUnk_03005CF4");
extern u8 t6g_gUnk_030063E0 asm("gUnk_030063E0");
extern u8 t6g_gUnk_03006410 asm("gUnk_03006410");
extern u8 t6g_gUnk_080B9704 asm("gUnk_080B9704");
extern u8 t6g_gUnk_084790B4 asm("gUnk_084790B4");
extern u8 t6g_gUnk_0849E730 asm("gUnk_0849E730");
extern u8 t6g_gUnk_084EBF1C asm("gUnk_084EBF1C");
extern u8 t6g_gUnk_084EC1D0 asm("gUnk_084EC1D0");
extern void t6g_sub_08065158() asm("sub_08065158");
extern u16 t6g_sub_08065370() asm("sub_08065370");
extern void t6g_sub_08007870() asm("sub_08007870");
void sub_080710DC(void *arg0) {

    u8 anim[0x34];
    s16 sp4A;
    s16 sp44;
    s16 sp46;
    s16 sp48;
    void *sp4C;
    void *sp50;
    void *sp54;
    void *sp58;
    u8 *sp5C;
    u32 sp60;
    u32 sp64;
    s32 sp68;
    s32 sp6C;
    s32 sp70;
    u32 sp74;
    s32 sp78;
    u32 sp7C;
    s32 sp80;
    u32 sp84;
    u32 sp88;
    s32 sp8C;
    u32 sp90;
    s32 sp94;
    s32 *sp98;
    s32 *sp9C;
    s32 spA0;
    s16 *spA4;
    s16 *spA8;
    s32 spAC;
    u8 *temp_r0_15;
    u8 *temp_r0_25;
    s16 temp_r0_10;
    s16 temp_r0_11;
    s16 temp_r0_12;
    s16 temp_r0_13;
    s16 temp_r0_14;
    s16 temp_r0_16;
    s16 temp_r0_17;
    s16 temp_r0_18;
    s16 temp_r0_21;
    s16 temp_r0_22;
    s16 temp_r0_23;
    s16 temp_r1_10;
    s16 temp_r1_12;
    s16 temp_r1_14;
    s16 temp_r1_16;
    s16 temp_r1_19;
    s16 temp_r1_21;
    s16 temp_r1_8;
    s16 temp_r2_6;
    s16 temp_r4_3;
    s16 temp_r4_7;
    s16 temp_r5_2;
    s16 var_r0_3;
    s16 var_r0_4;
    s16 var_r0_5;
    s16 var_r1_2;
    s16 var_r1_3;
    s16 var_r1_4;
    s16 var_r9;
    s32 *temp_r2;
    s32 *temp_r4;
    s32 *var_r2;
    s32 temp_r1_15;
    s32 temp_r1_20;
    s32 temp_r1_6;
    s32 temp_r3;
    s32 temp_r3_2;
    s32 temp_r4_11;
    s32 temp_r4_5;
    s32 temp_r4_8;
    s32 temp_r5_3;
    s32 temp_r5_4;
    s32 temp_r5_5;
    s32 temp_r7_2;
    s32 var_r0;
    s32 var_r0_7;
    s32 var_r1;
    u8 *temp_r0_4;
    u8 *temp_r1_4;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r0_8;
    u16 temp_r0_9;
    u16 temp_r1_11;
    u16 temp_r1_17;
    u16 temp_r1_22;
    u32 temp_r1_3;
    u16 temp_r4_10;
    u16 temp_r4_4;
    u16 temp_r4_9;
    u16 temp_r6;
    u16 temp_r6_4;
    u16 temp_r7;
    u16 var_r0_2;
    u16 var_r5_2;
    u16 var_r5_3;
    u16 var_r5_4;
    u16 var_r5_6;
    u16 var_r5_7;
    u16 var_r5_8;
    u16 var_r5_9;
    u16 var_r7;
    u16 var_r8;
    u16 var_r8_2;
    u16 var_r8_3;
    u16 var_r8_4;
    u16 var_r8_5;
    u32 temp_r0_19;
    u32 temp_r0_20;
    u32 temp_r0_24;
    u32 temp_r0_3;
    u32 temp_r0_5;
    u32 temp_r0_6;
    u32 temp_r0_7;
    u32 temp_r1;
    u32 temp_r1_9;
    u32 temp_r6_2;
    u32 temp_r6_3;
    u32 var_r0_6;
    u32 var_r2_2;
    u32 var_r2_3;
    u32 var_r2_4;
    u32 var_r2_5;
    u32 var_r5;
    u32 var_r9_2;
    u32 var_sl;
    u8 *temp_r1_5;
    u8 *temp_r1_7;
    u8 *temp_r2_4;
    u8 *temp_r2_5;
    u8 *temp_r5;
    u8 temp_r1_18;
    u8 temp_r4_6;
    u8 var_r5_10;
    u8 var_r5_11;
    u8 var_r5_12;
    u8 var_r5_5;
    void *temp_r1_13;
    void *temp_r1_2;
    void *temp_r2_2;
    void *temp_r2_3;
    void *temp_r3_3;
    void *temp_r3_4;
    void *temp_r3_5;
    void *temp_r4_2;


    sp4C = (void *)(arg0);
    sp80 = M2C_FIELD(arg0, s32 *, 4);
    temp_r1 = M2C_FIELD(sp4C, u32 *, 0);
    temp_r5 = (u8 *)(temp_r1 + &t6g_gUnk_03006410);
    if (*temp_r5 == 0) {
        goto block_2;
    }
    var_r2 = (s32 *)((temp_r1 * 4) + &t6g_gUnk_030063E0);
    var_r1 = 1 << sp80;
    goto block_303;
block_2:
    sp7C = temp_r1;
    *temp_r5 = 1;
    sp60 = (u32) M2C_FIELD(sp4C, u16 *, 8);
    temp_r6 = M2C_FIELD(sp4C, u16 *, 0x14);
    sp68 = (s32) temp_r6;
    sp6C = (s32) temp_r6;
    sp64 = (u32) temp_r6;
    sp78 = t6g_sub_080020F4();
    if (sp7C > 3U) {
        goto block_4;
    }
    sp58 = (void *)((0x14C * sp7C) + &t6g_gUnk_03003CE0);
    spAC = sp7C * 4;
    goto block_12;
block_4:
    temp_r1_2 = (void *)(t6g_gUnk_030056F4 + ((sp7C * 0x2E0) + 0xFFFFF480));
    sp54 = (void *)(temp_r1_2);
    temp_r3 = sp7C * 4;
    spAC = temp_r3;
    if ((u32) M2C_FIELD(temp_r1_2, u16 *, 0x6A) >= (u32) M2C_FIELD(temp_r1_2, u8 *, 0x22B)) {
        goto block_12;
    }
    temp_r4 = (s32 *)(temp_r3 + &t6g_gUnk_030063E0);
loop_6:
    if (t6g_sub_08056E90() != 0) {
        goto block_10;
    }
    if (t6g_sub_0800BA6C() == 0) {
        goto block_10;
    }
    temp_r0 = M2C_FIELD(sp54, u16 *, 0xC);
    if (temp_r0 == 0xA) {
        goto block_10;
    }
    if (temp_r0 != 0xB) {
        goto block_11;
    }
block_10:
    *temp_r4 &= ~(1 << sp80);
    *temp_r5 = 0;
    return;
block_11:
    t6g_sub_080003F0();
    if ((u32) M2C_FIELD(sp54, u16 *, 0x6A) < (u32) M2C_FIELD(sp54, u8 *, 0x22B)) {
        goto loop_6;
    }
block_12:
    sp44 = 0;
    sp46 = 0;
    if (t6g_sub_080020F4() == sp7C) {
        goto block_16;
    }
    if (sp7C <= 3U) {
        goto block_18;
    }
    temp_r0_2 = M2C_FIELD(sp54, u16 *, 0x5E) - *(s16 *)((sp64 * 2) + (M2C_FIELD(sp4C, s32 *, 0xC) * 0x18) + (&t6g_gUnk_084EBF1C + 6));
    M2C_FIELD(sp54, u16 *, 0x5E) = temp_r0_2;
    if ((s32) (temp_r0_2 << 0x10) >= 0) {
        goto block_18;
    }
    temp_r2 = (s32 *)(spAC + &t6g_gUnk_030063E0);
    *temp_r2 &= ~(1 << sp80);
    M2C_FIELD(sp54, u16 *, 0x5E) = 0U;
    *(sp7C + &t6g_gUnk_03006410) = 0;
    return;
block_16:
    temp_r4_2 = (void *)((0x14C * t6g_sub_080020F4()) + &t6g_gUnk_03003CE0);
    temp_r1_3 = M2C_FIELD(temp_r4_2, u16 *, 0xC2) - (u16) (t6g_sub_0806898C(M2C_FIELD(sp4C, s32 *, 0xC), M2C_FIELD(sp4C, s32 *, 0x14)) - 1);
    M2C_FIELD(temp_r4_2, u16 *, 0xC2) = temp_r1_3;
    if ((s32) (temp_r1_3 << 0x10) >= 0) {
        goto block_18;
    }
    M2C_FIELD(temp_r4_2, u16 *, 0xC2) = 0U;
block_18:
    if (sp60 > 3U) {
        goto block_26;
    }
    temp_r6_2 = t6g_sub_08002164();
    var_r5 = 0;
    var_r7 = sp68 + 4;
    goto loop_21;
block_20:
    var_r5 = (u32) (u16) (var_r5 + 1);
loop_21:
    if (var_r5 >= temp_r6_2) {
        goto block_25;
    }
    if (t6g_sub_080020F4() == var_r5) {
        goto block_20;
    }
    temp_r1_4 = (u8 *)((0x14C * var_r5) + &t6g_gUnk_03003CE0);
    sp5C = (u8 *)(temp_r1_4);
    if (*(u16 *)temp_r1_4 != sp60) {
        goto block_20;
    }
    goto block_33;
block_25:
    sp60 = 0xFFFF;
    goto block_33;
block_26:
    var_r5_2 = 0;
    sp50 = (void *)(t6g_gUnk_030056F4);
    var_r7 = sp68 + 4;
    if (!(t6g_gUnk_030056FC & 1)) {
        goto loop_28;
    }
    if (M2C_FIELD(t6g_gUnk_030056F4, u16 *, 2) == sp60) {
        goto block_31;
    }
loop_28:
    var_r5_2 += 1;
    if ((u32) var_r5_2 > 4U) {
        goto block_32;
    }
    sp50 = (void *)(t6g_gUnk_030056F4 + (var_r5_2 * 0x2E0));
    if (!(t6g_gUnk_030056FC & (1 << var_r5_2))) {
        goto loop_28;
    }
    if (M2C_FIELD(sp50, u16 *, 2) != sp60) {
        goto loop_28;
    }
block_31:
    if ((u32) var_r5_2 <= 4U) {
        goto block_33;
    }
block_32:
    sp60 = 0xFFFF;
block_33:
    if (sp64 > 6U) {
        goto block_35;
    }
    t6g_sub_08065158(anim, 0x5008FU, 8U, -1, (0));
    sp64 = (u32) (u16) (sp64 - 1);
    goto block_36;
block_35:
    t6g_sub_08065158(anim, 0x50090U, 8U, -1, (0));
    sp64 = 0;
block_36:
    M2C_FIELD(anim, s8 *, 0x1C) = 7;
    M2C_FIELD(anim, s8 *, 0x1D) = 8;
    if (sp60 > 3U) {
        goto block_44;
    }
    temp_r0_3 = t6g_sub_08002164();
    var_r5_3 = 0;
    var_r2_2 = sp64 << 0x13;
    if (temp_r0_3 <= 0U) {
        goto block_43;
    }
    sp5C = (u8 *)(&t6g_gUnk_03003CE0);
    if (*(u16 *)&t6g_gUnk_03003CE0 == sp60) {
        goto block_42;
    }
loop_40:
    var_r5_3 += 1;
    if ((u32) var_r5_3 >= temp_r0_3) {
        goto block_43;
    }
    temp_r0_4 = (u8 *)((0x14C * var_r5_3) + &t6g_gUnk_03003CE0);
    sp5C = (u8 *)(temp_r0_4);
    if (*(u16 *)temp_r0_4 != sp60) {
        goto loop_40;
    }
block_42:
    if ((u32) var_r5_3 < temp_r0_3) {
        goto block_51;
    }
block_43:
    sp60 = 0xFFFF;
    goto block_51;
block_44:
    var_r5_4 = 0;
    sp50 = (void *)(t6g_gUnk_030056F4);
    var_r0 = t6g_gUnk_030056FC & 1;
    var_r2_2 = sp64 << 0x13;
    goto loop_47;
block_45:
    var_r5_4 += 1;
    if ((u32) var_r5_4 > 4U) {
        goto block_50;
    }
    sp50 = (void *)(t6g_gUnk_030056F4 + (var_r5_4 * 0x2E0));
    var_r0 = t6g_gUnk_030056FC & (1 << var_r5_4);
loop_47:
    if (var_r0 == 0) {
        goto block_45;
    }
    if (M2C_FIELD(sp50, u16 *, 2) != sp60) {
        goto block_45;
    }
    if ((u32) var_r5_4 <= 4U) {
        goto block_51;
    }
block_50:
    sp60 = 0xFFFF;
block_51:
    sp44 = 0;
    sp46 = 0;
    sp64 = var_r2_2 >> 0x10;
    sp68 = (s32) var_r7;
    if (sp7C > 3U) {
        goto block_53;
    }
    temp_r1_5 = (u8 *)(M2C_FIELD(sp58, u8 **, 0x148));
    sp8C = ((u16) M2C_FIELD(temp_r1_5, u16 *, 0) >> 4) << 8;
    sp90 = (u32) (M2C_FIELD(temp_r1_5, u16 *, 2) << 0x14) >> 0xC;
    goto block_54;
block_53:
    sp8C = M2C_FIELD(sp54, s32 *, 0x14);
    sp90 = M2C_FIELD(sp54, u32 *, 0x18);
block_54:
    sp70 = sp8C;
    var_sl = sp90;
    sp84 = 0x3C;
    if (t6g_sub_080020F4() == sp7C) {
        goto block_56;
    }
    if (sp7C <= 3U) {
        goto loop_59;
    }
block_56:
    if (t6g_sub_0800CCCC() != NULL) {
        goto loop_59;
    }
    if (t6g_sub_0800CD34() != 0) {
        goto loop_59;
    }
    t6g_sub_0805865C(sp6C + 0x139);
loop_59:
    var_r9 = 0x80;
    sp88 = 0;
    temp_r1_6 = 0x14C * sp7C;
    sp94 = temp_r1_6;
    sp98 = (s32 *)(temp_r1_6 + (&t6g_gUnk_03003CE0 + 0x30));
loop_60:
    temp_r0_5 = sp84;
    sp84 = temp_r0_5 + 1;
    if (temp_r0_5 <= 0x3CU) {
        goto block_73;
    }
    if (sp7C > 3U) {
        goto block_66;
    }
    temp_r1_7 = (u8 *)(M2C_FIELD(sp58, u8 **, 0x148));
    sp8C = ((u16) M2C_FIELD(temp_r1_7, u16 *, 0) >> 4) << 8;
    sp90 = (u32) (M2C_FIELD(temp_r1_7, u16 *, 2) << 0x14) >> 0xC;
    temp_r0_6 = (u8) M2C_FIELD(temp_r1_7, u8 *, 3) >> 4;
    sp74 = temp_r0_6;
    var_r8 = *(u16 *)((temp_r0_6 * 2) + &t6g_gUnk_0849E730) * 0x10;
    temp_r0_7 = sp88;
    sp88 = temp_r0_7 + 1;
    if (temp_r0_7 <= 5U) {
        goto block_73;
    }
    sp88 = 0;
    if (sp7C != sp78) {
        goto block_65;
    }
    var_r0_2 = t6g_sub_08073EE8(0x20, 0x64);
    goto block_71;
block_65:
    var_r0_2 = t6g_sub_0807414C(sp94 + &t6g_gUnk_03003CE0, 0x20, 0x64);
    goto block_71;
block_66:
    sp8C = M2C_FIELD(sp54, s32 *, 0x14);
    sp90 = M2C_FIELD(sp54, u32 *, 0x18);
    sp74 = (u32) M2C_FIELD(sp54, u16 *, 8);
    var_r8 = *(u16 *)(((s16) M2C_FIELD(sp54, u16 *, 8) * 2) + &t6g_gUnk_0849E730) * 0x10;
    if (sp60 > 3U) {
        goto block_70;
    }
    if (((u32) (M2C_FIELD(*(void * *)((0x14C * sp60) + &t6g_gUnk_03003E28), u8 *, 4) << 0x1A) >> 0x1A) & 0x20) {
        goto block_69;
    }
    goto block_115;
block_69:
    goto block_73;
block_70:
    var_r0_2 = t6g_sub_0807A040((u16) (M2C_FIELD(sp54, u16 *, 0) + 4), 0xFF, sp70, (s32) var_sl);
block_71:
    temp_r0_8 = var_r0_2;
    sp60 = (u32) temp_r0_8;
    if (temp_r0_8 == 0xFF) {
        goto block_73;
    }
    goto block_115;
block_73:
    temp_r0_9 = (s16) var_r8 + var_r9;
    var_r8_2 = temp_r0_9;
    temp_r0_10 = (s16) temp_r0_9;
    if ((s32) temp_r0_10 <= 0xFF) {
        goto block_75;
    }
    var_r8_2 = temp_r0_10 + 0xFFFFFF00;
block_75:
    temp_r0_11 = (s16) var_r8_2;
    if ((s32) temp_r0_11 >= 0) {
        goto block_77;
    }
    var_r8_2 = temp_r0_11 + 0x100;
block_77:
    temp_r5_2 = (s16) var_r8_2;
    temp_r1_8 = *(s16 *)((sp6C * 2) + &t6g_gUnk_084EC1D0);
    sp8C += temp_r1_8 * *(s16 *)(((temp_r5_2 + 0x40) * 2) + &t6g_gUnk_080B9704);
    sp90 += temp_r1_8 * *(s16 *)((temp_r5_2 * 2) + &t6g_gUnk_080B9704);
    sp48 = (s16) ((u32) (sp8C - sp70) >> 8);
    temp_r1_9 = (u32) ((sp90 - var_sl) << 8) >> 0x10;
    sp4A = (s16) temp_r1_9;
    var_r2_3 = (u32) (ArcTan2(sp48, (s16) temp_r1_9) << 0x10) >> 0x18;
    temp_r3_2 = var_r2_3 - temp_r5_2;
    spA4 = (s16 *)(&sp48);
    spA8 = (s16 *)(&sp4A);
    if (temp_r3_2 <= 0x80) {
        goto block_79;
    }
    var_r2_3 = (u32) (u16) (var_r2_3 + 0xFFFFFF00);
    goto block_81;
block_79:
    if (temp_r3_2 >= -0x80) {
        goto block_81;
    }
    var_r2_3 |= 0x100;
block_81:
    temp_r1_10 = (s16) var_r8_2;
    temp_r1_11 = temp_r1_10 + (s16) ((s16) var_r2_3 - temp_r1_10);
    var_r8_3 = temp_r1_11;
    temp_r0_12 = (s16) temp_r1_11;
    if ((s32) temp_r0_12 >= 0) {
        goto block_83;
    }
    var_r8_3 = temp_r0_12 + 0x100;
block_83:
    temp_r0_13 = (s16) var_r8_3;
    if ((s32) temp_r0_13 <= 0x100) {
        goto block_85;
    }
    var_r8_3 = temp_r0_13 + 0xFFFFFF00;
block_85:
    var_r8 = (u16) (u8) var_r8_3;
    temp_r4_3 = (s16) (u8) var_r8_3;
    sp74 = (u32) *(((s32) ((u8) var_r8_3 << 0x10) >> 0x14) + &t6g_gUnk_084790B4);
    temp_r0_14 = *spA4;
    temp_r1_12 = *spA8;
    if ((u32) t6g_Sqrt((temp_r0_14 * temp_r0_14) + (temp_r1_12 * temp_r1_12)) <= 8U) {
        goto block_87;
    }
    sp70 += (s32) (*(s16 *)(((temp_r4_3 + 0x40) * 2) + &t6g_gUnk_080B9704) * 8) / 10;
    var_sl += (s32) (*(s16 *)((temp_r4_3 * 2) + &t6g_gUnk_080B9704) * 8) / 10;
block_87:
    var_r9 = (s16) (u8) ((u32) ((var_r9 << 0x10) + 0x40000) >> 0x10);
    if (!(4 & M2C_FIELD(t6g_gUnk_03005CF4, u16 *, 4))) {
        goto block_89;
    }
    goto block_101;
block_89:
    temp_r4_4 = sp64 + sp74;
    t6g_sub_08065370(anim, (u32) temp_r4_4, &sp44, &sp46, (1));
    if (t6g_sub_0800CC98() != 0) {
        goto block_101;
    }
    if (t6g_sub_0800CD8C() != 0) {
        goto block_101;
    }
    temp_r0_15 = (u8 *)(t6g_sub_0800CCCC());
    if (temp_r0_15 != NULL) {
        goto block_101;
    }
    if (t6g_gUnk_03002344 & 1) {
        goto block_94;
    }
    t6g_sub_08000AF0(0x17, (*(u32 *)(anim + 12)), 2);
block_94:
    temp_r5_3 = sp70 >> 8;
    temp_r4_5 = (s32) var_sl >> 8;
    t6g_sub_0800BC08((s16) temp_r5_3, (s16) temp_r4_5, spA4, spA8, (0x30), (temp_r0_15));
    var_r5_5 = t6g_sub_0800BC44(temp_r5_3, temp_r4_5, 0);
    if (M2C_FIELD(&t6g_gUnk_03003170, u16 *, 0x8C) != 4) {
        goto block_97;
    }
    if (t6g_sub_0800CDC0() == 0) {
        goto block_97;
    }
    var_r5_5 = 0;
block_97:
    if (t6g_sub_0800CB9C() == 0) {
        goto block_100;
    }
    if ((t6g_gUnk_03002344 & 1) != (sp7C & 1)) {
        goto block_101;
    }
    t6g_sub_08007870(*spA4, *spA8, (u32) temp_r4_4, (u16) sp44, ((s32) var_r5_5), ((anim + 0x1C)), ((*(u32 *)(anim + 8))), ((*(u32 *)(anim + 0))));
    goto block_101;
block_100:
    t6g_sub_08007870(*spA4, *spA8, (u32) temp_r4_4, (u16) sp44, ((s32) var_r5_5), ((anim + 0x1C)), ((*(u32 *)(anim + 8))), ((*(u32 *)(anim + 0))));
block_101:
    t6g_sub_080003F0();
    if (sp7C != sp78) {
        goto block_106;
    }
    if (t6g_sub_08058DB0() != 0) {
        goto block_302;
    }
    if (t6g_sub_0801DF8C() != 0) {
        goto block_302;
    }
    if (M2C_FIELD(sp58, u16 *, 0x20) == 0xB) {
        goto block_302;
    }
    if (t6g_sub_0800D11C() != 0) {
        goto block_302;
    }
block_106:
    if (t6g_sub_08056E90() != 0) {
        goto block_302;
    }
    if (sp7C > 3U) {
        goto block_109;
    }
    if (*sp98 & 2) {
        goto block_302;
    }
block_109:
    if (t6g_sub_0800D11C() != 0) {
        goto block_302;
    }
    if (((u32) (*M2C_FIELD(sp58, u8 **, 0x148) << 0x1C) >> 0x1C) == 0xC) {
        goto block_302;
    }
    if (t6g_sub_08058DB0() != 0) {
        goto block_302;
    }
    if (*sp98 & 0x2400) {
        goto block_302;
    }
    if (t6g_sub_0800CF10() != 0) {
        goto block_302;
    }
    goto loop_60;
block_115:
    if (sp60 > 3U) {
        goto block_119;
    }
    sp5C = (u8 *)((0x14C * sp60) + &t6g_gUnk_03003CE0);
    goto block_123;
block_117:
    sp50 = (void *)(temp_r1_13);
    goto block_123;
block_118:
    sp84 = 0;
    goto block_264;
block_119:
    var_r5_6 = 0;
loop_120:
    if (!((1 << var_r5_6) & t6g_gUnk_030056FC)) {
        goto block_122;
    }
    temp_r1_13 = (void *)((var_r5_6 * 0x2E0) + t6g_gUnk_030056F4);
    if (M2C_FIELD(temp_r1_13, u16 *, 2) == sp60) {
        goto block_117;
    }
block_122:
    var_r5_6 += 1;
    if ((u32) var_r5_6 <= 4U) {
        goto loop_120;
    }
block_123:
    sp84 = 0;
    sp9C = (s32 *)((0x14C * sp7C) + &t6g_gUnk_03003D10);
loop_124:
    if (sp7C != sp78) {
        goto block_129;
    }
    if (t6g_sub_08058DB0() != 0) {
        goto block_302;
    }
    if (t6g_sub_0801DF8C() != 0) {
        goto block_302;
    }
    if (M2C_FIELD(sp58, u16 *, 0x20) == 0xB) {
        goto block_302;
    }
    if (t6g_sub_0800D11C() != 0) {
        goto block_302;
    }
block_129:
    var_r9_2 = 0;
    if (sp60 != 0xFFFF) {
        goto block_131;
    }
    goto block_176;
block_131:
    if (sp60 <= 3U) {
        goto block_143;
    }
    var_r5_7 = 0;
loop_133:
    if (!((1 << var_r5_7) & t6g_gUnk_030056FC)) {
        goto block_142;
    }
    temp_r3_3 = (void *)(t6g_gUnk_030056F4 + (var_r5_7 * 0x2E0));
    if (M2C_FIELD(temp_r3_3, u8 *, 0x1DC) == 0) {
        goto block_142;
    }
    sp48 = (s16) ((s32) (M2C_FIELD(temp_r3_3, s32 *, 0x14) - sp70) >> 8);
    sp4A = (s16) ((s32) (M2C_FIELD(temp_r3_3, s32 *, 0x18) - var_sl) >> 8);
    var_r0_3 = sp48;
    spA8 = (s16 *)(&sp4A);
    if ((s32) var_r0_3 >= 0) {
        goto block_137;
    }
    var_r0_3 = 0 - var_r0_3;
block_137:
    if ((s32) var_r0_3 > 7) {
        goto block_142;
    }
    var_r1_2 = *spA8;
    if ((s32) var_r1_2 >= 0) {
        goto block_140;
    }
    var_r1_2 = 0 - var_r1_2;
block_140:
    if ((s32) var_r1_2 > 7) {
        goto block_142;
    }
    var_r9_2 = 1;
block_142:
    var_r5_7 += 1;
    if ((u32) var_r5_7 <= 4U) {
        goto loop_133;
    }
block_143:
    if (sp60 != 0xFFFF) {
        goto block_145;
    }
    goto block_176;
block_145:
    if (var_r9_2 == 0) {
        goto block_147;
    }
    goto block_224;
block_147:
    temp_r6_3 = t6g_sub_08002164();
    if ((u32) M2C_FIELD(sp4C, u32 *, 0) > 3U) {
        goto block_163;
    }
    var_r5_8 = 0;
    if (var_r9_2 < temp_r6_3) {
        goto block_150;
    }
    goto block_176;
block_150:
loop_151:
    temp_r2_2 = (void *)((0x14C * var_r5_8) + &t6g_gUnk_03003CE0);
    temp_r4_6 = M2C_FIELD(temp_r2_2, u8 *, 0x68);
    if (temp_r4_6 == M2C_FIELD(sp58, u8 *, 0x68)) {
        goto block_161;
    }
    temp_r3_4 = (void *)(M2C_FIELD(temp_r2_2, void **, 0x148));
    if (((u32) (M2C_FIELD(temp_r3_4, u8 *, 0) << 0x1C) >> 0x1C) == 0xE) {
        goto block_161;
    }
    if (temp_r4_6 == 0) {
        goto block_161;
    }
    sp48 = (s16) (((u16) M2C_FIELD(temp_r3_4, u16 *, 0) >> 4) - (sp70 >> 8));
    sp4A = (s16) (((u32) (M2C_FIELD(temp_r3_4, u16 *, 2) << 0x14) >> 0x14) - ((s32) var_sl >> 8));
    var_r0_4 = sp48;
    spA8 = (s16 *)(&sp4A);
    if ((s32) var_r0_4 >= 0) {
        goto block_156;
    }
    var_r0_4 = 0 - var_r0_4;
block_156:
    if ((s32) var_r0_4 > 0xB) {
        goto block_161;
    }
    var_r1_3 = *spA8;
    if ((s32) var_r1_3 >= 0) {
        goto block_159;
    }
    var_r1_3 = 0 - var_r1_3;
block_159:
    if ((s32) var_r1_3 > 0xB) {
        goto block_161;
    }
    var_r9_2 = 1;
block_161:
    var_r5_8 += 1;
    if ((u32) var_r5_8 < temp_r6_3) {
        goto loop_151;
    }
    goto block_176;
block_163:
    var_r5_9 = 0;
    if (var_r9_2 >= temp_r6_3) {
        goto block_176;
    }
loop_165:
    temp_r2_3 = (void *)((0x14C * var_r5_9) + &t6g_gUnk_03003CE0);
    if (M2C_FIELD(temp_r2_3, s32 *, 0x30) & 0x2000) {
        goto block_175;
    }
    temp_r3_5 = (void *)(M2C_FIELD(temp_r2_3, void **, 0x148));
    if (((u32) (M2C_FIELD(temp_r3_5, u8 *, 0) << 0x1C) >> 0x1C) == 0xE) {
        goto block_175;
    }
    if (M2C_FIELD(temp_r2_3, u8 *, 0x68) == 0) {
        goto block_175;
    }
    sp48 = (s16) (((u16) M2C_FIELD(temp_r3_5, u16 *, 0) >> 4) - (sp70 >> 8));
    sp4A = (s16) (((u32) (M2C_FIELD(temp_r3_5, u16 *, 2) << 0x14) >> 0x14) - ((s32) var_sl >> 8));
    var_r0_5 = sp48;
    spA8 = (s16 *)(&sp4A);
    if ((s32) var_r0_5 >= 0) {
        goto block_170;
    }
    var_r0_5 = 0 - var_r0_5;
block_170:
    if ((s32) var_r0_5 > 0xB) {
        goto block_175;
    }
    var_r1_4 = *spA8;
    if ((s32) var_r1_4 >= 0) {
        goto block_173;
    }
    var_r1_4 = 0 - var_r1_4;
block_173:
    if ((s32) var_r1_4 > 0xB) {
        goto block_175;
    }
    var_r9_2 = 1;
block_175:
    var_r5_9 += 1;
    if ((u32) var_r5_9 < temp_r6_3) {
        goto loop_165;
    }
block_176:
    if (var_r9_2 == 0) {
        goto block_178;
    }
    goto block_224;
block_178:
    if (t6g_sub_08056E90() == 0) {
        goto block_182;
    }
    if (sp7C > 3U) {
        goto block_182;
    }
    if (!(*sp9C & 2)) {
        goto block_182;
    }
    goto block_302;
block_182:
    if (t6g_sub_0800D11C() == 0) {
        goto block_184;
    }
    goto block_302;
block_184:
    if (((u32) (*M2C_FIELD(sp58, u8 **, 0x148) << 0x1C) >> 0x1C) != 0xC) {
        goto block_186;
    }
    goto block_302;
block_186:
    if (t6g_sub_08058DB0() == 0) {
        goto block_188;
    }
    goto block_302;
block_188:
    if (!(*sp9C & 0x2400)) {
        goto block_190;
    }
    goto block_302;
block_190:
    if (t6g_sub_0800CF10() == 0) {
        goto block_192;
    }
    goto block_302;
block_192:
    if (sp60 > 3U) {
        goto block_194;
    }
    temp_r2_4 = (u8 *)(M2C_FIELD(sp5C, u8 **, 0x148));
    sp48 = (s16) (((u16) M2C_FIELD(temp_r2_4, u16 *, 0) >> 4) - (sp70 >> 8));
    sp4A = (s16) (((u32) (M2C_FIELD(temp_r2_4, u16 *, 2) << 0x14) >> 0x14) - ((s32) var_sl >> 8));
    spA4 = (s16 *)(&sp48);
    spA8 = (s16 *)(&sp4A);
    goto block_195;
block_194:
    sp48 = (s16) ((s32) (M2C_FIELD(sp50, s32 *, 0x14) - sp70) >> 8);
    sp4A = (s16) ((s32) (M2C_FIELD(sp50, s32 *, 0x18) - var_sl) >> 8);
    spA4 = (s16 *)(&sp48);
    spA8 = (s16 *)(&sp4A);
block_195:
    temp_r0_16 = *spA4;
    temp_r1_14 = *spA8;
    if ((u32) t6g_Sqrt((temp_r0_16 * temp_r0_16) + (temp_r1_14 * temp_r1_14)) > 7U) {
        goto block_197;
    }
    goto block_224;
block_197:
    var_r2_4 = (u32) (ArcTan2(*spA4, *spA8) << 0x10) >> 0x18;
    temp_r1_15 = var_r2_4 - (s16) var_r8;
    if (temp_r1_15 <= 0x80) {
        goto block_199;
    }
    var_r2_4 = (u32) (u16) (var_r2_4 + 0xFFFFFF00);
    goto block_201;
block_199:
    if (temp_r1_15 >= -0x80) {
        goto block_201;
    }
    var_r2_4 |= 0x100;
block_201:
    temp_r1_16 = (s16) var_r8;
    temp_r1_17 = temp_r1_16 + (s16) ((s16) var_r2_4 - temp_r1_16);
    var_r8_4 = temp_r1_17;
    temp_r0_17 = (s16) temp_r1_17;
    if ((s32) temp_r0_17 >= 0) {
        goto block_203;
    }
    var_r8_4 = temp_r0_17 + 0x100;
block_203:
    temp_r0_18 = (s16) var_r8_4;
    if ((s32) temp_r0_18 <= 0x100) {
        goto block_205;
    }
    var_r8_4 = temp_r0_18 + 0xFFFFFF00;
block_205:
    temp_r0_19 = (u32) (0xFF0000 & (var_r8_4 << 0x10)) >> 0x10;
    var_r8 = (u16) temp_r0_19;
    temp_r4_7 = (s16) temp_r0_19;
    sp74 = (u32) *(((s32) (temp_r0_19 << 0x10) >> 0x14) + &t6g_gUnk_084790B4);
    temp_r1_18 = t6g_sub_0800AE50(sp70, (s32) var_sl, 0);
    if (!(0xF & temp_r1_18)) {
        goto block_207;
    }
    if (!(0x10 & temp_r1_18)) {
        goto block_208;
    }
block_207:
    sp70 += *(s16 *)(((temp_r4_7 + 0x40) * 2) + &t6g_gUnk_080B9704) * 3;
    var_sl += *(s16 *)((temp_r4_7 * 2) + &t6g_gUnk_080B9704) * 3;
    sp84 = 0;
    goto block_210;
block_208:
    temp_r0_20 = sp84;
    sp84 = temp_r0_20 + 1;
    if (temp_r0_20 <= 0x78U) {
        goto block_210;
    }
    goto block_118;
block_210:
    temp_r5_4 = sp70 >> 8;
    temp_r4_8 = (s32) var_sl >> 8;
    t6g_sub_0800BC08((s16) temp_r5_4, (s16) temp_r4_8, spA4, spA8, (0x30), (NULL));
    var_r5_10 = t6g_sub_0800BC44(temp_r5_4, temp_r4_8, 0);
    temp_r4_9 = sp64 + sp74;
    t6g_sub_08065370(anim, (u32) temp_r4_9, &sp44, &sp46, (1));
    if (4 & M2C_FIELD(t6g_gUnk_03005CF4, u16 *, 4)) {
        goto block_223;
    }
    if (t6g_sub_0800CC98() != 0) {
        goto block_223;
    }
    if (t6g_sub_0800CD8C() != 0) {
        goto block_223;
    }
    if (t6g_sub_0800CCCC() != NULL) {
        goto block_223;
    }
    if (t6g_gUnk_03002344 & 1) {
        goto block_216;
    }
    t6g_sub_08000AF0(0x17, (*(u32 *)(anim + 12)), 2);
block_216:
    if (M2C_FIELD(&t6g_gUnk_03003170, u16 *, 0x8C) != 4) {
        goto block_219;
    }
    if (t6g_sub_0800CDC0() == 0) {
        goto block_219;
    }
    var_r5_10 = 0;
block_219:
    if (t6g_sub_0800CB9C() == 0) {
        goto block_222;
    }
    if ((t6g_gUnk_03002344 & 1) != (sp7C & 1)) {
        goto block_223;
    }
    t6g_sub_08007870(*spA4, *spA8, (u32) temp_r4_9, (u16) sp44, ((s32) var_r5_10), ((anim + 0x1C)), ((*(u32 *)(anim + 8))), ((*(u32 *)(anim + 0))));
    goto block_223;
block_222:
    t6g_sub_08007870(*spA4, *spA8, (u32) temp_r4_9, (u16) sp44, ((s32) var_r5_10), ((anim + 0x1C)), ((*(u32 *)(anim + 8))), ((*(u32 *)(anim + 0))));
block_223:
    t6g_sub_080003F0();
    goto loop_124;
block_224:
    spA4 = (s16 *)(&sp48);
    spA8 = (s16 *)(&sp4A);
    temp_r7 = sp64 + sp74;
    spA0 = (s32) var_sl >> 8;
    temp_r7_2 = sp70 >> 8;
loop_225:
    t6g_sub_0800BC08((s16) temp_r7_2, (s16) spA0, spA4, spA8, (0x30), (NULL));
    var_r5_11 = t6g_sub_0800BC44(temp_r7_2, spA0, 0);
    temp_r6_4 = t6g_sub_08065370(anim, (u32) temp_r7, &sp44, &sp46, (0));
    if (4 & M2C_FIELD(t6g_gUnk_03005CF4, u16 *, 4)) {
        goto block_238;
    }
    if (t6g_sub_0800CC98() != 0) {
        goto block_238;
    }
    if (t6g_sub_0800CD8C() != 0) {
        goto block_238;
    }
    if (t6g_sub_0800CCCC() != NULL) {
        goto block_238;
    }
    if (t6g_gUnk_03002344 & 1) {
        goto block_231;
    }
    t6g_sub_08000AF0(0x17, (*(u32 *)(anim + 12)), 2);
block_231:
    if (M2C_FIELD(&t6g_gUnk_03003170, u16 *, 0x8C) != 4) {
        goto block_234;
    }
    if (t6g_sub_0800CDC0() == 0) {
        goto block_234;
    }
    var_r5_11 = 0;
block_234:
    if (t6g_sub_0800CB9C() == 0) {
        goto block_237;
    }
    if ((t6g_gUnk_03002344 & 1) != (sp7C & 1)) {
        goto block_238;
    }
    t6g_sub_08007870(*spA4, *spA8, (u32) temp_r7, (u16) sp44, ((s32) var_r5_11), ((anim + 0x1C)), ((*(u32 *)(anim + 8))), ((*(u32 *)(anim + 0))));
    goto block_238;
block_237:
    t6g_sub_08007870(*spA4, *spA8, (u32) temp_r7, (u16) sp44, ((s32) var_r5_11), ((anim + 0x1C)), ((*(u32 *)(anim + 8))), ((*(u32 *)(anim + 0))));
block_238:
    t6g_sub_080003F0();
    if (t6g_sub_08056E90() == 0) {
        goto block_240;
    }
    goto block_302;
block_240:
    if (sp7C > 3U) {
        goto block_243;
    }
    if (!(*(u32 *)((sp7C * 0x14C) + &t6g_gUnk_03003D10) & 2)) {
        goto block_243;
    }
    goto block_302;
block_243:
    if (t6g_sub_0800D11C() == 0) {
        goto block_245;
    }
    goto block_302;
block_245:
    if (((u32) (*M2C_FIELD(sp58, u8 **, 0x148) << 0x1C) >> 0x1C) != 0xC) {
        goto block_247;
    }
    goto block_302;
block_247:
    if (t6g_sub_08058DB0() == 0) {
        goto block_249;
    }
    goto block_302;
block_249:
    if (!(*(u32 *)((sp7C * 0x14C) + &t6g_gUnk_03003D10) & 0x2400)) {
        goto block_251;
    }
    goto block_302;
block_251:
    if (t6g_sub_0800CF10() == 0) {
        goto block_253;
    }
    goto block_302;
block_253:
    if (temp_r6_4 == 0) {
        goto block_257;
    }
    t6g_sub_08068A00(sp70, (s32) var_sl, sp4C);
    if (sp7C > 3U) {
        goto block_256;
    }
    M2C_FIELD(sp58, s32 *, 0xDC) = (s32) (M2C_FIELD(sp58, s32 *, 0xDC) + 1);
    goto block_257;
block_256:
    M2C_FIELD(sp54, s32 *, 0x50) = (s32) (M2C_FIELD(sp54, s32 *, 0x50) + 1);
block_257:
    if (sp60 > 3U) {
        goto block_259;
    }
    var_r0_6 = (u32) (*M2C_FIELD(sp5C, u8 **, 0x148) << 0x1C) >> 0x1C;
    goto block_260;
block_259:
    var_r0_6 = (u32) M2C_FIELD(sp50, u16 *, 0xC);
block_260:
    if (var_r0_6 == 0xB) {
        goto block_264;
    }
    if (temp_r6_4 != 0) {
        goto block_263;
    }
    goto loop_225;
block_263:
    sp68 = (s32) (u16) (sp68 - 1);
    sp46 = 0;
    sp44 = 0;
block_264:
    if (sp68 != 0) {
        goto block_266;
    }
    goto block_302;
block_266:
loop_267:
    if (sp7C > 3U) {
        goto block_269;
    }
    temp_r2_5 = (u8 *)(M2C_FIELD(sp58, u8 **, 0x148));
    *spA4 = (s16) (((u16) M2C_FIELD(temp_r2_5, u16 *, 0) >> 4) - (sp70 >> 8));
    var_r0_7 = ((u32) (M2C_FIELD(temp_r2_5, u16 *, 2) << 0x14) >> 0x14) - ((s32) var_sl >> 8);
    goto block_270;
block_269:
    *spA4 = (s16) ((s32) (M2C_FIELD(sp50, s32 *, 0x14) - sp70) >> 8);
    var_r0_7 = (s32) (M2C_FIELD(sp50, s32 *, 0x18) - var_sl) >> 8;
block_270:
    *spA8 = (s16) var_r0_7;
    temp_r0_21 = *spA4;
    temp_r1_19 = *spA8;
    if ((u32) t6g_Sqrt((temp_r0_21 * temp_r0_21) + (temp_r1_19 * temp_r1_19)) <= 7U) {
        goto loop_59;
    }
    var_r2_5 = (u32) (ArcTan2(*spA4, *spA8) << 0x10) >> 0x18;
    temp_r1_20 = var_r2_5 - (s16) var_r8;
    if (temp_r1_20 <= 0x80) {
        goto block_273;
    }
    var_r2_5 = (u32) (u16) (var_r2_5 + 0xFFFFFF00);
    goto block_275;
block_273:
    if (temp_r1_20 >= -0x80) {
        goto block_275;
    }
    var_r2_5 |= 0x100;
block_275:
    temp_r1_21 = (s16) var_r8;
    temp_r1_22 = temp_r1_21 + (s16) ((s16) var_r2_5 - temp_r1_21);
    var_r8_5 = temp_r1_22;
    temp_r0_22 = (s16) temp_r1_22;
    if ((s32) temp_r0_22 >= 0) {
        goto block_277;
    }
    var_r8_5 = temp_r0_22 + 0x100;
block_277:
    temp_r0_23 = (s16) var_r8_5;
    if ((s32) temp_r0_23 <= 0x100) {
        goto block_279;
    }
    var_r8_5 = temp_r0_23 + 0xFFFFFF00;
block_279:
    temp_r0_24 = (u32) (0xFF0000 & (var_r8_5 << 0x10)) >> 0x10;
    var_r8 = (u16) temp_r0_24;
    temp_r2_6 = (s16) temp_r0_24;
    sp74 = (u32) *(((s32) (temp_r0_24 << 0x10) >> 0x14) + &t6g_gUnk_084790B4);
    sp70 += *(s16 *)(((temp_r2_6 + 0x40) * 2) + &t6g_gUnk_080B9704) * 3;
    var_sl += *(s16 *)((temp_r2_6 * 2) + &t6g_gUnk_080B9704) * 3;
    if (!(4 & M2C_FIELD(t6g_gUnk_03005CF4, u16 *, 4))) {
        goto block_281;
    }
    goto block_293;
block_281:
    temp_r4_10 = sp64 + sp74;
    t6g_sub_08065370(anim, (u32) temp_r4_10, &sp44, &sp46, (1));
    if (t6g_sub_0800CC98() != 0) {
        goto block_293;
    }
    if (t6g_sub_0800CD8C() != 0) {
        goto block_293;
    }
    temp_r0_25 = (u8 *)(t6g_sub_0800CCCC());
    if (temp_r0_25 != NULL) {
        goto block_293;
    }
    if (t6g_gUnk_03002344 & 1) {
        goto block_286;
    }
    t6g_sub_08000AF0(0x17, (*(u32 *)(anim + 12)), 2);
block_286:
    temp_r5_5 = sp70 >> 8;
    temp_r4_11 = (s32) var_sl >> 8;
    t6g_sub_0800BC08((s16) temp_r5_5, (s16) temp_r4_11, spA4, spA8, (0x30), (temp_r0_25));
    var_r5_12 = t6g_sub_0800BC44(temp_r5_5, temp_r4_11, 0);
    if (M2C_FIELD(&t6g_gUnk_03003170, u16 *, 0x8C) != 4) {
        goto block_289;
    }
    if (t6g_sub_0800CDC0() == 0) {
        goto block_289;
    }
    var_r5_12 = 0;
block_289:
    if (t6g_sub_0800CB9C() == 0) {
        goto block_292;
    }
    if ((t6g_gUnk_03002344 & 1) != (sp7C & 1)) {
        goto block_293;
    }
    t6g_sub_08007870(*spA4, *spA8, (u32) temp_r4_10, (u16) sp44, ((s32) var_r5_12), ((anim + 0x1C)), ((*(u32 *)(anim + 8))), ((*(u32 *)(anim + 0))));
    goto block_293;
block_292:
    t6g_sub_08007870(*spA4, *spA8, (u32) temp_r4_10, (u16) sp44, ((s32) var_r5_12), ((anim + 0x1C)), ((*(u32 *)(anim + 8))), ((*(u32 *)(anim + 0))));
block_293:
    t6g_sub_080003F0();
    if (t6g_sub_08056E90() != 0) {
        goto block_302;
    }
    if (sp7C > 3U) {
        goto block_296;
    }
    if (*(u32 *)((sp7C * 0x14C) + &t6g_gUnk_03003D10) & 2) {
        goto block_302;
    }
block_296:
    if (t6g_sub_0800D11C() != 0) {
        goto block_302;
    }
    if (((u32) (*M2C_FIELD(sp58, u8 **, 0x148) << 0x1C) >> 0x1C) == 0xC) {
        goto block_302;
    }
    if (t6g_sub_08058DB0() != 0) {
        goto block_302;
    }
    if (*(u32 *)((sp7C * 0x14C) + &t6g_gUnk_03003D10) & 0x2400) {
        goto block_302;
    }
    if (t6g_sub_0800CF10() != 0) {
        goto block_302;
    }
    goto loop_267;
block_302:
    *(sp7C + &t6g_gUnk_03006410) = 0;
    var_r2 = (s32 *)(spAC + &t6g_gUnk_030063E0);
    var_r1 = 1 << sp80;
block_303:
    *var_r2 &= ~var_r1;
    return;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_080710DC);
#endif
#ifdef NONMATCHING
#define D739_U8(p,o) (*(u8 *)((u8 *)(p)+(o)))
#define D739_U16(p,o) (*(u16 *)((u8 *)(p)+(o)))
#define D739_S16(p,o) (*(s16 *)((u8 *)(p)+(o)))
#define D739_U32(p,o) (*(u32 *)((u8 *)(p)+(o)))
#define D739_PTR(p,o) (*(u8 **)((u8 *)(p)+(o)))
extern u32 d739Flags[] asm("gUnk_030063E0");
extern u8 d739Ranges[] asm("gUnk_084EC12C");
extern u16 d739Chances[] asm("gUnk_084EC16C");
extern u16 d739Dirs[] asm("gUnk_0849E730");
extern u8 d739Kinds[] asm("gUnk_084EBF1C");
void d739Init(void *,s32,s32,s32,s32) asm("sub_08065158");
void d739Coords(s32,s32,s16 *,s16 *,s32,void *) asm("sub_0800BC08");
void d739Draw(s32,s32,u32,u32,u32,void *,u32,u32) asm("sub_08007870");
s16 d739Calc(u8 *,void *) asm("sub_08068F9C");
void d739PlayerHit(u16,s16,s32) asm("sub_08029A7C");
void d739Hit(u16,u16,s16,u32,s32,s32) asm("sub_08029B98");
void sub_08072390(u8 *arg0) {
    u8 *sp80;
    void *sp84;
    s32 sp88;
    s32 sp8C;
    u32 sp90;                                       /* compiler-managed */
    u32 sp94;
    s32 sp98;
    u32 sp9C;
    s32 spA0;
    u32 spA4;
    s32 spA8;
    u32 spAC;
    s16 *spB0;
    s16 *spB4;
    u32 spB8;
    u32 spBC;
    s32 spC0;
    s32 *spC4;
    s32 *spC8;
    s16 *spCC;
    s16 *spD0;
    u16 *spD4;
    struct { u32 desc[13]; u8 targets[8]; u8 delays[8]; s32 heights[5]; s32 speeds[5]; s16 x,y; } frame;
    s16 temp_r1_7;
    s16 temp_r2_4;
    s16 temp_r2_5;
    s32 var_r1;
    s32 var_r2;
    s32 var_r2_2;
    s32 var_r2_3;
    s32 *temp_r2_6;
    s32 *temp_r4_2;
    s32 *var_r6;
    s32 *var_r6_2;
    s32 *var_r7;
    s32 *var_r7_3;
    s32 *var_r7_4;
    s32 *var_r8;
    s32 *var_sl_2;
    s32 temp_r0_2;
    s32 temp_r1_4;
    s32 temp_r1_6;
    s32 temp_r1_8;
    s32 temp_r5_3;
    s32 temp_r6_3;
    s32 temp_r7;
    u32 costDelta;
    u32 temp_r1;
    u16 temp_r3_2;
    u16 temp_r4_5;
    u16 temp_r4_7;
    u16 temp_r4_8;
    u16 var_r7_2;
    u32 temp_r0;
    u32 temp_r2;
    u32 temp_r2_2;
    u32 temp_r2_3;
    u32 temp_r4_3;
    u32 temp_r4_4;
    u32 var_r9;
    u32 var_r9_2;
    u32 var_r9_3;
    u32 var_r9_4;
    u32 var_r9_5;
    u8 *temp_r4_6;
    u8 *var_r4;
    u8 *var_r8_2;
    u8 *var_sl;
    u8 temp_r0_3;
    u8 temp_r0_4;
    void *temp_r1_2;
    void *temp_r1_3;
    void *temp_r1_5;
    void *temp_r3;
    void *temp_r3_3;
    void *temp_r4;
    void *temp_r5;
    void *temp_r5_2;
    void *temp_r6;
    void *temp_r6_2;

    sp80 = arg0;
    spA0 = (s32) (u16) sub_080020F4();
    temp_r0 = D739_U32(arg0,0);
    spA4 = temp_r0;
    spA8 = D739_U32(sp80,0x4);
    temp_r2 = D739_U32(sp80,0x14);
    spAC = temp_r2 >> 0x10;
    temp_r2 &= 0xFFFF;
    sp88 = temp_r2;
    D739_U32(sp80,0x14) = temp_r2;
    if (temp_r0 <= 3U) {
        sp84 = (0x14C * spA4) + ((u8 *)gUnk_03003CE0);
    }
    if (spA0 == spA4) {
        temp_r4 = (0x14C * sub_080020F4()) + ((u8 *)gUnk_03003CE0);
        costDelta = (u16)(sub_0806898C(D739_U32(sp80,0xC), (s32) D739_U32(sp80,0x14)) - 1);
        temp_r1 = D739_U16(temp_r4,0xC2) - costDelta;
        D739_U16(temp_r4,0xC2) = temp_r1;
        if ((s32) (temp_r1 << 0x10) < 0) {
            D739_U16(temp_r4,0xC2) = 0U;
        }
    }
    frame.heights[0] = 0xA000;
    frame.speeds[0] = 0;
    frame.delays[0] = 0;
    var_r9 = 1;
    spC4 = frame.heights;
    spC8 = frame.speeds;
    spC0 = spA4 * 4;
    var_r4 = &frame.delays[0];
    var_r7 = &frame.speeds[1];
    var_r6 = &frame.heights[1];
    do {
        *var_r6 = 0xA000;
        var_r6++;
        *var_r7 = 0;
        var_r7++;
        D739_U8(var_r4,0x1) = (s8) ((sub_080008C8() % 20U) + 0xA + D739_U8(var_r4,0x0));
        var_r4 += 1;
        var_r9 += 1;
    } while (var_r9 <= 4U);
    if (temp_r2 != 0) {
        D739_U16(sp84,0xB2) = 2U;
    }
    if ((u32) D739_U16(sp84,0xB2) <= 1U) {
        temp_r4_2 = (s32 *)(spC0 + ((u8 *)d739Flags));
loop_11:
        if ((D739_U16(sp84,0x20) == 0xA) || !(2 & D739_U16(gUnk_03005CF4,0x4))) {
            *temp_r4_2 &= ~(1 << spA8);
            return;
        }
        sub_080003F0();
        if ((u32) D739_U16(sp84,0xB2) > 1U) {
            goto block_15;
        }
        goto loop_11;
    }
block_15:
    temp_r1_2 = D739_PTR(sp84,0x148);
    sp8C = ((u16) D739_U16(temp_r1_2,0x0) >> 4) << 8;
    sp90 = (u32) (D739_U16(temp_r1_2,0x2) << 0x14) >> 0xC;
    var_r7_2 = 0;
    sp9C = 0;
    temp_r0_2 = sub_0800CDF8();
    spD4 = sp84 + 0xB6;
    if (temp_r0_2 != 0) {

    } else if ((u32) D739_U32(sp80,0x8) <= 3U) {
        temp_r4_3 = sub_08002164();
        var_r9_2 = 0;
loop_32:
        if (var_r9_2 < temp_r4_3) {
            if (sub_0800CD8C() != 0) {

            } else {
                temp_r5 = (0x14C * var_r9_2) + ((u8 *)gUnk_03003CE0);
                if ((spA4 > 3U) || (D739_U8(temp_r5,0x68) != D739_U8(sp84,0x68))) {
                    temp_r3 = D739_PTR(temp_r5,0x148);
                    if ((((u32) (D739_U8(temp_r3,0x0) << 0x1C) >> 0x1C) != 0xE) && (D739_U16(temp_r5,0x20) != 0xB) && (D739_U8(temp_r5,0x68) != 0)) {
                        frame.x = (s16) (((u16) D739_U16(temp_r3,0x0) >> 4) - (sp8C >> 8));
                        temp_r3_2 = ((u32) (D739_U16(temp_r3,0x2) << 0x14) >> 0x14) - ((s32) sp90 >> 8);
                        frame.y = temp_r3_2;
                        var_r2 = frame.x;
                        if ((s32) var_r2 < 0) {
                            var_r2 = 0 - var_r2;
                        }
                        temp_r1_3 = (sp88 * 4) + ((u8 *)d739Ranges);
                        if ((s32) var_r2 < (s32) D739_S16(temp_r1_3,0x0)) {
                            var_r2_2 = (s16) temp_r3_2;
                            if ((s32) var_r2_2 < 0) {
                                var_r2_2 = 0 - var_r2_2;
                            }
                            if ((s32) var_r2_2 < (s32) D739_S16(temp_r1_3,0x2)) {
                                temp_r2_2 = sp9C;
                                sp9C = (u32) (u16) (temp_r2_2 + 1);
                                *(&frame.targets[0] + temp_r2_2) = (s8) var_r9_2;
                                var_r7_2 += 1;
                            }
                        }
                    }
                }
                var_r9_2 += 1;
                goto loop_32;
            }
        }
    } else {
        var_r9_3 = 0;
loop_47:
        if ((var_r9_3 <= 4U) && (sub_0800CD8C() == 0)) {
            if (gUnk_030056FC & (1 << var_r9_3)) {
                temp_r6 = ((u8 *)gUnk_030056F4) + (var_r9_3 * 0x2E0);
                if ((D739_U16(temp_r6,0xC) != 0xB) && (D739_U8(temp_r6,0x1DC) != 0)) {
                    frame.x = (s16) ((u32) (D739_U32(temp_r6,0x14) - sp8C) >> 8);
                    temp_r4_4 = (u32) ((D739_U32(temp_r6,0x18) - sp90) << 8) >> 0x10;
                    frame.y = (u16) temp_r4_4;
                    var_r2_3 = frame.x;
                    if ((s32) var_r2_3 < 0) {
                        var_r2_3 = 0 - var_r2_3;
                    }
                    temp_r3_3 = (sp88 * 4) + ((u8 *)d739Ranges);
                    if ((s32) var_r2_3 < (s32) D739_S16(temp_r3_3,0x0)) {
                        var_r1 = (s16) temp_r4_4;
                        if ((s32) var_r1 < 0) {
                            var_r1 = 0 - var_r1;
                        }
                        if ((s32) var_r1 < (s32) D739_S16(temp_r3_3,0x2)) {
                            temp_r2_3 = sp9C;
                            sp9C = (u32) (u16) (temp_r2_3 + 1);
                            *(&frame.targets[0] + temp_r2_3) = (s8) var_r9_3;
                            var_r7_2 += 1;
                        }
                    }
                }
            }
            var_r9_3 += 1;
            goto loop_47;
        }
    }

    d739Init(frame.desc, 0x5008D, 8, -1, 0);
    D739_U8(frame.desc,0x1C) = 7;
    D739_U8(frame.desc,0x1D) = 8;
    if (((spA0 == spA4) || (spA4 > 3U)) && (sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
        sub_0805865C(0x16A);
    }
    if (var_r7_2 == 0) {
        temp_r1_7 = *(u16 *)((((u8) D739_U8(D739_PTR(sp84,0x148),3) >> 4) * 2) + ((u8 *)d739Dirs)) * 0x10;
        temp_r5_3 = sp8C + (gUnk_080B9704[temp_r1_7 + 0x40] * 0x1E);
        sp8C = temp_r5_3;
        temp_r1_8 = sp90 + (gUnk_080B9704[temp_r1_7] * 0x1E);
        sp90 = temp_r1_8;
        if (frame.heights[0] > 0) {
            temp_r7 = temp_r5_3 >> 8;
            temp_r6_3 = temp_r1_8 >> 8;
            do {
                frame.heights[0] -= frame.speeds[0];
                frame.speeds[0] += 0x20;

                d739Coords((s32) (s16) temp_r7, (s32) (s16) temp_r6_3, &frame.x, &frame.y, 0x30, 0);
                sp98 = (s32) (u8) sub_0800BC44((u32) temp_r7, (u32) temp_r6_3, 0U);
                if ((sub_0800CC98() == 0) && (sub_0800CD8C() == 0) && (sub_0800CCCC() == 0)) {

                    d739Draw(frame.x, (s16) frame.y - (frame.heights[0] >> 8), (u32) (u16) spAC, 0, (u8)sp98, (u8 *)frame.desc+0x1C, frame.desc[2], frame.desc[0]);
                }
                sub_080003F0();
            } while (frame.heights[0] > 0);
        }
        frame.heights[0] = 0xA;
        do {
            frame.heights[0] -= 1;
            if ((sub_0800CC98() == 0) && (sub_0800CD8C() == 0) && (sub_0800CCCC() == 0) && (frame.heights[0] & 1)) {
                if (gUnk_03002344 & 1) {
                    sub_08000AF0(0x17U, (const void *)frame.desc[3], 2U);
                }
                if ((gUnk_03003170.curLevel == 4) && (sub_0800CDC0() != 0)) {
                    sp98 = 0;
                }

                d739Draw(frame.x, (s16) frame.y, (u32) (u16) spAC, 0, (u8)sp98, (u8 *)frame.desc+0x1C, frame.desc[2], frame.desc[0]);
            }
            sub_080003F0();
        } while (frame.heights[0] > 0);
    } else {
        sp94 = 0;
    goto loop_149;
block_77:
    {

                if ((u32) D739_U32(sp80,0x8) <= 3U) {
                    var_r9_5 = 0;
                    if (sp9C <= 0U) {

                    } else {
                        spB0 = &frame.x;
                        spB4 = &frame.y;
                        var_r8_2 = &frame.delays[0];
                        var_r6_2 = spC4;
                        var_r7_4 = spC8;
                        var_sl_2 = var_r6_2;
                        spB8 = spAC << 0x10;
loop_82:
                        temp_r4_6 = &frame.targets[0] + var_r9_5;
                        temp_r5_2 = (0x14C * *temp_r4_6) + ((u8 *)gUnk_03003CE0);
                        temp_r1_5 = D739_PTR(temp_r5_2,0x148);

                        d739Coords((s32) ((u16) D739_U16(temp_r1_5,0x0) >> 4), (s32) ((u32) (D739_U16(temp_r1_5,0x2) << 0x14) >> 0x14), spB0, spB4, 0x30, 0);
                        sp98 = (s32) (u8) sub_0800BC44((u32) (sp8C >> 8), (u32) ((s32) sp90 >> 8), 0U);
                        temp_r0_4 = *var_r8_2;
                        switch (temp_r0_4) {        /* switch 1; irregular */
                        case 0x0:                   /* switch 1 */
                            *var_r6_2 -= *var_r7_4;
                            *var_r7_4 += 0x20;
                            if ((s32) *var_r6_2 <= 0) {
                                sp94 = (u32) (u16) (sp94 + 1);
                                *var_r8_2 = 0xF0;
                                *var_r6_2 = 0xA;
                                if (spA0 != *temp_r4_6) {

                                } else {
                                    D739_U32(sp80,0x8) = (u32) D739_U16(temp_r5_2,0x0);
                                    temp_r4_7 = *(u16 *)((D739_U32(sp80,0x14) * 2) + ((u8 *)d739Chances));
                                    if ((u32) temp_r4_7 >= (u32) (sub_080008C8() % 100U)) {
                                        d739PlayerHit(3U, d739Calc(sp80, temp_r5_2 + 0x4C), 0x64);
                                    } else {
                                        temp_r4_8 = D739_U16(d739Kinds,0x1CA);
                                        d739PlayerHit(temp_r4_8, d739Calc(sp80, temp_r5_2 + 0x4C), sp88);
                                    }
                                    if ((sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                                        sub_0805865C(0x1A);
                                    }
                                }
                            } else if ((sub_0800CC98() == 0) && (sub_0800CD8C() == 0) && (sub_0800CCCC() == 0)) {
                                if (!(gUnk_03002344 & 1)) {
                                    sub_08000AF0(0x17U, (const void *)frame.desc[3], 2U);
                                }

                                d739Draw(*spB0, *spB4 - ((s32) *var_sl_2 >> 8), spB8 >> 0x10, 0, (u8)sp98, (u8 *)frame.desc+0x1C, frame.desc[2], frame.desc[0]);
                            }
                            break;
                        default:                    /* switch 1 */
                            *var_r8_2 = temp_r0_4 - 1;
                            break;
                        case 0xF0:                  /* switch 1 */
                            temp_r1_6 = frame.heights[0] & 1;
                            frame.heights[0] -= 1;
                            if ((temp_r1_6 != 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0) && (sub_0800CCCC() == 0)) {
                                if (!(gUnk_03002344 & 1)) {
                                    sub_08000AF0(0x17U, (const void *)frame.desc[3], 2U);
                                }

                                d739Draw(*spB0, *spB4, spB8 >> 0x10, 0, (u8)sp98, (u8 *)frame.desc+0x1C, frame.desc[2], frame.desc[0]);
                            }
                            break;
                        }
                        var_r8_2 += 1;
                        var_r6_2++;
                        var_r7_4++;
                        var_sl_2++;
                        var_r9_5 += 1;
                        if (var_r9_5 < sp9C) {
                            goto loop_82;
                        }
                    }
                } else {
                    var_r9_4 = 0;
                    if (sp9C <= 0U) {

                    } else {
                        spCC = &frame.x;
                        spD0 = &frame.y;
                        var_sl = &frame.delays[0];
                        var_r7_3 = spC4;
                        var_r8 = spC8;
                        spBC = spAC << 0x10;
loop_114:
                        temp_r6_2 = ((u8 *)gUnk_030056F4) + (*(&frame.targets[0] + var_r9_4) * 0x2E0);

                        d739Coords((s32) (D739_U32(temp_r6_2,0x14) << 8) >> 0x10, (s32) (D739_U32(temp_r6_2,0x18) << 8) >> 0x10, &frame.x, &frame.y, 0x30, 0);
                        sp98 = (s32) (u8) sub_0800BC44((u32) (sp8C >> 8), (u32) ((s32) sp90 >> 8), 0U);
                        temp_r0_3 = *var_sl;
                        switch (temp_r0_3) {        /* switch 2; irregular */
                        case 0x0:                   /* switch 2 */
                            *var_r7_3 -= *var_r8;
                            *var_r8 += 0x20;
                            if ((s32) *var_r7_3 <= 0) {
                                sp94 = (u32) (u16) (sp94 + 1);
                                *var_sl = 0xF0;
                                *var_r7_3 = (s32) temp_r0_3;
                                if (spA0 == spA4) {
                                    temp_r4_5 = *(u16 *)((D739_U32(sp80,0x14) * 2) + ((u8 *)d739Chances));
                                    if ((u32) temp_r4_5 >= (u32) (sub_080008C8() % 100U)) {
                                        temp_r2_4 = d739Calc(sp80, temp_r6_2 + 0x218);

                                        d739Hit(D739_U16(temp_r6_2,0x0), 3U, temp_r2_4, 0x64U, 0, 0);
                                    } else {
                                        temp_r2_5 = d739Calc(sp80, temp_r6_2 + 0x218);

                                        d739Hit(D739_U16(temp_r6_2,0x0), D739_U16(d739Kinds,0x1CA), temp_r2_5, spAC, 0, 0);
                                    }
                                    if ((sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                                        sub_0805865C(0x1A);
                                    }
                                }
                            }
                            if (sub_0800CC98() != 0) {

                            } else if ((sub_0800CD8C() == 0) && (sub_0800CCCC() == 0)) {
                                if (!(gUnk_03002344 & 1)) {
                                    sub_08000AF0(0x17U, (const void *)frame.desc[3], 2U);
                                }
                                if ((gUnk_03003170.curLevel == 4) && (sub_0800CDC0() != 0)) {
                                    sp98 = 0;
                                }

                                d739Draw(*spCC, *spD0 - ((s32) *var_r7_3 >> 8), spBC >> 0x10, 0, (u8)sp98, (u8 *)frame.desc+0x1C, frame.desc[2], frame.desc[0]);
                            }
                            break;
                        default:                    /* switch 2 */
                            *var_sl = temp_r0_3 - 1;
                            break;
                        case 0xF0:                  /* switch 2 */
                            temp_r1_4 = frame.heights[0] & 1;
                            frame.heights[0] -= 1;
                            if ((temp_r1_4 != 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0) && (sub_0800CCCC() == 0)) {
                                if (!(gUnk_03002344 & 1)) {
                                    sub_08000AF0(0x17U, (const void *)frame.desc[3], 2U);
                                }
                                if ((gUnk_03003170.curLevel == 4) && (sub_0800CDC0() != 0)) {
                                    sp98 = 0;
                                }

                                d739Draw(*spCC, *spD0, spBC >> 0x10, 0, (u8)sp98, (u8 *)frame.desc+0x1C, frame.desc[2], frame.desc[0]);
                            }
                            break;
                        }
                        var_sl += 1;
                        var_r7_3++;
                        var_r8++;
                        var_r9_4 += 1;
                        if (var_r9_4 < sp9C) {
                            goto loop_114;
                        }
                    }
                }
                sub_080003F0();

    }
loop_149:
    if (sp94 < sp9C) {
        if (spA4 != sub_080020F4()) goto block_77;
        if (((u32) (u16) (D739_U16(sp84,0x20) - 0xB) > 1U) && (sub_0800D11C() == 0)) goto block_77;
    }
    }
    while (*spD4 == 0) {
        sub_080003F0();
    }
    temp_r2_6 = (s32 *)(spC0 + ((u8 *)d739Flags));
    *temp_r2_6 &= ~(1 << spA8);
}


#else
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08072390);
#endif
#ifdef NONMATCHING
#define D75_U8(p,o) (*(u8 *)((u8 *)(p)+(o)))
#define D75_S16(p,o) (*(s16 *)((u8 *)(p)+(o)))
#define D75_U16(p,o) (*(u16 *)((u8 *)(p)+(o)))
#define D75_U32(p,o) (*(u32 *)((u8 *)(p)+(o)))
#define D75_PTR(p,o) (*(u8 **)((u8 *)(p)+(o)))
extern u32 d75Flags[] asm("gUnk_030063E0");
extern u8 d75Ranges[] asm("gUnk_084EC12C");
extern u16 d75Dirs[] asm("gUnk_0849E730");
void *d75Alloc(void *,s32) asm("sub_0801E164");
void d75Init(void *,s32,s32,s32,s32) asm("sub_08065158");
void d75Coords(s32,s32,s16 *,s16 *,s32,void *) asm("sub_0800BC08");
void d75Draw(s16,s16,u16,u16,u32,void *,u32,u32) asm("sub_08007870");
void sub_08072D5C(u8 *arg0) {
    struct { u32 desc[13]; u8 targets[8]; u8 delays[8]; u16 xs[6]; s16 ys[6]; s16 x,y; u8 * sp70; void * sp74; s32 sp78; s32 sp7C; u32 sp80; u32 sp84; u32 sp88; s32 sp8C; u32 sp90; s32 sp94; s32 sp98; s32 sp9C; s32 spA0; s16 * spA4; s16 * spA8; u16 * spAC; } frame;
    register u16 *ready75 asm("r9");
    s16 temp_r1_6;
    s32 var_r2;
    s32 var_r2_2;
    s32 var_r2_3;
    s32 var_r2_4;
    s32 *temp_r2_6;
    s32 *temp_r4_2;
    s32 temp_r0_2;
    u8 *temp_r0_8;
    u8 *temp_r0_9;
    s32 temp_r2_5;
    s32 temp_r4_3;
    s32 temp_r4_4;
    s32 temp_r4_5;
    s32 temp_r4_6;
    s32 temp_r7;
    u32 costDelta;
    u32 temp_r1;
    register u32 temp_r2 asm("sl");
    u16 temp_r3_2;
    u16 var_r5;
    u16 var_r7;
    u32 temp_r0;
    u32 temp_r2_3;
    u32 temp_r2_4;
    u32 temp_r3_3;
    u32 temp_r8;
    u8 *temp_r0_6;
    u8 temp_r0_3;
    u8 temp_r0_7;
    u8 temp_r2_2;
    u8 temp_r9;
    u8 temp_r9_2;
    u8 temp_r9_3;
    void *temp_r0_4;
    void *temp_r0_5;
    void *temp_r1_2;
    void *temp_r1_3;
    void *temp_r1_4;
    void *temp_r1_5;
    void *temp_r3;
    void *temp_r4;
    void *temp_r5;
    void *temp_r5_2;
    void *temp_r6;

    frame.sp70 = arg0;
    frame.sp8C = (s32) (u16) sub_080020F4();
    temp_r0 = D75_U32(arg0,0);
    frame.sp90 = temp_r0;
    frame.sp94 = D75_U32(frame.sp70,0x4);
    temp_r2 = D75_U16(frame.sp70,0x14);
    frame.sp78 = (s32) temp_r2;
    if (temp_r0 <= 3U) {
        frame.sp74 = (0x14C * frame.sp90) + ((u8 *)gUnk_03003CE0);
    }
    if (frame.sp8C == frame.sp90) {
        temp_r4 = (0x14C * sub_080020F4()) + ((u8 *)gUnk_03003CE0);
        costDelta = (u16)(sub_0806898C(D75_U32(frame.sp70,0xC), (s32) D75_U32(frame.sp70,0x14)) - 1);
        temp_r1 = D75_U16(temp_r4,0xC2) - costDelta;
        D75_U16(temp_r4,0xC2) = temp_r1;
        if ((s32) (temp_r1 << 0x10) < 0) {
            D75_U16(temp_r4,0xC2) = 0U;
        }
    }
    frame.xs[0] = 0;
    frame.ys[0] = 0;
    frame.delays[0] = 0;
    var_r7 = 1;
    ready75 = (u16 *)((u8 *)frame.sp74 + 0xB2);
    asm("" : "+r"(ready75));
    frame.spA0 = frame.sp90 * 4;
    do {
        frame.xs[var_r7] = 0;
        frame.ys[var_r7] = 0;
        (&frame.delays[0])[var_r7] = (sub_080008C8() % 20U) + 0xA + (&frame.delays[0])[var_r7 - 1];
        var_r7 += 1;
    } while ((u32) var_r7 <= 4U);
    if (frame.sp78 != 0) {
        *ready75 = 2U;
    }
    if ((u32) *ready75 <= 1U) {
        temp_r4_2 = (s32 *)(frame.spA0 + ((u8 *)d75Flags));
loop_11:
        if ((D75_U16(frame.sp74,0x20) == 0xA) || !(2 & D75_U16(gUnk_03005CF4,0x4))) {
            *temp_r4_2 &= ~(1 << frame.sp94);
            return;
        }
        sub_080003F0();
        if ((u32) *ready75 > 1U) {
            goto block_15;
        }
        goto loop_11;
    }
block_15:
    temp_r1_2 = D75_PTR(frame.sp74,0x148);
    frame.sp7C = ((u16) D75_U16(temp_r1_2,0x0) >> 4) << 8;
    frame.sp80 = (u32) (D75_U16(temp_r1_2,0x2) << 0x14) >> 0xC;
    var_r5 = 0;
    frame.sp88 = 0;
    temp_r0_2 = sub_0800CDF8();
    frame.spAC = frame.sp74 + 0xB6;
    if (temp_r0_2 != 0) {

    } else if ((u32) D75_U32(frame.sp70,0x8) <= 3U) {
        temp_r8 = sub_08002164();
        var_r7 = 0;
loop_32:
        if (var_r7 < temp_r8) {
            if (sub_0800CD8C() != 0) {

            } else {
                temp_r6 = (0x14C * var_r7) + ((u8 *)gUnk_03003CE0);
                temp_r3 = D75_PTR(temp_r6,0x148);
                if (((u32) (D75_U8(temp_r3,0x0) << 0x1C) >> 0x1C) != 0xE) {
                    temp_r2_2 = D75_U8(temp_r6,0x68);
                    if ((temp_r2_2 != D75_U8(frame.sp74,0x68)) && (D75_U16(temp_r6,0x20) != 0xB) && (temp_r2_2 != 0)) {
                        frame.x = ((u16) D75_U16(temp_r3,0x0) >> 4) - (frame.sp7C >> 8);
                        temp_r3_2 = ((u32) (D75_U16(temp_r3,0x2) << 0x14) >> 0x14) - ((s32) frame.sp80 >> 8);
                        frame.y = temp_r3_2;
                        var_r2 = frame.x;
                        if ((s32) var_r2 < 0) {
                            var_r2 = 0 - var_r2;
                        }
                        temp_r1_3 = (frame.sp78 * 4) + ((u8 *)&d75Ranges);
                        if ((s32) var_r2 < (s32) D75_S16(temp_r1_3,0x0)) {
                            var_r2_2 = (s16) temp_r3_2;
                            if ((s32) var_r2_2 < 0) {
                                var_r2_2 = 0 - var_r2_2;
                            }
                            if ((s32) var_r2_2 < (s32) D75_S16(temp_r1_3,0x2)) {
                                temp_r4_3 = (s32) ((temp_r2 * 0x7D0) + 0xFFFFFC18) / (s32) (D75_U32(temp_r6,0x48) + D75_S16(temp_r6,0x3C));
                                if ((u32) temp_r4_3 > (u32) (sub_080008C8() % 100U)) {
                                    temp_r2_3 = frame.sp88;
                                    frame.sp88 = (u32) (u16) (temp_r2_3 + 1);
                                    *(&frame.targets[0] + temp_r2_3) = (s8) var_r7;
                                    var_r5 += 1;
                                }
                            }
                        }
                    }
                }
                var_r7 = (u32) (u16) (var_r7 + 1);
                goto loop_32;
            }
        }
    } else {
        var_r7 = 0;
loop_48:
        if ((var_r7 <= 4U) && (sub_0800CD8C() == 0)) {
            if (gUnk_030056FC & (1 << var_r7)) {
                temp_r6 = ((u8 *)gUnk_030056F4) + (var_r7 * 0x2E0);
                if ((D75_U16(temp_r6,0xC) != 0xB) && (D75_U8(temp_r6,0x1DC) != 0)) {
                    frame.x = (s16) ((u32) (D75_U32(temp_r6,0x14) - frame.sp7C) >> 8);
                    temp_r3_3 = (u32) ((D75_U32(temp_r6,0x18) - frame.sp80) << 8) >> 0x10;
                    frame.y = (u16) temp_r3_3;
                    var_r2_3 = frame.x;
                    if ((s32) var_r2_3 < 0) {
                        var_r2_3 = 0 - var_r2_3;
                    }
                    temp_r1_4 = (frame.sp78 * 4) + ((u8 *)&d75Ranges);
                    if ((s32) var_r2_3 < (s32) D75_S16(temp_r1_4,0x0)) {
                        var_r2_4 = (s16) temp_r3_3;
                        if ((s32) var_r2_4 < 0) {
                            var_r2_4 = 0 - var_r2_4;
                        }
                        if ((s32) var_r2_4 < (s32) D75_S16(temp_r1_4,0x2)) {
                            temp_r4_4 = (s32) ((temp_r2 * 0x7D0) + 0xFFFFFC18) / (s32) (D75_U32(temp_r6,0x214) + D75_S16(temp_r6,0x208));
                            if ((u32) temp_r4_4 > (u32) (sub_080008C8() % 100U)) {
                                temp_r2_4 = frame.sp88;
                                frame.sp88 = (u32) (u16) (temp_r2_4 + 1);
                                *(&frame.targets[0] + temp_r2_4) = (s8) var_r7;
                                var_r5 += 1;
                            }
                        }
                    }
                }
            }
            var_r7 = (u32) (u16) (var_r7 + 1);
            goto loop_48;
        }
    }
    if (((frame.sp8C == frame.sp90) || (frame.sp90 > 3U)) && (sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
        sub_0805865C(0x16B);
    }
    d75Init(frame.desc, 0x5008D, 8, -1, 0);
    D75_U8(frame.desc,0x1C) = 7;
    D75_U8(frame.desc,0x1D) = 8;
    if (var_r5 == 0) {
        temp_r1_6 = *(u16 *)((((u8) D75_U8(D75_PTR(frame.sp74,0x148),3) >> 4) * 2) + ((u8 *)&d75Dirs)) * 0x10;
        frame.sp84 = 0;
        temp_r2_5 = (s32) (frame.sp7C + (gUnk_080B9704[temp_r1_6 + 0x40] * 0x1E)) >> 8;
        temp_r7 = (s32) (frame.sp80 + (gUnk_080B9704[temp_r1_6] * 0x1E)) >> 8;
        frame.sp98 = temp_r2_5 << 0x10;
        do {

            d75Coords(frame.sp98 >> 0x10, (s32) (s16) temp_r7, &frame.x, &frame.y, 0x30, 0);
            temp_r9_3 = (u8) sub_0800BC44((u32) temp_r2_5, (u32) temp_r7, 0U);

            if (sub_08065370(frame.desc, 0xAU, (s32) &frame.xs[0], (s32) &frame.ys[0], 0) != 0) {
                frame.sp84 = (u32) (u16) (frame.sp84 + 1);
            }
            if ((sub_0800CC98() == 0) && (sub_0800CD8C() == 0) && (sub_0800CCCC() == 0)) {
                if (!(gUnk_03002344 & 1)) {
                    sub_08000AF0(0x17U, (const void *)frame.desc[3], 2U);
                }

                d75Draw(frame.x, (s16) frame.y, 0xA, frame.xs[0], temp_r9_3, (u8 *)frame.desc+0x1C, frame.desc[2], frame.desc[0]);
            }
            sub_080003F0();
        } while (frame.sp84 == 0);
    } else {
        frame.sp84 = 0;
        frame.sp9C = (temp_r2 + 5) * 0x1E;
    goto loop_119;
block_69:
    {

                if ((u32) D75_U32(frame.sp70,0x8) <= 3U) {
                    var_r7 = 0;
                    if (frame.sp88 <= 0U) {

                    } else {
                        frame.spA4 = &frame.x;
                        frame.spA8 = &frame.y;
loop_74:
                        temp_r0_6 = &frame.targets[0] + var_r7;
                        temp_r6 = (0x14C * *temp_r0_6) + ((u8 *)gUnk_03003CE0);
                        temp_r1_5 = D75_PTR(temp_r6,0x148);

                        d75Coords((s32) ((u16) D75_U16(temp_r1_5,0x0) >> 4), (s32) ((u32) (D75_U16(temp_r1_5,0x2) << 0x14) >> 0x14), &frame.x, &frame.y, 0x30, 0);
                        temp_r9_2 = (u8) sub_0800BC44((u32) (frame.sp7C >> 8), (u32) ((s32) frame.sp80 >> 8), 0U);
                        temp_r5_2 = (u8 *)&frame + var_r7;
                        temp_r0_7 = D75_U8(temp_r5_2,0x3C);
                        if (temp_r0_7 == 0) {
                            temp_r4_6 = var_r7 * 2;

                            if (sub_08065370(frame.desc, 0xAU, (s32) (&frame.xs[temp_r4_6 / 2]), (s32) (&frame.ys[temp_r4_6 / 2]), 0) != 0) {
                                frame.sp84 = (u32) (u16) (frame.sp84 + 1);
                                D75_U8(temp_r5_2,0x3C) = 0xF0U;
                                if (frame.sp8C == *temp_r0_6) {
                                    temp_r0_8 = ((u8 *(*)())sub_0801E1D8)(temp_r6, 4, frame.sp8C);
                                    if (temp_r0_8 != 0) {
                                        if ((u32) D75_U16(temp_r0_8,0x6) < (u32) temp_r2) {
                                            D75_U16(temp_r0_8,0x6) = temp_r2;
                                            D75_U16(temp_r0_8,0x0) = D75_U16(&frame.sp9C,0);
                                            D75_U16(temp_r0_8,0x2) = D75_U16(&frame.sp8C,0);
                                            if ((sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                                                sub_0805865C(0x1A);
                                            }
                                        }
                                    } else {
                                        temp_r0_9 = d75Alloc(temp_r6, 4);
                                        if (temp_r0_9 != 0) {
                                            D75_U16(temp_r0_9,0x6) = temp_r2;
                                            D75_U16(temp_r0_9,0x0) = D75_U16(&frame.sp9C,0);
                                            D75_U16(temp_r0_9,0x2) = D75_U16(&frame.sp8C,0);
                                            D75_U16(temp_r0_9,0x4) = 4;
                                        }
                                    }
                                }
                            }
                            if ((sub_0800CC98() == 0) && (sub_0800CD8C() == 0) && (sub_0800CCCC() == 0)) {
                                if (!(gUnk_03002344 & 1)) {
                                    sub_08000AF0(0x17U, (const void *)frame.desc[3], 2U);
                                }

                                d75Draw(*frame.spA4, *frame.spA8, 0xA, frame.xs[temp_r4_6 / 2], temp_r9_2, (u8 *)frame.desc+0x1C, frame.desc[2], frame.desc[0]);
                            }
                        } else if (temp_r0_7 != 0xF0) {
                            D75_U8(temp_r5_2,0x3C) = (u8) (temp_r0_7 - 1);
                        }
                        var_r7 += 1;
                        if ((u32) var_r7 < frame.sp88) {
                            goto loop_74;
                        }
                    }
                } else {
                    var_r7 = 0;
                    if (frame.sp88 <= 0U) {

                    } else {
                        frame.spA4 = &frame.x;
                        frame.spA8 = &frame.y;
loop_98:
                        temp_r6 = ((u8 *)gUnk_030056F4) + (*(&frame.targets[0] + var_r7) * 0x2E0);

                        d75Coords((s32) (D75_U32(temp_r6,0x14) << 8) >> 0x10, (s32) (D75_U32(temp_r6,0x18) << 8) >> 0x10, &frame.x, &frame.y, 0x30, 0);
                        temp_r9 = (u8) sub_0800BC44((u32) (frame.sp7C >> 8), (u32) ((s32) frame.sp80 >> 8), 0U);
                        temp_r5 = (u8 *)&frame + var_r7;
                        temp_r0_3 = D75_U8(temp_r5,0x3C);
                        if (temp_r0_3 == 0) {
                            temp_r4_5 = var_r7 * 2;

                            if (sub_08065370(frame.desc, 0xAU, (s32) (&frame.xs[temp_r4_5 / 2]), (s32) (&frame.ys[temp_r4_5 / 2]), 0) != 0) {
                                frame.sp84 = (u32) (u16) (frame.sp84 + 1);
                                D75_U8(temp_r5,0x3C) = 0xF0U;
                                if (frame.sp8C == frame.sp90) {
                                    temp_r0_4 = sub_0801E20C(temp_r6, 4, (s32) frame.sp90);
                                    if (temp_r0_4 != NULL) {
                                        if ((u32) D75_U16(temp_r0_4,0x6) < (u32) temp_r2) {
                                            D75_U16(temp_r0_4,0x6) = temp_r2;
                                            D75_U16(temp_r0_4,0x0) = D75_U16(&frame.sp9C,0);
                                            D75_U16(temp_r0_4,0x2) = (u16) frame.sp90;
                                            if ((sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                                                sub_0805865C(0x1A);
                                            }
                                        }
                                    } else {
                                        temp_r0_5 = sub_0801E104(temp_r6);
                                        if (temp_r0_5 != NULL) {
                                            D75_U16(temp_r0_5,0x6) = temp_r2;
                                            D75_U16(temp_r0_5,0x0) = D75_U16(&frame.sp9C,0);
                                            D75_U16(temp_r0_5,0x2) = (u16) frame.sp90;
                                            D75_U16(temp_r0_5,0x4) = 4;
                                        }
                                    }
                                }
                            }
                            if ((sub_0800CC98() == 0) && (sub_0800CD8C() == 0) && (sub_0800CCCC() == 0)) {
                                if (!(gUnk_03002344 & 1)) {
                                    sub_08000AF0(0x17U, (const void *)frame.desc[3], 2U);
                                }

                                d75Draw(*frame.spA4, *frame.spA8, 0xA, frame.xs[temp_r4_5 / 2], temp_r9, (u8 *)frame.desc+0x1C, frame.desc[2], frame.desc[0]);
                            }
                        } else if (temp_r0_3 != 0xF0) {
                            D75_U8(temp_r5,0x3C) = (u8) (temp_r0_3 - 1);
                        }
                        var_r7 += 1;
                        if ((u32) var_r7 < frame.sp88) {
                            goto loop_98;
                        }
                    }
                }
                sub_080003F0();

    }
loop_119:
    if (frame.sp84 < frame.sp88) {
        if (frame.sp90 != sub_080020F4()) goto block_69;
        if (((u32) (u16) (D75_U16(frame.sp74,0x20) - 0xB) > 1U) && (sub_0800D11C() == 0)) goto block_69;
    }
    }
    while (*frame.spAC == 0) {
        sub_080003F0();
    }
    temp_r2_6 = (s32 *)(frame.spA0 + ((u8 *)d75Flags));
    *temp_r2_6 &= ~(1 << frame.sp94);
}


#else
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08072D5C);
#endif
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0807356C);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0807386C);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08073CF4);
