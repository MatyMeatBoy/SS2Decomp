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
struct Position68 { s32 x, y; };
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
    u32 zero;
    register s16 signedDamage asm("r1");
    register s32 extended asm("r2");
    u8 *sourceStatus;
    u8 *targetStatus68;
    s32 radius;
    register u32 id asm("r0");
    register u32 effect asm("r1");
    register s16 damage asm("r2");
    register u32 kind asm("r3");
    u16 *table;
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
    s32 temp_r1;
    s32 var_r0_3;
    register s32 var_r1 asm("r1");
    u16 *var_r0_6;
    u16 *allyEffects68;
    u16 temp_r4_2;
    u16 temp_r4_4;
    register u32 var_r0 asm("r0");
    u16 var_r1_2;
    u32 temp_r0_5;
    u32 temp_r0_6;
    u32 temp_r2;
    u32 playerCount;
    register u32 hitFlags asm("r8");
    u32 enemyIndex;
    register u32 playerIndexEnemy asm("r9");
    u32 playerIndexAlly;
    u8 temp_r2_3;
    u8 *enemyTargetPosition;
    u8 *enemyHitHistory;
    u8 *historyAddress68;
    u32 historyValue68;
    register u32 historyIndex68 asm("r0");
    u8 *playerHitHistory;
    u8 *allyTargetPosition;
    u8 *targetPlayerEnemy;
    u8 *targetPlayerAlly;
    u8 *targetEnemy;
    u8 *allyHistoryAddress68;
    u32 allyHistoryValue68;
    u8 *allyCounterAddress68;
    register u32 allyCounterValue68 asm("r0");

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
radius32:
    radiusValue = 32;
    radius = radiusValue;
    asm volatile("" : : "r"(radiusValue));
    goto radiusDone;
radiusTable: var_r0=radii[M2C_FIELD(attack,u32 *,0x14)];
radiusStore: radius=var_r0;
radiusDone:
    /* Enemy slots are checked first when the target is not a player. */
    if ((u32) M2C_FIELD(attack, u32 *, 0x8) <= 3U) {

    } else {
        {register u32 initialIndex asm("r2")=0;asm("" : "+r"(initialIndex));enemyIndex=initialIndex;}
        {register u32 one asm("r3")=1;asm("" : "+r"(one));localPlayerMask=one;}
        asm("" : "+r"(localPlayerMask));
        {u32 mask=localPlayerMask;u32 shift=localPlayer;localPlayerMask=mask<<shift;}
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
                                u16 *status68 = (u16 *)(targetEnemy + 0x5A);
                                register u32 oldStatus68 asm("r1") = *status68;
                                u32 maskStatus68 = localPlayerMask;
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
                                { u16 *clearStatus68 = (u16 *)(targetEnemy + 0x58);  zero=0; *clearStatus68 = zero; }
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
                                { register u8 *remoteSource68 asm("r1") = sourceEnemy; asm("" : "+r"(remoteSource68)); var_r0_3=M2C_FIELD(remoteSource68,u32 *,0x50); }
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
                                {
                                    u16 *status68 = (u16 *)(targetEnemy + 0x5A);
                                    register u32 oldStatus68 asm("r1") = *status68;
                                    u32 maskStatus68 = localPlayerMask;
                                    asm("" : "+r"(status68), "+r"(oldStatus68), "+r"(maskStatus68));
                                    *status68 = maskStatus68 | oldStatus68;
                                }
remoteDone:
                                if ((sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                                    sub_0805865C(0x1A);
                                }
                                sub_08069A30(pos.x, pos.y, M2C_FIELD(attack, u32 *, 0x0), (u16) M2C_FIELD(attack, u32 *, 0xC), (s32) (u16) M2C_FIELD(attack, u32 *, 0x14));
                                {
                                    register u32 remoteFlags68 asm("r3") = 2;
                                    asm("" : "+r"(remoteFlags68));
                                    hitFlags = remoteFlags68;
                                }
                            }
                        }
                        {
                            register u32 flagLeft68 asm("r0") = hitFlags;
                            asm("" : "+r"(flagLeft68));
                            flagLeft68 |= 1;
                            hitFlags = flagLeft68;
                        }
                    }
                }
            }
        }
        {
            register u32 step68 asm("r2") = 1;
            asm("" : "+r"(step68));
            enemyIndex += step68;
        }
        if (enemyIndex <= 4U) goto loop_15;
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
                                        historyIndex68 = M2C_FIELD(sourcePlayer, u16 *, 0) * 4;
                                        allyHistoryAddress68 = targetPlayerAlly + 0xF8;
                                        historyIndex68 = (u32)allyHistoryAddress68 + historyIndex68;
                                        
                                        allyCounterAddress68 = sourcePlayer + 0xDC;

                                        allyHistoryValue68 = *(u32 *)historyIndex68;
                                        allyCounterValue68 = *(u32 *)allyCounterAddress68;

