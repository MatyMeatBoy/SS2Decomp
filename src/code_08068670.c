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
    s16 sub_08068F9C(void *, s32);
    void sub_080694AC(void *);
    void sub_08069A30(s32, s32, u32, u16, u16);
    extern u8 gUnk_084EBF1C[];
    extern u16 attackEffect asm("gUnk_084EBF7E");
    extern u16 effects[] asm("gUnk_084EC14C");
    extern u16 radii[] asm("gUnk_084EC17C");
    extern u32 enemyActive asm("gUnk_030056FC");
    u8 *sourceEnemy;
    u8 *sourcePlayer;
    s32 radius;
    s32 localPlayer;
    s16 temp_r1_3;
    s16 temp_r1_5;
    s16 temp_r2_2;
    s32 var_r0_2;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r2;
    s32 var_r2_2;
    s32 var_r2_3;
    s32 temp_r0;
    s32 localPlayerMask;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r0_7;
    s32 temp_r1;
    s32 var_r0_3;
    s32 var_r1;
    u16 *var_r0_6;
    u16 temp_r4_2;
    u16 temp_r4_4;
    u16 var_r0;
    u16 var_r1_2;
    u32 temp_r0_5;
    u32 temp_r0_6;
    u32 temp_r2;
    u32 playerCount;
    u32 hitFlags;
    u32 enemyIndex;
    u32 playerIndexEnemy;
    u32 playerIndexAlly;
    u8 temp_r2_3;
    u8 *enemyTargetPosition;
    u8 *enemyHitHistory;
    u8 *playerHitHistory;
    u8 *allyTargetPosition;
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
    if (temp_r0 != 0xC) {
        if (temp_r0 == 0xD) {
            var_r0 = 0x16;
        } else {
            var_r0 = radii[M2C_FIELD(attack, u32 *, 0x14)];
        }
        radius = (s32) var_r0;
    } else {
        radius = 0x20;
    }
    /* Enemy slots are checked first when the target is not a player. */
    if ((u32) M2C_FIELD(attack, u32 *, 0x8) <= 3U) {

    } else {
        enemyIndex = 0;
        localPlayerMask = 1 << localPlayer;
loop_15:
        if (!(enemyActive & (1 << enemyIndex))) {

        } else {
            targetEnemy = (u8 *)gUnk_030056F4 + (enemyIndex * 0x2E0);
            if (M2C_FIELD(targetEnemy, u8 *, 0x1DC) == 0) {

            } else if (M2C_FIELD(targetEnemy, u16 *, 0xC) == 0xB) {

            } else {
                var_r1 = (s32) ((M2C_FIELD(targetEnemy, s32 *, 0x14) - pos.x) << 8) >> 0x10;
                if (var_r1 < 0) {
                    var_r1 = 0 - var_r1;
                }
                temp_r2_2 = (s16) radius;
                if (var_r1 > (s32) temp_r2_2) {

                } else {
                    var_r0_2 = (s16) ((u32) ((M2C_FIELD(targetEnemy, s32 *, 0x18) - pos.y) << 8) >> 0x10);
                    if ((s32) var_r0_2 < 0) {
                        var_r0_2 = 0 - var_r0_2;
                    }
                    if ((s32) var_r0_2 > (s32) temp_r2_2) {

                    } else {
                        if (localPlayer != M2C_FIELD(attack, u32 *, 0x0)) {
                            if ((sub_08002204() != 0) && ((u32) M2C_FIELD(attack, u32 *, 0x0) > 3U) && (M2C_FIELD(targetEnemy, u16 *, 0xC) != 0xB) && (M2C_FIELD(targetEnemy, u32 *, 0x54) != M2C_FIELD(sourcePlayer, u32 *, 0xDC))) {
                                M2C_FIELD(targetEnemy, u16 *, 0x58) = 0;
                                M2C_FIELD(attack, u32 *, 0x8) = (u32) (M2C_FIELD(targetEnemy, u16 *, 0x0) + 4);
                                temp_r0_3 = M2C_FIELD(attack, u32 *, 0xC);
                                if (temp_r0_3 != 4) {
                                    if (temp_r0_3 != 7) {
                                        sub_080694AC(attack);
                                    } else {
                                        sub_08029B98(M2C_FIELD(targetEnemy, u16 *, 0x0), effects[M2C_FIELD(attack, u32 *, 0x14)], sub_08068F9C(attack, 0), M2C_FIELD(attack, u32 *, 0x14), 0, 0);
                                        var_r0_3 = M2C_FIELD(sourceEnemy, u32 *, 0x50);
                                        goto block_55;
                                    }
                                } else {
                                    sub_08029B98(M2C_FIELD(targetEnemy, u16 *, 0x0), attackEffect, sub_08068F9C(attack, 0), M2C_FIELD(attack, u32 *, 0x14), 0, 0);
                                    var_r0_3 = M2C_FIELD(sourceEnemy, u32 *, 0x50);
block_55:
                                    M2C_FIELD(targetEnemy, u32 *, 0x54) = var_r0_3;
                                    M2C_FIELD(targetEnemy, u16 *, 0x5A) = (u16) (localPlayerMask | M2C_FIELD(targetEnemy, u16 *, 0x5A));
                                }
                                if ((sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                                    sub_0805865C(0x1A);
                                }
                                sub_08069A30(pos.x, pos.y, M2C_FIELD(attack, u32 *, 0x0), (u16) M2C_FIELD(attack, u32 *, 0xC), (s32) (u16) M2C_FIELD(attack, u32 *, 0x14));
                                hitFlags = 2;
                            }
                        } else if (M2C_FIELD(targetEnemy, u32 *, 0x54) == M2C_FIELD(sourcePlayer, u32 *, 0xDC)) {

                        } else {
                            M2C_FIELD(attack, u32 *, 0x8) = (u32) (M2C_FIELD(targetEnemy, u16 *, 0x0) + 4);
                            temp_r0_4 = M2C_FIELD(attack, u32 *, 0xC);
                            if (temp_r0_4 != 4) {
                                if (temp_r0_4 != 7) {
                                    sub_080694AC(attack);
                                } else {
                                    var_r2 = sub_08068F9C(attack, 0);
                                    var_r1_2 = effects[M2C_FIELD(attack, u32 *, 0x14)];
                                    goto block_40;
                                }
                            } else {
                                if (M2C_FIELD(targetEnemy, u8 *, 0x226) == 1) {
                                    var_r2 = (s32) (sub_08068F9C(attack, 0) * 0xF) / 10;
                                    var_r1_2 = attackEffect;
block_40:
                                    sub_08029B98(M2C_FIELD(targetEnemy, u16 *, 0x0), var_r1_2, var_r2, M2C_FIELD(attack, u32 *, 0x14), 0, 0);
                                } else {
                                    sub_08029B98(M2C_FIELD(targetEnemy, u16 *, 0x0), attackEffect, sub_08068F9C(attack, 0), M2C_FIELD(attack, u32 *, 0x14), 0, 0);
                                }
                                M2C_FIELD(targetEnemy, u32 *, 0x54) = (s32) M2C_FIELD(sourcePlayer, u32 *, 0xDC);
                                M2C_FIELD(targetEnemy, u16 *, 0x5A) = (u16) (localPlayerMask | M2C_FIELD(targetEnemy, u16 *, 0x5A));
                            }
                            if ((sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                                sub_0805865C(0x1A);
                            }
                            sub_08069A30(pos.x, pos.y, M2C_FIELD(attack, u32 *, 0x0), (u16) M2C_FIELD(attack, u32 *, 0xC), (s32) (u16) M2C_FIELD(attack, u32 *, 0x14));
                            hitFlags = 2;
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
        if ((u32) M2C_FIELD(attack, u32 *, 0x0) > 3U) {
            playerIndexEnemy = 0;
            if (hitFlags >= playerCount) {

            } else {
loop_105:
                targetPlayerEnemy = (0x14C * playerIndexEnemy) + (u8 *)gUnk_03003CE0;
                temp_r1 = M2C_FIELD(targetPlayerEnemy, u32 *, 0x30);
                if (!(0x2000 & temp_r1) && !(temp_r1 & 0x400)) {
                    enemyTargetPosition = M2C_FIELD(targetPlayerEnemy, u8 * *, 0x148);
                    temp_r0_5 = (u32) (M2C_FIELD(enemyTargetPosition, u8 *, 0x0) << 0x1C) >> 0x1C;
                    if ((temp_r0_5 != 0xE) && (temp_r0_5 != 0xB) && (temp_r0_5 != 0xA) && (M2C_FIELD(targetPlayerEnemy, u8 *, 0x68) != 0)) {
                        var_r2_2 = (s16)(((u16) M2C_FIELD(enemyTargetPosition, u16 *, 0x0) >> 4) - (pos.x >> 8));
                        if ((s32) var_r2_2 < 0) {
                            var_r2_2 = 0 - var_r2_2;
                        }
                        temp_r1_3 = (s16) radius;
                        if ((s32) var_r2_2 <= (s32) temp_r1_3) {
                            var_r0_4 = (s16) (u16) (((u32) (M2C_FIELD(enemyTargetPosition, u16 *, 0x2) << 0x14) >> 0x14) - (pos.y >> 8));
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
                                            sub_08029A7C(temp_r4_2, sub_08068F9C(attack, 0), M2C_FIELD(attack, u32 *, 0x14));
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
                playerIndexEnemy += 1;
                if (playerIndexEnemy < playerCount) {
                    goto loop_105;
                }
            }
        } else {
            playerIndexAlly = 0;
            if (hitFlags >= playerCount) {

            } else {
loop_69:
                targetPlayerAlly = (0x14C * playerIndexAlly) + (u8 *)gUnk_03003CE0;
                temp_r2_3 = M2C_FIELD(targetPlayerAlly, u8 *, 0x68);
                if (temp_r2_3 == M2C_FIELD(sourcePlayer, u8 *, 0x68)) {

                } else {
                    allyTargetPosition = M2C_FIELD(targetPlayerAlly, u8 * *, 0x148);
                    temp_r0_6 = (u32) (M2C_FIELD(allyTargetPosition, u8 *, 0x0) << 0x1C) >> 0x1C;
                    switch (temp_r0_6) {            /* irregular */
                    case 14:
                        break;
                    case 11:
                        break;
                    case 10:
                        break;
                    default:
                        if (temp_r2_3 == 0) {

                        } else if (!(((u32) (M2C_FIELD(allyTargetPosition, u8 *, 0x4) << 0x1A) >> 0x1A) & 0x20)) {
                            var_r2_3 = (s16)(((u16) M2C_FIELD(allyTargetPosition, u16 *, 0x0) >> 4) - (pos.x >> 8));
                            if ((s32) var_r2_3 < 0) {
                                var_r2_3 = 0 - var_r2_3;
                            }
                            temp_r1_5 = (s16) radius;
                            if ((s32) var_r2_3 <= (s32) temp_r1_5) {
                                var_r0_5 = (s16) (u16) (((u32) (M2C_FIELD(allyTargetPosition, u16 *, 0x2) << 0x14) >> 0x14) - (pos.y >> 8));
                                if ((s32) var_r0_5 < 0) {
                                    var_r0_5 = 0 - var_r0_5;
                                }
                                if ((s32) var_r0_5 <= (s32) temp_r1_5) {
                                    if ((localPlayer == playerIndexAlly) && (M2C_FIELD(targetPlayerAlly, u16 *, 0x20) != 0xB)) {
                                        playerHitHistory = targetPlayerAlly + 0xF8;
                                        if (M2C_FIELD(playerHitHistory, u32 *, M2C_FIELD(sourcePlayer, u16 *, 0x0) * 4) != M2C_FIELD(sourcePlayer, u32 *, 0xDC)) {
                                            M2C_FIELD(attack, u32 *, 0x8) = (u32) M2C_FIELD(targetPlayerAlly, u16 *, 0x0);
                                            temp_r0_7 = M2C_FIELD(attack, u32 *, 0xC);
                                            if (temp_r0_7 != 4) {
                                                if (temp_r0_7 != 7) {
                                                    sub_080694AC(attack);
                                                } else {
                                                    var_r0_6 = &effects[M2C_FIELD(attack, u32 *, 0x14)];
                                                    goto block_94;
                                                }
                                            } else {
                                                var_r0_6 = (u16 *)(gUnk_084EBF1C + 0x62);
block_94:
                                                temp_r4_4 = *var_r0_6;
                                                sub_08029A7C(temp_r4_4, sub_08068F9C(attack, 0), M2C_FIELD(attack, u32 *, 0x14));
                                            }
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
                        break;
                    }
                }
                playerIndexAlly += 1;
                if (playerIndexAlly < playerCount) {
                    goto loop_69;
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
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806D4A4);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806D7EC);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806DB1C);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806DE94);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806E7D4);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806F0CC);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806FE1C);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0806FF1C);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_080710DC);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08072390);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08072D5C);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0807356C);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_0807386C);
INCLUDE_ASM("asm/nonmatchings/code_08068670", sub_08073CF4);
