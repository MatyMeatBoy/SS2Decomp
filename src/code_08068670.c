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
        enemyIndex = 0;
        localPlayerMask = 1; localPlayerMask = localPlayerMask << localPlayer;
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
                            M2C_FIELD(targetEnemy,u16 *,0x5A)=localPlayerMask | M2C_FIELD(targetEnemy,u16 *,0x5A);
localDone:
                            if ((sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                                sub_0805865C(0x1A);
                            }
                            sub_08069A30(pos.x, pos.y, M2C_FIELD(attack, u32 *, 0x0), (u16) M2C_FIELD(attack, u32 *, 0xC), (s32) (u16) M2C_FIELD(attack, u32 *, 0x14));
                            hitFlags = 2;
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
                sourceStatus=sourcePlayer+0x68;
                temp_r2_3 = M2C_FIELD(targetPlayerAlly, u8 *, 0x68);
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
                                            var_r0_6=(u16 *)gUnk_084EBF1C; var_r0_6=(u16 *)((u8 *)var_r0_6+0x62); goto allyCall;
ally7:
                                            var_r0_6=&effects[M2C_FIELD(attack,u32 *,0x14)];
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
                                    enemyHitHistory = targetPlayerEnemy + 0xE4;
                                    if (M2C_FIELD(enemyHitHistory, u32 *, M2C_FIELD(sourceEnemy, u16 *, 0x0) * 4) != M2C_FIELD(sourceEnemy, u32 *, 0x50)) {
                                        M2C_FIELD(attack, u32 *, 0x8) = (u32) M2C_FIELD(targetPlayerEnemy, u16 *, 0x0);
                                        if (M2C_FIELD(attack, u32 *, 0xC) == 4) {
                                            temp_r4_2 = M2C_FIELD(gUnk_084EBF1C, u16 *, 0x62);
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
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08068F9C);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08069080);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08069224);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08069388);
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
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08069AEC);
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
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806A88C);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806ABC0);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806B3C4);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806BE24);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806C568);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806CDF0);
#ifdef NONMATCHING
struct T072D4Effect { s16 timer; u16 owner, kind, level, a, b, c, d; u8 pad[24]; };
struct T072D4Player { u8 pad0[0x20]; u16 state; u8 pad22[2]; u16 x24, x26; u8 pad28[12]; struct T072D4Effect *effects; u8 pad38[0x2c]; u16 mode; u8 pad66[2]; u8 team; u8 pad69[0x4b]; u16 wait; u8 padB6[12]; s16 resource; u8 padC4[0x84]; u16 *sprite; };
struct T072D4Args { u32 player, bit, f8, value, f10, level; };
extern struct T072D4Player t072D4Players[] asm("gUnk_03003CE0");
extern u32 t072D4Flags[] asm("gUnk_030063E0");
void sub_0806D4A4(struct T072D4Args *arg) {
    u8 list[4];
    u32 x, y;
    u32 bit;
    u32 offset;
    u16 level, range, count, i;
    u32 player;
    s32 local;
    struct T072D4Player *p, *other, *costPlayer; u16 *wait;
    struct T072D4Effect *e, *start;
    u16 *sprite;
    u16 dx, dy, cost;
    s32 ax, ay, limit;
    s32 duration, amount;
    local = sub_080020F4();
    player = arg->player;
    bit = arg->bit;
    level = arg->level;
    range = level;
    if (player <= 3) p = &t072D4Players[player];
    if (local == player) {
        costPlayer = &t072D4Players[sub_080020F4()];
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
    if (local == player && sub_0800CCCC() == 0 && sub_0800CD34() == 0) sub_0805865C(0x166);
    sprite = p->sprite;
    x = sprite[0] >> 4;
    y = ((u32)sprite[1] << 20) >> 20;
    count = 0;
    i = 0;
    goto testPlayers;
nextPlayer:
    other = &t072D4Players[i];
    sprite = other->sprite;
    if ((s32)((u32)((u8 *)sprite)[4] << 26) < 0) goto skipPlayer;
    if (other->team != p->team || other->team == 0) goto skipPlayer;
    dx = (sprite[0] >> 4) - x;
    dy = (((u32)sprite[1] << 20) >> 20) - y;
    if (range != 5) {
        ax = (s16)dx >> 3;
        if (ax < 0) ax = -ax;
        limit = (range + 1) * 2;
        if (ax >= limit) goto skipPlayer;
        ay = (s16)dy >> 3;
        if (ay < 0) ay = -ay;
        if (ay >= limit) goto skipPlayer;
    }
    list[count++] = i;
skipPlayer:
    i++;
testPlayers:
    if (i < sub_08002164()) goto nextPlayer;
    for (i = 0; i < count; i++) sub_08074DE8(list[i], 10);
    if (local != player) {
        for (i = 0; i < count; i++) {
            if (list[i] == local) {
                p = &t072D4Players[local];
                e = p->effects; i = 0;
                duration = (level * 10 + 40) * 60;
                amount = level * 8;
                do {
                    if (e->timer > 0 && e->owner <= 3 && t072D4Players[e->owner].mode == 4 && e->kind == 4) {
                        if (e->level < level) {
                            e->owner = player; e->level = level; e->timer = duration;
                            sub_0801E0BC((u8 *)e + 0x1C, (u16)(level * 10));
                        }
                        goto finish;
                    }
                    i++; e++;
                } while (i <= 7);
                e = p->effects; i = 0;
                do {
                    if (e->timer == -1) {
                        e->owner = player; e->kind = 4; e->level = level;
                        e->timer = (level * 10 + 40) * 60;
                        amount = level * 8;
                        sub_0801E0BC((u8 *)e + 0x1C, (u16)(level * 10));
                        goto finish;
                    }
                    i++; e++;
                } while (i <= 7);
                goto finish;
            }
        }
    } else {
        e = p->effects;
        i = 0;
        start = e;
        duration = (level * 10 + 40) * 60;
        amount = level * 8;
        do {
            if (e->timer > 0 && e->owner <= 3 && t072D4Players[e->owner].mode == 4 && e->kind == 4) {
                if (e->level < level) {
                    e->level = level;
                    e->timer = duration;
                    sub_0801E0BC((u8 *)e + 0x1C, (u16)(level * 10));
                    e->owner = player;
                }
                goto clear;
            }
            i++; e++;
        } while (i <= 7);
        e = start; i = 0;
        do {
            if (e->timer == -1) {
                e->owner = player; e->kind = 4; e->level = level;
                e->timer = (level * 10 + 40) * 60;
                amount = level * 8;
                sub_0801E0BC((u8 *)e + 0x1C, (u16)(level * 10));
                break;
            }
            i++; e++;
        } while (i <= 7);
clear:
        p->x24 = 0; p->x26 = 0;
    }
finish:
    *(u32 *)((u8 *)t072D4Flags + offset) &= ~(1 << bit);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806D4A4);
#endif
#ifdef NONMATCHING
struct T072Effect { s16 timer; u16 owner, kind, level, a, b, c, d; u8 pad[24]; };
struct T072Player { u8 pad0[0x20]; u16 state; u8 pad22[2]; u16 x24, x26; u8 pad28[12]; struct T072Effect *effects; u8 pad38[0x2c]; u16 mode; u8 pad66[2]; u8 team; u8 pad69[0x4b]; u16 wait; u8 padB6[12]; s16 resource; u8 padC4[0x84]; u16 *sprite; };
struct T072Args { u32 player, bit, f8, value, f10, level; };
extern struct T072Player t072Players[] asm("gUnk_03003CE0");
extern u32 t072Flags[] asm("gUnk_030063E0");
void sub_0806D7EC(struct T072Args *arg) {
    u8 list[4];
    u32 x, y;
    u32 bit;
    u32 offset;
    u16 level, range, count, i;
    u32 player;
    s32 local;
    struct T072Player *p, *other, *costPlayer; u16 *wait;
    struct T072Effect *e, *start;
    u16 *sprite;
    u16 dx, dy, cost;
    s32 ax, ay, limit;
    s32 duration, amount;
    local = sub_080020F4();
    player = arg->player;
    bit = arg->bit;
    level = arg->level;
    range = level;
    if (player <= 3) p = &t072Players[player];
    if (local == player) {
        costPlayer = &t072Players[sub_080020F4()];
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
    if (local == player && sub_0800CCCC() == 0 && sub_0800CD34() == 0) sub_0805865C(0x168);
    sprite = p->sprite;
    x = sprite[0] >> 4;
    y = ((u32)sprite[1] << 20) >> 20;
    count = 0;
    i = 0;
    goto testPlayers;
nextPlayer:
    other = &t072Players[i];
    sprite = other->sprite;
    if ((s32)((u32)((u8 *)sprite)[4] << 26) < 0) goto skipPlayer;
    if (other->team != p->team || other->team == 0) goto skipPlayer;
    dx = (sprite[0] >> 4) - x;
    dy = (((u32)sprite[1] << 20) >> 20) - y;
    if (range != 5) {
        ax = (s16)dx >> 3;
        if (ax < 0) ax = -ax;
        limit = (range + 1) * 2;
        if (ax >= limit) goto skipPlayer;
        ay = (s16)dy >> 3;
        if (ay < 0) ay = -ay;
        if (ay >= limit) goto skipPlayer;
    }
    list[count++] = i;
skipPlayer:
    i++;
testPlayers:
    if (i < sub_08002164()) goto nextPlayer;
    for (i = 0; i < count; i++) sub_08074DE8(list[i], 11);
    if (local == player) {
        e = p->effects;
        i = 0;
        start = e;
        duration = (level * 10 + 40) * 60;
        amount = level * 8;
        do {
            if (e->timer > 0 && e->owner <= 3 && t072Players[e->owner].mode == 4 && e->kind == 5) {
                if (e->level <= level) {
                    e->owner = player;
                    e->level = level;
                    e->timer = duration;
                    e->a = amount; e->b = amount; e->c = amount; e->d = amount;
                }
                goto clear;
            }
            i++; e++;
        } while (i <= 7);
        e = start; i = 0;
        do {
            if (e->timer == -1) {
                e->owner = player; e->kind = 5; e->level = level;
                e->timer = (level * 10 + 40) * 60;
                amount = level * 8;
                e->a = amount; e->b = amount; e->c = amount; e->d = amount;
                break;
            }
            i++; e++;
        } while (i <= 7);
clear:
        p->x24 = 0; p->x26 = 0;
    } else {
        for (i = 0; i < count; i++) {
            if (list[i] == local) {
                p = &t072Players[local];
                e = p->effects; i = 0;
                duration = (level * 10 + 40) * 60;
                amount = level * 8;
                do {
                    if (e->timer > 0 && e->owner <= 3 && t072Players[e->owner].mode == 4 && e->kind == 5) {
                        if (e->level <= level) {
                            e->level = level; e->timer = duration;
                            e->a = amount; e->b = amount; e->c = amount; e->d = amount;
                        }
                        goto finish;
                    }
                    i++; e++;
                } while (i <= 7);
                e = p->effects; i = 0;
                do {
                    if (e->timer == -1) {
                        e->owner = player; e->kind = 5; e->level = level;
                        e->timer = (level * 10 + 40) * 60;
                        amount = level * 8;
                        e->a = amount; e->b = amount; e->c = amount; e->d = amount;
                        goto finish;
                    }
                    i++; e++;
                } while (i <= 7);
                goto finish;
            }
        }
    }
finish:
    *(u32 *)((u8 *)t072Flags + offset) &= ~(1 << bit);
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
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806FF1C);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_080710DC);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08072390);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08072D5C);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0807356C);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0807386C);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08073CF4);