/* Preserve both pointers in the original order. The unused
                                         * output disappears after the compiler places the copies. */
                                        if (allyHistoryValue68 != allyCounterValue68) {
                                            playerHitHistory = allyHistoryAddress68;
                                        } else {
                                            asm("" : "=r"(temp_r0));
                                            playerHitHistory = allyHistoryAddress68;
                                        }
                                        if (allyHistoryValue68 != allyCounterValue68) {
                                            M2C_FIELD(attack, u32 *, 0x8) = (u32) M2C_FIELD(targetPlayerAlly, u16 *, 0x0);
                                            temp_r0_7 = M2C_FIELD(attack, u32 *, 0xC);
                                            if(temp_r0_7==4) goto ally4;
                                            if(temp_r0_7==7) goto ally7;
                                            sub_080694AC(attack); goto allyDone;
ally4:
                                            var_r0_6=(u16 *)gUnk_084EBF1C;  var_r0_6=(u16 *)((u8 *)var_r0_6+0x62); goto allyCall;
ally7:
                                            allyEffects68 = effects;
                                            var_r0_6 = &allyEffects68[M2C_FIELD(attack,u32 *,0x14)];
allyCall:
                                            temp_r4_4=*var_r0_6;
                                            sub_08029A7C(temp_r4_4,(s16)damage68_raw(attack,0),M2C_FIELD(attack,u32 *,0x14));
allyDone:
                                            historyIndex68 = M2C_FIELD(sourcePlayer, u16 *, 0) * 4;
                                            historyIndex68 = (u32)playerHitHistory + historyIndex68;
                                            *(u32 *)historyIndex68 = M2C_FIELD(sourcePlayer, u32 *, 0xDC);
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

                                    historyAddress68 = targetPlayerEnemy + 0xE4;
                                    historyValue68 = M2C_FIELD(historyAddress68, u32 *, historyIndex68);

                                    historyIndex68 = M2C_FIELD(sourceEnemy, u32 *, 0x50);

                                    enemyHitHistory = historyAddress68;
                                    if (historyValue68 != historyIndex68) {
                                        M2C_FIELD(attack, u32 *, 0x8) = (u32) M2C_FIELD(targetPlayerEnemy, u16 *, 0x0);
                                        if (M2C_FIELD(attack, u32 *, 0xC) == 4) {
                                            {u8 *effectBase=gUnk_084EBF1C;effectBase+=0x62;temp_r4_2=*(u16 *)effectBase;}
                                            sub_08029A7C(temp_r4_2, (s16)damage68_raw(attack, 0), M2C_FIELD(attack, u32 *, 0x14));
                                        } else {
                                            sub_080694AC(attack);
                                        }
                                        historyIndex68 = M2C_FIELD(sourceEnemy, u16 *, 0) * 4;
                                        historyIndex68 = (u32)enemyHitHistory + historyIndex68;
                                        *(u32 *)historyIndex68 = M2C_FIELD(sourceEnemy, u32 *, 0x50);
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
    else { u32 address; u8 **base; base=&attackEnemies69; address=index*0x2E0; address+=(u32)*base; address-=0x978; value=*(s16 *)address; }
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
struct Resist69 {s16 a;u8 pad2[4];s16 b;};
struct EffectPlayer69 {u8 id;u8 pad1[0x72];s8 modifier;u8 pad74[0x6C];u32 state;u8 padE4[0x14C-0xE4];};
struct EffectEnemy69 {u8 pad0[2];u8 id;u8 pad3[0x223];u8 state;};
struct Payload69 {union {u32 raw;struct {u32 who:8,kind:8,upper:16;} bits;} control;union {u32 raw;struct {u32 value:16,upper:16;} bits;} amount;};
extern struct EffectPlayer69 effectPlayers69[] asm("gUnk_03003CE0");
extern u8 *effectEnemies69 asm("gUnk_030056F4");
extern u8 *effectStats69 asm("gUnk_030034E0");
extern void effectApply69(struct Payload69 *) asm("sub_08067D28");
extern void effectFeedback69(u32,u32,void *) asm("sub_08069224");
void sub_08069080(struct Resist69 *res,u16 magnitude,u32 level,u32 unused,u32 target,s32 kind)
{
    /* The original preserves the incoming stack bits outside the fields written. */
    struct Payload69 packet;
    s32 random;
    u32 probability;
    u8 who;
    struct EffectEnemy69 *enemy;
    struct EffectPlayer69 *player;
    random=sub_080008C8()%100U;
    switch(kind) {
    case 1: probability=(100-res->a)*((level*10)+5)/25U; break;
    case 4: probability=(100-res->b)*((level*10)+5)/50U; break;
    default:return;
    }
    if(target==sub_080020F4()) goto modify;
    if(!sub_0800CF80()) goto afterModify;
    { u32 low; low=target; asm("" : "+r"(low)); if(low>3) goto afterModify; }
modify:
    probability=(s32)(probability*effectPlayers69[target].modifier)/100;
afterModify:;
    if((s32)probability>(s32)random) packet.control.bits.kind=kind;
    switch((u8)(packet.control.raw>>8)) {
    case 1: random=sub_080008C8()%100U+450; break;
    case 4: random=sub_080008C8()%100U+700; break;
    default:return;
    }
    magnitude=(random*magnitude)/1000;
    if(target<=3) {
        player=&effectPlayers69[target];who=player->id;
    } else {
        { u8 **base; u32 offset; base=&effectEnemies69; offset=target*0x2E0; offset-=0xB80; enemy=(struct EffectEnemy69 *)((u32)*base+offset); }
        
        if(enemy->state==3)return;
        who=enemy->id;
    }
    packet.control.bits.who=who;
    { register u32 word asm("r1"); word=packet.amount.raw&0xFFFF0000; word|=magnitude; packet.amount.raw=word; }
    effectApply69(&packet);
    if(target==sub_080020F4() && !sub_0800CF80()) {
        effectFeedback69(packet.control.bits.kind,magnitude,effectStats69+0x24);
        player->state=kind;
    }
}
s32 sub_08069224(u32 kind,u16 magnitude,s16 *stats)
{
    s32 stat;
    s32 chance;
    u32 random;
    if(sub_0800CF80()) return 0;
    random=sub_080008C8()%100U;
    switch(kind) {
    case 0:return 0;
    case 1:stat=stats[0];break;
    case 2:stat=stats[1];break;
    case 3:stat=stats[2];break;
    case 4:stat=stats[3];break;
    case 5:stat=stats[4];break;
    case 6:case 7:stat=stats[5];break;
    }
    chance=(magnitude*6-stat+50)/(stat+1)-2;
    if(chance<0) chance=0;
    if(random<(u32)chance) {
        switch(kind) {
        case 1: if(++stats[0]>100) stats[0]=100; else sub_08022200(sub_080020F4(),kind); break;
        case 2: if(++stats[1]>99) stats[1]=100; else sub_08022200(sub_080020F4(),kind); break;
        case 3: if(++stats[2]>100) stats[2]=100; else sub_08022200(sub_080020F4(),kind); break;
        case 4: if(++stats[3]>100) stats[3]=100; else sub_08022200(sub_080020F4(),kind); break;
        case 5: if(++stats[4]>100) stats[4]=100; else sub_08022200(sub_080020F4(),kind); break;
        case 6:case 7: if(++stats[5]>100) stats[5]=100; else sub_08022200(sub_080020F4(),kind); break;
        }
    }
    return kind;
}
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
struct HitAttack69 {u32 attacker,unk4,target,kind,power,level;};
struct HitPacket69 {union {u32 word;u8 byte[4];struct {u32 who:8,kind:8,flags:8; s32 direction:8;} bits;} control;union {u32 word;u16 half[2];struct {u32 amount:16,upper:16;} bits;} value;};
struct HitTable69 {s16 power;u16 effect;u8 pad4[20];};
extern u8 hitPlayers69[] asm("gUnk_03003CE0");
extern u8 *hitEnemies69 asm("gUnk_030056F4");
extern u8 *hitStats69 asm("gUnk_030034E0");
extern struct HitTable69 hitTable69[] asm("gUnk_084EBF1C");
extern u16 hitSpecial69[] asm("gUnk_084EC16C");
extern u8 hitDirections69[] asm("gUnk_084790B4");
extern s16 hitDamage69(void *,void *) asm("sub_08068F9C");
extern void hitStatus69(void *,void *,u32,u32,u32) asm("sub_08069388");
extern void hitAux69(void *,u32,u32,u32,u32,s32) asm("sub_08069080");
extern void hitRecover69(u32,u32,void *) asm("sub_08069224");
extern u32 hitArc69(s32,s32) asm("ArcTan2");
extern void hitDisplay69(void *) asm("sub_080660EC");
extern void *hitFreeSlot69(void *,u32) asm("sub_0801E104");
/* Empty constraints retain the original register/address lifetimes; they emit no instructions. */
void sub_080694AC(struct HitAttack69 *arg0) {
    struct HitPacket69 packet;
    register s32 var_r0_2 asm("r0");
    s32 *var_r1_3;
    s32 temp_r0;
    s32 temp_r0_4;
    s32 var_r0_3;
    s32 var_r0_4;
    register s32 var_r1 asm("r1");
    s32 var_r1_2;
    register s32 var_r2 asm("r2");
    s32 var_r4;
    u16 temp_r4;
    u16 temp_r4_2;
    u32 temp_r2;
    u32 temp_r2_2;
    u8 *var_r0;
    u8 *var_r5;
    u8 *var_r7;
    u8 *var_r8;
    void *temp_r0_2;
    void *temp_r0_3;
    void *temp_r2_3;
    void *var_r9;
    void *var_sl;

    if (sub_08058DB0() != 0) {
        return;
    }
    if (sub_0800CDF8() != 0) {
        return;
    }
    packet.control.word &= 0xFFFF00FF;
    temp_r2 = arg0->attacker;
    if (temp_r2 <= 3U) {
        var_r8 = (0x14C * temp_r2) + hitPlayers69;
    } else {
        var_r9 = hitEnemies69 + ((temp_r2 * 0x2E0) + 0xFFFFF480);
    }
    temp_r2_2 = arg0->target;
    if (temp_r2_2 <= 3U) {
        var_r7 = (0x14C * temp_r2_2) + hitPlayers69;
        var_sl = (u8 *)(0x7C+(u32)var_r7);
        var_r4 = 8;
        (*(u32 *)((u8 *)(var_r7)+0x110)) = 0;
        var_r0 = var_r7 + 0x68;
    } else {
        { u8 **base; register u32 offset asm("r0"); base=&hitEnemies69; offset=temp_r2_2*0x2E0; offset-=0xB80; var_r5=(u8 *)((u32)*base+offset); }
        var_sl = var_r5 + 0x218;
        var_r4 = 1;
        var_r0 = var_r5 + 0x1DC;
    }
    if (*var_r0 == 0) {
        return;
    }
    packet.value.bits.amount = (u16)(hitDamage69(arg0,var_sl)/var_r4);
    if (arg0->kind == 0x13) {
        temp_r4 = hitSpecial69[arg0->level];
        if ((u32) temp_r4 >= (u32) (sub_080008C8() % 100U)) {
            packet.control.word = (packet.control.word & 0xFFFF00FF) | 0x300;
        }
    }
    if (arg0->kind == 0xC) {
        if ((*(u32 *)((u8 *)(var_r5)+0x210)) == 0xFF) {
            packet.control.word &= 0xFF00FFFF;
        } else {
            packet.control.word = (packet.control.word & 0xFF00FFFF) | 0x100000;
        }
        if ((u32) arg0->attacker <= 3U) {
            if ((u32) arg0->target <= 3U) {
                temp_r2_3 = (*(u32 *)((u8 *)(var_r7)+0x148));
                var_r0_2 = (s16)(((u16) (*(u16 *)((u8 *)(temp_r2_3)+0x0)) >> 4) - ((s32) (*(u32 *)((u8 *)(var_r8)+0x8C)) >> 8));
                var_r1 = (((u32) ((*(u16 *)((u8 *)(temp_r2_3)+0x2)) << 0x14) >> 0x14) - ((s32) (*(u32 *)((u8 *)(var_r8)+0x90)) >> 8)) << 0x10;
            } else {
                var_r0_2 = (s16) ((s32) (((*(u32 *)((u8 *)(var_r5)+0x14)) - (*(u32 *)((u8 *)(var_r8)+0x8C))) << 8) >> 0x10);
                { register u32 *base asm("r2"); base=(u32 *)(var_r8+0x90); var_r1_2=*(u32 *)(var_r5+0x18); var_r2=*base; }
                
                goto block_27;
            }
        } else {
            if ((u32) arg0->target <= 3U) {
                var_r0_2 = (s16) ((s32) (((*(u32 *)((u8 *)(var_r7)+0x8C)) - (*(u32 *)((u8 *)(var_r9)+0x14))) << 8) >> 0x10);
                { u32 *source; u32 *target; source=(u32 *)(var_r7+0x90); target=(u32 *)(var_r8+0x90); var_r1_2=*source; var_r2=*target; }
            } else {
                var_r0_2 = (s16) ((s32) (((*(u32 *)((u8 *)(var_r5)+0x14)) - (*(u32 *)((u8 *)(var_r9)+0x14))) << 8) >> 0x10);
                var_r1_2 = (*(u32 *)((u8 *)(var_r5)+0x18));
                var_r2 = (*(u32 *)((u8 *)(var_r9)+0x18));
            }
block_27:
            var_r1 = (var_r1_2 - var_r2) << 8;
        }
        { u32 angle; register u32 mask asm("r2"); angle=(u32)(hitArc69(var_r0_2,var_r1>>16)<<16)>>28; angle<<=24; mask=0xFFFFFF;  packet.control.word=(packet.control.word&mask)|angle; }
        asm("" : : : "memory");
        { register u8 *table asm("r1"); register u32 header asm("r2"); u32 direction; u8 *entry; table=hitDirections69; header=packet.control.word; entry=(u8 *)((s8)(header>>24)+(u32)table); direction=*entry; direction<<=24; packet.control.word=(0xFFFFFF&header)|direction; }
    } else {
        packet.control.bits.flags=0; packet.control.bits.direction=0;
    }
    if ((u32) arg0->target <= 3U) {
        packet.control.bits.who=*(u8 *)var_r7;
        if (arg0->target == sub_080020F4()) {
            (*(u16 *)((u8 *)(var_r7)+0x20)) = 0xA;
            (*(u16 *)((u8 *)(var_r7)+0x88)) = (u16) (packet.value.half[0] + (*(u16 *)((u8 *)(var_r7)+0x88)));
            sub_0801F320(var_r7, (u8 *) &packet);
        }
        hitStatus69(&packet, var_sl, (u16) arg0->level, hitTable69[arg0->kind].effect, (s32) (u16) arg0->target);
        if (arg0->kind == 0x12) {
            packet.control.byte[1] = 0U;
        }
        if ((u32) arg0->attacker <= 3U) {
            { u32 index; u8 *base; index=*(u16 *)var_r8; index<<=2; base=var_r7+0xF8;  base+=index; var_r1_3=(s32 *)base; }
            var_r0_4 = (*(u32 *)((u8 *)(var_r8)+0xDC));
        } else {
            { u32 index; register u8 *base asm("r1"); index=*(u16 *)var_r9; index<<=2; base=var_r7+0xE4;  base+=index; var_r1_3=(s32 *)base; }
            var_r0_4 = (*(u32 *)((u8 *)(var_r9)+0x50));
        }
        *var_r1_3 = var_r0_4;
        if (arg0->target == sub_080020F4()) {
            temp_r0_3 = sub_0801E1A4(var_r7, (s32) packet.control.byte[1]);
            if (temp_r0_3 != NULL) {
                sub_0801DB94((s32) (u16) (*(u16 *)((u8 *)(var_r7)+0x0)), temp_r0_3, (s32) packet.control.byte[1]);
            } else {
                temp_r0_4 = sub_0801E164(var_r7, (s32) packet.control.byte[1]);
                if (temp_r0_4 != 0) {
                    sub_0801DB94((s32) (u16) (*(u16 *)((u8 *)(var_r7)+0x0)), (void *) temp_r0_4, (s32) packet.control.byte[1]);
                }
            }
        }
        temp_r4_2 = (u16) (*(u16 *)((u8 *)(var_r7)+0x0));
        if (temp_r4_2 == sub_080020F4()) {
            (*(u32 *)((u8 *)(var_r7)+0xE0)) = (s32) hitTable69[arg0->kind].effect;
            hitRecover69(packet.control.byte[1], packet.value.half[0], hitStats69 + 0x24);
        }
    } else {
        (*(u16 *)((u8 *)(var_r5)+0xC)) = 0xA;
        packet.control.byte[0] = (s8) (*(u16 *)((u8 *)(var_r5)+0x2));
        { register u16 *sum asm("r2"); register struct HitPacket69 *record asm("r1"); u32 amount; sum=(u16 *)(var_r5+0x4A); record=&packet; amount=record->value.half[0]; amount+=*sum; *sum=amount;
        (*(u32 *)((u8 *)(var_r5)+0x4C)) = record->value.half[0];
        sub_0801F2CC(var_r5,(u8 *)record); }
        if ((u32) arg0->attacker <= 3U) {
            var_r0_3 = (*(u32 *)((u8 *)(var_r8)+0xDC));
        } else {
            { register u8 *source asm("r1"); source=var_r9; asm("" : "+r"(source)); var_r0_3=*(u32 *)(source+0x50); }
        }
        (*(u32 *)((u8 *)(var_r5)+0x54)) = var_r0_3;
        { u32 attacker; attacker=arg0->attacker; *(u16 *)(var_r5+0x58)=attacker; }
        (*(u16 *)((u8 *)(var_r5)+0x5A)) = (u16) ((1 << *(volatile u32 *)&arg0->attacker) | (*(u16 *)((u8 *)(var_r5)+0x5A)));
        hitStatus69(&packet, var_sl, (u16) arg0->level, hitTable69[arg0->kind].effect, (s32) (u16) arg0->target);
        if (arg0->kind == 0x12) {
            packet.control.byte[1] = 0U;
        }
        { register u32 stateOffset asm("r2"); register u8 *stateAddress asm("r0"); stateOffset=0x226; asm("" : "+r"(stateOffset)); stateAddress=var_r5+stateOffset; 
        if (*stateAddress != 3) {
            temp_r0 = sub_0801E244((s32) var_r5, (s32) packet.control.byte[1]);
            if (temp_r0 != 0) {
                sub_0801DB94((*(u16 *)((u8 *)(var_r5)+0x0)) + 4, (void *) temp_r0, (s32) packet.control.byte[1]);
            } else {
                temp_r0_2 = hitFreeSlot69(var_r5,0);
                if (temp_r0_2 != NULL) {
                    sub_0801DB94((*(u16 *)((u8 *)(var_r5)+0x0)) + 4, temp_r0_2, (s32) packet.control.byte[1]);
                }
            }
        }
        } hitDisplay69(&packet);
    }
    hitAux69(var_sl, packet.value.half[0], arg0->level, arg0->attacker, arg0->target, (s32) hitTable69[arg0->kind].effect);
}
struct StatusSprite69 {u32 data,unk4,tiles;u8 *palette;s32 unk10;u32 paletteId,paletteCount;u8 style[16];s16 scale,step,max,min;};
struct StatusPosition69 {u16 x,y,kind,unused6,unused8,slot;};
extern vu32 statusMask69 asm("gUnk_0300641C");
extern void statusInit69(struct StatusSprite69 *,u32,u32,s32,u32) asm("sub_08065158");
extern u32 statusStep69(struct StatusSprite69 *,u32,u16 *,u16 *,u32) asm("sub_08065370");
extern u32 statusCoords69(s32,s32,s16 *,s16 *,u32,u32) asm("sub_0800BC08");
extern void statusDraw69(s32,s32,u32,u32,u32,void *,u32,u32) asm("sub_08007870");
void sub_080698D4(struct StatusPosition69 *pos)
{
    struct StatusSprite69 obj;
    s16 screenX;
    s16 screenY;
    u16 frame;
    u16 timer;
    u32 slot;
    u16 kind;
    u16 x;
    u16 y;
    u16 done;
    u32 second;
    slot=pos->slot;
    kind=pos->kind;
    x=pos->x;
    y=pos->y;
    statusInit69(&obj,0x5008C,8,-1,0);
    obj.style[0]=7;
    obj.style[1]=8;
    switch(kind-1U) {
    case 1:kind=29;break;
    case 0:case 4:kind=28;break;
    case 5:kind=32;break;
    case 13:kind=13;break;
    default:statusMask69 &= ~(1<<slot);return;
    }
    frame=0;
    timer=0;
    do {
        statusCoords69((s16)x,(s16)y,&screenX,&screenY,0x30,0);
        done=statusStep69(&obj,kind,&frame,&timer,0);
        if(!sub_0800CC98() && !sub_0800CD8C() && (second=sub_0800CCCC())==0)
            statusDraw69(screenX,screenY,kind,frame,second,obj.style,obj.tiles,obj.data);
        sub_080003F0();
    } while(!done);
    statusMask69 &= ~(1<<slot);
}
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
struct Z069S {u32 f0,f4,f8,fC;u8 pad10[12];u8 f1C,f1D;u8 pad1E[22];};
struct Z069A {u32 player,bit,target,value,f10,level;};
struct Z069P {u16 id;u8 pad2[30];u16 state;u8 pad22[14];u32 flags;u8 pad34[52];u8 team;u8 pad69[89];u16 resource;u8 padC4[24];u32 counter;u8 padE0[4];u32 ehist[5];u32 phist[4];u8 pad108[64];u16 *sprite;};
struct Z069E {u16 id,target;u8 pad4[4];s16 dir;u8 padA[2];u16 state;u8 padE[6];s32 x,y;u8 pad1C[52];u32 counter,lastHit;u16 owner;u8 pad5A[4];u16 resource;u8 pad60[10];u16 wait;u8 pad6C[368];u8 active;u8 pad1DD[78];u8 threshold;u8 pad22C[180];};
struct Z069Off {s16 x,y;};
extern struct Z069P z069P[] asm("gUnk_03003CE0");
extern u8 *z069EBase asm("gUnk_030056F4");
extern u32 z069F[] asm("gUnk_030063E0");
extern u16 z069Dir[] asm("gUnk_0847AD0A");
extern s16 z069Sin[] asm("gUnk_080B9704");
extern u8 z069Cost[] asm("gUnk_084EBF1C");
extern u8 z069Frm[] asm("gUnk_084790B4");
extern struct Z069Off z069Off[] asm("gUnk_084EBEBC");
extern u8 *z069Cfg asm("gUnk_03005CF4");
extern u32 z069EMask asm("gUnk_030056FC");
extern void z069Animate(void *,u32,u16 *,s16 *,s32) asm("sub_08065370");
extern void z069Coords(s32,s32,s16 *,s16 *,s32,s32) asm("sub_0800BC08");
extern s16 z069Damage(void *,s32) asm("sub_08068F9C");
extern void z069Draw(s32,s32,u16,u16,u32,void *,u32,u32) asm("sub_08007870");
extern s32 z069Effect(void *,void *,s16) asm("sub_0801FB14");
extern s32 z069Hit(s32,s32,void *) asm("sub_08068A00");
extern void z069Init(void *,s32,s32,s32,s32) asm("sub_08065158");
extern void z069Spawn(s32,s32,u32,s32,s32) asm("sub_08069A30");
extern u32 sub_0807A040();
void sub_08069C44(struct Z069A *arg) {
    struct Z069S sprite;
    s16 dx,dy;
    u16 frame;
    s16 phase;
    s32 pos[2];
    s32 size;
    struct Z069E *enemy;
    struct Z069P *p;
    u32 target,timeout,level,kind,dir,player,local,bit;
    u16 angle;
    u16 i;
    u32 count;
    struct Z069E *e;
    struct Z069P *q;
    s32 x,y;
    s32 t;
    u8 shade,tt;
    s16 *cost;
    u8 *costBase;
    u32 costOffset;
    s32 resource;
    struct Z069P *cp;
    u16 *tbl;
    u16 delta;
    s32 v;
    u32 saved;
    s32 *position;

    local=sub_080020F4();
    target=(u16)arg->target;
    player=arg->player; bit=arg->bit;
    level=(u16)arg->level; kind=level; timeout=level;
    phase=0; frame=0;
    if(player<=3) {
        p=&z069P[player];
        saved=p->counter;
    } else {
        enemy=(struct Z069E *)(z069EBase+(player*0x2E0+0xFFFFF480));
        while(enemy->wait<enemy->threshold) {
            if(sub_08056E90()!=0 || sub_0800BA6C()==0 || enemy->state==10 || enemy->state==11) {
                z069F[player]&=~(1<<bit);
                return;
            }
            sub_080003F0();
        }
    }
    if(local!=player) {
        if(player>3) {
            costBase=z069Cost;
            costOffset=level*2+arg->value*24;
            costBase+=6;
            cost=(s16 *)(costOffset+(u32)costBase);
            resource=enemy->resource-*cost; enemy->resource=resource;
            if((s16)resource<0) {
                z069F[player]&=~(1<<bit);
                enemy->resource=0;
                return;
            }
        }
    } else {
        cp=&z069P[sub_080020F4()];
        delta=sub_0806898C(arg->value,arg->level)-1;
        cp->resource-=delta;
        if((s16)cp->resource<0) cp->resource=0;
    }
    if(target<=3) {
        count=sub_08002164();
        for(i=0;i<count;i++) {q=&z069P[i]; if(q->id==target) break;}
        if(i>=count) target=0xFFFF;
    } else {
        for(i=0;i<=4;i++) {
            e=(struct Z069E *)(z069EBase+i*0x2E0);
            if((z069EMask&(1<<i)) && e->target==target) break;
        }
        if(i>4) target=0xFFFF;
    }
    tbl=z069Dir;
    if(player<=3) {
        x=(p->sprite[0]>>4)<<8;
        y=(u32)(p->sprite[1]<<20)>>12;
        dir=((u8 *)p->sprite)[3]>>4;
        angle=tbl[dir];
    } else {
        x=enemy->x; y=enemy->y;
        dir=(u16)enemy->dir;
        angle=tbl[enemy->dir];
    }
    if((local==player || player>3) && sub_0800CCCC()==0 && sub_0800CD34()==0) sub_0805865C(level+0x10E);
    x+=z069Sin[((s16)angle)+0x40]*4;
    y+=z069Sin[((s16)angle)]*4;
    if(level<=5) {
        z069Init(&sprite,0x50049,8,-1,0);
        level=(u16)(level-1);
    } else {
        z069Init(&sprite,0x50048,8,-1,0);
        level=(u16)(level-6);
    }
    level=(u16)(level<<3);
    sprite.f1C=7; sprite.f1D=8;
    frame=0; phase=0;
    timeout=((timeout<<19)+(20<<16))>>16;

    for(;;) {
        v=timeout; timeout=(u16)(v-1);
        if(v==0 || sub_0800BA6C()==0 || (t=sub_08056E90())!=0) break;
        if(player==sub_080020F4()) {
            p->counter=saved;
            if((u16)(p->state-11)<=1 || sub_0800D11C()!=0) break;
        }
        if(z069Hit(x,y,arg)!=0 && kind==0) break;
        if(player==local) {
            position = pos;
            /* Reuse the position address for the Y store and effect call. */
            asm("" : "+r"(position));
            pos[0]=x; position[1]=y; size=0x80008;
            if(z069Effect(position,&size,z069Damage(arg,0))!=0) break;
        }
        tt=sub_0800AE50(x,y,0);
        if((tt&0xF) && !(tt&0x10)) {
            z069Spawn(x,y,player,1,kind);
            break;
        }
        x+=z069Sin[((s16)angle)+0x40]*2;
        y+=z069Sin[((s16)angle)]*2;
        z069Coords((s16)(x>>8),(s16)(y>>8),&dx,&dy,0x30,t);
        shade=sub_0800BC44(x>>8,y>>8,0);
        {
            u32 frameIndex = z069Frm[((s16)angle)>>4];
            u32 animationBase = level;
            z069Animate(&sprite,(u16)(animationBase + frameIndex),&frame,&phase,1);

        }
        if(!(*(u16 *)(z069Cfg+4)&4) && sub_0800CC98()==0 && sub_0800CD8C()==0 && sub_0800CCCC()==0) {
            if(gUnk_03002344&1) sub_08000AF0(0x17,sprite.fC,1);
            if(gUnk_03003170.curLevel==4 && sub_0800CDC0()!=0) shade=0;
            if((gUnk_03002344&1)==(player&1))
                z069Draw(dx+z069Off[z069Frm[((s16)angle)>>4]].x,dy+(&z069Off[0].y)[z069Frm[((s16)angle)>>4]*2],level+dir,frame,shade,&sprite.f1C,sprite.f8,sprite.f0);
        }
        sub_080003F0();
    }
    if(player<=3 && player!=local) p->counter++;
    z069F[player]&=~(1<<bit);
}
void sub_0806A19C(struct Z069A *arg) {
    struct Z069S sprite;
    s16 dx,dy;
    u16 frame;
    s16 phase;
    s32 pos[2];
    s32 size;
    struct Z069E *enemy;
    struct Z069E *e;
    struct Z069P *p;
    struct Z069P *q;
    u32 target,timeout,remaining,kind;
    s32 x;
    u16 angle;
    u32 frm;
    u32 local,player,bit;
    u32 level;
    s32 y;
    u16 i;
    u32 count;
    s32 t;
    u8 shade,tt;
    s16 *cost;
    u8 *costBase;
    u32 costOffset;
    s32 resource;
    struct Z069P *cp;
    u16 *tbl;
    u16 delta;
    s32 v;
    u16 a;
    s16 sa,sang,diff;
    s32 d;
    s32 idx;
    s16 a0;

    local=sub_080020F4();
    target=(u16)arg->target;
    player=arg->player; bit=arg->bit;
    remaining=(u16)arg->level; kind=remaining; level=remaining; timeout=remaining;
    frame=0; phase=0;
    if(player<=3) {
        p=&z069P[player];
    } else {
        enemy=(struct Z069E *)(z069EBase+(player*0x2E0+0xFFFFF480));
        while(enemy->wait<enemy->threshold) {
            if(sub_08056E90()!=0 || sub_0800BA6C()==0 || enemy->state==10 || enemy->state==11) {
                z069F[player]&=~(1<<bit);
                return;
            }
            sub_080003F0();
        }
    }
    if(local!=player) {
        if(player>3) {
            costBase=z069Cost;
            costOffset=level*2+arg->value*24;
            costBase+=6;
            cost=(s16 *)(costOffset+(u32)costBase);
            resource=enemy->resource-*cost; enemy->resource=resource;
            if((s16)resource<0) {
                z069F[player]&=~(1<<bit);
                enemy->resource=0;
                return;
            }
        }
    } else {
        cp=&z069P[sub_080020F4()];
        delta=sub_0806898C(arg->value,arg->level)-1;
        cp->resource-=delta;
        if((s16)cp->resource<0) cp->resource=0;
    }
    if(player<=3) {
        x=(p->sprite[0]>>4)<<8;
        y=(u32)(p->sprite[1]<<20)>>12;
        idx=((u8 *)p->sprite)[3]>>4;
        angle=z069Dir[idx];
    } else {
        x=enemy->x; y=enemy->y;
        angle=z069Dir[enemy->dir];
    }
    x+=z069Sin[((s16)angle)+0x40]*4;
    y+=z069Sin[((s16)angle)]*4;
    if((local==player || player>3) && sub_0800CCCC()==0 && sub_0800CD34()==0) sub_0805865C(level+0x115);
    retarget:
        if(level<=5) {
            z069Init(&sprite,0x50091,8,-1,0);
            level=(u16)(level-1);
        } else {
            z069Init(&sprite,0x5008E,8,-1,0);
            level=(u16)(level-6);
        }
        sprite.f1C=7; sprite.f1D=8;
        frame=0; phase=0;
        if(target<=3) {
            count=sub_08002164();
            for(i=0;i<count;i++) {q=&z069P[i]; if(q->id==target) break;}
            if(i>=count) target=0xFFFF;
        } else {
            for(i=0;i<=4;i++) {
                e=(struct Z069E *)(z069EBase+i*0x2E0);
                if((z069EMask&(1<<i)) && e->target==target) break;
            }
            if(i>4) target=0xFFFF;
        }
        if(target!=0xFFFF) {
            if(target<=3) {
                dx=(q->sprite[0]>>4)-(x>>8);
                dy=((u32)(q->sprite[1]<<20)>>20)-(y>>8);
            } else {
                dx=(u32)(e->x-x)>>8;
                dy=(u32)(e->y-y)>>8;
            }
            a=(u32)(ArcTan2(dx,dy)<<16)>>24;
            a0=a;
            d=a0-(s16)angle;
            if(d>0x80) a=a0-0x100;
            else if(d<-0x80) a=0x100|a0;
            sa=a; sang=angle;
            diff=sa-sang;
            sang=sang+diff;
            angle=sang;
            if(sang<0) angle=sang+0x100;
            sang=angle;
            if(sang>0x100) angle=sang-0x100;
            angle&=0xFF;
        }
        frm=z069Frm[((s16)angle)>>4];
        level=((level<<19)>>16);
        timeout=((timeout<<19)+(20<<16))>>16;
        for(;;) {
            v=timeout; timeout=(u16)(v-1);
            if(v==0) break;
            if(sub_0800BA6C()==0) break;
            if(sub_08056E90()!=0) break;
            if(player==local) {
                if((u16)(p->state-11)<=1 || sub_0800D11C()!=0) break;
            }
            if((t=z069Hit(x,y,arg)&2)!=0) break;
            if(player==local) {
                pos[0]=x; pos[1]=y; size=0x80008;
                if(z069Effect(pos,&size,z069Damage(arg,0))!=0) break;
            }
            tt=sub_0800AE50(x,y,0);
            if((tt&0xF) && !(tt&0x10)) {
                z069Spawn(x,y,player,2,kind);
                goto end;
            }
            x+=z069Sin[((s16)angle)+0x40]*2;
            y+=z069Sin[((s16)angle)]*2;
            z069Coords((s16)(x>>8),(s16)(y>>8),&dx,&dy,0x30,0);
            shade=sub_0800BC44(x>>8,y>>8,0);
            z069Animate(&sprite,(u16)(z069Frm[((s16)angle)>>4]+level),&frame,&phase,1);
            if(!(*(u16 *)(z069Cfg+4)&4) && sub_0800CC98()==0 && sub_0800CD8C()==0 && sub_0800CCCC()==0) {
                if(!(gUnk_03002344&1)) sub_08000AF0(0x17,sprite.fC,2);
                if(gUnk_03003170.curLevel==4 && sub_0800CDC0()!=0) shade=0;
                if(sub_0800CB9C()!=0) {
                    if((gUnk_03002344&1)==(player&1))
                        z069Draw(dx+z069Off[z069Frm[((s16)angle)>>4]].x,dy+(&z069Off[0].y)[z069Frm[((s16)angle)>>4]*2],frm+level,frame,shade,&sprite.f1C,sprite.f8,sprite.f0);
                } else
                    z069Draw(dx+z069Off[z069Frm[((s16)angle)>>4]].x,dy+(&z069Off[0].y)[z069Frm[((s16)angle)>>4]*2],frm+level,frame,shade,&sprite.f1C,sprite.f8,sprite.f0);
            }
            sub_080003F0();
        }
        if(remaining==0 || (remaining=(u16)(remaining-1))==0) goto end;

        level=remaining; timeout=remaining; arg->level=remaining;
        target=(u16)sub_0807A040((u16)player,target,x,y);
        if(target!=0xFF) goto retarget;

end:
    if(player<=3 && player!=local) p->counter++;
    z069F[player]&=~(1<<bit);
}
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
    s16 *cost;
    u32 costOffset;
    u8 *costBase;
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
struct T071S {u32 f0,f4,f8,fC;u8 pad10[12];u8 f1C,f1D;u8 pad1E[22];};
struct T071A {u32 player,bit,target,value,f10,level;};
struct T071P {u16 id;u8 pad2[30];u16 state;u8 pad22[14];u32 flags;u8 pad34[52];u8 team;u8 pad69[89];u16 resource;u8 padC4[24];u32 counter;u8 padE0[4];u32 ehist[5];u32 phist[4];u8 pad108[64];u16 *sprite;};
struct T071E {u16 id,target;u8 pad4[4];s16 dir;u8 padA[2];u16 state;u8 padE[6];s32 x,y;u8 pad1C[52];u32 counter,lastHit;u16 owner;u8 pad5A[4];u16 resource;u8 pad60[10];u16 wait;u8 pad6C[368];u8 active;u8 pad1DD[78];u8 threshold;u8 pad22C[180];};
extern struct T071P t071P[] asm("gUnk_03003CE0");
extern u8 *t071EBase asm("gUnk_030056F4");
extern u32 t071EMask asm("gUnk_030056FC");
extern u32 t071F[] asm("gUnk_030063E0");
extern u16 t071Dir[] asm("gUnk_0847AD0A");
extern s16 t071Sin[] asm("gUnk_080B9704");
extern u8 t071Cost[] asm("gUnk_084EBF1C");
extern u16 t071Rad[] asm("gUnk_084EC17C");
extern u8 t071Frm[] asm("gUnk_084790B4");
struct T071Off {s16 x,y;};
extern struct T071Off t071Off[] asm("gUnk_084EBEBC");
struct T071Nib {u8 lo:4; u8 hi:4;};
extern u8 *t071Cfg asm("gUnk_03005CF4");
extern u8 t071Mode[] asm("gUnk_03003170");
extern void x071Init(void *,s32,s32,s32,s32) asm("sub_08065158");
extern void x071Coords(s32,s32,s16 *,s16 *,s32,void *) asm("sub_0800BC08");
extern void x071Animate(void *,u32,u16 *,s16 *,s32) asm("sub_08065370");
extern void x071Spawn(s32,s32,u32,s32,s32) asm("sub_08069A30");
extern s32 x071Effect(void *,void *,s16) asm("sub_0801FB14");
extern s16 x071Damage(void *,s32) asm("sub_08068F9C");
extern void x071Impact(void *,s32,s32) asm("sub_08079ED0");
extern void x071Draw(s32,s32,u16,u16,u32,void *,u32,u32) asm("sub_08007870");
void sub_0806ABC0(struct T071A *arg) {
    struct T071S sprite;
    s16 dx,dy;
    u16 frame;
    s16 phase;
    s32 pos[2];
    s32 size;
    struct T071E *enemy;
    struct T071P *p;
    u32 target,timeout,level,kind,dir,player,bit,local;
    u16 angle;
    u16 i;
    u32 count;
    struct T071E *e;
    struct T071P *q;
    s32 x,y;
    u32 radius;
    u8 shade,t;
    s32 hit;
    s16 *cost;
    u8 *costBase;
    u32 costOffset;
    s32 resource;
    u32 tmp;
    u16 *res;
    struct T071P *cp;
    u16 *tbl;
    u16 delta;
    s32 v;

    local=sub_080020F4();
    target=(u16)arg->target;
    player=arg->player; bit=arg->bit;
    level=(u16)arg->level; kind=level; timeout=level;
    phase=0; frame=0;
    if(target<=3) {
        count=sub_08002164();
        for(i=0;i<count;i++) {q=&t071P[i]; if(q->id==target) break;}
        if(i>=count) target=0xFFFF;
    } else {
        for(i=0;i<=4;i++) {
            enemy=(struct T071E *)(t071EBase+i*0x2E0);
            if((t071EMask&(1<<i)) && enemy->target==target) break;
        }
        if(i>4) target=0xFFFF;
    }
    tbl=t071Dir;
    if(player<=3) {
        p=&t071P[player];
        x=(p->sprite[0]>>4)<<8;
        y=(u32)(p->sprite[1]<<20)>>12;
        dir=((u8 *)p->sprite)[3]>>4;
        angle=tbl[dir];
    } else {
        enemy=(struct T071E *)(t071EBase+(player*0x2E0+0xFFFFF480));
        x=enemy->x; y=enemy->y;
        dir=(u16)enemy->dir;
        angle=tbl[enemy->dir];
        while(enemy->wait<enemy->threshold) {
            if(sub_08056E90()!=0 || sub_0800BA6C()==0 || enemy->state==10 || enemy->state==11) {
                t071F[player]&=~(1<<bit);
                return;
            }
            sub_080003F0();
        }
    }
    if(sub_080020F4()!=player) {
        if(player>3) {
            costBase=t071Cost;
            costOffset=level*2+arg->value*24;
            costBase+=6;
            cost=(s16 *)(costOffset+(u32)costBase);
            resource=enemy->resource-*cost; enemy->resource=resource;
            if((s16)resource<0) {
                t071F[player]&=~(1<<bit);
                enemy->resource=0;
                return;
            }
        }
    } else {
        cp=&t071P[sub_080020F4()];
        delta=sub_0806898C(arg->value,arg->level)-1;
        cp->resource-=delta;
        if((s16)cp->resource<0) cp->resource=0;
    }
    if(sub_080020F4()==player && sub_0800CCCC()==0 && sub_0800CD34()==0) sub_0805865C(level+0x147);
    x+=t071Sin[((s16)angle)+0x40]*4;
    y+=t071Sin[((s16)angle)]*4;
    if(level<=4) {
        x071Init(&sprite,0x50051,8,-1,0);
        level=(u16)(level-1);
    } else if(level<=6) {
        x071Init(&sprite,0x50054,8,-1,0);
        level=(u16)(level-5);
    } else {
        x071Init(&sprite,0x5005F,8,-1,0);
        level=(u16)(level-7);
    }
    level=(u16)(level<<3);
    sprite.f1C=7; sprite.f1D=8;
    frame=0; phase=0;
    timeout=(u16)(timeout*8+20);
    radius=t071Rad[arg->level];
    hit=0;
    for(;;) {
        v=timeout; timeout=(u16)(v-1);
        if(v==0 || sub_0800BA6C()==0) break;
        if(player==sub_080020F4() && ((u16)(p->state-11)<=1 || sub_0800D11C()!=0)) break;
        if(target>3) {
            for(i=0;i<=4;i++) {
                if(!(t071EMask&(1<<i))) continue;
                e=(struct T071E *)(t071EBase+i*0x2E0);
                if(!e->active) continue;
                dx=(u32)(e->x-x)>>8;
                dy=(u32)(e->y-y)>>8;
                if((dx<0?-dx:dx)>=(s32)radius || (dy<0?-dy:dy)>=(s32)radius) continue;
                if(arg->player<=3) {
                    if(local==arg->player) {
                        if(e->state!=11 && e->lastHit!=p->counter) {hit=1;break;}
                    } else e->owner=arg->player;
                } else if(sub_08002204()!=0 && e->id!=arg->player-4 && e->state!=11 && e->lastHit!=p->counter) {hit=1;break;}
            }
        }
        if(hit) break;
        count=sub_08002164();
        if(arg->player<=3) {
            for(i=0;i<count;i++) {
                q=&t071P[i];
                if(q->team==p->team || (u32)(((u8 *)q->sprite)[0]<<28)>>28==0xE || q->team==0) continue;
                dx=(q->sprite[0]>>4)-(x>>8);
                dy=((u32)(q->sprite[1]<<20)>>20)-(y>>8);
                if((dx<0?-dx:dx)>=(s32)radius || (dy<0?-dy:dy)>=(s32)radius) continue;
                if(local==i && q->state!=11 && q->phist[p->id]!=p->counter) {hit=1;break;}
            }
        } else {
            for(i=0;i<count;i++) {
                q=&t071P[i];
                if((q->flags&0x2000) || (u32)(((u8 *)q->sprite)[0]<<28)>>28==0xE || q->team==0 || q->state==12) continue;
                dx=(q->sprite[0]>>4)-(x>>8);
                dy=((u32)(q->sprite[1]<<20)>>20)-(y>>8);
                if((dx<0?-dx:dx)>=(s32)radius || (dy<0?-dy:dy)>=(s32)radius) continue;
                if(local==i && q->state!=11 && q->ehist[enemy->id]!=enemy->counter) {hit=1;break;}
            }
        }
        if(hit) break;
        t=sub_0800AE50(x,y,0);
        if((t&0xF) && !(t&0x10)) {
            x071Spawn(x,y,player,13,kind);
            hit=1; break;
        }
        if(player==local) {
            pos[0]=x; pos[1]=y; size=0x80008;
            if(x071Effect(pos,&size,x071Damage(arg,0))!=0) {hit=1;break;}
        }
        x+=t071Sin[((s16)angle)+0x40]*2;
        y+=t071Sin[((s16)angle)]*2;
        x071Coords((s16)(x>>8),(s16)(y>>8),&dx,&dy,0x30,0);
        shade=sub_0800BC44(x>>8,y>>8,0);
        {u8 ff=t071Frm[((s16)angle)>>4]; x071Animate(&sprite,(u16)(level+ff),&frame,&phase,1);}
        if(!(*(u16 *)(t071Cfg+4)&4) && sub_0800CC98()==0 && sub_0800CD8C()==0 && sub_0800CCCC()==0) {
            if(!(gUnk_03002344&1)) sub_08000AF0(0x17,sprite.fC,2);
            if(gUnk_03003170.curLevel==4 && sub_0800CDC0()!=0) shade=0;
            if((gUnk_03002344&1)==(player&1))
                x071Draw(dx+t071Off[t071Frm[((s16)angle)>>4]].x,dy+(&t071Off[0].y)[t071Frm[((s16)angle)>>4]*2],level+dir,frame,shade,&sprite.f1C,sprite.f8,sprite.f0);
        }
        sub_080003F0();
    }
    if(hit) {
        x+=t071Sin[((s16)angle)+0x40]*2;
        y+=t071Sin[((s16)angle)]*2;
        x071Impact(arg,x,y);
    }
    if(player<=3 && player!=local) p->counter++;
    t071F[player]&=~(1<<bit);
}
struct Y073S {u32 f0,f4,f8,fC;u8 pad10[12];u8 f1C,f1D;u8 pad1E[22];};
struct Y073A {u32 player,bit,target,value,f10,level;};
struct Y073P {u16 id;u8 pad2[30];u16 state;u8 pad22[14];u32 flags;u8 pad34[52];u8 team;u8 pad69[77];u16 fB6;u8 padB8[10];u16 resource;u8 padC4[132];u8 *sprite;};
struct Y073E {u16 id,target;u8 pad4[4];s16 dir;u8 padA[2];u16 state;u8 padE[6];s32 x,y;u8 pad1C[66];u16 resource;u8 pad60[10];u16 wait;u8 pad6C[368];u8 active;u8 pad1DD[78];u8 threshold;u8 pad22C[180];};
struct Y073R {s16 x,y;};
extern struct Y073P y073P[] asm("gUnk_03003CE0");
extern u8 *y073EBase asm("gUnk_030056F4");
extern u32 y073EMask asm("gUnk_030056FC");
extern u32 y073F[] asm("gUnk_030063E0");
extern u16 y073Dir[] asm("gUnk_0847AD0A");
extern s16 y073Sin[] asm("gUnk_080B9704");
extern u8 y073Cost[] asm("gUnk_084EBF1C");
extern struct Y073R y073Range[] asm("gUnk_084EC12C");
extern void y073Init(void *,s32,s32,s32,s32) asm("sub_08065158");
extern void y073Coords(s32,s32,s16 *,s16 *,s32,void *) asm("sub_0800BC08");
extern s32 y073Animate(void *,u32,u16 *,s16 *,s32) asm("sub_08065370");
extern void y073Spawn(s32,s32,u32,s32,s32) asm("sub_08069A30");
extern void y073Send(void *) asm("sub_080694AC");
extern void y073Draw(s32,s32,u32,u16,u32,void *,u32,u32) asm("sub_08007870");
extern u16 y073Atan(s16,s16) asm("ArcTan2");
void sub_0806B3C4(struct Y073A *arg) {
    struct Y073S sprite;
    u8 targets[8];
    u8 delay[8];
    u16 frame[6];
    u16 phase[6];
    s16 dx,dy;
    struct Y073P *p;
    s32 x,y;
    u32 done;
    u16 count;
    u32 ang;
    u16 dir8;
    u32 local;
    u32 bit;
    u32 player,level,nhits;
    struct Y073E *enemy,*e;
    struct Y073P *q;
    u16 i;
    u32 n;
    u8 shade;
    u8 *spr;
    u16 d;
    s32 sd;
    s16 ss;
    s32 v;
    u8 *costBase;
    u32 costOffset;
    s16 *cost;
    s32 resource;
    struct Y073P *cp;
    u16 delta;
    u16 *wait;

    local=(u16)sub_080020F4();
    player=arg->player; bit=arg->bit; level=(u16)arg->level;
    if(player<=3) p=&y073P[player];
    else enemy=(struct Y073E *)(y073EBase+(player*0x2E0+0xFFFFF480));
    if(local!=player) {
        if(player>3) {
            costBase=y073Cost;
            costOffset=level*2+arg->value*24;
            costBase+=6;
            cost=(s16 *)(costOffset+(u32)costBase);
            resource=enemy->resource-*cost; enemy->resource=resource;
            if((s16)resource<0) {
                y073F[player]&=~(1<<bit);
                enemy->resource=0;
                return;
            }
        }
    } else {
        cp=&y073P[sub_080020F4()];
        delta=sub_0806898C(arg->value,arg->level)-1;
        cp->resource-=delta;
        if((s16)cp->resource<0) cp->resource=0;
    }
    frame[0]=0; phase[0]=0; delay[0]=0;
    for(i=1;i<=4;i++) {
        frame[i]=0; phase[i]=0;
        {u32 t; u8 *dst; u8 *src; t=sub_080008C8(); dst=&delay[i]; src=&delay[i-1]; *dst=(u8)(t%20+10)+*src;}
    }
    if(player<=3) {
        x=(((u16 *)p->sprite)[0]>>4)<<8;
        y=(u32)(((u16 *)p->sprite)[1]<<20)>>12;
        ang=y073Dir[p->sprite[3]>>4];
        dir8=(u16)((s16)ang>>3);
    } else {
        x=enemy->x; y=enemy->y;
        ang=y073Dir[enemy->dir];
        dir8=(u16)((s16)ang>>3);
        while(enemy->wait<enemy->threshold) {
            if(sub_08056E90()!=0 || sub_0800BA6C()==0 || enemy->state==10 || enemy->state==11) {
                y073F[player]&=~(1<<bit);
                return;
            }
            sub_080003F0();
        }
    }
    nhits=0; count=0;
    if(sub_0800CDF8()==0) {
        if(arg->target<=3) {
            n=sub_08002164();
            for(i=0;i<n;i++) {
                q=&y073P[i];
                if(player<=3 && q->team==p->team) continue;
                if(q->team==0) continue;
                v=(u32)(q->sprite[0]<<28)>>28;
                if(v==11) continue;
                if(v==10) continue;
                if(v==14) continue;
                if(((u32)(q->sprite[4]<<26)>>26)&0x20) continue;
                dx=(((u16 *)q->sprite)[0]>>4)-(x>>8);
                dy=((u32)(((u16 *)q->sprite)[1]<<20)>>20)-(y>>8);
                sd=(u16)(y073Atan(dx,dy)>>11)-(s16)dir8;
                ss=sd;
                d=ss;
                if(ss>16) d=ss-32;
                if(((s16)d<0?-(s16)d:(s16)d)>5) continue;
                if((dx<0?-dx:dx)>=y073Range[level].x || (dy<0?-dy:dy)>=y073Range[level].y) continue;
                targets[count++]=i;
                nhits=(u16)(nhits+1);
            }
        } else {
            for(i=0;i<=4;i++) {
                if(!(y073EMask&(1<<i))) continue;
                e=(struct Y073E *)(y073EBase+i*0x2E0);
                if(e->state==11) continue;
                if(!e->active) continue;
                dx=(u32)(e->x-x)>>8;
                dy=(u32)(e->y-y)>>8;
                sd=(u16)(y073Atan(dx,dy)>>11)-(s16)dir8;
                ss=sd;
                d=ss;
                if(ss>16) d=ss-32;
                if(((s16)d<0?-(s16)d:(s16)d)>5) continue;
                if((dx<0?-dx:dx)>=y073Range[level].x || (dy<0?-dy:dy)>=y073Range[level].y) continue;
                targets[count++]=i;
                nhits=(u16)(nhits+1);
            }
        }
    }
    y073Init(&sprite,0x50074,8,-1,0);
    sprite.f1C=7; sprite.f1D=8;
    if(level>6) level=6;
    if(nhits==0) {
        x+=y073Sin[(s16)ang+0x40]*20;
        y+=y073Sin[(s16)ang]*20;
        done=0;
        if((local==player || player>3) && sub_0800CCCC()==0 && sub_0800CD34()==0) sub_0805865C(level+0x11C);
        while(done==0) {
            y073Coords((s16)(x>>8),(s16)(y>>8),&dx,&dy,0x30,0);
            shade=sub_0800BC44(x>>8,y>>8,0);
            if(y073Animate(&sprite,level,&frame[0],(s16 *)&phase[0],0)!=0) done=(u16)(done+1);
            if(sub_0800CC98()==0 && sub_0800CD8C()==0 && sub_0800CCCC()==0) {
                if(!(gUnk_03002344&1)) sub_08000AF0(0x17,sprite.fC,2);
                if(sub_0800CB9C()!=0) {
                    if((gUnk_03002344&1)==(player&1)) y073Draw(dx,dy,level,frame[0],shade,&sprite.f1C,sprite.f8,sprite.f0);
                } else y073Draw(dx,dy,level,frame[0],shade,&sprite.f1C,sprite.f8,sprite.f0);
            }
            sub_080003F0();
        }
        y073Spawn(x,y,player,3,level);
    } else {
        done=0;
        while(done<count && sub_0800BA6C()!=0 && (player!=sub_080020F4() || ((u16)(p->state-11)>1 && sub_0800D11C()==0))) {
            if(arg->target<=3) {
                for(i=0;i<count;i++) {
                    q=&y073P[targets[i]];
                    y073Coords(((u16 *)q->sprite)[0]>>4,(u32)(((u16 *)q->sprite)[1]<<20)>>20,&dx,&dy,0x30,0);
                    shade=sub_0800BC44(x>>8,y>>8,0);
                    if(delay[i]==0) {
                        if(frame[i]==1 && phase[i]==0 && (local==player || player>3) && sub_0800CCCC()==0 && sub_0800CD34()==0) sub_0805865C(level+0x11C);
                        if(y073Animate(&sprite,level,&frame[i],(s16 *)&phase[i],0)!=0) {
                            done=(u16)(done+1);
                            delay[i]=0xF0;
                            if(local==targets[i]) {
                                arg->target=q->id;
                                y073Send(arg);
                                if(sub_0800CCCC()==0 && sub_0800CD34()==0) sub_0805865C(0x1A);
                            }
                            y073Spawn((((u16 *)q->sprite)[0]>>4)<<8,(u32)(((u16 *)q->sprite)[1]<<20)>>12,player,2,level);
                        }
                        if(sub_0800CC98()==0 && sub_0800CD8C()==0 && sub_0800CCCC()==0) {
                            if(!(gUnk_03002344&1)) sub_08000AF0(0x17,sprite.fC,2);
                            if(sub_0800CB9C()!=0) {
                                if((gUnk_03002344&1)==(player&1)) y073Draw(dx,dy,level,frame[i],shade,&sprite.f1C,sprite.f8,sprite.f0);
                            } else y073Draw(dx,dy,level,frame[i],shade,&sprite.f1C,sprite.f8,sprite.f0);
                        }
                    } else if(delay[i]!=0xF0) delay[i]--;
                }
            } else {
                for(i=0;i<count;i++) {
                    e=(struct Y073E *)(y073EBase+targets[i]*0x2E0);
                    y073Coords((s16)(e->x>>8),(s16)(e->y>>8),&dx,&dy,0x30,0);
                    shade=sub_0800BC44(x>>8,y>>8,0);
                    if(delay[i]==0) {
                        if(frame[i]==1 && phase[i]==0 && (local==player || player>3) && sub_0800CCCC()==0 && sub_0800CD34()==0) sub_0805865C(level+0x11C);
                        if(y073Animate(&sprite,level,&frame[i],(s16 *)&phase[i],0)!=0) {
                            done=(u16)(done+1);
                            delay[i]=0xF0;
                            if(local==player) {
                                arg->target=e->id+4;
                                y073Send(arg);
                                if(sub_0800CCCC()==0 && sub_0800CD34()==0) sub_0805865C(0x1A);
                            } else if(player>3 && sub_08002204()!=0) {
                                arg->target=e->id+4;
                                y073Send(arg);
                                if(sub_0800CCCC()==0 && sub_0800CD34()==0) sub_0805865C(0x1A);
                            }
                            y073Spawn(e->x,e->y,player,2,level);
                        }
                        if(sub_0800CC98()==0 && sub_0800CD8C()==0 && sub_0800CCCC()==0) {
                            if(gUnk_03003170.curLevel==4 && sub_0800CDC0()!=0) shade=0;
                            if(sub_0800CB9C()!=0) {
                                if((gUnk_03002344&1)==(player&1)) y073Draw(dx,dy,level,frame[i],shade,&sprite.f1C,sprite.f8,sprite.f0);
                            } else y073Draw(dx,dy,level,frame[i],shade,&sprite.f1C,sprite.f8,sprite.f0);
                        }
                    } else if(delay[i]!=0xF0) delay[i]--;
                }
            }
            if(sub_0800CC98()==0 && sub_0800CD8C()==0 && sub_0800CCCC()==0 && !(gUnk_03002344&1)) sub_08000AF0(0x17,sprite.fC,2);
            sub_080003F0();
        }
    }
    if(player<=3) {
        while(p->fB6==0) sub_080003F0();
    }
    y073F[player]&=~(1<<bit);
}
struct SprBE { u32 f0, f4, f8, fC; u8 pad10[12]; u8 f1C, f1D; u8 pad1E[22]; };
struct PlyBE { u16 id; u8 pad2[0x1E]; u16 state; u8 pad22[0x90]; u16 ready; u8 padB4[0xE]; u16 resource; u8 padC4[0x18]; s32 hits; u8 padE0[0x68]; u16 *sprite; };
struct EneBE { u16 id; u16 uid; u8 p4[4]; s16 dir; u8 pA[2]; u16 state; u8 pE[6]; s32 x, y; u8 p1C[0x34]; s32 hits; u8 p54[0xA]; u16 resource; u8 p60[0xA]; u16 wait; u8 p6C[0x1BF]; u8 threshold; u8 p22C[0xB4]; };
struct ArgBE { u32 player, bit; u16 target; u8 pA[2]; u32 value, f10, level; };
struct CtlBE { u8 p0[4]; u16 h4; };
extern struct PlyBE pBE[] asm("gUnk_03003CE0");
extern u8 *eBEBase asm("gUnk_030056F4");
extern u32 eBEMask asm("gUnk_030056FC");
extern u32 fBE[] asm("gUnk_030063E0");
extern u32 flagsBE asm("gUnk_03002344");
extern struct CtlBE *ctlBE asm("gUnk_03005CF4");
extern u16 angBE[] asm("gUnk_0847AD0A");
extern s16 sinBE[] asm("gUnk_080B9704");
extern u8 costBE[] asm("gUnk_084EBF1C");
extern void initBE(void *, s32, s32, s32, s32) asm("sub_08065158");
extern void coordsBE(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern s32 animBE(void *, u32, u16 *, u16 *, s32) asm("sub_08065370");
extern void spawnBE(s32, s32, u32, s32, s32) asm("sub_08069A30");
extern void drawBE(s32, s32, u32, u32, u32, void *, u32, u32) asm("sub_08007870");
extern void palBE(u32, u32, u32) asm("sub_08000AF0");
extern s32 hitBE(s32, s32, void *) asm("sub_08068A00");
extern u8 terrBE(s32, s32, s32) asm("sub_0800AE50");
extern u8 shadeBE(s32, s32, s32) asm("sub_0800BC44");
extern u16 atanBE(s16, s16) asm("ArcTan2");

void sub_0806BE24(struct ArgBE *arg)
{
    struct SprBE spr;
    s16 dx, dy;
    u16 frame, ftimer;
    struct EneBE *e2;
    struct EneBE *e;
    struct PlyBE *p;
    struct PlyBE *q;
    u32 target;
    u32 timer;
    u32 level;
    u32 level2;
    u16 hits;
    u16 cool;
    u32 player;
    u32 bit;
    u32 off;
    s32 prev;
    u32 local;
    s32 x, y;
    u16 ang;
    u16 i;
    u32 n;
    s32 a;
    s16 a2;
    s32 d;
    u16 st;
    u8 c;
    u8 shade;
    u32 v;

    local = sub_080020F4();
    target = arg->target;
    player = arg->player;
    bit = arg->bit;
    level = (u16)arg->level;
    level2 = level;
    timer = level;
    if (player <= 3) {
        p = &pBE[player];
        off = player * 4;
    } else {
        e = (struct EneBE *)(eBEBase + (player * 0x2E0 + 0xFFFFF480));
        {u16 *wp = &e->wait; u8 *tp = &e->threshold; u16 w = *wp; off = player * 4; if (w <= *tp) do {
            if (sub_08056E90() != 0 || sub_0800BA6C() == 0 || e->state == 10 || e->state == 11) {
                *(u32 *)(off + (u8 *)fBE) &= ~(1 << bit);
                return;
            }
            sub_080003F0();
        } while (e->wait <= e->threshold);}
    }
    frame = 0;
    ftimer = 0;
    switch (level) {
    case 0: hits = 1; break;
    case 1: hits = 2; break;
    case 2: hits = 3; break;
    case 3: hits = 4; break;
    case 4: hits = 5; break;
    case 5: case 6: case 7: hits = 6; break;
    }
    if (local != player) {
        if (player > 3) {
            u8 *costBase = costBE;
            u32 costOffset = level * 2 + arg->value * 24;
            s16 *cost;
            s32 resource;
            costBase += 6;
            cost = (s16 *)(costOffset + (u32)costBase);
            resource = e->resource - *cost;
            e->resource = resource;
            if ((s16)resource < 0) {
                *(u32 *)(off + (u8 *)fBE) &= ~(1 << bit);
                e->resource = 0;
                return;
            }
        }
    } else {
        struct PlyBE *cp = &pBE[sub_080020F4()];
        u16 delta = sub_0806898C(arg->value, arg->level) - 1;
        cp->resource -= delta;
        if ((s16)cp->resource < 0)
            cp->resource = 0;
    }
    if (target <= 3) {
        n = sub_08002164();
        for (i = 0; i < n; i++) {
            q = &pBE[i];
            if (q->id == target)
                break;
        }
        if (i >= n)
            target = 0xFFFF;
    } else {
        for (i = 0; i <= 4; i++) {
            e2 = (struct EneBE *)(eBEBase + i * 0x2E0);
            if ((eBEMask & (1 << i)) && e2->uid == target)
                break;
        }
        if (i > 4)
            target = 0xFFFF;
    }
    if (player <= 3) {
        x = (p->sprite[0] >> 4) << 8;
        y = (u32)(p->sprite[1] << 20) >> 12;
        ang = angBE[((u8 *)p->sprite)[3] >> 4];
    } else {
        x = e->x;
        y = e->y;
        ang = angBE[e->dir];
    }
    switch (level) {
    case 0: timer = 30; break;
    case 1: case 2: timer = 180; break;
    case 3: case 4: timer = 240; break;
    case 5: case 6: case 7: timer = 300; break;
    }
    level = (u16)(level - 1);
    if (level & 0x8000)
        level = 0;
    x += sinBE[(s16)ang + 0x40] * 5;
    y += sinBE[(s16)ang] * 5;
    prev = ang << 16;
    if (player <= 3) {
        if (level2 != 0)
            p->ready = 1;
        while (p->ready != 1) {
            if (p->state == 10 || !(ctlBE->h4 & 2)) {
                *(u32 *)(off + (u8 *)fBE) &= ~(1 << bit);
                return;
            }
            sub_080003F0();
        }
        if (sub_080020F4() == player && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
            sub_0805865C(level + 0x123);
    }
    cool = 0;
    initBE(&spr, 0x50097, 8, -1, 0);
    spr.f1C = 7;
    spr.f1D = 8;
    for (;;) {
        v = timer;
        timer = (u16)(v - 1);
        if (v == 0 || sub_0800BA6C() == 0)
            break;
        if (player == sub_080020F4() && ((u16)(p->state - 11) <= 1 || sub_0800D11C() != 0))
            break;
        if (cool == 0 && hitBE(x, y, arg)) {
            if (target <= 3) {
                if (q->state != 10) {
                    if (--hits == 0) {
                        *(u32 *)(off + (u8 *)fBE) &= ~(1 << bit);
                        return;
                    }
                    if (player <= 3)
                        p->hits++;
                    else
                        e->hits++;
                    cool = 10;
                }
            } else {
                if (e2->state != 10) {
                    if (--hits == 0) {
                        *(u32 *)(off + (u8 *)fBE) &= ~(1 << bit);
                        return;
                    }
                    if (player <= 3)
                        p->hits++;
                    else
                        e->hits++;
                    cool = 10;
                }
            }
        }
        if (cool-- & 0x8000)
            cool = 0;
        if (target != 0xFFFF && cool == 0) {
            if (target <= 3) {
                dx = (q->sprite[0] >> 4) - (x >> 8);
                dy = ((u32)(q->sprite[1] << 20) >> 20) - (y >> 8);
                if (q->state == 11)
                    target = 0xFFFF;
            } else {
                dx = (u32)(e2->x - x) >> 8;
                dy = (u32)(e2->y - y) >> 8;
                if (e2->state == 11)
                    target = 0xFFFF;
            }
            a2 = (u32)(atanBE(dx, dy) << 16) >> 24;
            a = a2;
            d = a - (prev >> 16);
            if (d > 0x80)
                a2 = a - 0x100;
            else if (d < -0x80)
                a2 = a | 0x100;
            {
                s16 sa = ang; s16 q = ((s16)a2 - sa) / 7; s16 t = sa + q;
                ang = t;
                if (t < 0)
                    ang = t + 0x100;
            }
            { s16 s2 = ang; if (s2 > 0x100) ang = s2 - 0x100; }
            ang &= 0xFF;
        }
        c = terrBE(x, y, 0);
        if ((c & 0xF) && !(c & 0x10)) {
            spawnBE(x, y, player, 4, level2);
            break;
        }
        { s32 sa; x += sinBE[(s16)ang + 0x40]; y += sinBE[(s16)ang]; sa = (s16)ang; if (sa & 0xF) prev = ang << 16; else prev = ang * 0x10000; }
        coordsBE((s16)(x >> 8), (s16)(y >> 8), &dx, &dy, 0x30, 0);
        shade = shadeBE(x >> 8, y >> 8, 0);
        animBE(&spr, level, &frame, &ftimer, 1);
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0) {
            if (!(flagsBE & 1))
                palBE(0x17, spr.fC, 2);
            if (gUnk_03003170.curLevel == 4 && sub_0800CDC0())
                shade = 0;
            if ((flagsBE & 1) == (player & 1))
                drawBE(dx, dy, level, frame, shade, &spr.f1C, spr.f8, spr.f0);
        }
        sub_080003F0();
    }
    *(u32 *)(off + (u8 *)fBE) &= ~(1 << bit);
}
struct SprC568 { u32 f0, f4, f8, fC; u8 pad10[12]; u8 f1C, f1D; u8 pad1E[22]; };
struct PlyC568 { u16 id; u8 pad2[0x1E]; u16 state; u8 pad22[0x46]; u8 team; u8 pad69[0x49]; u16 fB2; u8 padB4[2]; u16 fB6; u8 padB8[10]; u16 resource; u8 padC4[0x84]; u16 *sprite; };
struct EneC568 { u16 id; u8 pad2[6]; s16 dir; u8 padA[2]; u16 state; u8 padE[6]; s32 x, y; u8 pad1C[0x3C]; u16 f58; u8 pad5A[4]; u16 resource; u8 pad60[10]; u16 wait; u8 pad6C[0x170]; u8 active; u8 pad1DD[0x4E]; u8 threshold; u8 pad22C[0xB4]; };
struct RangeC568 { s16 x, y; };
struct ArgC568 { u32 player, bit, target, value, f10, level; };
extern struct PlyC568 pC568[] asm("gUnk_03003CE0");
extern u8 *eC568Base asm("gUnk_030056F4");
extern u32 eC568Mask asm("gUnk_030056FC");
extern u32 fC568[] asm("gUnk_030063E0");
extern u32 flagsC568 asm("gUnk_03002344");
extern u16 dirC568[] asm("gUnk_0849E730");
extern s16 sinC568[] asm("gUnk_080B9704");
extern u8 costC568[] asm("gUnk_084EBF1C");
extern struct RangeC568 rangeC568[] asm("gUnk_084EC12C");
extern void initC568(void *, s32, s32, s32, s32) asm("sub_08065158");
extern void coordsC568(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern s32 animC568(void *, u32, u16 *, u16 *, s32) asm("sub_08065370");
extern void spawnC568(s32, s32, u32, s32, s32) asm("sub_08069A30");
extern void sendC568(void *) asm("sub_080694AC");
extern void drawC568(s32, s32, u16, u16, u8, void *, u32, u32) asm("sub_08007870");
extern void palC568(u32, u32, u32) asm("sub_08000AF0");

void sub_0806C568(struct ArgC568 *arg)
{
    struct SprC568 desc;
    u8 targets[8];
    u16 xs[6];
    u16 ys[6];
    u16 timers[6];
    s16 dx, dy;
    struct PlyC568 *p;
    u16 level2;
    u16 done;
    u16 nhit;
    u16 count;
    u16 local;
    u32 n;
    u32 player;
    u32 bit;
    struct EneC568 *e;
    struct PlyC568 *q;
    struct EneC568 *e2;
    s32 x, y;
    u16 level;
    u16 i;
    u8 shade;
    u16 a;
    s32 ax, ay;
    u32 random;
    u16 *dst, *prev;
    s32 j;
    /* The ROM keeps the player-loop Y delta in r3 across the range checks. */
    register u32 t asm("r3");
    u32 w, zy;

    local = sub_080020F4();
    player = arg->player;
    bit = arg->bit;
    level = arg->level;
    level2 = level;
    if (player <= 3) {
        p = &pC568[player];
    } else {
        e = (struct EneC568 *)(eC568Base + (player * 0x2E0 + 0xFFFFF480));
        while (e->wait < e->threshold) {
            if (sub_08056E90() != 0 || sub_0800BA6C() == 0 || e->state == 10 || e->state == 11) {
                fC568[player] &= ~(1 << bit);
                return;
            }
            sub_080003F0();
        }
    }
    if (local != arg->player) {
        if (player > 3) {
            u8 *costBase = costC568;
            u32 costOffset = level * 2 + arg->value * 24;
            s16 *cost;
            s32 resource;
            costBase += 6;
            cost = (s16 *)(costOffset + (u32)costBase);
            resource = e->resource - *cost;
            e->resource = resource;
            if ((s16)resource < 0) {
                fC568[player] &= ~(1 << bit);
                e->resource = 0;
                return;
            }
        }
    } else {
        struct PlyC568 *cp = &pC568[sub_080020F4()];
        u16 delta = sub_0806898C(arg->value, arg->level) - 1;
        cp->resource -= delta;
        if ((s16)cp->resource < 0)
            cp->resource = 0;
    }
    xs[0] = 0;
    ys[0] = 0;
    timers[0] = 0;
    for (i = 1; i <= 4; i++) {
        xs[i] = 0;
        ys[i] = 0;
        random = sub_080008C8();
        dst = &timers[i];
        j = i - 1;
        prev = &timers[j];
        random %= 20;
        random += 10;
        *dst = random + *prev + 1;
    }
    if (player <= 3) {
        if (level2 != 0)
            p->fB2 = 2;
        while (p->fB2 <= 1) {
            if (p->state == 10 || !(gGameState->flags & 2)) {
                fC568[player] &= ~(1 << bit);
                return;
            }
            sub_080003F0();
        }
        x = (p->sprite[0] >> 4) << 8;
        y = (u32)(p->sprite[1] << 20) >> 12;
    } else {
        x = e->x;
        y = e->y;
    }
    nhit = 0;
    count = 0;
    if (!sub_0800CDF8()) {
        if (arg->target <= 3) {
            n = sub_08002164();
            for (i = 0; i < n; i++) {
                q = &pC568[i];
                if (q->state == 11)
                    continue;
                if (player <= 3) {
                    u32 k;
                    if (p->team == q->team)
                        continue;
                    k = (u32)(((u8 *)q->sprite)[0] << 28) >> 28;
                    if (k == 11)
                        continue;
                    if (k == 10)
                        continue;
                    if (k == 14)
                        continue;
                    if (q->team == 0)
                        continue;
                    if ((u32)(((u8 *)q->sprite)[4] << 26) >> 26 & 0x20)
                        continue;
                    dx = (q->sprite[0] >> 4) - (x >> 8);
                    w = ((u32)(q->sprite[1] << 20) >> 20) - (y >> 8);
                    w <<= 16;
                    zy = w >> 16;
                    dy = zy;
                    t = zy;
                    ay = dx;
                    if (ay < 0)
                        ay = -ay;
                    if (ay >= rangeC568[level].x)
                        continue;
                    w = t << 16;
                    ay = (s32)w >> 16;
                    if (ay < 0)
                        ay = -ay;
                    if (ay >= rangeC568[level].y)
                        continue;
                    targets[count++] = i;
                    nhit++;
                } else {
                    dx = (q->sprite[0] >> 4) - (x >> 8);
                    w = ((u32)(q->sprite[1] << 20) >> 20) - (y >> 8);
                    w <<= 16;
                    zy = w >> 16;
                    dy = zy;
                    t = zy;
                    ay = dx;
                    if (ay < 0)
                        ay = -ay;
                    if (ay >= rangeC568[level].x)
                        continue;
                    w = t << 16;
                    ay = (s32)w >> 16;
                    if (ay < 0)
                        ay = -ay;
                    if (ay >= rangeC568[level].y)
                        continue;
                    targets[count++] = i;
                    nhit++;
                }
            }
        } else {
            for (i = 0; i <= 4; i++) {
                if (!((1 << i) & eC568Mask))
                    continue;
                e2 = (struct EneC568 *)(eC568Base + i * 0x2E0);
                if (e2->state == 11)
                    continue;
                if (e2->active == 0)
                    continue;
                dx = (u32)(e2->x - x) >> 8;
                dy = ((u32)(e2->y - y) << 8) >> 16;
                ax = dx;
                if (ax < 0)
                    ax = -ax;
                if (ax >= rangeC568[level].x)
                    continue;
                ay = dy;
                if (ay < 0)
                    ay = -ay;
                if (ay >= rangeC568[level].y)
                    continue;
                targets[count++] = i;
                nhit++;
            }
        }
    }
    if (level == 7)
        level = 6;
    if (local == player && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
        sub_0805865C(level + 0x155);
    initC568(&desc, 0x5009E, 8, -1, 0);
    desc.f1C = 7;
    desc.f1D = 8;
    if (nhit == 0) {
        if (player <= 3)
            a = dirC568[((u8 *)p->sprite)[3] >> 4] << 4;
        else
            a = dirC568[e->dir] << 4;
        x += sinC568[(s16)a + 0x40] * 10;
        y += sinC568[(s16)a] * 10;
        spawnC568(x, y, player, 5, level);
    } else {
        done = 0;
        while (done < count && (player != sub_080020F4() || ((u16)(p->state - 11) > 1 && sub_0800D11C() == 0))) {
            if (arg->target <= 3) {
                for (i = 0; i < count; i++) {
                    q = &pC568[targets[i]];
                    coordsC568(q->sprite[0] >> 4, (u32)(q->sprite[1] << 20) >> 20, &dx, &dy, 0x30, 0);
                    shade = sub_0800BC44(q->sprite[0] >> 4, (u32)(q->sprite[1] << 20) >> 20, 0);
                    if (timers[i] == 0) {
                        if (animC568(&desc, level, &xs[i], &ys[i], 0)) {
                            done++;
                            timers[i] = 0xF0;
                        } else if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0) {
                            if (!(flagsC568 & 1))
                                palC568(0x17, desc.fC, 2);
                            drawC568(dx, dy, level, xs[i], shade, &desc.f1C, desc.f8, desc.f0);
                        }
                    } else if (timers[i] != 0xF0) {
                        timers[i]--;
                    }
                }
            } else {
                for (i = 0; i < count; i++) {
                    e2 = (struct EneC568 *)(eC568Base + targets[i] * 0x2E0);
                    coordsC568((s16)(e2->x >> 8), (s16)(e2->y >> 8), &dx, &dy, 0x30, 0);
                    shade = sub_0800BC44(e2->x >> 8, e2->y >> 8, 0);
                    if (timers[i] == 0) {
                        if (animC568(&desc, level, &xs[i], &ys[i], 0)) {
                            done++;
                            timers[i] = 0xF0;
                        } else if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0) {
                            if (gUnk_03003170.curLevel == 4 && sub_0800CDC0())
                                shade = 0;
                            if (sub_0800CB9C()) {
                                if ((flagsC568 & 1) == (i & 1))
                                    drawC568(dx, dy, level, xs[i], shade, &desc.f1C, desc.f8, desc.f0);
                            } else {
                                drawC568(dx, dy, level, xs[i], shade, &desc.f1C, desc.f8, desc.f0);
                            }
                        }
                    } else if (timers[i] != 0xF0) {
                        timers[i]--;
                    }
                }
            }
            if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0 && !(flagsC568 & 1))
                palC568(0x17, desc.fC, 2);
            sub_080003F0();
        }
        if (arg->target <= 3) {
            for (i = 0; i < count; i++) {
                if (local == targets[i]) {
                    q = &pC568[targets[i]];
                    arg->target = q->id;
                    sendC568(arg);
                    if (sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                        sub_0805865C(0x1A);
                }
            }
        } else {
            for (i = 0; i < count; i++) {
                e2 = (struct EneC568 *)(eC568Base + targets[i] * 0x2E0);
                if (local == player) {
                    arg->target = e2->id + 4;
                    sendC568(arg);
                    if (sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                        sub_0805865C(0x1A);
                } else if (player > 3 && sub_08002204()) {
                    arg->target = e2->id + 4;
                    sendC568(arg);
                    if (sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                        sub_0805865C(0x1A);
                } else {
                    e2->f58 = player;
                }
            }
        }
    }
    while (p->fB6 == 0)
        sub_080003F0();
    fC568[player] &= ~(1 << bit);
}
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
void sub_0806CDF0(void *arg0)
{
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




    register u16 *var_r0_6 asm("r0");
  u16 temp_r0_2;
  void **pg;




    register u16 temp_r0_3 asm("r0");
  s32 temp_r0_6;
  u16 temp_r0_7;
  u16 temp_r0_8;
  u32 temp_r1;
  u16 temp_r1_3;
  u16 temp_r1_5;




    register u16 temp_r1_7 asm("r1");
  u32 temp_r2;
  u16 temp_r2_6;
  u16 temp_r3;
  u16 temp_r3_2;
  s32 var_r1_2;
  u16 var_r5_2;
  u16 var_r5_4;
  u16 var_r7_2;




    u32 temp_r0;
  u32 temp_r0_9;
  u32 var_r5;
  u8 temp_r0_4;
  u8 *pa;
  u8 *pb;
  void *temp_r0_5;
  void *temp_r1_2;
  struct T71CDFPlayer *temp_r4_2;
  void *temp_r4_4;
  struct T71CDFPlayer *var_r0_5;
  struct T71CDFPlayer *var_r6;
  void *var_r7;
  struct T71CDFPlayer *var_r9;
  sp1C = sub_080020F4();
  temp_r0 = *((u32 *) (((u8 *) arg0) + 0x0));
  sp20 = *((u32 *) (((u8 *) arg0) + 0x4));
  if (((u32) (*((u32 *) (((u8 *) arg0) + 0x14)))) > 7U)
  {
    *((u32 *) (((u8 *) arg0) + 0x14)) = 7U;
  }
  temp_r2 = (u16) (*((u32 *) (((u8 *) arg0) + 0x14)));
  sp10 = (s32) temp_r2;
  if (temp_r0 <= 3U)
  {
    var_r9 = &t71CDFPlayers[temp_r0];
    sp28 = temp_r0 * 4;
    goto block_12;
  }
  var_r7 = gUnk_030056F4 + ((temp_r0 * 0x2E0) + 0xFFFFF480);
  {
    u16 *ap = (u16 *) (((u8 *) var_r7) + 0x6A);
    u8 *bp = ((u8 *) var_r7) + 0x22B;
    u32 a = *ap;
    temp_r2_2 = temp_r0 * 4;
    sp28 = temp_r2_2;
    if (a < (*bp))
    {
      temp_r4 = temp_r2_2 + ((u8 *) t71Flags);
      sp24 = ~(1 << sp20);
      loop_6:
      if ((((sub_08056E90() != 0) || (sub_0800BA6C() == 0)) || ((temp_r0_2 = *((u16 *) (((u8 *) var_r7) + 0xC)), temp_r0_2 == 0xA))) || (temp_r0_2 == 0xB))
      {
        *temp_r4 &= sp24;
        return;
      }

      sub_080003F0();
      if (((u32) (*((u16 *) (((u8 *) var_r7) + 0x6A)))) >= ((u32) (*((u8 *) (((u8 *) var_r7) + 0x22B)))))
      {
        goto block_12;
      }
      goto loop_6;
    }
  }
  block_12:
  if (sp1C != temp_r0)
  {
    if (temp_r0 > 3U)
    {
      {
        u8 *cb = gUnk_084EBF1C;
        s16 *pp;
        u32 off = (sp10 * 2) + ((*((u32 *) (((u8 *) arg0) + 0xC))) * 0x18);
        cb += 6;
        pp = (s16 *) (off + ((u32) cb));
        {
          register s32 a asm("r0") = (*((u16 *) (((u8 *) var_r7) + 0x5E))); s32 v = a - (*pp);
          temp_r0_3 = v;
        }
      }
      *((u16 *) (((u8 *) var_r7) + 0x5E)) = temp_r0_3;
      if (((s32) (temp_r0_3 << 0x10)) < 0)
      {
        temp_r2_3 = sp28 + ((u8 *) t71Flags);
        *temp_r2_3 &= ~(1 << sp20);
        *((u16 *) (((u8 *) var_r7) + 0x5E)) = 0U;
        return;
      }
      goto block_18;
    }
    goto block_19;
  }

  temp_r4_2 = &t71CDFPlayers[sub_080020F4()];
  {




 u32 cost = (u16)(sub_0806898C((*(u32 *)((u8 *)(arg0)+(0xC))), (s32) (*(u32 *)((u8 *)(arg0)+(0x14)))) - 1);

    temp_r1 = temp_r4_2->fC2 - cost;
  }
  temp_r4_2->fC2 = temp_r1;
  if (((s32) (temp_r1 << 0x10)) < 0)
  {
    temp_r4_2->fC2 = 0U;
  }
  block_18:
  if (temp_r0 <= 3U)
  {
    block_19:
    if (((u32) var_r9->fB4) <= 6U)
    {
      loop_20:
      if (var_r9->f20 == 0xA)
      {
        goto done;
      }
      else
      {
        sub_080003F0();
        if (((u32) var_r9->fB4) > 6U)
        {
          goto block_23;
        }
        goto loop_20;
      }

    }
    else
    {
 do { block_23: temp_r1_2 = var_r9->f148; sp14 = ((u16) (*((u16 *) (((u8 *) temp_r1_2) + 0x0)))) >> 4; sp18 = ((u32) ((*((u16 *) (((u8 *) temp_r1_2) + 0x2))) << 0x14)) >> 0x14; var_r7_2 = 0; var_r5 = 0; goto l1chk; l1top: { var_r6 = &t71CDFPlayers[var_r5]; if ((((s32) ((*((u8 *) (((u8 *) var_r6->f148) + 4))) << 0x1A)) >= 0) && (((pa = &var_r6->f68, pb = &var_r9->f68, temp_r0_4 = *pa, temp_r0_4 == (*pb))) || ((temp_r0_4 == 0) && (sub_0800CF80() == 0)))) { temp_r0_5 = var_r6->f148; temp_r2_6 = (((u16) (*((u16 *) (((u8 *) temp_r0_5) + 0x0)))) >> 4) - sp14; temp_r1_3 = (((u32) ((*((u16 *) (((u8 *) temp_r0_5) + 0x2))) << 0x14)) >> 0x14) - sp18; if (sp10 != 0) { temp_r2_5 = (s16) temp_r2_6; var_r0 = temp_r2_5 >> 3; if (var_r0 < 0) { var_r0 = 0 - var_r0; } if (var_r0 <= 0xC) { temp_r1_4 = (s16) temp_r1_3; var_r0_2 = temp_r1_4 >> 3; if (var_r0_2 < 0) { var_r0_2 = 0 - var_r0_2; } if (var_r0_2 <= 0xC) { sp4[var_r7_2] = Sqrt((temp_r2_5 * temp_r2_5) + (temp_r1_4 * temp_r1_4)); sp0[var_r7_2++] = var_r5; } } } } } var_r5 = (u16) (var_r5 + 1); l1chk: if (var_r5 < sub_08002164()) { goto l1top; } } while (0);
      goto block_50;
    }

  }
  else
  {
    sp14 = (u32) (*((u16 *) (((u8 *) var_r7) + 0x14)));
    sp18 = (u32) (*((u16 *) (((u8 *) var_r7) + 0x18)));
    var_r7_2 = 0;
    var_r5_2 = 0;
    pg = &gUnk_030056F4;
    do
    {
      if (t071EMask & (1 << var_r5_2))
      {
        {
          s32 o = var_r5_2 * 0x2E0;
          temp_r4_4 = *pg + o;
        }
        var_r5_4 = 0x18;
        {
          s32 f = *((u32 *) (((u8 *) temp_r4_4) + 0x14));
          s32 d = f - ((s16) sp14);
          temp_r2_6 = d;
        }
        {
          s32 f = *((u32 *) (((u8 *) temp_r4_4) + var_r5_4));
          s32 d = f - ((s16) sp18);
          temp_r1_5 = d;
        }
        if (sp10 != 0)
        {
          temp_r2_7 = (s16) temp_r2_6;
          var_r0_3 = temp_r2_7 >> 3;
          if (var_r0_3 < 0)
          {
            var_r0_3 = 0 - var_r0_3;
          }
          temp_r1_6 = (s16) temp_r1_5;
          if (var_r0_3 <= 0xC)
          {
            var_r0_4 = temp_r1_6 >> 3;
            if (var_r0_4 < 0)
            {
              var_r0_4 = 0 - var_r0_4;
            }
            if (var_r0_4 <= 0xC)
            {
              sp4[var_r7_2] = Sqrt((temp_r2_7 * temp_r2_7) + (temp_r1_6 * temp_r1_6));
              sp0[var_r7_2++] = var_r5_2 + 4;
            }
          }
        }
      }
      var_r5_2 += 1;
    } while (((u32) var_r5_2) <= 4U);
    block_50:
    for (var_r5_2 = 0; var_r5_2 < var_r7_2; var_r5_2++)
    {
      sub_08074DE8(*(sp0 + var_r5_2), 8);
    }


    if (sp1C == temp_r0)
    {
      if ((sub_0800CCCC() == 0) && (sub_0800CD34() == 0))
      {
        sub_0805865C(0x91);
      }
      if (sp1C == temp_r0)
      {
        {
          u16 *hp = &var_r9->fC4;
          temp_r0_6 = t71Heal[temp_r2] + (var_r5_2 = *hp);
        }
        var_r9->fC4 = temp_r0_6;
        if (((s32) ((s16) temp_r0_6)) > ((s32) ((s16) var_r9->f62)))
        {
          var_r9->fC4 = (u16) var_r9->f62;
        }
        var_r9->f24 = 0;
        var_r9->f26 = 0;
        temp_r2_8 = var_r9->f30;
        if ((0x20000 & temp_r2_8) && (((s16) var_r9->fC4) >= (((s16) var_r6->f62) >> 1)))
        {
          var_r9->f30 = (s32) (temp_r2_8 & 0xFFFDFFFF);
        }
        if (((u32) temp_r2) > 2U)
        {
          sub_0801E278((s32) var_r9, 6U);
          sub_0801E278((s32) var_r9, 7U);
        }
        if (((u32) temp_r2) > 3U)
        {
          sub_0801E278((s32) var_r9, 5U);
          sub_0801E278((s32) var_r9, 2U);
        }
        if (((u32) temp_r2) <= 4U)
        {
        }
        else
        {
          var_r0_5 = var_r9;
          goto block_90;
        }
      }
      else
      {
        goto block_69;
      }
    }
    else
    {
      block_69:
      if (temp_r0 <= 3U)
      {
        for (var_r5_2 = 0; (var_r5_2 < var_r7_2) && (sp10 != 0); var_r5_2++)
        {
          if ((*(sp0 + var_r5_2)) == sp1C)
          {
            var_r6 = &t71CDFPlayers[sp1C];
            if (sub_0801DF8C() == 0)
            {
              temp_r1_7 = var_r6->fC4 + (((s32) (t71Heal[temp_r2] * 0x78)) / ((s32) (sp4[var_r5_2] + 0x78)));
              var_r6->fC4 = temp_r1_7;
              if (((s32) ((s16) temp_r1_7)) > ((s32) ((s16) var_r6->f62)))
              {
                var_r6->fC4 = (u16) var_r6->f62;
              }
              temp_r2_9 = var_r6->f30;
              if ((0x20000 & temp_r2_9) && (((s16) var_r6->fC4) >= (((s16) var_r6->f62) >> 1)))
              {
                var_r6->f30 = (s32) (temp_r2_9 & 0xFFFDFFFF);
              }
              if (((u32) temp_r2) > 2U)
              {
                sub_0801E278((s32) var_r6, 6U);
                sub_0801E278((s32) var_r6, 7U);
              }
              if (((u32) temp_r2) > 3U)
              {
                sub_0801E278((s32) var_r6, 5U);
                sub_0801E278((s32) var_r6, 2U);
              }
              if (((u32) temp_r2) <= 4U)
              {
              }
              else
              {
                var_r0_5 = var_r6;
                block_90:
                sub_0801E278((s32) var_r0_5, 3U);

              }
            }
            else
              if (sub_0800CF80() != 0)
            {
            }
            else
              if (((u32) temp_r2) <= 5U)
            {
            }
            else
            {
              if (((u32) temp_r2) > 6U)
              {
                var_r1_2 = var_r6->f62;
                var_r0_6 = (((u8 *) var_r6) + 0x62) + 0x62;
              }
              else
              {
                var_r1_2 = (s16) var_r6->f62; if (var_r1_2 < 0) var_r1_2 += 3; var_r1_2 >>= 2;
                var_r0_6 = ((u8 *) var_r6) + 0xC4;
              }
              *var_r0_6 = var_r1_2;
              temp_r0_8 = var_r6->f20;
              if (temp_r0_8 == 0xB)
              {
                var_r6->f20 = 0U;
              }
              var_r6->f68 = 1;
              sub_0806617C();
              var_r6->f30 = (s32) (var_r6->f30 & 0xFFFFDFFF);
              sub_08067D74();
              sub_08022200((s32) var_r6->f0, var_r9->fE0);
              temp_r0_9 = var_r6->fE0 - 1;
              switch (temp_r0_9)
              {
                case 0:
                  *((u16 *) (((u8 *) t71Save) + 0x24)) = (u16) ((*((u16 *) (((u8 *) t71Save) + 0x24))) + 1);
                  break;

                case 1:
                  *((u16 *) (((u8 *) t71Save) + 0x26)) = (u16) ((*((u16 *) (((u8 *) t71Save) + 0x26))) + 1);
                  break;

                case 2:
                  *((u16 *) (((u8 *) t71Save) + 0x28)) = (u16) ((*((u16 *) (((u8 *) t71Save) + 0x28))) + 1);
                  break;

                case 3:
                  *((u16 *) (((u8 *) t71Save) + 0x2A)) = (u16) ((*((u16 *) (((u8 *) t71Save) + 0x2A))) + 1);
                  break;

                case 4:
                  *((u16 *) (((u8 *) t71Save) + 0x2C)) = (u16) ((*((u16 *) (((u8 *) t71Save) + 0x2C))) + 1);
                  break;

                case 5:
                  *((u16 *) (((u8 *) t71Save) + 0x2E)) = (u16) ((*((u16 *) (((u8 *) t71Save) + 0x2E))) + 1);
                  break;

              }

            }
            break;
          }
        }

        goto copy2;
        done:
        var_r2 = (s32 *) t71Flags; var_r2 = (s32 *) (sp28 + ((u8 *) var_r2));

        var_r1 = 1 << sp20;

        goto bic;
      }
      else
      {
        var_r5_4 = 0;
        do
        {
          if ((t071EMask & (1 << var_r5_4)) && ((*(sp0 + var_r5_4)) == (var_r5_4 + 4)))
          {
            temp_r4_4 = gUnk_030056F4 + (var_r5_4 * 0x2E0);
            temp_r2 = (u16) (((s32) (t71Heal[sp10] * 0x78)) / ((s32) (sp4[var_r5_4] + 0x78)));
            {
              u16 *hp = (u16 *) (((u8 *) temp_r4_4) + 0x5C);
              s32 sum = (*hp) + temp_r2;
              u16 *mx;
              *hp = sum;
              mx = (u16 *) (((u8 *) temp_r4_4) + 0x1D6);
              if (((s16) sum) > ((s16) (*mx)))
              {
                *hp = *mx;
              }
            }
            if (((u32) temp_r2) > 2U)
            {
              sub_0801E2CC((s32) temp_r4_4, 6U);
              sub_0801E2CC((s32) temp_r4_4, 7U);
            }
            if (((u32) temp_r2) > 3U)
            {
              sub_0801E2CC((s32) temp_r4_4, 5U);
              sub_0801E2CC((s32) temp_r4_4, 2U);
            }
            if (((u32) temp_r2) > 4U)
            {
              sub_0801E2CC((s32) temp_r4_4, 3U);
            }
          }
          var_r5_4 += 1;
        }
        while (((u32) var_r5_4) <= 4U);
      }

    }
  }

  copy2:
  var_r2 = (s32 *) t71Flags; var_r2 = (s32 *) (sp28 + ((u8 *) var_r2));

  var_r1 = 1 << sp20;
  bic:
  *var_r2 &= ~var_r1;

}
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
        { u16 old = count; count++; asm("" : "+r"(count)); list[old] = i; }
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
struct T072DBEffect { s16 timer; u16 owner, kind, level, a, b, c, d; s16 strength; u8 pad[22]; };
struct T072DBPlayer { u8 pad0[0x20]; u16 state; u8 pad22[2]; u16 x24, x26; u8 pad28[12]; struct T072DBEffect *effects; u8 pad38[0x2c]; u16 mode; u8 pad66[2]; u8 team; u8 pad69[0x4b]; u16 wait; u16 ready; u8 padB8[10]; s16 resource; u8 padC4[0x84]; u16 *sprite; };
struct T072DBArgs { u32 player, bit, f8, value, f10, level; };
extern struct T072DBPlayer t072DBPlayers[] asm("gUnk_03003CE0");
extern u32 t072DBFlags[] asm("gUnk_030063E0");
void sub_0806DB1C(struct T072DBArgs *arg) {
    u8 list[4];
    s16 distances[6];
    u16 range;
    u32 x, y;
    u32 player;
    u32 bit;
    u32 offset;
    u16 level, count, i;
    u32 initialPlayer;
    s32 local;
    struct T072DBPlayer *p, *other, *costPlayer; u16 *wait, *ready;
    struct T072DBEffect *e, *start;
    u16 *sprite;
    u16 dx, dy, cost;
    s32 ax, ay, limit;
    s32 duration, amount;
    u32 found2;
    u16 j;
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
    while (p->wait <= 6) {
        if (p->state == 10) goto early;
        sub_080003F0();
    }
    x = p->sprite[0] >> 4;
    y = ((u32)p->sprite[1] << 20) >> 20;
    count = 0;
    for (i = 0; i < sub_08002164(); i++) {
        other = &t072DBPlayers[i];
        sprite = other->sprite;
        if ((s32)((u32)((u8 *)sprite)[4] << 26) < 0) continue;
        if (other->team != p->team || other->team == 0) continue;
        dx = (sprite[0] >> 4) - x;
        dy = (((u32)sprite[1] << 20) >> 20) - y;
        if (range == 0) continue;
        {
            ax = (s16)dx >> 3;
            if (ax < 0) ax = -ax;
            limit = 12;
            if (ax > limit) continue;
            ay = (s16)dy >> 3;
            if (ay < 0) ay = -ay;
            if (ay > limit) continue;
        }
        distances[count] = Sqrt((s16)dx * (s16)dx + (s16)dy * (s16)dy);
        list[count++] = i;
    }
    for (i = 0; i < count; i++) sub_08074DE8(list[i], 9);
    while (p->ready == 0) sub_080003F0();
    if ((local == player || player > 3) && sub_0800CCCC() == 0 && sub_0800CD34() == 0) sub_0805865C(0x167);
    if (local != player) goto other_;
    {
        found2 = 0;
        e = p->effects;
        i = 0;
        start = e;



        for (; i <= 7; i++, e++) {
            if (e->timer > 0 && t072DBPlayers[local].mode == 4 && e->kind == 3 && e->owner <= 99) {
                if (e->level < level) {
                    e->level = level;
                    e->timer = (level * 10 + 40) * 60;
                    e->strength = level * 20;
                }
                found2 = 1;
                break;
            }
        }
        if (found2 != 0)
            goto clear;
        e = start; i = 0;
        do {
            if (e->timer == -1) goto found1;
            i++; e++;
        } while (i <= 7);
clear:
        p->x24 = 0; p->x26 = 0;
        goto finish;
found1:
        e->owner = player;
        e->timer = (level * 10 + 40) * 60;
        e->kind = 3;
        e->level = level;
        amount = level * 8;
        e->strength = level * 20;
        goto clear;
    }
early:
    ((u32 *)t072DBFlags)[player] &= ~(1 << bit);
    return;
found2:
    e->owner = player;
    e->timer = (level * 10 + 40) * 60;
    e->kind = 3;
    e->level = level;
    amount = level * 8;
    e->strength = level * 20;
    goto finish;
other_:
        for (i = 0; i < count && range != 0; i++) {
            if (list[i] == local) {
                other = &t072DBPlayers[local];
                found2 = 0;
                e = other->effects;



                for (i = 0; i <= 7; i++, e++) {
                    if (e->timer > 0 && e->owner <= 3 && t072DBPlayers[e->owner].mode == 4 && e->kind == 3) {
                        if (e->level < level) {
                            e->timer = (level * 10 + 40) * 60;
                            e->level = level;
                            e->strength = level * 20;
                        }
                        found2 = 1;
                        break;
                    }
                }
                if (found2 == 0) {
                    e = other->effects;
                    for (i = 0; i <= 7; i++, e++) {
                        if (e->timer == -1) goto found2;
                    }
                }
                goto finish;
            }
        }
finish:
    ((u32 *)t072DBFlags)[player] &= ~(1 << bit);
}
struct T072DESprite { u32 f0, f4, f8, fC; u8 pad10[12]; u8 f1C, f1D; u8 pad1E[22]; };
struct T072DEPlayer { u16 id; u8 pad2[0x1e]; u16 state; u8 pad22[0x46]; u8 team; u8 pad69[0x49]; u16 phase, wait, ready; u8 padB8[10]; s16 resource; u8 padC4[24]; u32 counter; u8 padE0[0x64]; u8 *config; u16 *sprite; };
struct T072DEEnemy { u16 id; u8 pad2[6]; s16 direction; u8 padA[2]; u16 state; u8 padE[6]; s32 x,y; u8 pad1C[0x42]; s16 resource; u8 pad60[10]; u16 wait; u8 pad6C[0x170]; u8 active; u8 pad1DD[0x4e]; u8 threshold; u8 pad22C[0xb4]; };
struct T072DEBits { u8 kind:4; u8 r0:4; u8 p1[3]; u32 flags:6; };
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
    u32 done; u16 total;
    u16 local;
    u32 player, bit;
    s32 px, py;
    u32 sx;
    s16 *pdx, *pdy;
    u16 level, selected, i;
    u16 ang; s16 sang, sf; s16 at;
    s32 kind;
    s32 facing;
    s32 angle, ax, ay, radius, index;
    s32 cost; u16 delta;
    u8 shade;
    u8 *delayDst, *delayPrev;
    u32 random;
    s16 *costEntry;
    local = sub_080020F4();
    player = arg->player; bit = arg->bit;
    level = arg->level; originalLevel = level;
    if (player <= 3) p = &t072DEPlayers[player];
    else {
        caster = &t072DEEnemies[player - 4];
        while (caster->wait < caster->threshold) {
            if (sub_08056E90() != 0 || sub_0800BA6C() == 0 || caster->state == 10 || caster->state == 11) {
                t072DEFlags[player] &= ~(1 << bit); return;
            }
            sub_080003F0();
        }
    }
    if (local != player) {
        if (player > 3) {
            u8 *costBase = (u8 *)t072DECosts;
            u32 costOffset = level * 2 + arg->value * 24;
            costBase += 6;
            costEntry = (s16 *)(costOffset + (u32)costBase);
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
    }
    if (player <= 3) {
        x = (p->sprite[0] >> 4) << 8;
        y = ((u32)p->sprite[1] << 20) >> 12;
        facing = (u16)(t072DEDirections[p->config[3] >> 4] * 2);
    } else {
        x = caster->x; y = caster->y;
        facing = (u16)(t072DEDirections[caster->direction] * 2);
    }
    selected = 0; total = 0;
    if (sub_0800CDF8() == 0) {
        if (arg->target <= 3) {
            nplayers = sub_08002164();
            for (i = 0; i < nplayers; i++) {
                q = &t072DEPlayers[i];
                if (sub_0800CD8C() != 0) break;
                kind = ((struct T072DEBits *)q->sprite)->kind;
                if (kind == 11) continue;
                if (kind == 10) continue;
                if (kind == 14) continue;
                if (q->team == 0 || (((struct T072DEBits *)q->sprite)->flags & 32) || (player <= 3 && q->team == p->team) || q->state == 11) continue;
                dx = (q->sprite[0] >> 4) - (x >> 8);
                dy = (((u32)q->sprite[1] << 20) >> 20) - (y >> 8);
                at = ((u32)(ArcTan2(dx,dy) << 16) >> 27);
                sf = facing;
                ang = at - sf;
                sang = ang; if (sang > 16) ang = sang - 32;
                angle = (s16)ang;
                if (angle < 0) angle = -angle;
                if (angle > 3) continue;
                ax = dx; if (ax < 0) ax = -ax;
                radius = level * 10 + 48;
                if (ax >= radius) continue;
                ay = dy; if (ay < 0) ay = -ay;
                if (ay >= radius) continue;
                targets[total++] = i; selected++;
            }
        } else {
            for (i = 0; i <= 4 && sub_0800CD8C() == 0; i++) {
                if (!((u32)gUnk_030056FC & (1 << i))) continue;
                enemy = &t072DEEnemies[i];
                if (enemy->state == 11 || enemy->active == 0) continue;
                dx = (u32)(enemy->x - x) >> 8;
                dy = ((u32)(enemy->y - y) << 8) >> 16;
                at = ((u32)(ArcTan2(dx,dy) << 16) >> 27);
                sf = facing;
                ang = at - sf;
                sang = ang; if (sang > 16) ang = sang - 32;
                angle = (s16)ang;
                if (angle < 0) angle = -angle;
                if (angle > 3) continue;
                ax = dx; if (ax < 0) ax = -ax;
                radius = level * 10 + 48;
                if (ax >= radius) continue;
                ay = dy; if (ay < 0) ay = -ay;
                if (ay >= radius) continue;
                targets[total++] = i; selected++;
            }
        }
    }
    if ((local == player || player > 3) && sub_0800CCCC() == 0 && sub_0800CD34() == 0) sub_0805865C(level + 0x140);
    t072DEInit(&sprite,0x5008B,8,-1,0);
    sprite.f1C = 7; sprite.f1D = 8;
    if (level > 6) level = 6;
    if (selected == 0) {
        index = t072DEDirections[((u8 *)p->sprite)[3] >> 4];
        x = x + gUnk_080B9704[(s16)(index * 16) + 64] * 30;
        y = y + gUnk_080B9704[(s16)(index * 16)] * 30;
        done = 0;
        px = x >> 8; py = y >> 8;
        do {
            pdx = &dx;
            pdy = &dy;
            sx = (u32)px << 16;
            /* The unsigned identity keeps Y narrowing inside the loop. */
            t072DECoords((s32)sx >> 16,(s16)(-(-(u32)py + 1) + 1),pdx,pdy,48,0);
            shade = sub_0800BC44(px,py,0);
            if (sub_08065370(&sprite,level,(s32)&animation[0],(s32)&timers[0],0) != 0) done = (u16)(done + 1);
            if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0 && (gUnk_03002344 & 1) == (player & 1)) t072DEDraw(dx,dy,level,animation[0],shade,&sprite.f1C,sprite.f8,sprite.f0);
            sub_080003F0();
        } while (done == 0);
        /* Keep the shifted X value live through the animation loop. */
        px = sx;
    } else {
        done = 0;
        while (done < total) {
            if (player == sub_080020F4() && ((u16)(p->state - 11) <= 1 || sub_0800D11C() != 0)) break;
            if (arg->target <= 3) {
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
            } else {
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
            }
            if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0 && (gUnk_03002344 & 1) == (player & 1)) sub_08000AF0(23,sprite.fC,2);
            sub_080003F0();
        }
    }
    while (p->ready == 0) sub_080003F0();
    if (player <= 3 && player != local) p->counter++;
    t072DEFlags[player] &= ~(1 << bit);
}

struct ArgE7D4 { u32 player, bit, target, value, f10, level; };
struct SprE7D4 { u32 f0, f4, f8, fC; u8 pad10[12]; u8 f1C, f1D; u8 pad1E[22]; };
struct SprBitsE7D4 { u8 lo:4; u8 hi:4; u8 b1, b2, b3; u8 b4:6; u8 b4hi:2; };
struct PlyE7D4 { u16 id; u8 pad2[0x1E]; u16 state; u8 pad22[0x46]; u8 team; u8 pad69[0x49]; u16 fB2; u8 padB4[2]; u16 fB6; u8 padB8[10]; u16 resource; u8 padC4[0x84]; u16 *sprite; };
struct EneE7D4 { u16 id; u8 pad2[6]; s16 dir; u8 padA[2]; u16 state; u8 padE[6]; s32 x, y; u8 pad1C[0x42]; u16 resource; u8 pad60[10]; u16 wait; u8 pad6C[0x170]; u8 team; u8 pad1DD[0x4E]; u8 threshold; u8 pad22C[2]; u8 w, h; u8 pad230[0xB0]; };
struct BoxE7D4 { u32 w:16; u32 h:16; };
struct PosE7D4 { s32 x, y; };
extern struct PlyE7D4 pE7D4[] asm("gUnk_03003CE0");
extern u8 *eE7D4Base asm("gUnk_030056F4");
extern u32 eE7D4Mask asm("gUnk_030056FC");
extern u32 fE7D4[] asm("gUnk_030063E0");
extern u32 flagsE7D4 asm("gUnk_03002344");
extern u16 dirE7D4[] asm("gUnk_0849E730");
extern s16 sinE7D4[] asm("gUnk_080B9704");
extern u8 costE7D4[] asm("gUnk_084EBF1C");
extern struct BoxE7D4 rangeE7D4[] asm("gUnk_084EC1A0");
extern void initE7D4(void *, s32, s32, s32, s32) asm("sub_08065158");
extern void coordsE7D4(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern s32 animE7D4(void *, u32, u16 *, u16 *, s32) asm("sub_08065370");
extern void spawnE7D4(s32, s32, u32, s32, s32) asm("sub_08069A30");
extern void sendE7D4(void *) asm("sub_080694AC");
extern void drawE7D4(s32, s32, u16, u16, u8, void *, u32, u32) asm("sub_08007870");
extern void palE7D4(u32, u32, u32) asm("sub_08000AF0");
extern s32 testE7D4(struct PosE7D4 *, void *, struct BoxE7D4 *, struct BoxE7D4 *) asm("sub_08021FE0");

void sub_0806E7D4(struct ArgE7D4 *arg)
{
    struct SprE7D4 spr;
    u8 hits[5];
    u8 delay[5];
    u16 frame[5];
    u16 timer[5];
    s16 dx, dy;
    struct PosE7D4 pos;
    struct PosE7D4 opos;
    struct BoxE7D4 box;
    struct BoxE7D4 box2;
    struct PlyE7D4 *p;
    u32 level;
    u32 level2;
    s32 x, y;
    u16 done;
    u16 count;
    u16 local;
    u32 player;
    u32 bit;
    struct EneE7D4 *e;
    struct PlyE7D4 *q;
    struct EneE7D4 *e2;
    u16 i;
    u16 nhit;
    u32 n;
    u8 shade;
    u8 shadeB;
    u8 c;
    u16 a;
    s32 sx, sy;

    local = sub_080020F4();
    player = arg->player;
    bit = arg->bit;
    level = (u16)arg->level;
    level2 = level;
    if (player <= 3) {
        p = &pE7D4[player];
    } else {
        e = (struct EneE7D4 *)(eE7D4Base + (player * 0x2E0 + 0xFFFFF480));
        while (e->wait < e->threshold) {
            if (sub_08056E90() != 0 || sub_0800BA6C() == 0 || e->state == 10 || e->state == 11) {
                fE7D4[player] &= ~(1 << bit);
                return;
            }
            sub_080003F0();
        }
    }
    if (local != player) {
        if (player > 3) {
            u8 *costBase = costE7D4;
            u32 costOffset = level * 2 + arg->value * 24;
            s16 *cost;
            s32 resource;
            costBase += 6;
            cost = (s16 *)(costOffset + (u32)costBase);
            resource = e->resource - *cost;
            e->resource = resource;
            if ((s16)resource < 0) {
                fE7D4[player] &= ~(1 << bit);
                e->resource = 0;
                return;
            }
        }
    } else {
        struct PlyE7D4 *cp = &pE7D4[sub_080020F4()];
        u16 delta = sub_0806898C(arg->value, arg->level) - 1;
        cp->resource -= delta;
        if ((s16)cp->resource < 0)
            cp->resource = 0;
    }
    frame[0] = 0;
    timer[0] = 0;
    delay[0] = 0;
    for (i = 1; i <= 4; i++) {
        frame[i] = 0;
        timer[i] = 0;
        delay[i] = 10 + delay[i - 1] + sub_080008C8() % 20;
    }
    if (player <= 3) {
        if (level2 != 0)
            p->fB2 = 2;
        x = (p->sprite[0] >> 4) << 8;
        y = (u32)(p->sprite[1] << 20) >> 12;
    } else {
        x = e->x;
        y = e->y;
    }
    pos.x = x;
    pos.y = y;
    nhit = 0;
    count = 0;
    if (!sub_0800CDF8()) {
        if (arg->target <= 3) {
            n = sub_08002164();
            *(u32 *)&box = 0x80008;
            for (i = 0; i < n; i++) {
                q = &pE7D4[i];
                if (player <= 3) {
                    u32 t;
                    if (q->team == p->team)
                        continue;
                    t = (u32)(((u8 *)q->sprite)[0] << 28) >> 28;
                    if (t == 10 || t == 14)
                        continue;
                }
                if ((u32)(((u8 *)q->sprite)[4] << 26) >> 26 & 0x20)
                    continue;
                if (q->team == 0)
                    continue;
                if ((u32)(((u8 *)q->sprite)[0] << 28) >> 28 == 14)
                    continue;
                if (q->state == 11)
                    continue;
                opos.x = (q->sprite[0] >> 4) << 8;
                opos.y = (u32)(q->sprite[1] << 20) >> 12;
                if (testE7D4(&pos, &opos, &rangeE7D4[level], &box)) {
                    hits[count++] = i;
                    nhit++;
                }
            }
        } else {
            for (i = 0; i <= 4; i++) {
                if (!(eE7D4Mask & (1 << i)))
                    continue;
                e2 = (struct EneE7D4 *)(eE7D4Base + i * 0x2E0);
                if (e2->state == 11)
                    continue;
                if (e2->team == 0)
                    continue;
                box2.w = e2->w;
                box2.h = e2->h;
                if (testE7D4(&pos, &e2->x, &rangeE7D4[level], &box2)) {
                    hits[count++] = i;
                    nhit++;
                }
            }
        }
    }
    if ((local == player || player > 3) && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
        sub_0805865C(level + 0x140);
    initE7D4(&spr, 0x5008B, 8, -1, 0);
    spr.f1C = 7;
    spr.f1D = 8;
    if (level > 6)
        level = 6;
    if (nhit == 0) {
        if (player <= 3)
            a = dirE7D4[((u8 *)p->sprite)[3] >> 4] << 4;
        else
            a = dirE7D4[e->dir] << 4;
        x += sinE7D4[(s16)a + 0x40] * 30;
        y += sinE7D4[(s16)a] * 30;
        done = 0;
        do {
            coordsE7D4((s16)(x >> 8), (s16)(y >> 8), &dx, &dy, 0x30, 0);
            shade = sub_0800BC44(x >> 8, y >> 8, 0);
            if (animE7D4(&spr, level, &frame[0], &timer[0], 0))
                done++;
            if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0) {
                if (sub_0800CB9C()) {
                    if ((flagsE7D4 & 1) == (player & 1))
                        drawE7D4(dx, dy, level + 7, frame[0], shade, &spr.f1C, spr.f8, spr.f0);
                } else {
                    drawE7D4(dx, dy, level + 7, frame[0], shade, &spr.f1C, spr.f8, spr.f0);
                }
            }
            sub_080003F0();
        } while (done == 0);
        spawnE7D4(x, y, player, 15, level);
    } else {
        done = 0;
        goto test;
    body:
        {
            if (arg->target <= 3) {
                for (i = 0; i < count; i++) {
                    q = &pE7D4[hits[i]];
                    coordsE7D4(q->sprite[0] >> 4, (u32)(q->sprite[1] << 20) >> 20, &dx, &dy, 0x30, 0);
                    shade = sub_0800BC44(q->sprite[0] >> 4, (u32)(q->sprite[1] << 20) >> 20, 0);
                    if (delay[i] == 0) {
                        if (animE7D4(&spr, (u16)(level + 7), &frame[i], &timer[i], 0)) {
                            done++;
                            delay[i] = 0xF0;
                            if (local == hits[i]) {
                                arg->target = q->id;
                                sendE7D4(arg);
                                if (sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                                    sub_0805865C(0x1A);
                            }
                            spawnE7D4((q->sprite[0] >> 4) << 8, (u32)(q->sprite[1] << 20) >> 12, player, 15, level);
                        }
                        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0) {
                            if (!(flagsE7D4 & 1))
                                palE7D4(0x17, spr.fC, 2);
                            if (sub_0800CB9C() == 0 || (flagsE7D4 & 1) == (player & 1))
                                drawE7D4(dx, dy, level + 7, frame[i], shade, &spr.f1C, spr.f8, spr.f0);
                        }
                    } else if (delay[i] != 0xF0) {
                        delay[i]--;
                    }
                }
            } else {
                for (i = 0; i < count; i++) {
                    e2 = (struct EneE7D4 *)(eE7D4Base + hits[i] * 0x2E0);
                    coordsE7D4((s16)(e2->x >> 8), (s16)(e2->y >> 8), &dx, &dy, 0x30, 0);
                    shadeB = sub_0800BC44(e2->x >> 8, e2->y >> 8, 0);
                    if (delay[i] == 0) {
                        if (animE7D4(&spr, (u16)(level + 7), &frame[i], &timer[i], 0)) {
                            done++;
                            delay[i] = 0xF0;
                            if (local == player) {
                                arg->target = e2->id + 4;
                                sendE7D4(arg);
                                if (sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                                    sub_0805865C(0x1A);
                            }
                            spawnE7D4(e2->x, e2->y, player, 15, level);
                        }
                        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0) {
                            if (!(flagsE7D4 & 1))
                                palE7D4(0x17, spr.fC, 2);
                            if (gUnk_03003170.curLevel == 4 && sub_0800CDC0())
                                shadeB = 0;
                            if (sub_0800CB9C() != 0) {
                                /* The ROM keeps the parity mask in r1 and the frame flags in r2. */
                                u32 f = flagsE7D4;
                                register u32 one asm("r1") = 1;
                                f &= one;
                                if (f != (player & one))
                                    goto skipE7D4;
                            }
                            drawE7D4(dx, dy, level + 7, frame[i], shadeB, &spr.f1C, spr.f8, spr.f0);
                        skipE7D4:;
                        }
                    } else if (delay[i] != 0xF0) {
                        delay[i]--;
                    }
                }
            }
            sub_080003F0();
        }
    test:
        if (done < count && (player != sub_080020F4() || ((u16)(p->state - 11) > 1 && sub_0800D11C() == 0)))
            goto body;
    }
    if (player <= 3) {
        while (p->fB6 == 0)
            sub_080003F0();
    }
    fE7D4[player] &= ~(1 << bit);
}
struct ArgF0CC { u32 player, bit, target, value, f10, level; };
struct SprF0CC { u32 f0, f4, f8, fC; u8 pad10[12]; u8 f1C, f1D; u8 pad1E[22]; };
struct PlyF0CC { u16 id; u8 pad2[0x1E]; u16 state; u8 pad22[0xE]; u32 flags; u8 pad34[0x2E]; s16 maxhp; u8 pad64[4]; u8 team; u8 pad69[0x13]; u8 f7C[0x10]; s32 x8C, y90; u8 pad94[0x2E]; u16 resource; u16 hp; u8 padC6[0x16]; u32 fDC; u8 padE0[0x68]; u16 *sprite; };
struct EneF0CC { u16 id; u16 f2; u8 pad4[4]; u16 dir; u8 padA[2]; u16 state; u8 padE[6]; s32 x, y; u8 pad1C[0x40]; u16 hp; u16 resource; u8 pad60[10]; u16 wait; u8 pad6C[0x16A]; s16 maxhp; u8 pad1D8[4]; u8 team; u8 pad1DD[0x3B]; u8 f218[0x13]; u8 threshold; u8 pad22C[0xB4]; };
struct OffF0CC { s16 x, y; };
struct PosF0CC { s32 x, y; };
extern struct PlyF0CC pF0CC[] asm("gUnk_03003CE0");
extern u8 *eF0CCBase asm("gUnk_030056F4");
extern u32 eF0CCMask asm("gUnk_030056FC");
extern u32 fF0CC[] asm("gUnk_030063E0");
extern u32 flagsF0CC asm("gUnk_03002344");
extern u16 angF0CC[] asm("gUnk_0847AD0A");
extern s16 sinF0CC[] asm("gUnk_080B9704");
extern u8 costF0CC[] asm("gUnk_084EBF1C");
extern u8 kF0CC[] asm("gUnk_084790B4");
extern struct OffF0CC offF0CC[] asm("gUnk_084EBEBC");
extern void initF0CC(void *, s32, s32, s32, s32) asm("sub_08065158");
extern void coordsF0CC(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern s32 animF0CC(void *, u32, u16 *, u16 *, s32) asm("sub_08065370");
extern void spawnF0CC(s32, s32, u32, s32, s32) asm("sub_08069A30");
extern void sendF0CC(void *) asm("sub_080694AC");
extern void drawF0CC(s32, s32, u32, u32, u32, void *, u32, u32) asm("sub_08007870");
extern void palF0CC(u32, u32, u32) asm("sub_08000AF0");
extern u16 drainF0CC(void *, void *) asm("sub_08068F9C");
extern void numF0CC(s32, s32, u32, u32) asm("sub_0805FAC0");

static inline void healNumF0CC(struct PosF0CC *pos, u32 v)
{
    s16 hx, hy;
    struct PosF0CC h;
    u16 j;

    if (v > 999)
        v = 999;
    h = *pos;
    for (j = 0; j < 30; j++) {
        coordsF0CC((h.x << 8) >> 16, (h.y << 8) >> 16, &hx, &hy, 0x30, 0);
        numF0CC(hx, hy, v, 2);
        h.y -= 0x40;
        sub_080003F0();
    }
}

void sub_0806F0CC(struct ArgF0CC *arg)
{
    s32 dd0;
    s32 dd1;
    s32 dd2;
    s32 dd3;
    s32 dd4;
    struct SprF0CC spr;
    s16 dx, dy;
    u16 frame, timer;
    struct EneF0CC *e2;
    struct EneF0CC *e3;
    struct EneF0CC *e;
    struct PlyF0CC *p;
    struct PlyF0CC *p2;
    u32 target;
    u32 lvl;
    u32 tmo;
    u32 level;
    u32 level2;
    u16 count;
    u16 i;
    u32 n;
    u16 drain;
    u16 angle;
    u32 d;
    s32 hit;
    u32 player;
    u32 bit;
    u32 self;
    u16 a;
    s16 a0;
    s32 dd;
    s16 sa, sang, diff;
    s32 v;
    s32 x, y;
    u8 shade;
    u8 *kp;
    u32 id;
    u8 tile;
    u8 k;

    self = sub_080020F4();
    target = (u16)arg->target;
    player = arg->player;
    bit = arg->bit;
    level = (u16)arg->level;
    if (player <= 3) {
        p = &pF0CC[player];
    } else {
        e = (struct EneF0CC *)(eF0CCBase + (player * 0x2E0 + 0xFFFFF480));
        while (e->wait < e->threshold) {
            if (sub_08056E90() != 0 || sub_0800BA6C() == 0 || e->state == 10 || e->state == 11) {
                fF0CC[player] &= ~(1 << bit);
                return;
            }
            sub_080003F0();
        }
    }
            tmo = (u32)(((u32 *)p->sprite)[1] << 15) >> 29;
    asm("" :: "r"(tmo));
    lvl = tmo;
    frame = 0;
    timer = 0;
    if (sub_080020F4() != player) {
        if (player > 3) {
            u8 *costBase = costF0CC;
            u32 costOffset = lvl * 2 + arg->value * 24;
            s16 *cost;
            s32 resource;
            costBase += 6;
            cost = (s16 *)(costOffset + (u32)costBase);
            resource = e->resource - *cost;
            e->resource = resource;
            if ((s16)resource < 0) {
                fF0CC[player] &= ~(1 << bit);
                e->resource = 0;
                return;
            }
        }
    } else {
        struct PlyF0CC *cp = &pF0CC[sub_080020F4()];
        u16 delta = sub_0806898C(arg->value, arg->level) - 1;
        cp->resource -= delta;
        if ((s16)cp->resource < 0)
            cp->resource = 0;
    }
    if (target <= 3) {
        n = sub_08002164();
        for (i = 0; i < n; i++) {
            if (player == i)
                continue;
            p2 = &pF0CC[i];
            if (p2->id == target)
                break;
        }
        if (i >= n)
            target = 0xFFFF;
    } else {
        for (i = 0; i <= 4; i++) {
            e2 = (struct EneF0CC *)(eF0CCBase + i * 0x2E0);
            if (!(eF0CCMask & (1 << i)))
                continue;
            if (e2->f2 == target)
                break;
        }
        if (i > 4)
            target = 0xFFFF;
    }
    if (player <= 3) {
        x = (p->sprite[0] >> 4) << 8;
        y = (u32)(p->sprite[1] << 20) >> 12;
        d = ((u8 *)p->sprite)[3] >> 4;
    } else {
        x = e->x;
        y = e->y;
        d = e->dir;
    }
    angle = angF0CC[(s16)d];
    if ((sub_080020F4() == player || player > 3) && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
        sub_0805865C(tmo + 0x14E);
    if (target != 0xFFFF) {
        if (target <= 3) {
            dx = (p2->sprite[0] >> 4) - (x >> 8);
            dy = ((u32)(p2->sprite[1] << 20) >> 20) - (y >> 8);
        } else {
            dx = (u32)(e2->x - x) >> 8;
            dy = (u32)(e2->y - y) >> 8;
        }
        a = (u32)(ArcTan2(dx, dy) << 16) >> 24;
        a0 = a;
        if (a0 - (s16)angle > 0x80)
            a = a0 - 0x100;
        else if (a0 - (s16)angle < -0x80)
            a = 0x100 | a0;
        sa = a;
        sang = angle;
        diff = sa - sang;
        sang = sang + diff;
        angle = sang;
        if (sang < 0)
            angle = sang + 0x100;
        sang = angle;
        if (sang > 0x100)
            angle = sang - 0x100;
        angle &= 0xFF;
    }
    x += sinF0CC[(s16)angle + 0x40] * 4;
    y += sinF0CC[(s16)angle] * 4;
    initF0CC(&spr, 0x500D0, 8, -1, 0);
    spr.f1C = 7;
    spr.f1D = 8;
    frame = 0;
    timer = 0;
    lvl = ((lvl << 19) + (20 << 16)) >> 16;
    for (;;) {
        v = lvl;
        lvl = (u16)(v - 1);
        if (v == 0)
            break;
        if (player == sub_080020F4()) {
            if ((u16)(p->state - 11) <= 1 || sub_0800D11C() != 0)
                break;
        }
        hit = 0;
        if (target != 0xFFFF && target > 3) {
            for (i = 0; i <= 4; i++) {
                if (!(eF0CCMask & (1 << i)))
                    continue;
                e3 = (struct EneF0CC *)(eF0CCBase + i * 0x2E0);
                if (e3->team == 0)
                    continue;
                dx = (u32)(e3->x - x) >> 8;
                dy = (u32)((e3->y - y) << 8) >> 16;
                if ((dx < 0 ? -dx : dx) <= 7 && (dy < 0 ? -dy : dy) <= 7) {
                    hit = 1;
                    break;
                }
            }
        }
        if (target != 0xFFFF) {
            if (hit)
                break;
                        n = sub_08002164();
            if (arg->player <= 3) {
                i = 0;  for (; i < n; i++) {
                    p2 = &pF0CC[i];
                    if (p2->team == p->team)
                        continue;
                    if ((u32)(((u8 *)p2->sprite)[0] << 28) >> 28 == 14)
                        continue;
                    if (p2->team == 0)
                        continue;
                    dx = (p2->sprite[0] >> 4) - (x >> 8);
                    dy = ((u32)(p2->sprite[1] << 20) >> 20) - (y >> 8);
                    if ((dx < 0 ? -dx : dx) <= 15 && (dy < 0 ? -dy : dy) <= 15) {
                        hit = 1;
                        goto out;
                    }
                }
            } else {
                i = 0;  for (; i < n; i++) {
                    p2 = &pF0CC[i];
                    if (p2->flags & 0x2000)
                        continue;
                    if ((u32)(((u8 *)p2->sprite)[0] << 28) >> 28 == 14)
                        continue;
                    if (p2->team == 0)
                        continue;
                    dx = (p2->sprite[0] >> 4) - (x >> 8);
                    dy = ((u32)(p2->sprite[1] << 20) >> 20) - (y >> 8);
                    if ((dx < 0 ? -dx : dx) <= 15 && (dy < 0 ? -dy : dy) <= 15) {
                        hit = 1;
                        goto out;
                    }
                }
            }
        }
        if (hit)
            break;
        tile = sub_0800AE50(x, y, 0);
        if ((tile & 0xF) && !(tile & 0x10)) {
            spawnF0CC(x, y, player, 0x12, level);
            break;
        }
        x += sinF0CC[(s16)angle + 0x40] * 2;
        y += sinF0CC[(s16)angle] * 2;
        coordsF0CC((s16)(x >> 8), (s16)(y >> 8), &dx, &dy, 0x30, hit);
        shade = sub_0800BC44(x >> 8, y >> 8, 0); id = (u16)d;
        animF0CC(&spr, id, &frame, &timer, 1);
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0) {
            if (!(flagsF0CC & 1))
                palF0CC(0x17, spr.fC, 2);
            if ((flagsF0CC & 1) == (player & 1)) {
                drawF0CC(dx + offF0CC[kF0CC[(s16)angle >> 4]].x, dy + (&offF0CC[0].y)[kF0CC[(s16)angle >> 4] * 2], ({asm("");asm(""); id;}), frame, shade, &spr.f1C, spr.f8, spr.f0);
            }
        }
        sub_080003F0();
    }
out:
    if (sub_0800CDF8())
        hit = 0;
    if (!hit)
        goto end;
    i = 30;
    for (;;) {
        v = i;
        i = (u16)(v - 1);
        if (v == 0)
            break;
        if (player == self) {
            if ((u16)(p->state - 11) <= 1 || sub_0800D11C() != 0)
                break;
        }
        if (target > 3) {
            struct EneF0CC *q = e3;
            coordsF0CC((s16)(q->x >> 8), (s16)(q->y >> 8), &dx, &dy, 0x30, 0);
            sub_0800BC44(q->x >> 8, q->y >> 8, 0);
        } else {
            coordsF0CC(p2->sprite[0] >> 4, (u32)(p2->sprite[1] << 20) >> 20, &dx, &dy, 0x30, 0);
            sub_0800BC44(p2->sprite[0] >> 4, (u32)(p2->sprite[1] << 20) >> 20, 0);
        }
        animF0CC(&spr, ((d << 16) + (8 << 16)) >> 16, &frame, &timer, 1);
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0) {
            if (!(flagsF0CC & 1))
                palF0CC(0x17, spr.fC, 2);
            { int xx = dx; u8 *kp = kF0CC; asm volatile("":"+r"(kp)); { u32 q = ((s16)angle >> 4) + (u32)kp; drawF0CC(xx + offF0CC[*(u8*)q].x, dy + (&offF0CC[0].y)[*(u8*)q * 2] + 2, ((d << 16) + (8 << 16)) >> 16, frame, 0, &spr.f1C, spr.f8, spr.f0); }}
        }
        sub_080003F0();
    }
    if (target > 3) {
        arg->target = e2->id + 4;
        if (player == self)
            sendF0CC(arg);
        drain = drainF0CC(arg, e2->f218);
    } else if (player == self) {
        drain = drainF0CC(arg, p2->f7C);
    } else if (p2->id == self) {
        arg->target = self;
        sendF0CC(arg);
    }
    while (player != sub_080020F4() || (sub_0801DF8C() == 0 && p->state != 11 && p->state != 12 && sub_0800D11C() == 0)) {
        tile = sub_0800AE50(x, y, 0);
        if ((tile & 0xF) && !(tile & 0x10)) {
            spawnF0CC(x, y, player, 0x12, level);
            break;
        }
        if (player <= 3) {
            if (player == self) {
                dx = (p->sprite[0] >> 4) - (x >> 8);
                dy = ((u32)(p->sprite[1] << 20) >> 20) - (y >> 8);
            } else {
                dx = (pF0CC[player].sprite[0] >> 4) - (x >> 8);
                dy = ((u32)(pF0CC[player].sprite[1] << 20) >> 20) - (y >> 8);
            }
        } else {
            dx = (e->x - x) >> 8;
            dy = (e->y - y) >> 8;
        }
        a = (u32)(ArcTan2(dx, dy) << 16) >> 24;
        a0 = a;
        dd = a0 - (s16)angle;
        if (dd > 0x80)
            a = a0 - 0x100;
        else if (dd < -0x80)
            a = 0x100 | a0;
        sa = a;
        sang = angle;
        diff = sa - sang;
        sang = sang + diff;
        angle = sang;
        if (sang < 0)
            angle = sang + 0x100;
        sang = angle;
        if (sang > 0x100)
            angle = sang - 0x100;
        angle &= 0xFF;
        d = kF0CC[(s16)angle >> 4] + 8;
        if (Sqrt(dx * dx + dy * dy) <= 7)
            break;
        x += sinF0CC[(s16)angle + 0x40] * 3;
        y += sinF0CC[(s16)angle] * 3;
        coordsF0CC((s16)(x >> 8), (s16)(y >> 8), &dx, &dy, 0x30, 0);
        shade = sub_0800BC44(x >> 8, y >> 8, 0);
        animF0CC(&spr, (u16)d, &frame, &timer, 1);
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0) {
            if (!(flagsF0CC & 1))
                palF0CC(0x17, spr.fC, 2);
            drawF0CC(dx + offF0CC[kF0CC[(s16)angle >> 4]].x, dy + (&offF0CC[0].y)[kF0CC[(s16)angle >> 4] * 2], (u16)d, frame, shade, &spr.f1C, spr.f8, spr.f0);
        }
        sub_080003F0();
    }
    drain = drain * (arg->level + 2) / 50;
    if (arg->player <= 3) {
        if (player == self && sub_0801DF8C() == 0) {
            p->hp += drain;
            if ((s16)p->hp > p->maxhp)
                p->hp = p->maxhp;
            healNumF0CC((struct PosF0CC *)&p->x8C, drain);
        }
    } else {
        e2->hp += drain;
        if ((s16)e2->hp > e2->maxhp)
            e2->hp = e2->maxhp;
        healNumF0CC((struct PosF0CC *)&e2->x, drain);
    }
end:
    if (player <= 3 && player != self)
        p->fDC++;
    fF0CC[player] &= ~(1 << bit);
}
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
u8 t6f_sub_080003F0() asm("sub_080003F0");
u8 t6f_sub_08000AF0(s32, s32, s32) asm("sub_08000AF0");
s32 t6f_sub_080020F4() asm("sub_080020F4");
u32 t6f_sub_08002164() asm("sub_08002164");
s32 t6f_sub_0800BA6C() asm("sub_0800BA6C");
s32 t6f_sub_0800CC98() asm("sub_0800CC98");
u8 *t6f_sub_0800CCCC() asm("sub_0800CCCC");
s32 t6f_sub_0800CD34() asm("sub_0800CD34");
s32 t6f_sub_0800CD8C() asm("sub_0800CD8C");
s32 t6f_sub_0800CDC0() asm("sub_0800CDC0");
s32 t6f_sub_0800CF10() asm("sub_0800CF10");
u8 *t6f_sub_0800D11C() asm("sub_0800D11C");
s32 t6f_sub_0801DF8C() asm("sub_0801DF8C");
s32 t6f_sub_08056E90() asm("sub_08056E90");
u8 t6f_sub_0805865C(s32) asm("sub_0805865C");
s32 t6f_sub_08058DB0() asm("sub_08058DB0");
s32 t6f_sub_0806898C(s32, s32) asm("sub_0806898C");
struct T6fPos { u32 kind : 4; u32 x : 12; u32 y : 12; u32 dir : 4; u32 f4 : 6; };
struct T6fPl { u16 id; u8 p2[0x20 - 2]; u16 state; u8 p22[0x30 - 0x22]; u32 flags; u8 p34[0x68 - 0x34]; u8 team; u8 p69[0xC2 - 0x69]; u16 hp; u8 pC4[0xDC - 0xC4]; s32 hits; u8 pE0[0x148 - 0xE0]; struct T6fPos *pos; };
struct T6fEn { u16 id; u16 uid; u8 p4[8 - 4]; s16 dir; u8 pA[0xC - 0xA]; u16 state; u8 pE[0x14 - 0xE]; s32 x; s32 y; u8 p1C[0x50 - 0x1C]; s32 hits; u8 p54[0x5A - 0x54]; u16 hitMask; u8 p5C[0x5E - 0x5C]; u16 mp; u8 p60[0x6A - 0x60]; u16 h6A; u8 p6C[0x1DC - 0x6C]; u8 alive; u8 p1DD[0x22B - 0x1DD]; u8 b22B; u8 p22C[0x2E0 - 0x22C]; };
struct T6fArg { u32 owner; s32 bit; u16 target; u8 pA[2]; s32 kind; u8 p10[4]; s32 level; };
struct T6fDesc { u32 f0; u32 f4; u32 f8; u32 fC; u8 p10[0xC]; u8 f1C; u8 f1D; u8 p1E[0x34 - 0x1E]; };
struct T6fTile { u8 p0[0x8C]; u16 h8C; };
struct T6fCtl { u8 p0[4]; u16 h4; };
extern struct T6fPl gT6fPlayers[] asm("gUnk_03003CE0");
extern struct T6fEn *gT6fEnemies asm("gUnk_030056F4");
extern u32 gT6fEnemyMask asm("gUnk_030056FC");
extern u32 gT6fFlags[] asm("gUnk_030063E0");
extern u8 gT6fBusy[] asm("gUnk_03006430");
extern s16 gT6fCost[][12] asm("gUnk_084EBF1C");
struct T6fCostRow { s16 pad[3]; s16 v[9]; };
extern struct T6fCostRow gT6fCostS[] asm("gUnk_084EBF1C");
extern u16 gT6fKinds[] asm("gUnk_084EBF1C");
extern u16 gT6fDirs[] asm("gUnk_0847AD0A");
extern u8 gT6fFrames[] asm("gUnk_084790B4");
extern s16 gT6fSin[] asm("gUnk_080B9704");
extern struct T6fTile gT6fTile asm("gUnk_03003170");
extern struct T6fCtl *gT6fCtl asm("gUnk_03005CF4");
extern u32 gT6fFrame asm("gUnk_03002344");
void t6fInit(void *, s32, s32, s32, s32) asm("sub_08065158");
u16 t6fAnim(void *, u32, s16 *, s16 *, s32) asm("sub_08065370");
void t6fCoords(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
u8 t6fPal(s32, s32, s32) asm("sub_0800BC44");
void t6fDraw(s32, s32, u32, u16, u32, void *, u32, u32) asm("sub_08007870");
u16 t6fSqrt(s32) asm("Sqrt");
s16 t6fCalc(void *, s32) asm("sub_08068F9C");
void t6fPlHit(u32, s32, u32) asm("sub_08029A7C");
void t6fEnHit(u32, u32, s32, u32, s32, s32) asm("sub_08029B98");
u16 t6fSeekMe(s32, s32) asm("sub_08073EE8");
u16 t6fSeekPl(void *, s32, s32) asm("sub_0807414C");
u16 t6fSeekEn(u16, s32, s32, s32, s32) asm("sub_08074398");
u8 t6fTerrain(s32, s32, s32) asm("sub_0800AE50");

void sub_0806FF1C(struct T6fArg *arg0) {
    struct T6fDesc desc;
    s16 f0, f1;
    s16 x, y;
    struct T6fEn *te;
    struct T6fPl *pl;
    struct T6fEn *en;
    struct T6fPl *tp;
    u16 target;
    u16 base;
    u16 count;
    u16 hitBase;
    u16 dir;
    u16 spin;
    u16 frame;
    u32 myId;
    s32 hitFrame;
    s32 bit;
    u32 stuck;
    u32 owner;
    s32 sx, sy;
    u16 i;
    u32 num;
    s32 hit;
    s32 hit2;
    u8 pal;
    u16 a;
    u8 ang;
    s32 turn;
    s32 dx;
    s32 dy;
    u16 done;
    u16 fr;
    u8 t;
    s16 idx;
    struct T6fPos *pos;

    asm(""); asm(""); asm(""); asm("");  myId = t6f_sub_080020F4();
    bit = arg0->bit;
    owner = arg0->owner;
    if (gT6fBusy[owner]) {
        gT6fFlags[owner] &= ~(1 << bit);
        return;
    }
    gT6fBusy[owner] = 1;
    target = arg0->target;
    { u32 lv = *(u16 *)&arg0->level; count = lv; asm(""); base = lv; }
    f0 = 0;
    f1 = 0;
    if (owner <= 3) {
        pl = &gT6fPlayers[owner];
    } else {
        en = &gT6fEnemies[owner - 4];
        while (en->h6A < en->b22B) {
            if (t6f_sub_08056E90() != 0 || t6f_sub_0800BA6C() == 0 || en->state == 10 || en->state == 11) {
                gT6fFlags[owner] &= ~(1 << bit);
                gT6fBusy[owner] = 0;
                return;
            }
            t6f_sub_080003F0();
        }
    }
    if (myId != owner) {
        if (owner > 3) {
            { u8 *cb = (u8 *)gT6fCostS; u32 off = base * 2 + arg0->kind * 24; s16 *cp; s32 v; cb += 6; cp = (s16 *)(off + (u32)cb); v = en->mp - *cp; en->mp = v; }
            if ((s16)en->mp < 0) {
                gT6fFlags[owner] &= ~(1 << bit);
                gT6fBusy[owner] = 0;
                en->mp = 0;
                return;
            }
        }
    } else {
        struct T6fPl *me = &gT6fPlayers[t6f_sub_080020F4()];
        u32 power = (u16)(t6f_sub_0806898C(arg0->kind, arg0->level) - 1);
        me->hp -= power;
        if ((s16)me->hp < 0)
            me->hp = 0;
    }
    if (owner <= 3) {
        frame = pl->pos->dir;
        dir = gT6fDirs[(s16)frame];
    } else {
        frame = en->dir;
        dir = gT6fDirs[(s16)frame];
    }
    if ((myId == owner || owner > 3) && t6f_sub_0800CCCC() == 0 && t6f_sub_0800CD34() == 0)
        t6f_sub_0805865C(arg0->level + 0x15C);
    t6fInit(&desc, 0x500A5, 8, -1, 0);
    switch (base) {
    case 0:
    case 1:
    case 2:
        base = 0;
        break;
    case 3:
        base = 1;
        break;
    case 4:
        base = 2;
        break;
    case 5:
        base = 3;
        break;
    case 6:
        base = 4;
        break;
    case 7:
        base = 5;
        break;
    }
    hitBase = base;
    count += 2;
    desc.f1C = 7;
    desc.f1D = 8;
    f0 = 0;
    f1 = 0;
    if (target <= 3) {
        num = t6f_sub_08002164();
        for (i = 0; i < num; i++) {
            tp = &gT6fPlayers[i];
            if (tp->id == target)
                break;
        }
        if (i >= num)
            target = 0xFFFF;
    } else {
        for (i = 0; i <= 4; i++) {
            te = &gT6fEnemies[i];
            if ((gT6fEnemyMask & (1 << i)) && te->uid == target)
                break;
        }
        if (i > 4)
            target = 0xFFFF;
    }
    base <<= 3;

restart:
    {
        for (;;) {
            if (owner == myId) {
                if (t6f_sub_08058DB0() != 0 || t6f_sub_0801DF8C() != 0 || pl->state == 11 || pl->state == 12 || t6f_sub_0800D11C() != 0)
                    goto end;
            }
            if (owner <= 3) {
                sx = pl->pos->x << 8;
                sy = pl->pos->y << 8;
                if (owner == myId) {
                    if ((gT6fFrame & 1) == (owner & 1)) {
                        target = t6fSeekMe(0x20, 0x64);
                        if (target != 0xFF)
                            goto found;
                    }
                } else if ((gT6fFrame & 1) == (owner & 1)) {
                    target = t6fSeekPl(&gT6fPlayers[owner], 0x20, 0x64);
                    if (target != 0xFF)
                        goto found;
                }
            } else {
                sx = en->x;
                sy = en->y;
                if (target <= 3) {
                    if (!(gT6fPlayers[target].pos->f4 & 0x20))
                        goto found;
                } else {
                    target = t6fSeekEn(en->id + 4, 0xFF, sx, sy, 100);
                    if (target != 0xFF)
                        goto found;
                }
            }
            idx = spin;
            sx += gT6fSin[idx + 0x40] * 16;
            { s32 dy = gT6fSin[idx] * 8 - 0x800; sy += dy; }
            { s32 m = (idx + 8) << 16; spin = (u32)(0xFF0000 & m) >> 16; asm(""::"r"(m)); }
            if (!(gT6fCtl->h4 & 4)) {
                u8 *p;
                t6fAnim(&desc, base, &f0, &f1, 1);
                if (t6f_sub_0800CC98() == 0 && t6f_sub_0800CD8C() == 0 && (p = t6f_sub_0800CCCC()) == 0) {
                    if (!(gT6fFrame & 1))
                        t6f_sub_08000AF0(0x17, desc.fC, 2);
                    t6fCoords((s16)(sx >> 8), (s16)(sy >> 8), &x, &y, 0x30, (s32)p);
                    pal = t6fPal(sx >> 8, sy >> 8, 0);
                    if (gT6fTile.h8C == 4 && t6f_sub_0800CDC0() != 0)
                        pal = 0;
                    if ((gT6fFrame & 1) == (owner & 1))
                        t6fDraw(x, y, base, f0, pal, &desc.f1C, desc.f8, desc.f0);
                }
            }
            t6f_sub_080003F0();
            if (t6f_sub_08056E90() != 0)
                goto end;
            if (owner <= 3 && (gT6fPlayers[owner].flags & 2))
                goto end;
            if (pl->pos->kind == 0xC || t6f_sub_08058DB0() != 0 || (gT6fPlayers[owner].flags & 0x2400) || t6f_sub_0800CF10() != 0 || t6f_sub_0800D11C() != 0)
                goto end;
        }

    found:
        if (target <= 3) {
            tp = &gT6fPlayers[target];
        } else {
            for (i = 0; i <= 4; i++) {
                if (gT6fEnemyMask & (1 << i)) {
                    if (gT6fEnemies[i].uid == target) {
                        te = &gT6fEnemies[i];
                        goto tracked;
                    }
                }
            }
        }
    tracked:
        stuck = 0;
        for (;;) {
            if (owner == myId) {
                if (t6f_sub_08058DB0() != 0 || t6f_sub_0801DF8C() != 0 || pl->state == 11 || pl->state == 12 || t6f_sub_0800D11C() != 0)
                    goto end;
            }
            hit = 0;
            if (target != 0xFF) {
                if (target > 3) {
                    for (i = 0; i <= 4; i++) {
                        if ((1 << i) & gT6fEnemyMask) {
                            u32 off; register struct T6fEn *e asm("r4"); struct T6fEn **pp = &gT6fEnemies; { register int a asm("r4"); asm("" : "=r"(a)); off = i * sizeof(struct T6fEn); asm("" :: "r"(a)); } { register u32 b asm("r1") = (u32)*pp; e = (struct T6fEn *)(b + off); }
                            if (e->alive) {
                                x = (e->x - sx) >> 8;
                                y = (e->y - sy) >> 8;
                                dx = x;
                                if (dx < 0) dx = -dx;
                                if (dx <= 7) {
                                    dy = y;
                                    if (dy < 0) dy = -dy;
                                    if (dy <= 7)
                                        hit = 1;
                                }
                            }
                        }
                    }
                }
            }
            if (target != 0xFF) {
                if (hit)
                    goto strike;
                if (target <= 3 && tp->team != pl->team && tp->pos->kind != 0xE && tp->team != 0) {
                    x = tp->pos->x - (sx >> 8);
                    y = tp->pos->y - (sy >> 8);
                    dx = x;
                    if (dx < 0) dx = -dx;
                    if (dx <= 15) {
                        dy = y;
                        if (dy < 0) dy = -dy;
                        if (dy <= 15)
                            hit = 1;
                    }
                }
            }
            if (hit)
                goto strike;
            if (t6f_sub_08056E90() != 0)
                goto end;
            if (owner <= 3 && (gT6fPlayers[owner].flags & 2))
                goto end;
            if (pl->pos->kind == 0xC || t6f_sub_08058DB0() != 0 || (gT6fPlayers[owner].flags & 0x2400) || t6f_sub_0800CF10() != 0 || t6f_sub_0800D11C() != 0)
                goto end;
            if (target <= 3) {
                x = tp->pos->x - (sx >> 8);
                y = tp->pos->y - (sy >> 8);
            } else {
                x = (te->x - sx) >> 8;
                y = (te->y - sy) >> 8;
            }
            if (t6fSqrt(x * x + y * y) <= 7)
                goto strike;
            a = (u32)(ArcTan2(x, y) << 16) >> 24;
            ang = a;
            turn = ang - (s16)dir;
            if (turn > 0x80)
                a = ang - 0x100;
            else if (turn < -0x80)
                a = ang | 0x100;
            { s16 sa = a; s16 sd = dir; s16 dd = sa - sd; dir = sd + dd; }
            { s16 t2 = dir; if (t2 < 0) dir = t2 + 0x100; }
            { s16 t2 = dir; if (t2 > 0x100) dir = t2 - 0x100; }
            dir &= 0xFF;
            idx = dir;
            frame = gT6fFrames[idx >> 4];
            t = t6fTerrain(sx, sy, 0);
            if (!(t & 0xF) || (t & 0x10)) {
                sx += gT6fSin[idx + 0x40] * 3;
                sy += gT6fSin[idx] * 3;
            } else if (stuck++ > 0x78) {
                goto lost;
            }
            t6fCoords((s16)(sx >> 8), (s16)(sy >> 8), &x, &y, 0x30, 0);
            pal = t6fPal(sx >> 8, sy >> 8, 0);
            t6fAnim(&desc, (u16)(base + gT6fFrames[(s16)dir >> 4]), &f0, &f1, 1);
            if (!(gT6fCtl->h4 & 4) && t6f_sub_0800CC98() == 0 && t6f_sub_0800CD8C() == 0 && t6f_sub_0800CCCC() == 0) {
                if (!(gT6fFrame & 1))
                    t6f_sub_08000AF0(0x17, desc.fC, 2);
                if (gT6fTile.h8C == 4 && t6f_sub_0800CDC0() != 0)
                    pal = 0;
                if ((gT6fFrame & 1) == (owner & 1))
                    t6fDraw(x, y, (u16)(base + frame), f0, pal, &desc.f1C, desc.f8, desc.f0);
            }
            t6f_sub_080003F0();
        }

    strike:
        if ((s16)frame <= 3)
            hitFrame = 0x3F;
        else
            hitFrame = 0x46;
        for (;;) {
            hit2 = 0;
            if (target != 0xFFFF && target > 3) {
                for (i = 0; i <= 4; i++) {
                    if ((1 << i) & gT6fEnemyMask) {
                        u32 off; register struct T6fEn *e asm("r4"); struct T6fEn **pp = &gT6fEnemies; { register int a asm("r4"); asm("" : "=r"(a)); off = i * sizeof(struct T6fEn); asm("" :: "r"(a)); } { register u32 b asm("r1") = (u32)*pp; e = (struct T6fEn *)(b + off); }
                        if (e->alive) {
                            x = (e->x - sx) >> 8;
                            y = (e->y - sy) >> 8;
                            dx = x;
                            if (dx < 0) dx = -dx;
                            if (dx <= 0x1F) {
                                dy = y;
                                if (dy < 0) dy = -dy;
                                if (dy <= 0x1F)
                                    hit2 = 1;
                            }
                        }
                    }
                }
            }
            if (target != 0xFF && !hit2) {
                if (target <= 3 && tp->team != pl->team && tp->pos->kind != 0xE && tp->team != 0) {
                    x = tp->pos->x - (sx >> 8);
                    y = tp->pos->y - (sy >> 8);
                    dx = x;
                    if (dx < 0) dx = -dx;
                    if (dx <= 15) {
                        dy = y;
                        if (dy < 0) dy = -dy;
                        if (dy <= 15)
                            hit2 = 1;
                    }
                }
            }
            if (!hit2)
                goto lost;
            t6fCoords((s16)(sx >> 8), (s16)(sy >> 8), &x, &y, 0x30, 0);
            pal = t6fPal(sx >> 8, sy >> 8, 0);
            done = t6fAnim(&desc, (u16)(hitBase + hitFrame), &f0, &f1, 0);
            if (!(gT6fCtl->h4 & 4) && t6f_sub_0800CC98() == 0 && t6f_sub_0800CD8C() == 0 && t6f_sub_0800CCCC() == 0) {
                if (!(gT6fFrame & 1))
                    t6f_sub_08000AF0(0x17, desc.fC, 2);
                if (gT6fTile.h8C == 4 && t6f_sub_0800CDC0() != 0)
                    pal = 0;
                if ((gT6fFrame & 1) == (owner & 1))
                    t6fDraw(x, y, (u16)(hitBase + hitFrame), f0, 0, &desc.f1C, desc.f8, desc.f0);
            }
            t6f_sub_080003F0();
            if (t6f_sub_08056E90() != 0)
                goto end;
            if (owner <= 3 && (gT6fPlayers[owner].flags & 2))
                goto end;
            if (pl->pos->kind == 0xC || t6f_sub_08058DB0() != 0 || (gT6fPlayers[owner].flags & 0x2400) || t6f_sub_0800CF10() != 0 || t6f_sub_0800D11C() != 0)
                goto end;
            if (done) {
                if (target <= 3) {
                    if (target == myId)
                        t6fPlHit(gT6fKinds[0xCD], t6fCalc(arg0, 0), base);
                } else if (owner == myId) {
                    t6fEnHit(te->id, gT6fKinds[0xCD], t6fCalc(arg0, 0), base, 0, 0);
                    te->hitMask |= 1 << owner;
                }
                if (owner <= 3)
                    pl->hits++;
                else
                    en->hits++;
            }
            if ((target <= 3 ? tp->pos->kind : te->state) == 0xB)
                goto lost;
            if (done) {
                count--;
                f1 = 0;
                f0 = 0;
                if (count != 0)
                    goto lost;
                goto end;
            }
        }
    lost:
        if (count == 0)
            goto end;
    relaunch:
        if ((myId == owner || owner > 3) && t6f_sub_0800CCCC() == 0 && t6f_sub_0800CD34() == 0)
            t6f_sub_0805865C(arg0->level + 0x15C);
        for (;;) {
            if (owner == myId) {
                if (t6f_sub_08058DB0() != 0 || t6f_sub_0801DF8C() != 0 || pl->state == 11 || pl->state == 12 || t6f_sub_0800D11C() != 0)
                    goto end;
            }
            if (!(gT6fCtl->h4 & 4)) {
                u8 *p;
                t6fAnim(&desc, (u16)(base + frame), &f0, &f1, 1);
                if (t6f_sub_0800CC98() == 0 && t6f_sub_0800CD8C() == 0 && (p = t6f_sub_0800CCCC()) == 0) {
                    if (!(gT6fFrame & 1))
                        t6f_sub_08000AF0(0x17, desc.fC, 2);
                    t6fCoords((s16)(sx >> 8), (s16)(sy >> 8), &x, &y, 0x30, (s32)p);
                    pal = t6fPal(sx >> 8, sy >> 8, 0);
                    if (gT6fTile.h8C == 4 && t6f_sub_0800CDC0() != 0)
                        pal = 0;
                    if ((gT6fFrame & 1) == (owner & 1))
                        t6fDraw(x, y, (u16)(base + frame), f0, pal, &desc.f1C, desc.f8, desc.f0);
                }
            }
            if (owner <= 3) {
                if (owner == myId) {
                    pos = pl->pos;
                    x = pos->x - (sx >> 8);
                    y = pos->y - (sy >> 8);
                } else {
                    pos = gT6fPlayers[owner].pos;
                    x = pos->x - (sx >> 8);
                    y = pos->y - (sy >> 8);
                }
            } else {
                x = (te->x - sx) >> 8;
                y = (te->y - sy) >> 8;
            }
            t6f_sub_080003F0();
            if (t6fSqrt(x * x + y * y) <= 7)
                goto home;
            a = (u32)(ArcTan2(x, y) << 16) >> 24;
            ang = a;
            turn = ang - (s16)dir;
            if (turn > 0x80)
                a = ang - 0x100;
            else if (turn < -0x80)
                a = ang | 0x100;
            { s16 sa = a; s16 sd = dir; s16 dd = sa - sd; dir = sd + dd; }
            { s16 t2 = dir; if (t2 < 0) dir = t2 + 0x100; }
            { s16 t2 = dir; if (t2 > 0x100) dir = t2 - 0x100; }
            dir &= 0xFF;
            idx = dir;
            frame = gT6fFrames[idx >> 4];
            sx += gT6fSin[idx + 0x40] * 3;
            sy += gT6fSin[idx] * 3;
            if (t6f_sub_08056E90() != 0)
                goto end;
            if (owner <= 3 && (gT6fPlayers[owner].flags & 2))
                goto end;
            if (pl->pos->kind == 0xC || t6f_sub_08058DB0() != 0 || (gT6fPlayers[owner].flags & 0x2400) || t6f_sub_0800CF10() != 0 || t6f_sub_0800D11C() != 0)
                goto end;
        }
    home:
        if (owner <= 3) {
            if (owner == myId) {
                x = (sx >> 8) - pl->pos->x;
                y = (sy >> 8) - pl->pos->y;
            } else {
                x = (sx >> 8) - gT6fPlayers[owner].pos->x;
                y = (sy >> 8) - gT6fPlayers[owner].pos->y;
            }
        } else {
            x = (sx - te->x) >> 8;
            y = (sy - te->y) >> 8;
        }
        spin = (u32)(ArcTan2(x, y) << 16) >> 24;
        goto restart;
    }
end:
    gT6fBusy[owner] = 0;
    gT6fFlags[owner] &= ~(1 << bit);
}
extern u8 gT6gBusy[] asm("gUnk_03006410");
extern s16 gT6gRadius[] asm("gUnk_084EC1D0");
extern u16 gT6gDirs[] asm("gUnk_0849E730");
u16 t6gSeekEn(u16, s32, s32, s32) asm("sub_0807A040");
void t6gBurst(s32, s32, void *) asm("sub_08068A00");
s32 t6gSolo(void) asm("sub_0800CB9C");
s32 t6gAnim(void *, u32, s16 *, s16 *, s32) asm("sub_08065370");

struct T6gXY { s32 x, y; };
void sub_080710DC(struct T6fArg *arg0) {
    struct T6fDesc desc;
    s16 f0, f1;
    s16 x, y;
    struct T6fEn *te;
    struct T6fEn *en;
    struct T6fPl *pl;
    struct T6fPl *tp;
    u16 target;
    u16 base;
    u16 count;
    u16 level;
    s32 sx;
    u16 frame;
    u32 myId;
    s32 sy; s32 dd1; s32 dd2; s32 dd3; s32 dd4; s32 dd5; s32 dd6; s32 dd7; s32 dd8; s32 dd9; s32 dd10; s32 dd11; s32 dd12; s32 dd13; s32 dd14; s32 dd15; s32 dd16;
    u32 owner;
    s32 bit;
    u32 timer;
    u32 seek;
    struct T6gXY c;
    u16 dir;
    u16 orbit;
    u16 i;
    u32 num;
    s32 hit;
    u8 pal;
    u16 a;
    u8 ang;
    s32 turn;
    s32 dx, dy;
    s32 done;
    u8 t;
    s16 idx;
    s32 so;
    struct T6fPl *p;

    bit = arg0->bit;
    if (gT6gBusy[arg0->owner]) {
        gT6fFlags[arg0->owner] &= ~(1 << bit);
        return;
    }
    owner = arg0->owner;
    gT6gBusy[owner] = 1;
    target = arg0->target;
    { u32 lv = *(u16 *)&arg0->level; count = lv; level = lv; base = lv; }
    myId = t6f_sub_080020F4();
    if (owner <= 3) {
        pl = &gT6fPlayers[owner];
    } else {
        en = &gT6fEnemies[owner - 4];
        while (en->h6A < en->b22B) {
            if (t6f_sub_08056E90() != 0 || t6f_sub_0800BA6C() == 0 || en->state == 10 || en->state == 11) {
                gT6fFlags[owner] &= ~(1 << bit);
                gT6gBusy[owner] = 0;
                return;
            }
            t6f_sub_080003F0();
        }
    }
    f0 = 0;
    f1 = 0;
    if (t6f_sub_080020F4() != owner) {
        if (owner > 3) {
            { u8 *cb = (u8 *)gT6fCostS; u32 off = base * 2 + arg0->kind * 24; s16 *cp; s32 v; cb += 6; cp = (s16 *)(off + (u32)cb); v = en->mp - *cp; en->mp = v; }
            if ((s16)en->mp < 0) {
                gT6fFlags[owner] &= ~(1 << bit);
                en->mp = 0;
                gT6gBusy[owner] = 0;
                return;
            }
        }
    } else {
        struct T6fPl *me = &gT6fPlayers[t6f_sub_080020F4()];
        u32 power = (u16)(t6f_sub_0806898C(arg0->kind, arg0->level) - 1);
        me->hp -= power;
        if ((s16)me->hp < 0)
            me->hp = 0;
    }
    if (target <= 3) {
        num = t6f_sub_08002164();
        for (i = 0; i < num && (t6f_sub_080020F4() == i || (tp = &gT6fPlayers[i])->id != target); i++)
            ;
        if (i >= num)
            target = 0xFFFF;
    } else {
        for (i = 0; i <= 4; i++) {
            te = &gT6fEnemies[i];
            if ((gT6fEnemyMask & (1 << i)) && te->uid == target)
                break;
        }
        if (i > 4)
            target = 0xFFFF;
    }
    if (base <= 6) {
        t6fInit(&desc, 0x5008F, 8, -1, 0);
        base = base - 1;
    } else {
        t6fInit(&desc, 0x50090, 8, -1, 0);
        base = 0;
    }
    desc.f1C = 7;
    desc.f1D = 8;
    if (target <= 3) {
        num = t6f_sub_08002164();
        for (i = 0; i < num; i++) {
            tp = &gT6fPlayers[i];
            if (tp->id == target)
                break;
        }
        if (i >= num)
            target = 0xFFFF;
    } else {
        for (i = 0; i <= 4; i++) {
            te = &gT6fEnemies[i];
            if ((gT6fEnemyMask & (1 << i)) && te->uid == target)
                break;
        }
        if (i > 4)
            target = 0xFFFF;
    }
    f0 = 0;
    f1 = 0;
    base <<= 3;
    count += 4;
    if (owner <= 3) {
        c.x = pl->pos->x << 8;
        c.y = pl->pos->y << 8;
    } else {
        c = *(struct T6gXY *)&en->x;
    }
    sx = c.x;
    sy = c.y;
    timer = 0x3C;
    if ((t6f_sub_080020F4() == owner || owner > 3) && t6f_sub_0800CCCC() == 0 && t6f_sub_0800CD34() == 0)
        t6f_sub_0805865C(level + 0x139);

restart:
    orbit = 0x80;
    seek = 0;
    for (;;) {
        if (timer++ > 0x3C) {
            u16 r;
            if (owner <= 3) {
                c.x = pl->pos->x << 8;
                c.y = pl->pos->y << 8;
                frame = pl->pos->dir;
                dir = gT6gDirs[frame] * 16;
                if (seek++ <= 5)
                    goto orbit;
                seek = 0;
                if (owner == myId)
                    r = t6fSeekMe(0x20, 0x64);
                else
                    r = t6fSeekPl(&gT6fPlayers[owner], 0x20, 0x64);
                goto store;
            } else {
                c = *(struct T6gXY *)&en->x;
                { u16 *d = gT6gDirs; frame = en->dir; dir = d[en->dir] * 16; }
                if (target <= 3) {
                    if (!(gT6fPlayers[target].pos->f4 & 0x20))
                        goto found;
                } else {
                    r = t6gSeekEn(en->id + 4, 0xFF, sx, sy);
                store:
                    target = r;
                    if (target != 0xFF)
                        goto found;
                }
            }
        }
    orbit:
        { s32 sd = (s16)dir; s32 o2 = orbit << 16; dir = sd + (o2 >> 16); }
        { s16 t2 = dir; if (t2 > 0xFF) dir = t2 - 0x100; }
        { s16 t2 = dir; if (t2 < 0) dir = t2 + 0x100; }
        idx = dir;
        c.x += gT6fSin[idx + 0x40] * gT6gRadius[level];
        c.y += gT6fSin[idx] * gT6gRadius[level];
        x = (u32)(c.x - sx) >> 8;
        y = (u32)((c.y - sy) << 8) >> 16;
        { u8 ang1; s32 turn1; a = (u32)(ArcTan2(x, y) << 16) >> 24;
        ang1 = a;
        turn1 = ang1 - idx;
        if (turn1 > 0x80)
            a = ang1 - 0x100;
        else if (turn1 < -0x80)
            { a = ang1; a |= 0x100; } }
        { s16 sa = a; s16 sd = dir; s16 dd = sa - sd; dir = sd + dd; }
        { s16 t2 = dir; if (t2 < 0) dir = t2 + 0x100; }
        { s16 t2 = dir; if (t2 > 0x100) dir = t2 - 0x100; }
        dir &= 0xFF;
        idx = dir;
        frame = gT6fFrames[idx >> 4];
        if (t6fSqrt(x * x + y * y) > 8) {
            sx += gT6fSin[idx + 0x40] * 8 / 10;
            sy += gT6fSin[idx] * 8 / 10;
        }
        orbit = (u32)((orbit << 16) + 0x40000) >> 16;
        orbit &= 0xFF;
        if (!(gT6fCtl->h4 & 4)) {
            u8 *q;
            t6fAnim(&desc, (u16)(base + frame), &f0, &f1, 1);
            if (t6f_sub_0800CC98() == 0 && t6f_sub_0800CD8C() == 0 && (q = t6f_sub_0800CCCC()) == 0) {
                if (!(gT6fFrame & 1))
                    t6f_sub_08000AF0(0x17, desc.fC, 2);
                t6fCoords((s16)(sx >> 8), (s16)(sy >> 8), &x, &y, 0x30, (s32)q);
                pal = t6fPal(sx >> 8, sy >> 8, 0);
                if (gT6fTile.h8C == 4 && t6f_sub_0800CDC0() != 0)
                    pal = 0;
                if (t6gSolo() != 0) {
                    if ((gT6fFrame & 1) == (owner & 1))
                        t6fDraw(x, y, (u16)(base + frame), f0, pal, &desc.f1C, desc.f8, desc.f0);
                } else {
                    t6fDraw(x, y, (u16)(base + frame), f0, pal, &desc.f1C, desc.f8, desc.f0);
                }
            }
        }
        t6f_sub_080003F0();
        if (owner == myId) {
            if (t6f_sub_08058DB0() != 0 || t6f_sub_0801DF8C() != 0 || pl->state == 11 || t6f_sub_0800D11C() != 0)
                goto end;
        }
        if (t6f_sub_08056E90() != 0)
            goto end;
        if (owner <= 3 && (gT6fPlayers[owner].flags & 2))
            goto end;
        if (t6f_sub_0800D11C() != 0 || pl->pos->kind == 0xC || t6f_sub_08058DB0() != 0 || (gT6fPlayers[owner].flags & 0x2400) || t6f_sub_0800CF10() != 0)
            goto end;
    }

found:
    if (target <= 3) {
        tp = &gT6fPlayers[target];
    } else {
        for (i = 0; i <= 4; i++) {
            if (gT6fEnemyMask & (1 << i)) {
                if (gT6fEnemies[i].uid == target) {
                    te = &gT6fEnemies[i];
                    goto tracked;
                }
            }
        }
    }
tracked:
    timer = 0;
    for (;;) {
        if (owner == myId) {
            if (t6f_sub_08058DB0() != 0 || t6f_sub_0801DF8C() != 0 || pl->state == 11 || t6f_sub_0800D11C() != 0)
                goto end;
        }
        hit = 0;
        if (target == 0xFFFF)
            goto check;
        if (target > 3) {
            for (i = 0; i <= 4; i++) {
                if ((1 << i) & gT6fEnemyMask) {
                    struct T6fEn *e = &gT6fEnemies[i];
                    if (e->alive) {
                        x = (e->x - sx) >> 8;
                        y = (e->y - sy) >> 8;
                        dx = x;
                        if (dx < 0) dx = -dx;
                        if (dx <= 7) {
                            dy = y;
                            if (dy < 0) dy = -dy;
                            if (dy <= 7)
                                hit = 1;
                        }
                    }
                }
            }
        }
        if (target == 0xFFFF)
            goto check;
        if (hit)
            goto strike;
        num = t6f_sub_08002164();
        if (arg0->owner <= 3) {
            for (i = 0; i < num; i++) {
                p = &gT6fPlayers[i];
                if (p->team != pl->team && p->pos->kind != 0xE && p->team != 0) {
                    x = p->pos->x - (sx >> 8);
                    y = p->pos->y - (sy >> 8);
                    dx = x;
                    if (dx < 0) dx = -dx;
                    if (dx <= 0xB) {
                        dy = y;
                        if (dy < 0) dy = -dy;
                        if (dy <= 0xB)
                            hit = 1;
                    }
                }
            }
        } else {
            for (i = 0; i < num; i++) {
                p = &gT6fPlayers[i];
                if (!(p->flags & 0x2000) && p->pos->kind != 0xE && p->team != 0) {
                    x = p->pos->x - (sx >> 8);
                    y = p->pos->y - (sy >> 8);
                    dx = x;
                    if (dx < 0) dx = -dx;
                    if (dx <= 0xB) {
                        dy = y;
                        if (dy < 0) dy = -dy;
                        if (dy <= 0xB)
                            hit = 1;
                    }
                }
            }
        }
    check:
        if (hit)
            goto strike;
        if (t6f_sub_08056E90() != 0 && owner <= 3 && (gT6fPlayers[owner].flags & 2))
            goto end;
        if (t6f_sub_0800D11C() != 0 || pl->pos->kind == 0xC || t6f_sub_08058DB0() != 0 || (gT6fPlayers[owner].flags & 0x2400) || t6f_sub_0800CF10() != 0)
            goto end;
        if (target <= 3) {
            x = tp->pos->x - (sx >> 8);
            y = tp->pos->y - (sy >> 8);
        } else {
            x = (te->x - sx) >> 8;
            y = (te->y - sy) >> 8;
        }
        if (t6fSqrt(x * x + y * y) <= 7)
            goto strike;
        a = (u32)(ArcTan2(x, y) << 16) >> 24;
        ang = a;
        turn = ang - (s16)dir;
        if (turn > 0x80)
            a = ang - 0x100;
        else if (turn < -0x80)
            a = ang | 0x100;
        { s16 sa = a; s16 sd = dir; s16 dd = sa - sd; dir = sd + dd; }
        { s16 t2 = dir; if (t2 < 0) dir = t2 + 0x100; }
        { s16 t2 = dir; if (t2 > 0x100) dir = t2 - 0x100; }
        { register s32 m asm("r1") = dir << 16;  dir = (u32)(0xFF0000 & m) >> 16; }
        idx = dir;
        frame = gT6fFrames[idx >> 4];
        t = t6fTerrain(sx, sy, 0);
        if (!(t & 0xF) || (t & 0x10)) {
            sx += gT6fSin[idx + 0x40] * 3;
            sy += gT6fSin[idx] * 3;
            timer = 0;
        } else if (timer++ > 0x78) {
            timer = 0;
            goto lost;
        }
        t6fCoords((s16)(sx >> 8), (s16)(sy >> 8), &x, &y, 0x30, 0);
        pal = t6fPal(sx >> 8, sy >> 8, 0);
        t6fAnim(&desc, (u16)(base + frame), &f0, &f1, 1);
        if (!(gT6fCtl->h4 & 4) && t6f_sub_0800CC98() == 0 && t6f_sub_0800CD8C() == 0 && t6f_sub_0800CCCC() == 0) {
            if (!(gT6fFrame & 1))
                t6f_sub_08000AF0(0x17, desc.fC, 2);
            if (gT6fTile.h8C == 4 && t6f_sub_0800CDC0() != 0)
                pal = 0;
            if (t6gSolo() != 0) {
                if ((gT6fFrame & 1) == (owner & 1))
                    t6fDraw(x, y, (u16)(base + frame), f0, pal, &desc.f1C, desc.f8, desc.f0);
            } else {
                t6fDraw(x, y, (u16)(base + frame), f0, pal, &desc.f1C, desc.f8, desc.f0);
            }
        }
        t6f_sub_080003F0();
    }

strike:
    for (;;) {
        t6fCoords((s16)(sx >> 8), (s16)(sy >> 8), &x, &y, 0x30, 0);
        pal = t6fPal(sx >> 8, sy >> 8, 0);
        done = t6gAnim(&desc, (u16)(base + frame), &f0, &f1, 0);
        asm(""::"r"((u32)(base + frame) << 16));
        if (!(gT6fCtl->h4 & 4) && t6f_sub_0800CC98() == 0 && t6f_sub_0800CD8C() == 0 && t6f_sub_0800CCCC() == 0) {
            if (!(gT6fFrame & 1))
                t6f_sub_08000AF0(0x17, desc.fC, 2);
            if (gT6fTile.h8C == 4 && t6f_sub_0800CDC0() != 0)
                pal = 0;
            if (t6gSolo() != 0) {
                if ((gT6fFrame & 1) == (owner & 1))
                    t6fDraw(x, y, (u16)(base + frame), f0, pal, &desc.f1C, desc.f8, desc.f0);
            } else {
                t6fDraw(x, y, (u16)(base + frame), f0, pal, &desc.f1C, desc.f8, desc.f0);
            }
        }
        t6f_sub_080003F0();
        if (t6f_sub_08056E90() != 0)
            goto end;
        if (owner <= 3 && (gT6fPlayers[owner].flags & 2))
            goto end;
        if (t6f_sub_0800D11C() != 0 || pl->pos->kind == 0xC || t6f_sub_08058DB0() != 0 || (gT6fPlayers[owner].flags & 0x2400) || t6f_sub_0800CF10() != 0)
            goto end;
        if (done) {
            t6gBurst(sx, sy, arg0);
            if (owner <= 3)
                pl->hits++;
            else
                en->hits++;
        }
        if ((target <= 3 ? tp->pos->kind : te->state) == 0xB)
            goto lost;
        if (done) {
            count--;
            f1 = 0;
            f0 = 0;
            goto lost;
        }
    }

lost:
    if (count == 0)
        goto end;
    for (;;) {
        if (owner <= 3) {
            x = pl->pos->x - (sx >> 8);
            y = pl->pos->y - (sy >> 8);
        } else {
            x = (te->x - sx) >> 8;
            y = (te->y - sy) >> 8;
        }
        if (t6fSqrt(x * x + y * y) <= 7)
            goto restart;
        a = (u32)(ArcTan2(x, y) << 16) >> 24;
        ang = a;
        turn = ang - (s16)dir;
        if (turn > 0x80)
            a = ang - 0x100;
        else if (turn < -0x80)
            a = ang | 0x100;
        { s16 sa = a; s16 sd = dir; s16 dd = sa - sd; dir = sd + dd; }
        { s16 t2 = dir; if (t2 < 0) dir = t2 + 0x100; }
        { s16 t2 = dir; if (t2 > 0x100) dir = t2 - 0x100; }
        { register s32 m asm("r1") = dir << 16;  dir = (u32)(0xFF0000 & m) >> 16; }
        idx = dir;
        frame = gT6fFrames[idx >> 4];
        sx += gT6fSin[idx + 0x40] * 3;
        sy += gT6fSin[idx] * 3;
        if (!(gT6fCtl->h4 & 4)) {
            u8 *q;
            t6fAnim(&desc, (u16)(base + frame), &f0, &f1, 1);
            if (t6f_sub_0800CC98() == 0 && t6f_sub_0800CD8C() == 0 && (q = t6f_sub_0800CCCC()) == 0) {
                if (!(gT6fFrame & 1))
                    t6f_sub_08000AF0(0x17, desc.fC, 2);
                t6fCoords((s16)(sx >> 8), (s16)(sy >> 8), &x, &y, 0x30, (s32)q);
                pal = t6fPal(sx >> 8, sy >> 8, 0);
                if (gT6fTile.h8C == 4 && t6f_sub_0800CDC0() != 0)
                    pal = 0;
                if (t6gSolo() != 0) {
                    if ((gT6fFrame & 1) == (owner & 1))
                        t6fDraw(x, y, (u16)(base + frame), f0, pal, &desc.f1C, desc.f8, desc.f0);
                } else {
                    t6fDraw(x, y, (u16)(base + frame), f0, pal, &desc.f1C, desc.f8, desc.f0);
                }
            }
        }
        t6f_sub_080003F0();
        if (t6f_sub_08056E90() != 0)
            goto end;
        if (owner <= 3 && (gT6fPlayers[owner].flags & 2))
            goto end;
        if (t6f_sub_0800D11C() != 0 || pl->pos->kind == 0xC || t6f_sub_08058DB0() != 0 || (gT6fPlayers[owner].flags & 0x2400) || t6f_sub_0800CF10() != 0)
            goto end;
    }
end:
    gT6gBusy[owner] = 0;
    gT6fFlags[owner] &= ~(1 << bit);
}
struct T39Pos { u16 h0; u16 h2; };
struct T39Rng { s16 x, y; };
struct T39Pl { u16 h0; u8 p2[0x20 - 2]; u16 state; u8 p22[0x4C - 0x22]; u8 b4C[0x68 - 0x4C]; u8 team; u8 p69[0xB2 - 0x69]; u16 ready; u8 pB4[2]; u16 done; u8 pB8[0xC2 - 0xB8]; u16 hp; u8 pC4[0x148 - 0xC4]; struct T39Pos *pos; u8 p14C[0x14C - 0x14C]; };
struct T39En { u16 h0; u8 p2[0xC - 2]; u16 state; u8 pE[0x14 - 0xE]; s32 x; s32 y; u8 p1C[0x1DC - 0x1C]; u8 alive; u8 p1DD[0x218 - 0x1DD]; u8 b218[0x2E0 - 0x218]; };
struct T39Arg { u32 owner; u32 bit; u32 mode; s32 fC; u8 p10[4]; u32 w14; };
struct T39Desc { u32 f0; u32 f4; u32 f8; u32 fC; u8 p10[0xC]; u8 f1C; u8 f1D; u8 p1E[0x34 - 0x1E]; };
extern struct T39Pl gT39Players[] asm("gUnk_03003CE0");
extern struct T39En *gT39Enemies asm("gUnk_030056F4");
extern u32 gT39Flags[] asm("gUnk_030063E0");
extern struct T39Rng gT39Ranges[] asm("gUnk_084EC12C");
extern u16 gT39Chances[] asm("gUnk_084EC16C");
extern u16 gT39Dirs[] asm("gUnk_0849E730");
extern u16 gT39Kinds[] asm("gUnk_084EBF1C");
struct T39Tile { u8 p0[0x8C]; u16 h8C; };
extern struct T39Tile gT39Tile asm("gUnk_03003170");
void t39Init(void *, s32, s32, s32, s32) asm("sub_08065158");
void t39Coords(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
void t39Draw(s32, s32, u16, u16, u8, void *, u32, u32) asm("sub_08007870");
s16 t39Calc(void *, void *) asm("sub_08068F9C");
void t39PlHit(s32, s32, s32) asm("sub_08029A7C");
void t39EnHit(s32, s32, s32, s32, s32, s32) asm("sub_08029B98");

void sub_08072390(struct T39Arg *arg0) {
    struct T39Desc desc;
    u8 targets[8];
    u8 delays[8];
    s32 heights[5];
    s32 speeds[5];
    s16 x, y;
    struct T39Pl *player;
    u32 kind;
    s32 sx, sy;
    u16 hits;
    u32 pal;
    u16 n;
    u32 myId, owner, bit, hi;
    struct T39Pl *p;
    struct T39En *e;
    struct T39Pos *pos;
    u32 lv;
    u32 i;
    u16 count;
    u32 num;
    s32 dx;
    s32 dy;
    s16 idx;
    u32 raw;
    u16 chance;

    { u16 t = sub_080020F4(); myId = t; }
    owner = arg0->owner;
    bit = arg0->bit;
    lv = arg0->w14;
    raw = lv;
    hi = raw >> 16;
    lv = kind = raw & 0xFFFF;
    arg0->w14 = raw & 0xFFFF;

    if (owner <= 3)
        player = &gT39Players[owner];
    if (myId == owner) {
        struct T39Pl *me = &gT39Players[sub_080020F4()];
        u32 power = (u16)(sub_0806898C(arg0->fC, arg0->w14) - 1);
        me->hp -= power;
        if ((s16)me->hp < 0)
            me->hp = 0;
    }
    i = 0;
    heights[i] = 0xA000;
    speeds[i] = 0;
    delays[i] = 0;
    for (i = 1; i <= 4; i++) {
        heights[i] = 0xA000;
        speeds[i] = 0;
        delays[i] = delays[i - 1] + (u8)(sub_080008C8() % 20 + 10);
    }
    if (lv != 0)
        player->ready = 2;
    while (player->ready <= 1) {
        if (player->state == 10 || !(gGameState->flags & 2)) {
            gT39Flags[owner] &= ~(1 << bit);
            return;
        }
        sub_080003F0();
    }
    sx = (player->pos->h0 >> 4) << 8;
    { u32 h = (u32)(player->pos->h2 << 20) >> 20; sy = h << 8; }
    count = 0;
    n = 0;
    if (sub_0800CDF8() == 0) {
        if (arg0->mode <= 3) {
            for (num = sub_08002164(), i = 0; i < num && sub_0800CD8C() == 0; i++) {
                p = &gT39Players[i];
                if (owner <= 3 && p->team == player->team)
                    continue;
                pos = p->pos;
                if ((u32)(((u8 *)pos)[0] << 28) >> 28 == 0xE || p->state == 0xB || p->team == 0)
                    continue;
                x = (pos->h0 >> 4) - (sx >> 8);
                y = ((u32)(pos->h2 << 20) >> 20) - (sy >> 8);
                dx = x;
                if (dx < 0) dx = -dx;
                if (dx >= gT39Ranges[kind].x) continue;
                dx = y;
                if (dx < 0) dx = -dx;
                if (dx >= gT39Ranges[kind].y) continue;
                targets[n++] = i;
                count++;
            }
        } else {
            for (i = 0; i <= 4 && sub_0800CD8C() == 0; i++) {
                if (((u32)gUnk_030056FC & (1 << i)) == 0)
                    continue;
                e = &gT39Enemies[i];
                if (e->state == 0xB || e->alive == 0)
                    continue;
                x = (u32)(e->x - sx) >> 8;
                y = (u32)((e->y - sy) << 8) >> 16;
                dx = x;
                if (dx < 0) dx = -dx;
                if (dx >= gT39Ranges[kind].x) continue;
                dy = y;
                if (dy < 0) dy = -dy;
                if (dy >= gT39Ranges[kind].y) continue;
                targets[n++] = i;
                count++;
            }
        }
    }
    t39Init(&desc, 0x5008D, 8, -1, 0);
    desc.f1C = 7;
    desc.f1D = 8;
    if ((myId == owner || owner > 3) && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
        sub_0805865C(0x16A);
    if (count == 0) {
        idx = (s16)(gT39Dirs[((u8 *)player->pos)[3] >> 4] << 4);
        sx += gUnk_080B9704[idx + 0x40] * 30;
        sy += gUnk_080B9704[idx] * 30;
        while (heights[0] > 0) {
            heights[0] -= speeds[0];
            speeds[0] += 0x20;
            t39Coords((s16)(sx >> 8), (s16)(sy >> 8), &x, &y, 0x30, 0);
            pal = (u8)sub_0800BC44(sx >> 8, sy >> 8, 0);
            if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0)
                t39Draw(x, y - (heights[0] >> 8), hi, 0, pal, &desc.f1C, desc.f8, desc.f0);
            sub_080003F0();
        }
        heights[0] = 10;
        do {
            heights[0]--;
            if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0 && (heights[0] & 1)) {
                if (gUnk_03002344 & 1)
                    sub_08000AF0(0x17, (void *)desc.fC, 2);
                if (gT39Tile.h8C == 4 && sub_0800CDC0() != 0)
                    pal = 0;
                t39Draw(x, y, hi, 0, pal, &desc.f1C, desc.f8, desc.f0);
            }
            sub_080003F0();
        } while (heights[0] > 0);
    } else {
        hits = 0;
        while (hits < n && (owner != sub_080020F4() || ((u16)(player->state - 0xB) > 1 && sub_0800D11C() == 0))) {
            if (arg0->mode <= 3) {
                for (i = 0; i < n; i++) {
                    u8 *tp = &targets[i];
                    p = &gT39Players[*tp];
                    t39Coords(p->pos->h0 >> 4, (u32)(p->pos->h2 << 20) >> 20, &x, &y, 0x30, 0);
                    { u8 c = sub_0800BC44(sx >> 8, sy >> 8, 0); pal = c; }
                    if (delays[i] == 0) {
                        heights[i] -= speeds[i];
                        speeds[i] += 0x20;
                        if (heights[i] <= 0) {
                            hits++;
                            delays[i] = 0xF0;
                            heights[i] = 10;
                            if (myId == *tp) {
                                arg0->mode = p->h0;
                                chance = gT39Chances[arg0->w14];
                                if (chance >= sub_080008C8() % 100)
                                    t39PlHit(3, t39Calc(arg0, p->b4C), 100);
                                else
                                    t39PlHit(gT39Kinds[0xE5], t39Calc(arg0, p->b4C), kind);
                                if (sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                                    sub_0805865C(0x1A);
                            }
                        } else if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0) {
                            if (!(gUnk_03002344 & 1))
                                sub_08000AF0(0x17, (void *)desc.fC, 2);
                            t39Draw(x, y - (heights[i] >> 8), hi, 0, pal, &desc.f1C, desc.f8, desc.f0);
                        }
                    } else if (delays[i] != 0xF0) {
                        delays[i]--;
                    } else if (heights[0]-- & 1) {
                        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0) {
                            if (!(gUnk_03002344 & 1))
                                sub_08000AF0(0x17, (void *)desc.fC, 2);
                            t39Draw(x, y, hi, 0, pal, &desc.f1C, desc.f8, desc.f0);
                        }
                    }
                }
            } else {
                for (i = 0; i < n; i++) {
                    e = &gT39Enemies[targets[i]];
                    t39Coords((e->x << 8) >> 16, (e->y << 8) >> 16, &x, &y, 0x30, 0);
                    pal = (u8)sub_0800BC44(sx >> 8, sy >> 8, 0);
                    if (delays[i] == 0) {
                        heights[i] -= speeds[i];
                        speeds[i] += 0x20;
                        if (heights[i] <= 0) {
                            hits++;
                            delays[i] = 0xF0;
                            heights[i] = 0;
                            if (myId == owner) {
                                chance = gT39Chances[arg0->w14];
                                if (chance >= sub_080008C8() % 100)
                                    t39EnHit(e->h0, 3, t39Calc(arg0, e->b218), 100, 0, 0);
                                else
                                    t39EnHit(e->h0, gT39Kinds[0xE5], t39Calc(arg0, e->b218), hi, 0, 0);
                                if (sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                                    sub_0805865C(0x1A);
                            }
                        }
                        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0) {
                            if (!(gUnk_03002344 & 1))
                                sub_08000AF0(0x17, (void *)desc.fC, 2);
                            if (gT39Tile.h8C == 4 && sub_0800CDC0() != 0)
                                pal = 0;
                            t39Draw(x, y - (heights[i] >> 8), hi, 0, pal, &desc.f1C, desc.f8, desc.f0);
                        }
                    } else if (delays[i] != 0xF0) {
                        delays[i]--;
                    } else if (heights[0]-- & 1) {
                        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0) {
                            if (!(gUnk_03002344 & 1))
                                sub_08000AF0(0x17, (void *)desc.fC, 2);
                            if (gT39Tile.h8C == 4 && sub_0800CDC0() != 0)
                                pal = 0;
                            t39Draw(x, y, hi, 0, pal, &desc.f1C, desc.f8, desc.f0);
                        }
                    }
                }
            }
            sub_080003F0();
        }
    }
    while (player->done == 0)
        sub_080003F0();
    gT39Flags[owner] &= ~(1 << bit);
}
struct T75Pos { u16 h0; u16 h2; };
struct T75Rng { s16 x, y; };
struct T75Pl { u8 p0[0x20]; u16 state; u8 p22[0x3C - 0x22]; s16 s3C; u8 p3E[0x48 - 0x3E]; s32 w48; u8 p4C[0x68 - 0x4C]; u8 team; u8 p69[0xB2 - 0x69]; u16 ready; u8 pB4[2]; u16 done; u8 pB8[0xC2 - 0xB8]; u16 hp; u8 pC4[0x148 - 0xC4]; struct T75Pos *pos; };
struct T75En { u8 p0[0xC]; u16 state; u8 pE[0x14 - 0xE]; s32 x; s32 y; u8 p1C[0x208 - 0x1C]; s16 s208; u8 p20A[0x214 - 0x20A]; s32 w214; u8 p218[0x2E0 - 0x218]; };
struct T75Arg { u32 owner; u32 bit; u32 mode; s32 fC; u8 p10[4]; u16 level; };
struct T75Desc { u32 f0; u32 f4; u32 f8; u32 fC; u8 p10[0xC]; u8 f1C; u8 f1D; u8 p1E[0x34 - 0x1E]; };
struct T75Eff { u16 h0; u16 h2; u16 h4; u16 h6; };
extern struct T75Pl gT75Players[] asm("gUnk_03003CE0");
extern struct T75En *gT75Enemies asm("gUnk_030056F4");
extern u32 gT75Flags[] asm("gUnk_030063E0");
extern struct T75Rng gT75Ranges[] asm("gUnk_084EC12C");
extern u16 gT75Dirs[] asm("gUnk_0849E730");
struct T75Eff *t75Find(void *, s32, s32) asm("sub_0801E1D8");
struct T75Eff *t75Alloc(void *, s32) asm("sub_0801E164");
struct T75Eff *t75FindE(void *, s32, s32) asm("sub_0801E20C");
struct T75Eff *t75AllocE(void *, s32) asm("sub_0801E104");
void t75Init(void *, s32, s32, s32, s32) asm("sub_08065158");
void t75Coords(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
void t75Draw(s32, s32, s32, u32, u32, void *, u32, u32) asm("sub_08007870");
void sub_08072D5C(struct T75Arg *arg0) {
    struct T75Desc desc;
    u8 targets[8];
    u8 delays[8];
    u16 xs[6];
    u16 ys[6];
    s16 x, y;
    struct T75Pl *player;
    u32 kind;
    s32 sx, sy;
    u16 hits, n;
    u32 myId, owner, bit;
    struct T75Pl *p;
    struct T75En *e;
    struct T75Pos *pos;
    struct T75Eff *eff;
    u32 lv;
    u16 i, count;
    u32 num;
    u8 pal;
    s32 dx;
    s16 idx;
    u32 power;
    char ten;

    myId = (u16)sub_080020F4();
    owner = arg0->owner;
    bit = arg0->bit;
    lv = arg0->level;
    kind = lv;
    if (owner <= 3)
        player = &gT75Players[owner];
    if (myId == owner) {
        struct T75Pl *me = &gT75Players[sub_080020F4()];
        power = (u16)(sub_0806898C(arg0->fC, *(s32 *)&arg0->level) - 1);
        me->hp -= power;
        if ((s16)me->hp < 0)
            me->hp = 0;
    }
    xs[0] = 0;
    ys[0] = 0;
    delays[0] = 0;
    for (i = 1; i <= 4; i++) {
        xs[i] = 0;
        ys[i] = 0;
        delays[i] = delays[i - 1] + (u8)(sub_080008C8() % 20 + 10);
    }
    if (kind != 0)
        player->ready = 2;
    if (player->ready <= 1) {
        do {
            if (player->state == 10 || !(gGameState->flags & 2)) {
                gT75Flags[owner] &= ~(1 << bit);
                return;
            }
            sub_080003F0();
        } while (player->ready <= 1);
    }
    sx = (player->pos->h0 >> 4) << 8;
    sy = (u32)(player->pos->h2 << 20) >> 12;
    count = 0;
    n = 0;
    if (sub_0800CDF8() == 0) {
        if (arg0->mode <= 3) {
            num = sub_08002164();
            for (i = 0; i < num && sub_0800CD8C() == 0; i++) {
                p = &gT75Players[i];
                pos = p->pos;
                if ((u32)(((u8 *)pos)[0] << 28) >> 28 == 0xE || p->team == player->team || p->state == 0xB || p->team == 0)
                    continue;
                x = (pos->h0 >> 4) - (sx >> 8);
                y = ((u32)(pos->h2 << 20) >> 20) - (sy >> 8);
                dx = x;
                if (dx < 0) dx = -dx;
                if (dx >= gT75Ranges[kind].x) continue;
                dx = y;
                if (dx < 0) dx = -dx;
                if (dx >= gT75Ranges[kind].y) continue;
                if ((u32)((s32)(lv * 2000 - 1000) / (p->w48 + p->s3C)) > sub_080008C8() % 100) {
                    targets[n++] = i;
                    count++;
                }
            }
        } else {
            for (i = 0; i <= 4 && sub_0800CD8C() == 0; i++) {
                if (((u32)gUnk_030056FC & (1 << i)) == 0)
                    continue;
                e = &gT75Enemies[i];
                if (e->state == 0xB || ((u8 *)e)[0x1DC] == 0)
                    continue;
                x = (u32)(e->x - sx) >> 8;
                y = (u32)((e->y - sy) << 8) >> 16;
                dx = x;
                if (dx < 0) dx = -dx;
                if (dx >= gT75Ranges[kind].x) continue;
                dx = y;
                if (dx < 0) dx = -dx;
                if (dx >= gT75Ranges[kind].y) continue;
                if ((u32)((s32)(lv * 2000 - 1000) / (e->w214 + e->s208)) > sub_080008C8() % 100) {
                    targets[n++] = i;
                    count++;
                }
            }
        }
    }
    if ((myId == owner || owner > 3) && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
        sub_0805865C(0x16B);
    t75Init(&desc, 0x5008D, 8, -1, 0);
    desc.f1C = 7;
    desc.f1D = 8;
    if (count == 0) {
        idx = (s16)(gT75Dirs[((u8 *)player->pos)[3] >> 4] << 4);
        sx += gUnk_080B9704[idx + 0x40] * 30;
        sy += gUnk_080B9704[idx] * 30;
        hits = 0;
        do {
            t75Coords((s16)(sx >> 8), (s16)(sy >> 8), &x, &y, 0x30, 0);
            pal = sub_0800BC44(sx >> 8, sy >> 8, 0);
            if (sub_08065370(&desc, 10, (s32)&xs[0], (s32)&ys[0], 0))
                hits++;
            if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0) {
                if (!(gUnk_03002344 & 1))
                    sub_08000AF0(0x17, (void *)desc.fC, 2);
                t75Draw(x, y, 10, xs[0], pal, &desc.f1C, desc.f8, desc.f0);
            }
            sub_080003F0();
        } while (hits == 0);
    } else {
        u32 val;
        hits = 0;
        val = (lv + 5) * 30;
        while (hits < n && (owner != sub_080020F4() || ((u16)(player->state - 0xB) > 1 && sub_0800D11C() == 0))) {
            if (arg0->mode <= 3) {
                for (i = 0; i < n; i++) {
                    u8 *tp = &targets[i];
                    u8 *d;
                    p = &gT75Players[*tp];
                    t75Coords(p->pos->h0 >> 4, (u32)(p->pos->h2 << 20) >> 20, &x, &y, 0x30, 0);
                    pal = sub_0800BC44(sx >> 8, sy >> 8, 0);
                    d = &delays[i];
                    if (*d == 0) {
                        ten = 10; if (sub_08065370(&desc, ten, (s32)&xs[i], (s32)&ys[i], 0)) {
                            hits++;
                            *d = 0xF0;
                            if (myId == *tp) {
                                eff = t75Find(p, 4, myId);
                                if (eff != NULL) {
                                    if (eff->h6 < lv) {
                                        eff->h6 = lv;
                                        eff->h0 = val;
                                        eff->h2 = myId;
                                        if (sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                                            sub_0805865C(0x1A);
                                    }
                                } else {
                                    eff = t75Alloc(p, 4);
                                    if (eff != NULL) {
                                        eff->h6 = lv;
                                        eff->h0 = val;
                                        eff->h2 = myId;
                                        eff->h4 = 4;
                                    }
                                }
                            }
                        }
                        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0) {
                            if (!(gUnk_03002344 & 1))
                                sub_08000AF0(0x17, (void *)desc.fC, 2);
                            t75Draw(x, y, ten, xs[i], pal, &desc.f1C, desc.f8, desc.f0);
                        }
                    } else if (*d != 0xF0) {
                        (*d)--;
                    }
                }
            } else {
                for (i = 0; i < n; i++) {
                    u8 *d;
                    e = &gT75Enemies[targets[i]];
                    t75Coords((e->x << 8) >> 16, (e->y << 8) >> 16, &x, &y, 0x30, 0);
                    pal = sub_0800BC44(sx >> 8, sy >> 8, 0);
                    d = &delays[i];
                    if (*d == 0) {
                        ten = 10; if (sub_08065370(&desc, ten, (s32)&xs[i], (s32)&ys[i], 0)) {
                            hits++;
                            *d = 0xF0;
                            if (myId == owner) {
                                eff = t75FindE(e, 4, owner);
                                if (eff != NULL) {
                                    if (eff->h6 < lv) {
                                        eff->h6 = lv;
                                        eff->h0 = val;
                                        eff->h2 = owner;
                                        if (sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                                            sub_0805865C(0x1A);
                                    }
                                } else {
                                    eff = t75AllocE(e, 4);
                                    if (eff != NULL) {
                                        eff->h6 = lv;
                                        eff->h0 = val;
                                        eff->h2 = owner;
                                        eff->h4 = 4;
                                    }
                                }
                            }
                        }
                        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0) {
                            if (!(gUnk_03002344 & 1))
                                sub_08000AF0(0x17, (void *)desc.fC, 2);
                            t75Draw(x, y, ten, xs[i], pal, &desc.f1C, desc.f8, desc.f0);
                        }
                    } else if (*d != 0xF0) {
                        (*d)--;
                    }
                }
            }
            sub_080003F0();
        }
    }
    while (player->done == 0)
        sub_080003F0();
    gT75Flags[owner] &= ~(1 << bit);
}
struct Buff07356C { s16 timer; u16 owner; u16 type; u16 level; u8 pad8[0x20]; };
struct Pos07356C { u16 x; u16 y; u8 f4; };
struct Ply07356C { u8 pad0[0x24]; u16 f24; u16 f26; u8 pad28[0xC]; struct Buff07356C *buffs; u8 pad38[0x2C]; u16 state; u8 pad66[2]; u8 team; u8 pad69[0x59]; u16 mp; u8 padC4[0x84]; struct Pos07356C *pos; };
struct Arg07356C { u32 owner; u32 bit; u8 pad8[4]; s32 fC; u8 pad10[4]; u32 level; };
extern struct Ply07356C players07656C[] asm("gUnk_03003CE0");
extern u32 flags07656C[] asm("gUnk_030063E0");
extern void effect07656C(s32,u32) asm("sub_08074DE8");
void sub_0807356C(struct Arg07356C *arg0)
{
    u8 ids[4];
    u16 dist[6];
    struct Ply07356C *p;
    struct Ply07356C *player;
    register struct Pos07356C *pos asm("r2");
    s32 self;
    u32 owner, level, x;
    u16 count;
    u32 bit, y;
    u16 lv, i, dx, dy;
    s32 ax, ay;
    u8 found;

    found = 0;
    self = sub_080020F4();
    owner = arg0->owner;
    bit = arg0->bit;
    level = lv = arg0->level;
    if (owner <= 3)
        player = &players07656C[owner];
    if (self == owner) {
        struct Ply07356C *me = &players07656C[sub_080020F4()];
        u16 cost = sub_0806898C(arg0->fC, arg0->level) - 1;
        me->mp -= cost;
        if ((s16)me->mp < 0)
            me->mp = 0;
    }
    x = player->pos->x >> 4;
    y = (u32)(player->pos->y << 20) >> 20;
    count = 0;
    for (i = 0; i < sub_08002164(); i++) {
        u32 byteOffset;
        byteOffset = i * sizeof(struct Ply07356C);
        p = (struct Ply07356C *)((u8 *)players07656C + byteOffset);
        /* Preserve the index and base sum together before loading the position. */
        asm("" : : "r"(byteOffset), "r"(p));
        pos = p->pos;
        if ((s32)(pos->f4 << 26) >= 0 && (owner > 3 || p->team == player->team)) {
            dx = (pos->x >> 4) - x;
            dy = ((u32)(pos->y << 20) >> 20) - y;
            if (level != 0) {
                ax = (s16)dx >> 3;
                if (ax < 0)
                    ax = -ax;
                if (ax <= 12) {
                    ay = (s16)dy >> 3;
                    if (ay < 0)
                        ay = -ay;
                    if (ay <= 12) {
                        dist[count] = Sqrt((s16)dx * (s16)dx + (s16)dy * (s16)dy);
                        ids[count++] = i;
                    }
                }
            }
        }
    }
    if ((self == owner || owner > 3) && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
        sub_0805865C(0x16C);
    if (self == owner) {
        effect07656C(self, arg0->fC);
            {
            struct Buff07356C *b;
            b = player->buffs;
            for (i = 0; i <= 7; i++, b++) {
                if (b->timer > 0 && b->owner <= 3 && players07656C[b->owner].state == 7 && b->type == 5) {
                    if (b->level < lv) {
                        b->timer = (lv * 10 + 40) * 60;
                        b->level = lv;
                    }
                    found = 1;
                    break;
                }
            }
            if (!found) {
                b = player->buffs;
                for (i = 0; i <= 7; i++, b++) {
                    if (b->timer == -1) {
                        b->owner = owner;
                        b->timer = (lv * 10 + 40) * 60;
                        b->type = 5;
                        b->level = lv;
                        break;
                    }
                }
            }
            }
        player->f24 = 0;
        player->f26 = 0;
    } else {
        i = 0;
        while (i < count && level != 0) {
            effect07656C(ids[i], arg0->fC);
            if (ids[i] == self) {
            {
                struct Ply07356C *q = &players07656C[self];
            {
            struct Buff07356C *b;
            b = q->buffs;
            for (i = 0; i <= 7; i++, b++) {
                if (b->timer > 0 && b->owner <= 3 && players07656C[b->owner].state == 7 && b->type == 5) {
                    if (b->level < lv) {
                        b->timer = (lv * 10 + 40) * 60;
                        b->level = lv;
                    }
                    found = 1;
                    break;
                }
            }
            if (!found) {
                b = q->buffs;
                for (i = 0; i <= 7; i++, b++) {
                    if (b->timer == -1) {
                        b->owner = owner;
                        b->timer = (lv * 10 + 40) * 60;
                        b->type = 5;
                        b->level = lv;
                        break;
                    }
                }
            }
            }
            }
                break;
            }
            i++;
        }
    }
    flags07656C[owner] &= ~(1 << bit);
}
extern u8 players07686C[] asm("gUnk_03003CE0");
extern u8 *args07686C[] asm("gUnk_03006380");
extern u8 *tasks07686C[] asm("gUnk_030063B0");
extern u32 flags07686C[] asm("gUnk_030063E0");
extern void effect07686C(s32,u32) asm("sub_08074DE8");
extern void refresh07686C(void*) asm("sub_0801FD64");
extern void start07686C(void*,void*) asm("sub_08000274");
#define F_07686C(p,t,o) (*(t*)((u8*)(p)+(o)))
extern void callback076069C44(void*) asm("sub_08069C44");
extern void callback07606A19C(void*) asm("sub_0806A19C");
extern void callback07606A88C(void*) asm("sub_0806A88C");
extern void callback07606ABC0(void*) asm("sub_0806ABC0");
extern void callback07606B3C4(void*) asm("sub_0806B3C4");
extern void callback07606BE24(void*) asm("sub_0806BE24");
extern void callback07606C568(void*) asm("sub_0806C568");
extern void callback07606CDF0(void*) asm("sub_0806CDF0");
extern void callback07606D4A4(void*) asm("sub_0806D4A4");
extern void callback07606D7EC(void*) asm("sub_0806D7EC");
extern void callback07606DB1C(void*) asm("sub_0806DB1C");
extern void callback07606DE94(void*) asm("sub_0806DE94");
extern void callback07606E7D4(void*) asm("sub_0806E7D4");
extern void callback07606F0CC(void*) asm("sub_0806F0CC");
extern void callback07606FE1C(void*) asm("sub_0806FE1C");
extern void callback07606FF1C(void*) asm("sub_0806FF1C");
extern void callback0760710DC(void*) asm("sub_080710DC");
extern void callback076072390(void*) asm("sub_08072390");
extern void callback076072D5C(void*) asm("sub_08072D5C");
extern void callback07607356C(void*) asm("sub_0807356C");
struct Task07386C { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern struct Ply07356C players07386C[] asm("gUnk_03003CE0");
extern struct Task07386C *tasks07386C[] asm("gUnk_030063B0");
extern vu32 flags07386C[] asm("gUnk_030063E0");
static inline struct Task07386C *task07386C(u32 who, u32 i)
{
    u8 *p = (u8 *)tasks07386C[who];
    return (struct Task07386C *)(i * 0x28 + (u32)p);
}
void sub_0807386C(s32 who, s32 kind, s32 c, s32 d, s32 e)
{
    struct Ply07356C *player;
    u32 i;
    u32 *a;
    u32 mem;
    struct Task07386C *t;

    player = &players07386C[who];
    i = 0;
    while (flags07386C[who] & (1 << i)) {
        i++;
        if (i > 0xF)
            return;
    }
    if (i > 0xF)
        return;
    {
        u8 *p = args07686C[who];
        a = (u32 *)(i * 0x18 + (u32)p);
    }
    a[0] = who;
    a[1] = i;
    a[2] = c;
    a[3] = kind;
    a[5] = d;
    a[4] = e;
    switch (kind) {
    case 1:
        task07386C(who, i)->fC = (u32)callback076069C44;
        break;
    case 2:
        task07386C(who, i)->fC = (u32)callback07606A19C;
        break;
    case 3:
        task07386C(who, i)->fC = (u32)callback07606B3C4;
        break;
    case 4:
        task07386C(who, i)->fC = (u32)callback07606BE24;
        break;
    case 5:
        task07386C(who, i)->fC = (u32)callback07606C568;
        break;
    case 6:
        if (who == sub_080020F4()) {
            u8 **q = &args07686C[who];
            u32 *a = (u32 *)(i * 0x18 + (u32)*q);
            struct Ply07356C *me = &players07386C[sub_080020F4()];
            u16 cost = sub_0806898C(a[3], a[5]) - 1;
            struct Buff07356C *b;
            u8 found;

            me->mp -= cost;
            if ((s16)me->mp < 0)
                me->mp = 0;
            b = player->buffs;
            sub_0805865C(0x165);
            found = 0;
            for (i = 0; i <= 7; i++, b++) {
                if (b->timer > 0 && b->type == 6 && b->owner == who) {
                    if (b->level < player->f26) {
                        b->owner = who;
                        b->level = player->f26;
                        b->timer = (b->level * 10 + 40) * 60;
                    }
                    found = 1;
                    break;
                }
            }
            if (!found) {
                b = player->buffs;
                for (i = 0; i <= 7; i++, b++) {
                    if (b->timer == -1) {
                        b->owner = who;
                        b->type = 6;
                        b->level = player->f26;
                        b->timer = (b->level * 10 + 40) * 60;
                        break;
                    }
                }
            }
            refresh07686C(&players07386C[who]);
        }
        effect07686C(who, 6);
        return;
    case 8:
        task07386C(who, i)->fC = (u32)callback07606CDF0;
        break;
    case 9:
        task07386C(who, i)->fC = (u32)callback07606DB1C;
        break;
    case 10:
        task07386C(who, i)->fC = (u32)callback07606D4A4;
        break;
    case 11:
        task07386C(who, i)->fC = (u32)callback07606D7EC;
        break;
    case 12:
        task07386C(who, i)->fC = (u32)callback07606A88C;
        break;
    case 13:
        task07386C(who, i)->fC = (u32)callback07606ABC0;
        break;
    case 16:
        task07386C(who, i)->fC = (u32)callback07606FE1C;
        break;
    case 14:
        task07386C(who, i)->fC = (u32)callback07606DE94;
        break;
    case 15:
        task07386C(who, i)->fC = (u32)callback07606E7D4;
        break;
    case 17:
        task07386C(who, i)->fC = (u32)callback07606FF1C;
        break;
    case 18:
        task07386C(who, i)->fC = (u32)callback07606F0CC;
        break;
    case 7:
        task07386C(who, i)->fC = (u32)callback0760710DC;
        break;
    case 19:
        task07386C(who, i)->fC = (u32)callback076072390;
        break;
    case 20:
        task07386C(who, i)->fC = (u32)callback07607356C;
        break;
    case 21:
        task07386C(who, i)->fC = (u32)callback076072D5C;
        break;
    }
    mem = sub_08001494(0x800);
    t = task07386C(who, i);
    t->f20 = mem;
    if (mem != 0) {
        t->f8 = 0x34;
        t->f10 = mem + 0x7FC;
        t->f24 = (u32)sub_0807A120;
        start07686C(t, args07686C[who] + i * 0x18);
        flags07386C[who] |= 1 << i;
        if (who == sub_080020F4())
            refresh07686C(&players07386C[who]);
    }
}
struct Sprite076CF4 {u32 f0,f4,f8,fC;u8 pad10[12];u8 f1C,f1D;u8 pad1E[22];};
extern u32 animate076CF4(void*,u16,u16*,u16*,s32) asm("sub_08065370");
extern u32 flags076CF4 asm("gUnk_030063E0");
extern void coords076CF4(s32,s32,s16*,s16*,s32,void*) asm("sub_0800BC08");
extern void draw076CF4(s32,s32,u32,u32,u32,void*,u32,u32) asm("sub_08007870");
extern void init076CF4(void*,s32,s32,s32,s32) asm("sub_08065158");
void sub_08073CF4(u32 *arg0)
{
    struct Sprite076CF4 sprite;
    u16 tile, rotation;
    s16 sx, sy;
    u32 wx, wy, selected, anim;
    u32 finished;
    u8 mode;
    s32 paused;
    u16 animation;

    init076CF4(&sprite, 0x5008C, 1, -1, 0);
    sprite.f1C = 7;
    sprite.f1D = 8;
    sub_08000AF0(23, (void *)sprite.fC, 2);
    selected = arg0[2];
    wx = arg0[5] >> 8;
    wy = arg0[4] >> 8;
    anim = arg0[3];
    tile = 0;
    finished = 0;
    rotation = finished;
    do {
        if (sub_0800CC98() == 0 && (paused = sub_0800CD8C()) == 0) {
            mode = sub_0800BC44(wx, wy, sub_0800CCCC());
            animation = anim;
            finished = (u16)animate076CF4(&sprite, animation, &tile, &rotation, paused);
            coords076CF4((s16)wx, (s16)wy, &sx, &sy, 16, (void *)paused);
            if (selected != 0)
                draw076CF4(sx, sy + 1, animation, tile, mode, &sprite.f1C, sprite.f8, sprite.f0);
            else
                sub_08065230(&sprite, sx, sy, animation, tile);
        }
        sub_080003F0();
    } while (finished == 0);
    flags076CF4 &= ~(1 << arg0[1]);
}
