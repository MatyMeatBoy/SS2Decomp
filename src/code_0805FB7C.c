#include "global.h"

void sub_080605D0(s32 index);

extern s32 gUnk_03006208;

extern void sub_0801A664(s32, s32);
extern u16 digitBasesFB63[] asm("gUnk_084EBD74");
extern u8 tileMap63[] asm("gUnk_03005740");
void sub_0805FB7C(s32 x, s32 y, u32 value, u8 style)
{
    u16 digits[3];
    u16 base;
    u16 *out;
    u32 remainder;
    if (value > 999) value = 999;
    base = digitBasesFB63[style];
    out = (u16 *)(tileMap63 + (y << 6) + x * 2);
    digits[0] = sub_08000498(&value, 100);
    digits[1] = sub_08000498(&value, 10);
    remainder = value;
    digits[2] = remainder;
    *out = base + remainder;
    if (digits[0] != 0) out[-2] = base + digits[0];
    if (digits[0] != 0 || digits[1] != 0) out[-1] = base + digits[1];
    sub_0801A664(y, 1);
}
extern u16 digitBases63[] asm("gUnk_084EBD74");
void sub_0805FC0C(u16 *out, u32 value, u8 index)
{
    u16 digits[3];
    u16 base;
    u32 remainder;
    if (value > 999) value = 999;
    base = digitBases63[index];
    digits[0] = sub_08000498(&value, 100);
    digits[1] = sub_08000498(&value, 10);
    remainder = value;
    digits[2] = remainder;
    *out = base + remainder;
    if (digits[0] != 0) {
        out[-2] = base + digits[0];
        goto tens;
    }
    if (digits[1] != 0) {
tens:
        out[-1] = base + digits[1];
    }
}
#ifdef NONMATCHING
struct IconAsset63 { s32 f0, f4, f8; u8 pad[0x20]; u16 value, step; s16 upper, lower; };
extern struct IconAsset63 iconAssets63[] asm("gUnk_03005DC0");
extern struct IconAsset63 iconOverlay63 asm("gUnk_03005D80");
extern u8 iconData63[] asm("gUnk_03005DDC");
extern void sub_0800BC08(s16, s16, s16 *, s16 *, s32, s32);
extern void sub_08008E74(s32, s32, u16, u16, u8, void *, s32, s32);
extern void sub_08007F0C(s32, s32, u16, u16, s32, void *, s32, s32, s32, s32, s32);
struct IconPosition63 { s32 x, y; };
extern s32 drawIcon63(struct IconPosition63, u16, u16, s32, s32, s32, s32) asm("sub_08007CF0");
void sub_0805FC80(struct IconPosition63 pos, u16 *item, u32 flags)
{
    u16 screenX; s16 screenY;
    u16 alternate = 0;
    u16 overlay = 0;
    u32 group;
    u32 frame;
    u8 *resource;
    u8 *descriptor;
    u32 packed;
    struct IconAsset63 *asset;
    u16 step;
    u32 value;
    s32 worldX, worldY;
    u8 priority;
    switch (*item) {
    case 0: return;
    default: return;
    case 1:
        descriptor = (u8 *)sub_08007290(item[1] | 0x100000) + 0xA8;
        goto packed16;
    case 2:
        resource = (u8 *)sub_08007290(item[1] | 0xB0000);
        descriptor = resource + 0xBE;
        group = *(u16 *)descriptor;
        frame = *descriptor;
        group >>= 8;
        if (((u8 *)item)[8] != 0) goto alt;
        overlay = ((u8 *)item)[7];
        if (overlay == 0) overlay = *(u16 *)(resource + 0xBC);
        break;
    case 3:
        resource = (u8 *)sub_08007290(item[1] | 0xC0000);
        goto equipment;
    case 4:
        resource = (u8 *)sub_08007290(item[1] | 0xD0000);
equipment:
        descriptor = resource + 0xB0;
        group = *(u16 *)descriptor;
        frame = *descriptor;
        group >>= 8;
        if (((u8 *)item)[8] != 0) goto alt;
        overlay = ((u8 *)item)[7];
        break;
    case 5:
        descriptor = (u8 *)sub_08007290(item[1] | 0xE0000) + 0xB0;
        group = *(u16 *)descriptor;
        frame = *descriptor;
        group >>= 8;
        if (((u8 *)item)[8] != 0) {
alt:
            group++;
            alternate++;
        }
        break;
    case 6:
        descriptor = (u8 *)sub_08007290(item[1] | 0xF0000) + 0xAC;
        goto packed16;
    case 7:
        descriptor = (u8 *)sub_08007290(item[1] | 0x110000) + 0xA8;
        goto packed16;
    case 8:
        descriptor = (u8 *)sub_08007290(item[1] | 0x120000) + 0xA0;
packed16:
        packed = *(u16 *)descriptor;
        goto unpack;
    case 9:
        descriptor = (u8 *)sub_08007290(item[1] | 0x150000) + 0xA0;
        packed = *(u32 *)descriptor;
        goto unpack;
    case 10:
        descriptor = (u8 *)sub_08007290(0x160000) + 0x9C;
        packed = *(u32 *)descriptor;
unpack:
        frame = *descriptor;
        group = packed >> 8;
        break;
    }
    if (flags & 1) {
        s32 camera = sub_0800CCCC();
        worldX = pos.x >> 8;
        worldY = pos.y >> 8;
        sub_0800BC08(worldX, worldY, &screenX, &screenY, 16, camera);
        if ((u32)((screenX + 16) << 16) > 0x1080000 || screenY < -16 || screenY > 168)
            return;
        priority = sub_0800BC44(worldX, worldY, sub_0800CCCC());
        sub_08008E74(screenX, screenY, 0, frame, priority, iconData63 + group * 0x34,
            *(s32 *)(iconData63 - 0x14 + group * 0x34), *(s32 *)(iconData63 - 0x1C + group * 0x34));
        return;
    }
    asset = &iconAssets63[group];
    if ((flags & 2) && alternate == 0)
        ((u8 *)asset)[0x25] = 10;
    else
        ((u8 *)asset)[0x25] = 9;
    if ((flags & 8) && overlay != 0) {
        if (overlay == 7) overlay = 6;
        sub_08007CF0(pos.x, pos.y + 8, 4, (u16)(overlay + 11), 0, (s32)((u8 *)&iconOverlay63 + 0x1C), iconOverlay63.f8, iconOverlay63.f0);
    }
    if (flags & 4) {
        step = asset->step;
        value = step + asset->value;
        asset->value = value;
        if ((s32)(step << 16) > 0 && (s16)value > asset->upper)
            asset->step = -step;
        if ((s16)asset->step < 0 && (s16)asset->value < asset->lower)
            asset->step = -asset->step;
        sub_08007F0C(pos.x, pos.y, 0, frame, 0, (u8 *)asset + 0x1C, asset->f8, asset->f0, (s16)asset->value, (s16)asset->value, 255);
    } else {
        drawIcon63(pos, 0, frame, 0, (s32)(iconData63 + group * 0x34),
            *(s32 *)(iconData63 - 0x14 + group * 0x34), *(s32 *)(iconData63 - 0x1C + group * 0x34));
    }
    ((u8 *)&iconAssets63[group])[0x25] = 9;
    ((u8 *)&iconOverlay63)[0x25] = 9;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_0805FC80);
#endif
#ifdef NONMATCHING
s32 sub_08000498(s32 *, u32);                       /* extern */
M2C_UNK sub_0801A3D0(u8 *, u16, u32);               /* extern */

void sub_0805FFBC(s32 arg0, s32 arg1, void *arg2, s32 arg3) {
    u8 buffer[32];
    u8 numeric[32];
    s32 sp40;
    s32 sp44;
    s32 sp48;
    s32 sp4C;
    u8 *sp50;
    s32 sp54;
    u32 sp58;
    s32 sp5C;
    s32 sp60;
    u32 sp64;
    s32 temp_r0_4;
    s32 temp_r0_6;
    s32 temp_r1_2;
    s32 temp_r5;
    s32 var_r1_4;
    s32 var_r5;
    s32 var_r5_2;
    s32 var_r7_2;
    s32 var_r8;
    u16 temp_r0_5;
    u16 var_r0_4;
    u16 var_r7;
    u32 *var_r6_2;
    u32 temp_r0;
    u32 temp_r0_2;
    u32 temp_r0_3;
    u32 temp_r5_2;
    u32 var_r8_2;
    u32 var_r9;
    u8 *var_r1;
    u8 *var_r1_2;
    u8 *var_r1_3;
    u8 *var_r2;
    u8 *var_r2_2;
    u8 *var_r4_8;
    u8 *var_r6;
    u8 temp_r0_7;
    u8 temp_r1;
    u8 temp_r2;
    u8 temp_r2_2;
    u8 temp_r3;
    u8 temp_r6;
    u8 var_r0;
    u8 var_r0_2;
    u8 var_r0_3;
    u8 var_r4;
    u8 var_r4_2;
    u8 var_r4_3;
    u8 var_r4_4;
    u8 var_r4_5;
    u8 var_r4_6;
    u8 var_r4_7;

    sp44 = arg0;
    sp48 = arg3;
    if (arg2 == NULL) {
        sub_0801A664(arg1, 2);
        return;
    }
    sp50 = 0;
    sp54 = 0;
    sp58 = 0;
    sp5C = 0;
    sp60 = 0;
    sp64 = sp48 & 0x7FFFFFFF;
    temp_r0 = M2C_FIELD(arg2, u16 *, 0) - 1;
    switch (temp_r0) {                              /* switch 1; irregular */
    case 0:                                         /* switch 1 */
        sp4C = sub_08007290(M2C_FIELD(arg2, u16 *, 2) | 0x100000);
        var_r6 = (u8 *)sp4C + (gUnk_03003470 * 0x1F);
        sp54 = 0;
        sp58 = 0;
        sp5C = 0;
        var_r9 = arg1 << 0x10;
block_31:
        switch (sp64) {                             /* switch 2; irregular */
        case 1:                                     /* switch 2 */
            var_r4 = 0;
            if (sp54 != 0) {
                buffer[0] = 0xA1;
                var_r4 = 1;
            } else if (M2C_FIELD(arg2, u16 *, 0) != 1) {
                if (*var_r6 != 0) {
                    do {
                        (buffer)[var_r4] = var_r6[var_r4];
                        var_r4 += 1;
                    } while (var_r6[var_r4] != 0);
                }
            } else if (M2C_FIELD(sp4C, u16 *, 0xA0) == 1) {
                if (sub_0801DE60() == 0) {
                    var_r7 = M2C_FIELD(gUnk_030034E0, u16 *, 0x48) * 4 * M2C_FIELD(sp4C, u16 *, 0xA2);
                } else {
                    var_r7 = M2C_FIELD(sp4C, u16 *, 0xA2);
                }
                var_r4 = 0;
                var_r0 = *var_r6;
loop_84:
                if ((var_r0 != 0xFD) && (var_r0 != 0xF7)) {
                    (buffer)[var_r4] = M2C_FIELD(&var_r6[var_r4], u8 *, 0);
                    var_r4 += 1;
                    var_r0 = var_r6[var_r4];
                    goto loop_84;
                }
                var_r8 = var_r4 + 3;
                if (M2C_FIELD(&var_r6[var_r4], u8 *, 0) != 0xFD) {
                    temp_r0_2 = var_r7 / 100U;
                    temp_r0_3 = var_r7 % 100U;
                    if (temp_r0_2 != 0) {
                        temp_r1 = var_r4;
                        var_r4 = temp_r1 + 1;
                        buffer[temp_r1] = temp_r0_2 + 0x41;
                    }
                    temp_r2 = var_r4 + 1;
                    buffer[var_r4] = (temp_r0_3 / 10U) + 0x41;
                    var_r4 = temp_r2 + 1;
                    (buffer)[temp_r2] = (temp_r0_3 % 10U) + 0x41;
                }
                var_r2 = &M2C_FIELD(&var_r6[var_r4], u8 *, 3);
                if (M2C_FIELD(&var_r6[var_r4], u8 *, 3) != 0) {
                    do {
                        (buffer)[var_r4] = *var_r2;
                        var_r8 += 1;
                        var_r4 += 1;
                        var_r2 = &var_r6[var_r8];
                    } while (*var_r2 != 0);
                }
            } else if (*var_r6 != 0xFD) {
                do {
                    (buffer)[var_r4] = var_r6[var_r4];
                    var_r4 += 1;
                } while (var_r6[var_r4] != 0xFD);
            }
            var_r1 = &(buffer)[var_r4];
            var_r0_2 = 0xFD;
block_104:
            *var_r1 = var_r0_2;
            break;
        case 2:                                     /* switch 2 */
            var_r4_2 = 0;
            if (sp54 != 0) {
                buffer[0] = 0xA1;
                var_r4_2 = 1;
            } else if (*var_r6 != 0xFD) {
                do {
                    (buffer)[var_r4_2] = var_r6[var_r4_2];
                    var_r4_2 += 1;
                } while (var_r6[var_r4_2] != 0xFD);
            }
            var_r1 = &(buffer)[var_r4_2];
            var_r0_2 = 0;
            goto block_104;
        default:                                    /* switch 2 */
            if (sp54 != 0) {
                buffer[0] = 0xA1;
                var_r5 = 0;
                if (*var_r6 != 0) {
                    var_r1_2 = var_r6;
                    var_r2_2 = buffer + 1;
                    do {
                        *var_r2_2 = *var_r1_2;
                        var_r1_2 += 1;
                        var_r2_2 += 1;
                        var_r5 += 1;
                    } while (*var_r1_2 != 0);
                }
                var_r1 = &M2C_FIELD(&(buffer)[var_r5], u8 *, 1);
                var_r0_2 = 0xFD;
            } else {
                if (sp5C != 0) {
                    if (sp5C == 7) {
                        sp5C = 6;
                    }
                    buffer[0] = sp5C + 0xA1;
                    var_r5_2 = 1;
                } else {
                    var_r5_2 = 0;
                }
                if (sp60 != 0) {
                    (buffer)[var_r5_2] = 0xCD;
                    var_r5_2 += 1;
                }
                if (gUnk_03003470 == 2) {
                    if (sp50 != 0) {
                        var_r4_3 = 0;
                        if (M2C_FIELD(sp50, u8 *, 0x3E) != 0) {
                            do {
                                (buffer)[var_r4_3 + var_r5_2] = *(sp50 + (var_r4_3 + 0x3E));
                                var_r4_3 += 1;
                            } while (*(sp50 + (var_r4_3 + 0x3E)) != 0);
                        }
                        temp_r5 = var_r5_2 + var_r4_3;
                        (buffer)[temp_r5] = 0x51;
                        var_r5_2 = temp_r5 + 1;
                    }
                    var_r4_4 = 0;
                    if (*var_r6 != 0) {
loop_56:
                        (buffer)[var_r4_4 + var_r5_2] = var_r6[var_r4_4];
                        var_r4_4 += 1;
                        if (var_r6[var_r4_4] != 0) {
                            if ((u32) var_r4_4 > 0x1BU) {

                            } else {
                                goto loop_56;
                            }
                        }
                    }
                } else {
                    var_r4_5 = 0;
                    if (*var_r6 != 0) {
loop_60:
                        (buffer)[var_r4_5 + var_r5_2] = var_r6[var_r4_5];
                        var_r4_5 += 1;
                        if (var_r6[var_r4_5] != 0) {
                            if ((u32) var_r4_5 <= 0x1BU) {
                                goto loop_60;
                            }
                        }
                    }
                    var_r5_2 += var_r4_5;
                    var_r4_4 = 0;
                    if (sp50 != 0) {
                        (buffer)[var_r5_2] = 0x51;
                        var_r5_2 += 1;
                        temp_r1_2 = gUnk_03003470 * 0x1F;
                        if (*(sp50 + temp_r1_2) != 0) {
                            do {
                                (buffer)[var_r4_4 + var_r5_2] = *(sp50 + (var_r4_4 + temp_r1_2));
                                var_r4_4 += 1;
                            } while (*(sp50 + (var_r4_4 + temp_r1_2)) != 0);
                        }
                    }
                }
                var_r4_6 = var_r4_4 + var_r5_2;
                if (sp58 != 0) {
                    if (sp58 <= 9U) {
                        var_r4_7 = var_r4_6 + 1;
                        temp_r6 = var_r4_7;
                        buffer[var_r4_6] = 0x4C;
                        temp_r5_2 = sp58 / 10U;
                        sp58 = sp58 % 10U;
                        if (temp_r5_2 != 0) {
                            var_r4_7 += 1;
                            (buffer)[temp_r6] = temp_r5_2 + 0x41;
                        }
                        var_r4_6 = var_r4_7 + 1;
                        var_r1_3 = buffer + var_r4_7;
                        var_r0_3 = sp58 + 0x41;
                    } else {
                        temp_r2_2 = var_r4_6 + 1;
                        buffer[var_r4_6] = 0x4C;
                        var_r4_6 = temp_r2_2 + 1;
                        var_r1_3 = &(buffer)[temp_r2_2];
                        var_r0_3 = sp58 + 0xAC;
                    }
                    *var_r1_3 = var_r0_3;
                    (buffer)[var_r4_6] = 0xFD;
                }
                var_r1 = &(buffer)[var_r4_6];
                var_r0_2 = 0xFD;
            }
            goto block_104;
        }
        var_r0_4 = 0;
        if (sp48 < 0) {
            var_r0_4 = 0 - ((u32) sub_0801A638(buffer) >> 1);
        }
        sub_0801A3D0(buffer, (u16) ((s16) var_r0_4 + sp44), var_r9 >> 0x10);
        return;
    case 1:                                         /* switch 1 */
        temp_r0_4 = sub_08007290(M2C_FIELD(arg2, u16 *, 2) | 0xB0000);
        var_r6 = (u8 *)temp_r0_4 + (gUnk_03003470 * 0x1F);
        sp54 = (s32) M2C_FIELD(arg2, u8 *, 8);
        sp58 = (u32) M2C_FIELD(arg2, u8 *, 6);
        temp_r3 = M2C_FIELD(arg2, u8 *, 7);
        sp5C = (s32) temp_r3;
        if (temp_r3 == 0) {
            sp5C = (s32) M2C_FIELD(temp_r0_4, u16 *, 0xBC);
        }
block_14:
        temp_r0_5 = M2C_FIELD(arg2, u16 *, 4);
        var_r9 = arg1 << 0x10;
        if (temp_r0_5 == 0) {

        } else {
            sp50 = (u8 *)sub_08007290((temp_r0_5 - 1) | 0x130000);
        }
        goto block_31;
    case 2:                                         /* switch 1 */
        var_r1_4 = 0xC0000;
block_9:
        var_r6 = (u8 *)sub_08007290(M2C_FIELD(arg2, u16 *, 2) | var_r1_4) + (gUnk_03003470 * 0x1F);
        sp54 = (s32) M2C_FIELD(arg2, u8 *, 8);
        sp58 = (u32) M2C_FIELD(arg2, u8 *, 6);
        sp5C = (s32) M2C_FIELD(arg2, u8 *, 7);
        goto block_14;
    case 3:                                         /* switch 1 */
        var_r1_4 = 0xD0000;
        goto block_9;
    case 6:                                         /* switch 1 */
        var_r6 = (u8 *)sub_08007290(M2C_FIELD(arg2, u16 *, 2) | 0x110000) + (gUnk_03003470 * 0x1F);
        sp54 = 0;
        sp58 = 0;
block_27:
        var_r9 = arg1 << 0x10;
        goto block_31;
    case 4:                                         /* switch 1 */
        temp_r0_6 = sub_08007290(M2C_FIELD(arg2, u16 *, 2) | 0xE0000);
        var_r6 = (u8 *)temp_r0_6 + (gUnk_03003470 * 0x1F);
        sp54 = (s32) M2C_FIELD(arg2, u8 *, 8);
        sp58 = (u32) M2C_FIELD(arg2, u8 *, 6);
        sp5C = (s32) M2C_FIELD(arg2, u8 *, 7);
        if (M2C_FIELD(temp_r0_6, u8 *, 0xA0) != 0) {
            sp60 = 1;
        }
        goto block_14;
    case 5:                                         /* switch 1 */
        var_r6 = (u8 *)sub_08007290(M2C_FIELD(arg2, u16 *, 2) | 0xF0000) + (gUnk_03003470 * 0x1F);
        sp54 = 0;
        sp58 = 0;
        sp5C = 0;
block_29:
        var_r9 = arg1 << 0x10;
        goto block_31;
    case 8:                                         /* switch 1 */
        var_r6 = (u8 *)sub_08007290(M2C_FIELD(arg2, u16 *, 2) | 0x150000) + (gUnk_03003470 * 0x1F);
        var_r9 = arg1 << 0x10;
        goto block_31;
    case 9:                                         /* switch 1 */
        if (sub_0800CC98() == 0) {
            sp40 = M2C_FIELD(arg2, s32 *, 4);
            var_r6_2 = &gUnk_084EBD5C;
            var_r4_8 = numeric;
            var_r7_2 = 0;
            var_r8_2 = 0;
            var_r9 = arg1 << 0x10;
            do {
                temp_r0_7 = sub_08000498(&sp40, *var_r6_2) + 0x41;
                *var_r4_8 = temp_r0_7;
                if ((var_r7_2 != 0) || (temp_r0_7 != 0x41)) {
                    var_r4_8 += 1;
                    var_r7_2 = 1;
                }
                var_r8_2 += 1;
                var_r6_2++;
            } while (var_r8_2 <= 5U);
            M2C_FIELD(var_r4_8, u8 *, 0) = 7;
            M2C_FIELD(var_r4_8, s8 *, 1) = 0;
            var_r6 = numeric;
        } else {
            var_r6 = (u8 *)sub_08007290(0x160000) + (gUnk_03003470 * 0x1F);
            goto block_27;
        }
        goto block_31;
    case 7:                                         /* switch 1 */
        var_r6 = (u8 *)sub_08007290(M2C_FIELD(arg2, u16 *, 2) | 0x120000) + (gUnk_03003470 * 0x1F);
        goto block_29;
    }
}

#else
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_0805FFBC);
#endif
#ifdef NONMATCHING
extern void drawItemTask63(s32, s32, s32, s32) asm("sub_0805FC80");
M2C_UNK sub_080003F4(s32);                          /* extern */
extern u8 taskTiles63[] asm("gUnk_03005740");
extern M2C_UNK gUnk_030057C0;
extern M2C_UNK gUnk_03005800;
extern M2C_UNK gUnk_03005840;
extern M2C_UNK gUnk_084EBD7C;
extern M2C_UNK gUnk_084EBDBC;
extern M2C_UNK gUnk_084EBDBE;
extern M2C_UNK gUnk_03005D80;

void sub_080605D0(s32 arg0) {
    s32 sp10;
    s32 sp14;
    struct Player *sp18;
    u32 sp1C;
    u32 sp20;
    s32 sp24;
    s32 sp28;
    s32 sp2C;
    u8 *sp30;
    s32 sp34;
    u8 *var_r4_3;
    s16 *var_r0;
    s16 *var_r0_3;
    s16 var_r1;
    s16 var_r1_3;
    s32 temp_r0;
    s32 temp_r0_10;
    s32 temp_r0_11;
    s32 temp_r0_12;
    s32 temp_r0_13;
    s32 temp_r0_15;
    s32 temp_r0_17;
    s32 temp_r0_18;
    s32 temp_r0_19;
    s32 temp_r0_7;
    s32 temp_r0_8;
    s32 temp_r1_12;
    s32 temp_r1_6;
    s32 temp_r1_7;
    s32 temp_r1_8;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r2_3;
    s32 temp_r3;
    s32 temp_r3_2;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_r4_3;
    s32 var_r0_2;
    s32 var_r1_2;
    s32 var_r3;
    s32 var_r4;
    s32 var_r4_2;
    s32 var_r4_4;
    s32 var_r6;
    s32 var_r7;
    struct Player *temp_r1;
    u16 temp_r0_16;
    u16 temp_r0_4;
    u16 temp_r0_5;
    u16 temp_r0_6;
    u16 temp_r0_9;
    u16 temp_r1_10;
    u16 temp_r1_5;
    u16 var_r2;
    u16 var_r2_2;
    u32 temp_r0_14;
    u32 temp_r0_2;
    u32 temp_r1_11;
    u32 temp_r1_2;
    u8 temp_r0_3;
    u8 temp_r1_3;
    u8 temp_r1_4;
    u8 temp_r1_9;

    sp10 = arg0;
    sp14 = gUnk_030034E0;
    temp_r1 = &gUnk_03003CE0[sub_080020F4()];
    sp18 = temp_r1;
    sp24 = 1;
    sp28 = (s32) M2C_FIELD(temp_r1, u8 *, 0x77);
    sp2C = (s32) M2C_FIELD(temp_r1, u8 *, 0x78);
loop_121:
    if (sub_0800CB78() == 0) {
        if (sp10 != 0) {
            sub_080003F4(0x18A92);
            sub_0805865C((u16) ((u16) M2C_FIELD(sp14, u16 *, 0x68) % 3U) + 0x57);
            sub_080003F0();
            if (sub_0800CB78() != 0) {
                return;
            }
        }
        sp1C = 8;
        sp20 = 0x3C;
        sp30 = taskTiles63;
loop_75:
        temp_r1_2 = sp20;
        sp20 = (u32) ((temp_r1_2 << 0x10) + 0xFFFF0000) >> 0x10;
        var_r6 = sp1C << 0x10;
        if ((s32) (temp_r1_2 << 0x10) <= 0) {

        } else {
            temp_r0 = sub_0800CB78();
            if (temp_r0 == 0) {
                temp_r0_2 = var_r6 + 0xFFFE0000;
                sp1C = temp_r0_2 >> 0x10;
                if ((s32) temp_r0_2 < 0) {
                    sp1C = 0;
                }
                if (0x300 & gUnk_03001324) {
                    sp24 = 1;
                }
                temp_r1_3 = M2C_FIELD(sp18, u8 *, 0x77);
                if (sp28 != temp_r1_3) {
                    sp28 = (s32) temp_r1_3;
                    sp24 = 1;
                }
                temp_r0_3 = M2C_FIELD(sp18, u8 *, 0x78);
                if (sp2C != temp_r0_3) {
                    sp2C = (s32) temp_r0_3;
                    sp24 = 1;
                }
                if (0x200 & gUnk_03001324) {
                    temp_r0_4 = sp18->state;
                    if ((temp_r0_4 != 5) && (temp_r0_4 != 2)) {
                        temp_r0_5 = M2C_FIELD(sp14, u16 *, 0x68) + 1;
                        M2C_FIELD(sp14, u16 *, 0x68) = temp_r0_5;
                        if ((u32) temp_r0_5 >= (u32) M2C_FIELD(sp18, u8 *, 0x77)) {
                            M2C_FIELD(sp14, u16 *, 0x68) = (u16) temp_r0;
                        }
                        sub_0805AD78(M2C_FIELD(sp14, u16 *, 0x68));
                        if ((u32) M2C_FIELD(sp18, u8 *, 0x68) > 1U) {
                            sp18->flags |= 0x800;
                        }
                        sp20 = 0x3C;
                        M2C_FIELD(sp18, s16 *, 0x26) = (s16) temp_r0;
                        M2C_FIELD(sp18, s16 *, 0x24) = (s16) temp_r0;
                        temp_r0_6 = sp18->state;
                        switch (temp_r0_6) {        /* irregular */
                        case 3:
                            sp18->state = (u16) temp_r0;
                            break;
                        case 4:
                            sp18->state = 1;
                            break;
                        }
                    }
                    sub_0805865C((u16) ((u16) M2C_FIELD(sp14, u16 *, 0x68) % 3U) + 0x57);
                }
                if ((sp10 == 0) && (sp24 == 0)) {

                } else {
                    sub_0801A664(2, 4);
                    var_r2 = (u16) sp1C;
                    var_r4 = var_r2 << 0x10;
                    if ((s32) (s16) var_r2 <= 7) {
                        sp34 = (s32) (s16) sp1C;
                        do {
                            temp_r4 = var_r4 >> 0x10;
                            temp_r2 = (temp_r4 - sp34) * 2;
                            temp_r3 = temp_r4 * 2;
                            *(u16 *)(temp_r2 + ((u8 *)&gUnk_030057C0)) = *(u16 *)(temp_r3 + ((u8 *)&gUnk_084EBD7C));
                            *(u16 *)(temp_r2 + (taskTiles63 + 0xC0)) = *(u16 *)(temp_r3 + (((u8 *)&gUnk_084EBD7C) + 0x10));
                            *(u16 *)(temp_r2 + ((u8 *)&gUnk_03005840)) = *(u16 *)(temp_r3 + (((u8 *)&gUnk_084EBD7C) + 0x20));
                            *(u16 *)(temp_r2 + (taskTiles63 + 0x140)) = *(u16 *)(temp_r3 + (((u8 *)&gUnk_084EBD7C) + 0x30));
                            var_r2 = temp_r4 + 1;
                            var_r4 = var_r2 << 0x10;
                        } while ((s32) (s16) var_r2 <= 7);
                    }
                    temp_r1_4 = M2C_FIELD(sp18, u8 *, 0x77);
                    if ((u32) (u8) (temp_r1_4 - 4) <= 2U) {
                        if ((u32) M2C_FIELD(sp14, u16 *, 0x68) <= 2U) {
                            temp_r0_7 = ((s16) var_r2 - (s16) sp1C) * 2;
                            *(u16 *)(temp_r0_7 + ((u8 *)&gUnk_030057C0)) = 0xF032;
                            var_r0 = temp_r0_7 + (sp30 + 0xC0);
                            var_r1 = 0xF052;
                        } else {
                            temp_r0_8 = ((s16) var_r2 - (s16) sp1C) * 2;
                            *(u16 *)(temp_r0_8 + ((u8 *)&gUnk_030057C0)) = 0xF033;
                            var_r0 = temp_r0_8 + (sp30 + 0xC0);
                            var_r1 = 0xF053;
                        }
                        goto block_42;
                    }
                    if ((u32) temp_r1_4 > 6U) {
                        temp_r0_9 = M2C_FIELD(sp14, u16 *, 0x68);
                        if ((u32) temp_r0_9 <= 2U) {
                            temp_r0_10 = ((s16) var_r2 - (s16) sp1C) * 2;
                            *(u16 *)(temp_r0_10 + ((u8 *)&gUnk_030057C0)) = 0xF034;
                            *(u16 *)(temp_r0_10 + (sp30 + 0xC0)) = 0xF054;
                            var_r0 = temp_r0_10 + ((u8 *)&gUnk_03005840);
                            var_r1 = 0xF074;
                        } else if ((u32) temp_r0_9 <= 5U) {
                            temp_r0_11 = ((s16) var_r2 - (s16) sp1C) * 2;
                            *(u16 *)(temp_r0_11 + ((u8 *)&gUnk_030057C0)) = 0xF035;
                            *(u16 *)(temp_r0_11 + (sp30 + 0xC0)) = 0xF055;
                            var_r0 = temp_r0_11 + ((u8 *)&gUnk_03005840);
                            var_r1 = 0xF075;
                        } else {
                            temp_r0_12 = ((s16) var_r2 - (s16) sp1C) * 2;
                            *(u16 *)(temp_r0_12 + ((u8 *)&gUnk_030057C0)) = 0xF036;
                            *(u16 *)(temp_r0_12 + (sp30 + 0xC0)) = 0xF056;
                            var_r0 = temp_r0_12 + ((u8 *)&gUnk_03005840);
                            var_r1 = 0xF076;
                        }
block_42:
                        *var_r0 = var_r1;
                    }
                    if ((s32) (sp1C << 0x10) <= 0) {
                        sp24 = 0;
                    }
                }
                if (sp10 == 0) {
                    sp20 = 0x3C;
                    sp1C = 0;
                }
                temp_r1_5 = (u16) ((u16) M2C_FIELD(sp14, u16 *, 0x68) / 3U) * 3;
                var_r4_2 = temp_r1_5 << 0x10;
                var_r6 = sp1C << 0x10;
                if (sp10 != 0) {
                    temp_r0_13 = ((u32) (var_r4_2 + 0x30000) >> 0x10) << 0x10;
                    var_r7 = var_r4_2;
                    if (var_r4_2 < temp_r0_13) {
                        do {
                            temp_r4_2 = var_r4_2 >> 0x10;
                            temp_r1_6 = (temp_r4_2 - (s16) temp_r1_5) * 4;
                            drawItemTask63(*(s16 *)(temp_r1_6 + ((u8 *)&gUnk_084EBDBC)) + ((7 - (s16) sp1C) * 8), *(s16 *)(temp_r1_6 + ((u8 *)&gUnk_084EBDBE)) + 0x10, sp14 + ((temp_r4_2 * 0x10) + 0x70), 8);
                            var_r4_2 = (temp_r4_2 + 1) << 0x10;
                        } while (var_r4_2 < temp_r0_13);
                    }
                    if (sp10 == 0) {
                        goto block_52;
                    }
                } else {
block_52:
                    var_r7 = temp_r1_5 << 0x10;
                    if (M2C_FIELD(gUnk_03006440, s32 *, 0x28) & 1) {
                        sp24 = 1;
                        do {
                            sub_080003F0();
                        } while (M2C_FIELD(gUnk_03006440, s32 *, 0x28) & sp24);
                    }
                }
                temp_r1_7 = (M2C_FIELD(sp14, u16 *, 0x68) - (var_r7 >> 0x10)) * 4;
                sub_08007CF0((((7 - (s16) sp1C) * 8) + *(s16 *)(temp_r1_7 + ((u8 *)&gUnk_084EBDBC))) - 1, *(s16 *)(temp_r1_7 + ((u8 *)&gUnk_084EBDBE)) + 0x10, 7U, 0U, 0, (s32) (((u8 *)&gUnk_03005D80) + 0x1C), M2C_FIELD(((u8 *)&gUnk_03005D80), s32 *, 8), M2C_FIELD(((u8 *)&gUnk_03005D80), s32 *, 0));
                sub_080003F0();
                if (sub_0800CD34() != 0) {

                } else if (sp10 != 0) {
                    if (sub_08058DB0() != 0) {

                    } else if (sub_0800D11C() != 0) {

                    } else if (sub_0800CC98() != 0) {

                    } else if (sub_0800D060() != 0) {

                    } else if (sub_08056E90() != 0) {

                    } else if (sp18->flags & 0x400) {

                    } else if (sp18->state == 0xC) {

                    } else if ((sub_0800CCCC() == 0) && (4 & M2C_FIELD(gUnk_03005CF4, u16 *, 4))) {

                    } else {
                        goto loop_75;
                    }
                } else {
                    goto loop_75;
                }
            }
        }
loop_111:
        if ((s32) (var_r6 >> 0x10) <= 7) {
            if (sp10 == 0) {
                goto block_87;
            }
            if ((sub_08058DB0() == 0) && (sub_0800D11C() == 0) && (sub_0800CC98() == 0) && (sub_08056E90() == 0) && (sub_0800D060() == 0)) {
                if (sp18->flags & 0x400) {

                } else if (sp18->state == 0xC) {

                } else if ((sub_0800CCCC() == 0) && (4 & M2C_FIELD(gUnk_03005CF4, u16 *, 4))) {

                } else {
block_87:
                    if (sub_0800CD34() != 0) {

                    } else {
                        temp_r0_14 = (sp1C << 0x10) + 0x20000;
                        sp1C = temp_r0_14 >> 0x10;
                        if ((s32) ((s32) temp_r0_14 >> 0x10) > 8) {
                            sp1C = 8;
                        }
                        var_r2_2 = (u16) sp1C;
                        var_r3 = var_r2_2 << 0x10;
                        var_r6 = sp1C << 0x10;
                        if ((s32) (s16) var_r2_2 <= 7) {
                            sp34 = (s32) (s16) sp1C;
                            do {
                                temp_r3_2 = var_r3 >> 0x10;
                                temp_r1_8 = (temp_r3_2 - sp34) * 2;
                                temp_r2_2 = temp_r3_2 * 2;
                                *(u16 *)(temp_r1_8 + ((u8 *)&gUnk_030057C0)) = *(u16 *)(temp_r2_2 + ((u8 *)&gUnk_084EBD7C));
                                *(u16 *)(temp_r1_8 + ((u8 *)&gUnk_03005800)) = *(u16 *)(temp_r2_2 + (((u8 *)&gUnk_084EBD7C) + 0x10));
                                *(u16 *)(temp_r1_8 + ((u8 *)&gUnk_03005840)) = *(u16 *)(temp_r2_2 + (((u8 *)&gUnk_084EBD7C) + 0x20));
                                *(u16 *)(temp_r1_8 + (taskTiles63 + 0x140)) = *(u16 *)(temp_r2_2 + (((u8 *)&gUnk_084EBD7C) + 0x30));
                                var_r2_2 = temp_r3_2 + 1;
                                var_r3 = var_r2_2 << 0x10;
                            } while ((s32) (s16) var_r2_2 <= 7);
                        }
                        temp_r1_9 = M2C_FIELD(sp18, u8 *, 0x77);
                        if ((u32) (u8) (temp_r1_9 - 4) <= 2U) {
                            if ((u32) M2C_FIELD(sp14, u16 *, 0x68) <= 2U) {
                                var_r0_2 = ((s16) var_r2_2 - (s16) sp1C) * 2;
                                var_r1_2 = 0xF032;
                                *(u16 *)(var_r0_2 + ((u8 *)&gUnk_030057C0)) = 0xF032;
                                var_r4_3 = ((u8 *)&gUnk_03005800);
                                goto block_104;
                            }
                            temp_r0_15 = ((s16) var_r2_2 - (s16) sp1C) * 2;
                            *(u16 *)(temp_r0_15 + ((u8 *)&gUnk_030057C0)) = 0xF033;
                            var_r0_3 = temp_r0_15 + ((u8 *)&gUnk_03005800);
                            var_r1_3 = 0xF053;
                            goto block_106;
                        }
                        if ((u32) temp_r1_9 > 6U) {
                            temp_r0_16 = M2C_FIELD(sp14, u16 *, 0x68);
                            if ((u32) temp_r0_16 <= 2U) {
                                temp_r0_17 = ((s16) var_r2_2 - (s16) sp1C) * 2;
                                *(u16 *)(temp_r0_17 + ((u8 *)&gUnk_030057C0)) = 0xF034;
                                *(u16 *)(temp_r0_17 + ((u8 *)&gUnk_03005800)) = 0xF054;
                                var_r0_3 = temp_r0_17 + ((u8 *)&gUnk_03005840);
                                var_r1_3 = 0xF074;
                            } else {
                                if ((u32) temp_r0_16 <= 5U) {
                                    temp_r0_18 = ((s16) var_r2_2 - (s16) sp1C) * 2;
                                    *(u16 *)(temp_r0_18 + ((u8 *)&gUnk_030057C0)) = 0xF035;
                                    var_r1_2 = 0xF055;
                                    *(u16 *)(temp_r0_18 + ((u8 *)&gUnk_03005800)) = 0xF055;
                                    var_r0_3 = temp_r0_18 + ((u8 *)&gUnk_03005840);
                                } else {
                                    var_r0_2 = ((s16) var_r2_2 - (s16) sp1C) * 2;
                                    *(u16 *)(var_r0_2 + ((u8 *)&gUnk_030057C0)) = 0xF036;
                                    var_r1_2 = 0xF056;
                                    *(u16 *)(var_r0_2 + ((u8 *)&gUnk_03005800)) = 0xF056;
                                    var_r4_3 = ((u8 *)&gUnk_03005840);
block_104:
                                    var_r0_3 = var_r0_2 + var_r4_3;
                                }
                                var_r1_3 = var_r1_2 + 0x20;
                            }
block_106:
                            *var_r0_3 = var_r1_3;
                        }
                        sub_0801A664(2, 4);
                        temp_r1_10 = (u16) ((u16) M2C_FIELD(sp14, u16 *, 0x68) / 3U) * 3;
                        temp_r0_19 = temp_r1_10 << 0x10;
                        temp_r1_11 = temp_r0_19 + 0x30000;
                        var_r4_4 = temp_r0_19;
                        if (var_r4_4 < (s32) temp_r1_11) {
                            do {
                                temp_r4_3 = var_r4_4 >> 0x10;
                                temp_r1_12 = (temp_r4_3 - (s16) temp_r1_10) * 4;
                                drawItemTask63(*(s16 *)(temp_r1_12 + ((u8 *)&gUnk_084EBDBC)) + ((7 - (s16) sp1C) * 8), *(s16 *)(temp_r1_12 + ((u8 *)&gUnk_084EBDBE)) + 0x10, sp14 + ((temp_r4_3 * 0x10) + 0x70), 8);
                                var_r4_4 = (temp_r4_3 + 1) << 0x10;
                            } while (var_r4_4 < (s32) ((temp_r1_11 >> 0x10) << 0x10));
                        }
                        temp_r2_3 = (M2C_FIELD(sp14, u16 *, 0x68) % 3) * 4;
                        sub_08007CF0(((7 - (s16) sp1C) * 8) + *(s16 *)(temp_r2_3 + ((u8 *)&gUnk_084EBDBC)), *(s16 *)(temp_r2_3 + ((u8 *)&gUnk_084EBDBE)) + 0x10, 7U, 0U, 0, (s32) (((u8 *)&gUnk_03005D80) + 0x1C), M2C_FIELD(((u8 *)&gUnk_03005D80), s32 *, 8), M2C_FIELD(((u8 *)&gUnk_03005D80), s32 *, 0));
                        sub_080003F0();
                        goto loop_111;
                    }
                }
            }
        }
        sub_080003F0();
        sub_0801A664(2, 4);
        goto loop_121;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_080605D0);
#endif
extern u32 taskMem63[] asm("gUnk_03006130");
extern struct Task tasks63[] asm("gUnk_03006110");
extern void sub_080605D0(s32);
void sub_08060DB0(s32 index)
{
    u32 *memOut;
    if (index != 0) {
        tasks63[index].u8 = 0x3C;
    } else {
        tasks63[0].u8 = 0x65;
    }
    memOut = &taskMem63[index * 10];
    while ((*memOut = sub_08001494(0x200)) == 0)
        sub_080003F0();
    tasks63[index].uC = sub_080605D0;
    tasks63[index].u10 = tasks63[index].u20 + 0x1FC;
    tasks63[index].u24 = 0;
    sub_08000274(&tasks63[index], index);
}
#ifdef NONMATCHING
extern void drawItemTaskE63(s32, s32, void *, s32) asm("sub_0805FC80");
M2C_UNK sub_080003F4(s32);                          /* extern */
M2C_UNK sub_0805FAC0(s32, s32, s16, s32);           /* extern */
extern u8 taskETiles63[] asm("gUnk_03005740");
extern M2C_UNK gUnk_030057C0;
extern M2C_UNK gUnk_03005800;
extern M2C_UNK gUnk_03005840;
extern M2C_UNK gUnk_084EBDC8;
extern M2C_UNK gUnk_084EBE08;
extern M2C_UNK gUnk_084EBE0A;
extern M2C_UNK gUnk_03005D80;

void sub_08060E44(s32 arg0) {
    u8 sp10[16];
    s32 sp20;
    s32 sp24;
    struct Player *sp28;
    u32 sp2C;
    u32 sp30;
    s32 sp34;
    s32 sp38;
    s32 sp3C;
    u8 *sp40;
    s32 sp44;
    s32 sp48;
    s32 sp4C;
    u16 *sp50;
    M2C_UNK *var_r8;
    s16 *temp_r4_4;
    s16 *temp_r6_2;
    s16 *var_r1;
    s16 *var_r1_3;
    s16 *var_r2;
    s16 temp_r2_5;
    s16 temp_r3;
    s16 temp_r5;
    s16 temp_r5_5;
    s16 temp_r6;
    s16 var_r0;
    s16 var_r0_2;
    s16 var_r0_3;
    s16 var_r3;
    s16 var_r3_3;
    s32 temp_r0;
    s32 temp_r0_10;
    s32 temp_r0_12;
    s32 temp_r0_13;
    s32 temp_r0_8;
    s32 temp_r1_10;
    s32 temp_r1_11;
    s32 temp_r1_12;
    s32 temp_r1_6;
    s32 temp_r1_8;
    s32 temp_r1_9;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r2_3;
    s32 temp_r2_4;
    s32 temp_r2_6;
    s32 temp_r3_2;
    s32 temp_r4;
    s32 temp_r4_3;
    s32 temp_r4_5;
    s32 temp_r5_2;
    s32 temp_r5_3;
    s32 temp_r5_4;
    s32 temp_r5_6;
    s32 temp_r9;
    s32 var_r1_2;
    s32 var_r2_2;
    s32 var_r2_4;
    s32 var_r3_4;
    s32 var_r5;
    s32 var_r5_2;
    s32 var_r9;
    struct Player *temp_r1;
    u16 *temp_r1_5;
    u16 *temp_r3_3;
    u16 temp_r0_14;
    u16 temp_r0_4;
    u16 temp_r0_5;
    u16 temp_r0_6;
    u16 var_r2_3;
    u32 temp_r0_11;
    u32 temp_r0_15;
    u32 temp_r0_2;
    u32 temp_r0_7;
    u32 temp_r0_9;
    u32 temp_r1_2;
    u32 var_r3_2;
    u32 var_r7;
    u8 temp_r0_3;
    u8 temp_r1_3;
    u8 temp_r1_4;
    u8 temp_r1_7;
    void *temp_r4_2;

    sp20 = arg0;
    sp24 = gUnk_030034E0;
    temp_r1 = &gUnk_03003CE0[sub_080020F4()];
    sp28 = temp_r1;
    sp34 = 1;
    sp38 = (s32) M2C_FIELD(temp_r1, u8 *, 0x77);
    sp3C = (s32) M2C_FIELD(temp_r1, u8 *, 0x78);
loop_125:
    if (sub_0800CB78() == 0) {
        if (sp20 != 0) {
            sub_080003F4(0x18A93);
            sub_0805865C((u16) ((u16) M2C_FIELD(sp24, u16 *, 0x54) % 3U) + 0x5A);
            sub_080003F0();
            if (sub_0800CB78() != 0) {
                return;
            }
        }
        sp2C = 8;
        sp30 = 0x3C;
        sp40 = taskETiles63;
loop_79:
        temp_r1_2 = sp30;
        sp30 = (u32) ((temp_r1_2 << 0x10) + 0xFFFF0000) >> 0x10;
        var_r9 = sp2C << 0x10;
        if ((s32) (temp_r1_2 << 0x10) <= 0) {

        } else {
            temp_r0 = sub_0800CB78();
            if (temp_r0 == 0) {
                temp_r0_2 = var_r9 + 0xFFFE0000;
                sp2C = temp_r0_2 >> 0x10;
                if ((s32) temp_r0_2 < 0) {
                    sp2C = 0;
                }
                if (0x300 & gUnk_03001324) {
                    sp34 = 1;
                }
                temp_r0_3 = M2C_FIELD(sp28, u8 *, 0x77);
                if (sp38 != temp_r0_3) {
                    sp38 = (s32) temp_r0_3;
                    sp34 = 1;
                }
                temp_r1_3 = M2C_FIELD(sp28, u8 *, 0x78);
                if (sp3C != temp_r1_3) {
                    sp3C = (s32) temp_r1_3;
                    sp34 = 1;
                }
                sp50 = sp24 + 0x54;
                if (0x100 & gUnk_03001324) {
                    temp_r0_4 = M2C_FIELD(sp24, u16 *, 0x54) + 1;
                    M2C_FIELD(sp24, u16 *, 0x54) = temp_r0_4;
                    if ((u32) temp_r0_4 >= (u32) M2C_FIELD(sp28, u8 *, 0x78)) {
                        M2C_FIELD(sp24, u16 *, 0x54) = (u16) temp_r0;
                    }
                    M2C_FIELD(sp28, s16 *, 0x26) = (s16) temp_r0;
                    M2C_FIELD(sp28, s16 *, 0x24) = (s16) temp_r0;
                    if (sp28->state == 7) {
                        sp28->state = 1;
                    }
                    if (sp28->state == 6) {
                        sp28->state = (u16) temp_r0;
                    }
                    sub_0805865C((u16) ((u16) *sp50 % 3U) + 0x5A);
                    if (sp20 != 0) {
                        sp30 = 0x3C;
                        goto block_22;
                    }
                    goto block_23;
                }
block_22:
                if (sp20 == 0) {
block_23:
                    if (sp34 == 0) {

                    } else {
                        goto block_25;
                    }
                } else {
block_25:
                    sub_0801A664(2, 4);
                    var_r3 = 0;
                    var_r5 = sp2C << 0x10;
                    temp_r9 = var_r5;
                    if ((s32) (s16) sp2C <= 7) {
                        do {
                            temp_r5_2 = var_r5 >> 0x10;
                            temp_r2 = (temp_r5_2 + 0x16) * 2;
                            temp_r3 = var_r3;
                            temp_r4 = temp_r3 * 2;
                            *(u16 *)(temp_r2 + (taskETiles63 + 0x80)) = *(u16 *)(temp_r4 + ((u8 *)&gUnk_084EBDC8));
                            *(u16 *)(temp_r2 + ((u8 *)&gUnk_03005800)) = *(u16 *)(temp_r4 + (((u8 *)&gUnk_084EBDC8) + 0x10));
                            *(u16 *)(temp_r2 + ((u8 *)&gUnk_03005840)) = *(u16 *)(temp_r4 + (((u8 *)&gUnk_084EBDC8) + 0x20));
                            *(u16 *)(temp_r2 + (taskETiles63 + 0x140)) = *(u16 *)(temp_r4 + (((u8 *)&gUnk_084EBDC8) + 0x30));
                            temp_r5 = temp_r5_2 + 1;
                            var_r3 = (s16) (u16) (temp_r3 + 1);
                            var_r5 = temp_r5 << 0x10;
                        } while ((s32) temp_r5 <= 7);
                    }
                    temp_r1_4 = M2C_FIELD(sp28, u8 *, 0x78);
                    if ((u32) (u8) (temp_r1_4 - 4) <= 2U) {
                        if ((u32) *sp50 <= 2U) {
                            temp_r2_2 = (temp_r9 >> 0xF) + 0x2A;
                            *(u16 *)(temp_r2_2 + (sp40 + 0x80)) = 0xF037;
                            var_r2 = temp_r2_2 + ((u8 *)&gUnk_03005800);
                            var_r0 = 0xF057;
                        } else {
                            temp_r2_3 = (temp_r9 >> 0xF) + 0x2A;
                            *(u16 *)(temp_r2_3 + (sp40 + 0x80)) = 0xF038;
                            var_r2 = temp_r2_3 + ((u8 *)&gUnk_03005800);
                            var_r0 = 0xF058;
                        }
                        goto block_39;
                    }
                    if ((u32) temp_r1_4 > 6U) {
                        temp_r0_5 = *sp50;
                        if ((u32) temp_r0_5 <= 2U) {
                            var_r2_2 = (temp_r9 >> 0xF) + 0x2A;
                            *(u16 *)(var_r2_2 + (sp40 + 0x80)) = 0xF039;
                            var_r1 = var_r2_2 + ((u8 *)&gUnk_03005800);
                            var_r0_2 = 0xF059;
                        } else if ((u32) temp_r0_5 <= 5U) {
                            var_r2_2 = (temp_r9 >> 0xF) + 0x2A;
                            *(u16 *)(var_r2_2 + (sp40 + 0x80)) = 0xF03A;
                            var_r1 = var_r2_2 + ((u8 *)&gUnk_03005800);
                            var_r0_2 = 0xF05A;
                        } else {
                            var_r2_2 = (temp_r9 >> 0xF) + 0x2A;
                            *(u16 *)(var_r2_2 + (sp40 + 0x80)) = 0xF03B;
                            var_r1 = var_r2_2 + ((u8 *)&gUnk_03005800);
                            var_r0_2 = 0xF05B;
                        }
                        *var_r1 = var_r0_2;
                        var_r2 = var_r2_2 + ((u8 *)&gUnk_03005840);
                        var_r0 = var_r0_2 + 0x20;
block_39:
                        *var_r2 = var_r0;
                    }
                    if ((s32) (sp2C << 0x10) <= 0) {
                        sp34 = 0;
                    }
                }
                if (sp20 == 0) {
                    sp30 = 0x3C;
                    sp2C = 0;
                }
                temp_r0_6 = (u16) ((u16) *sp50 / 3U);
                temp_r0_7 = (u32) ((temp_r0_6 * 0x30000) + 0x30000) >> 0x10;
                var_r9 = sp2C << 0x10;
                if (sp20 != 0) {
                    var_r2_3 = temp_r0_6 * 3;
                    var_r1_2 = var_r2_3 << 0x10;
                    temp_r0_8 = temp_r0_7 << 0x10;
                    sp4C = temp_r0_8;
                    if (var_r1_2 < temp_r0_8) {
                        sp44 = (s32) (s16) temp_r0_7;
                        do {
                            temp_r1_5 = sp24 + 0x56 + (var_r1_2 >> 0xF);
                            sp48 = var_r2_3 << 0x10;
                            if (*temp_r1_5 != 0) {
                                temp_r6 = *temp_r1_5 - 1;
                                var_r8 = sp10;
                                M2C_FIELD(sp10, s16 *, 0) = 1;
                                M2C_FIELD(sp10, s16 *, 2) = temp_r6;
                                var_r7 = 0;
                                var_r3_2 = 0;
                                do {
                                    temp_r0_10 = var_r3_2 << 0x10;
                                    temp_r5_3 = temp_r0_10 >> 0xC;
                                    temp_r4_2 = sp24 + temp_r5_3;
                                    if ((M2C_FIELD(temp_r4_2, u16 *, 0x150) == 1) && (temp_r6 == M2C_FIELD(temp_r4_2, u16 *, 0x152))) {
                                        var_r7 = (u32) ((var_r7 << 0x10) + 0x10000) >> 0x10;
                                        var_r8 = sp24 + (temp_r5_3 + 0x150);
                                    }
                                    temp_r0_9 = temp_r0_10 + 0x10000;
                                    var_r3_2 = temp_r0_9 >> 0x10;
                                } while ((s32) ((s32) temp_r0_9 >> 0x10) <= 0x18);
                                temp_r4_3 = (sp44 - ((sp48 >> 0x10) + 1)) * 4;
                                temp_r6_2 = temp_r4_3 + ((u8 *)&gUnk_084EBE08);
                                temp_r5_4 = (7 - (s16) sp2C) * 8;
                                temp_r4_4 = temp_r4_3 + ((u8 *)&gUnk_084EBE0A);
                                sub_0805FAC0((*temp_r6_2 + 0xF0) - temp_r5_4, *temp_r4_4 + 0x18, (s16) var_r7, 0);
                                drawItemTaskE63((*temp_r6_2 + 0xF0) - temp_r5_4, *temp_r4_4 + 0x10, var_r8, 0);
                            }
                            var_r2_3 = (u16) ((u32) (sp48 + 0x10000) >> 0x10);
                            var_r1_2 = var_r2_3 << 0x10;
                        } while ((s32) (s16) var_r2_3 < sp44);
                    }
                    if (sp20 == 0) {
                        goto block_56;
                    }
                } else {
block_56:
                    sp4C = temp_r0_7 << 0x10;
                    if (M2C_FIELD(gUnk_03006440, s32 *, 0x28) & 1) {
                        sp34 = 1;
                        do {
                            sub_080003F0();
                        } while (M2C_FIELD(gUnk_03006440, s32 *, 0x28) & sp34);
                    }
                }
                temp_r2_4 = ((sp4C >> 0x10) - (*sp50 + 1)) * 4;
                sub_08007CF0((*(s16 *)(temp_r2_4 + ((u8 *)&gUnk_084EBE08)) - ((7 - (s16) sp2C) * 8)) + 0xF1, *(s16 *)(temp_r2_4 + ((u8 *)&gUnk_084EBE0A)) + 0x10, 7U, 0U, 0, (s32) (((u8 *)&gUnk_03005D80) + 0x1C), M2C_FIELD(((u8 *)&gUnk_03005D80), s32 *, 8), M2C_FIELD(((u8 *)&gUnk_03005D80), s32 *, 0));
                sub_080003F0();
                if (sp20 != 0) {
                    if (sub_08058DB0() != 0) {

                    } else if (sub_0800D11C() != 0) {

                    } else if (sub_0800CC98() != 0) {

                    } else if (sub_08056E90() != 0) {

                    } else if (sub_0800D060() != 0) {

                    } else if (sp28->flags & 0x400) {

                    } else if (sp28->state == 0xC) {

                    } else if ((sub_0800CCCC() == 0) && (4 & M2C_FIELD(gUnk_03005CF4, u16 *, 4))) {

                    } else {
                        goto block_77;
                    }
                } else {
block_77:
                    if (sub_0800CD34() != 0) {

                    } else {
                        goto loop_79;
                    }
                }
            }
        }
loop_115:
        if ((s32) (var_r9 >> 0x10) <= 7) {
            if (sp20 == 0) {
                goto block_91;
            }
            if ((sub_08058DB0() == 0) && (sub_0800D11C() == 0) && (sub_0800CC98() == 0) && (sub_08056E90() == 0) && (sub_0800D060() == 0)) {
                if (sp28->flags & 0x400) {

                } else if (sp28->state == 0xC) {

                } else if ((sub_0800CCCC() == 0) && (4 & M2C_FIELD(gUnk_03005CF4, u16 *, 4))) {

                } else {
block_91:
                    if (sub_0800CD34() != 0) {

                    } else {
                        temp_r0_11 = (sp2C << 0x10) + 0x20000;
                        sp2C = temp_r0_11 >> 0x10;
                        if ((s32) ((s32) temp_r0_11 >> 0x10) > 8) {
                            sp2C = 8;
                        }
                        var_r3_3 = 0;
                        var_r5_2 = sp2C << 0x10;
                        sp50 = sp24 + 0x54;
                        var_r9 = var_r5_2;
                        if ((s32) (s16) sp2C <= 7) {
                            do {
                                temp_r5_6 = var_r5_2 >> 0x10;
                                temp_r1_6 = (temp_r5_6 + 0x16) * 2;
                                temp_r2_5 = var_r3_3;
                                temp_r3_2 = temp_r2_5 * 2;
                                *(u16 *)(temp_r1_6 + ((u8 *)&gUnk_030057C0)) = *(u16 *)(temp_r3_2 + ((u8 *)&gUnk_084EBDC8));
                                *(u16 *)(temp_r1_6 + ((u8 *)&gUnk_03005800)) = *(u16 *)(temp_r3_2 + (((u8 *)&gUnk_084EBDC8) + 0x10));
                                *(u16 *)(temp_r1_6 + ((u8 *)&gUnk_03005840)) = *(u16 *)(temp_r3_2 + (((u8 *)&gUnk_084EBDC8) + 0x20));
                                *(u16 *)(temp_r1_6 + (((u8 *)&gUnk_03005840) + 0x40)) = *(u16 *)(temp_r3_2 + (((u8 *)&gUnk_084EBDC8) + 0x30));
                                temp_r5_5 = temp_r5_6 + 1;
                                var_r3_3 = (s16) (u16) (temp_r2_5 + 1);
                                var_r5_2 = temp_r5_5 << 0x10;
                            } while ((s32) temp_r5_5 <= 7);
                        }
                        sub_0801A664(2, 4);
                        temp_r1_7 = M2C_FIELD(sp28, u8 *, 0x78);
                        if ((u32) (u8) (temp_r1_7 - 4) <= 2U) {
                            if ((u32) *sp50 <= 2U) {
                                temp_r0_12 = (var_r9 >> 0xF) + 0x2A;
                                *(u16 *)(temp_r0_12 + ((u8 *)&gUnk_030057C0)) = 0xF037;
                                *(u16 *)(temp_r0_12 + ((u8 *)&gUnk_03005800)) = 0xF057;
                            } else {
                                temp_r0_13 = (var_r9 >> 0xF) + 0x2A;
                                *(u16 *)(temp_r0_13 + ((u8 *)&gUnk_030057C0)) = 0xF038;
                                *(u16 *)(temp_r0_13 + ((u8 *)&gUnk_03005800)) = 0xF058;
                            }
                        } else if ((u32) temp_r1_7 > 6U) {
                            temp_r0_14 = *sp50;
                            if ((u32) temp_r0_14 <= 2U) {
                                temp_r1_8 = (var_r9 >> 0xF) + 0x2A;
                                *(u16 *)(temp_r1_8 + ((u8 *)&gUnk_030057C0)) = 0xF039;
                                *(u16 *)(temp_r1_8 + ((u8 *)&gUnk_03005800)) = 0xF059;
                                var_r1_3 = temp_r1_8 + ((u8 *)&gUnk_03005840);
                                var_r0_3 = 0xF079;
                            } else if ((u32) temp_r0_14 <= 5U) {
                                temp_r1_9 = (var_r9 >> 0xF) + 0x2A;
                                *(u16 *)(temp_r1_9 + ((u8 *)&gUnk_030057C0)) = 0xF03A;
                                *(u16 *)(temp_r1_9 + ((u8 *)&gUnk_03005800)) = 0xF05A;
                                var_r1_3 = temp_r1_9 + ((u8 *)&gUnk_03005840);
                                var_r0_3 = 0xF07A;
                            } else {
                                temp_r1_10 = (var_r9 >> 0xF) + 0x2A;
                                *(u16 *)(temp_r1_10 + ((u8 *)&gUnk_030057C0)) = 0xF03B;
                                *(u16 *)(temp_r1_10 + ((u8 *)&gUnk_03005800)) = 0xF05B;
                                var_r1_3 = temp_r1_10 + ((u8 *)&gUnk_03005840);
                                var_r0_3 = 0xF07B;
                            }
                            *var_r1_3 = var_r0_3;
                        }
                        temp_r1_11 = (u16) ((u16) *sp50 / 3U) * 0x30000;
                        temp_r0_15 = (u32) (temp_r1_11 + 0x30000) >> 0x10;
                        var_r3_4 = temp_r1_11;
                        var_r2_4 = temp_r0_15 << 0x10;
                        if (var_r3_4 < var_r2_4) {
                            do {
                                temp_r4_5 = var_r3_4 >> 0x10;
                                temp_r3_3 = sp24 + 0x56 + (temp_r4_5 * 2);
                                if (*temp_r3_3 != 0) {
                                    temp_r1_12 = (2 - ((var_r2_4 >> 0x10) - (temp_r4_5 + 1))) * 4;
                                    drawItemTaskE63((*(s16 *)(temp_r1_12 + ((u8 *)&gUnk_084EBE08)) + 0xF0) - ((7 - (s16) sp2C) * 8), *(s16 *)(temp_r1_12 + (((u8 *)&gUnk_084EBE08) + 2)) + 0x10, sp24 + ((*temp_r3_3 * 0x10) + 0x140), 0);
                                }
                                var_r3_4 = (temp_r4_5 + 1) << 0x10;
                                var_r2_4 = temp_r0_15 << 0x10;
                            } while (var_r3_4 < var_r2_4);
                        }
                        temp_r2_6 = (2 - ((s16) temp_r0_15 - (*sp50 + 1))) * 4;
                        sub_08007CF0((*(s16 *)(temp_r2_6 + ((u8 *)&gUnk_084EBE08)) + 0xF0) - ((7 - (s16) sp2C) * 8), *(s16 *)(temp_r2_6 + ((u8 *)&gUnk_084EBE0A)) + 0x10, 7U, 0U, 0, (s32) (((u8 *)&gUnk_03005D80) + 0x1C), M2C_FIELD(((u8 *)&gUnk_03005D80), s32 *, 8), M2C_FIELD(((u8 *)&gUnk_03005D80), s32 *, 0));
                        sub_080003F0();
                        goto loop_115;
                    }
                }
            }
        }
        sub_080003F0();
        sub_0801A664(2, 4);
        goto loop_125;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08060E44);
#endif
extern u32 taskMem64[] asm("gUnk_03006180");
extern struct Task tasks64[] asm("gUnk_03006160");
extern void sub_08060E44(s32);
void sub_08061688(s32 index)
{
    u32 *memOut;
    if (index != 0) {
        tasks64[index].u8 = 0x3C;
    } else {
        tasks64[0].u8 = 0x65;
    }
    memOut = &taskMem64[index * 10];
    while ((*memOut = sub_08001494(0x200)) == 0)
        sub_080003F0();
    tasks64[index].uC = sub_08060E44;
    tasks64[index].u10 = tasks64[index].u20 + 0x1FC;
    tasks64[index].u24 = 0;
    sub_08000274(&tasks64[index], index);
}
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_0806171C);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08061830);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08061910);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08061B88);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08061E44);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_080624D8);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_0806335C);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_080634D8);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_080636B0);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08063B80);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08063E30);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_0806441C);
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08064E14);
void sub_0806514C(void) {
    gUnk_03006028 = 0;
}
struct Init66 { s32 f0, f4, f8, fC, f10, f14, f18; u8 data[16]; };
s32 sub_08065158(struct Init66 *obj, u32 resource, s32 index, s32 size, s32 alternate)
{
    void *table = &gUnk_08518938;
    s32 mem;
    s32 first;
    s32 second;
    s32 i;
    if (alternate != 0)
        table = &gUnk_08E3FB54;
    obj->f10 = resource;
    obj->f14 = index;
    obj->f18 = size;
    first = sub_08006EE0(resource, table);
    obj->f8 = first;
    if (first == 0) return 0;
    resource = (resource & 0xFFFF) | 0x60000;
    second = sub_08006EE0(resource, table);
    obj->f0 = second;
    if (second == 0) return 0;
    mem = sub_08006EE0((resource & 0xFFFF) | 0x80000, table);
    obj->fC = mem;
    if (mem == 0) return 0;
    if (size >= 0)
        sub_08000AF0(obj->f14 + 0x10, mem + (obj->f14 << 5), obj->f18);
    i = 0;
    do {
        obj->data[i] = i;
        i++;
    } while ((u32)i <= 15);
    sub_080653B8(obj, 0x120, 0xE0, 8);
    return (s32)obj;
}
void sub_08065204(void *arg0) {
    M2C_FIELD(arg0, s32 *, 0x10) = -1;
    M2C_FIELD(arg0, s32 *, 8) = 0;
    M2C_FIELD(arg0, s32 *, 0) = 0;
    M2C_FIELD(arg0, s32 *, 0xC) = 0;
}
void sub_08065214(void *arg0) {
    s32 temp_r2;

    temp_r2 = M2C_FIELD(arg0, s32 *, 0x14);
    sub_08000AF0(temp_r2 + 0x10, M2C_FIELD(arg0, s32 *, 0xC) + (temp_r2 << 5), M2C_FIELD(arg0, s32 *, 0x18));
}
void sub_08065230(void *arg0, s32 arg1, s32 arg2, u16 arg3, s32 arg4) {
    sub_08007CF0(arg1, arg2, arg3, (u16) arg4, 0, arg0 + 0x1C, M2C_FIELD(arg0, s32 *, 8), M2C_FIELD(arg0, s32 *, 0));
}
extern void sub_08007F0C(s32, s32, u16, u16, s32, void *, s32, s32, s32, s32, s32);
struct Bounce66 { s32 f0, f4, f8; u8 pad[0x20]; u16 value; u16 step; s16 upper; s16 lower; };
void sub_08065264(struct Bounce66 *obj, s32 x, s32 y, u16 a, u16 b)
{
    u16 step = obj->step;
    u32 value = step + obj->value;
    s16 result;
    obj->value = value;
    if ((s32)(step << 16) > 0 && (s16)value > obj->upper)
        obj->step = -step;
    if ((s16)obj->step < 0 && (s16)obj->value < obj->lower)
        obj->step = -obj->step;
    sub_08007F0C(x, y, a, b, 0, (u8 *)obj + 0x1C, obj->f8, obj->f0, (s16)obj->value, (s16)obj->value, 255);
}
void sub_080652E0(struct Bounce66 *obj, s32 x, s32 y, u16 a, u16 b, u16 c)
{
    u16 step = obj->step;
    u32 value = step + obj->value;
    s16 result;
    obj->value = value;
    if ((s32)(step << 16) > 0 && (s16)value > obj->upper)
        obj->step = -step;
    if ((s16)obj->step < 0 && (s16)obj->value < obj->lower)
        obj->step = -obj->step;
    sub_08007F0C(x, y, a, b, (u8)c, (u8 *)obj + 0x1C, obj->f8, obj->f0, (s16)obj->value, (s16)obj->value, 255);
}
s32 sub_08065370(void *arg0, u16 arg1, s32 arg2, s32 arg3, s32 arg4) {
    return sub_08008CC4(arg1, arg2, arg3, M2C_FIELD(arg0, s32 *, 8), arg4);
}
s32 sub_08065394(void *arg0, u16 arg1, s32 arg2, s32 arg3, s32 arg4) {
    return sub_08008D38(arg1, arg2, arg3, M2C_FIELD(arg0, s32 *, 8), arg4);
}
void sub_080653B8(void *arg0, s16 arg1, s16 arg2, s16 arg3)
{
  int new_var;
  new_var = 0x100;
  *((s16 *) (((s8 *) arg0) + 0x2C)) = new_var;
  *((s16 *) (((s8 *) arg0) + 0x30)) = arg1;
  *((s16 *) (((s8 *) arg0) + 0x32)) = arg2;
  *((s16 *) (((s8 *) arg0) + 0x2E)) = arg3;
}
M2C_UNK *sub_080653CC(void) {
    return &gUnk_03005D80;
}
void sub_080653D4(s32 arg0) {
    void *temp_r4;

    temp_r4 = (&((struct Sz40 *)&gUnk_03006110)[arg0]);
    if (sub_08000470(temp_r4) != 0) {
        sub_080003A8((s32) temp_r4);
    }
}
void sub_080653FC(s32 arg0) {
    void *temp_r4;

    temp_r4 = (&((struct Sz40 *)&gUnk_03006160)[arg0]);
    if (sub_08000470(temp_r4) != 0) {
        sub_080003A8((s32) temp_r4);
    }
}
extern u32 gUnk_084EBD4C[];
void sub_08065424(s32 x, s32 y, s32 number, u32 argStyle, u32 argDigits)
{
    u8 buffer[12];
    s32 value;
    s32 style = (u8)argStyle;
    u32 digits = (u8)argDigits;
    u32 *table;
    u8 *out;
    u32 i;
    s32 started;
    u8 *obj;
    if (number < 0) number = 0x7FFFFFFF;
    switch (style) {
    case 0: style = 0; break;
    case 1: style = 1; break;
    case 2: style = 2; break;
    case 3: style = 13; break;
    }
    value = number;
    table = gUnk_084EBD4C + (10 - digits);
    out = buffer;
    i = 0;
    if (i < digits) {
        do {
            *out = sub_08000498(&value, *table++);
            i++;
            out++;
        } while (i < digits);
    }
    started = 0;
    x -= (digits - 1) * 6;
    out = buffer;
    i = 0;
    if (i < digits) {
        obj = (u8 *)&gUnk_03005D80;
        do {
            if (started != 0 || *out != 0 || i == digits - 1) {
                started = 1;
                sub_08007CF0(x, y, style, *out, 0, (s32)(obj + 0x1C), *(u32 *)(obj + 8), *(u32 *)obj);
            }
            i++;
            x += 6;
            out++;
        } while (i < digits);
    }
}
#ifdef NONMATCHING
extern u32 gUnk_084EBD4C[];
extern u32 gUnk_03005740;
extern void sub_0801A664(s32, s32);
void sub_08065504(s32 x, s32 y, s32 number, u8 style, u8 digits)
{
    u8 buffer[12];
    s32 value;
    u32 *table;
    u8 *out;
    u32 i;
    s32 started;
    s32 column;
    if (number < 0) number = 0x7FFFFFFF;
    value = number;
    table = gUnk_084EBD4C + (10 - digits);
    out = buffer;
    i = 0;
    if (i < digits) {
        do {
            *out = sub_08000498(&value, *table++);
            i++;
            out++;
        } while (i < digits);
    }
    started = 0;
    column = (x + 1) - digits;
    out = buffer;
    i = 0;
    if (i < digits) {
        do {
            if (started != 0 || *out != 0 || i == digits - 1) {
                started = 1;
                *(u16 *)(column * 2 + (y << 6) + (u32)&gUnk_03005740) = *(u16 *)((style * 2) + (u32)&gUnk_084EBD74) + *out;
            }
            i++;
            column++;
            out++;
        } while (i < digits);
    }
    sub_0801A664(y, 1);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08065504);
#endif
#ifdef NONMATCHING
extern void textDraw66(s32, s32, s32) asm("sub_0801A3D0");
void sub_080655CC(s32 x, s32 y, u16 *data, s32 align)
{
    s32 text;
    s32 base;
    u16 offset;
    if (data != 0) {
        switch ((u32)*data) {
        case 0: return;
        case 1: return;
        case 2: goto draw;
        case 3: goto draw;
        case 4: goto draw;
        case 5: goto draw;
        default: return;
        }
    draw:
        base = sub_08007290(data[2] | 0x130000);
        offset = 0;
        text = base + gUnk_03003470 * 31;
        if (align < 0)
            offset = -(((u32)sub_0801A638((u8 *)text) * 13) >> 1);
        textDraw66(text, (u16)((s16)offset + x), (u16)y);
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_080655CC);
#endif
struct Task6654 { u32 f0, f4, f8; void (*fC)(); u8 *f10; u32 f14, f18, f1C; u8 *f20; u32 f24; };
extern struct Task6654 task6654 asm("gUnk_03006000");
void sub_08065654(void)
{
    u8 *mem;
    while ((mem = (u8 *)sub_08001494(0x400), task6654.f20 = mem) == 0)
        sub_080003F0();
    task6654.f8 = 0x34;
    task6654.fC = (void (*)())sub_080624D8;
    task6654.f10 = task6654.f20 + 0x3FC;
    task6654.f24 = 0;
    sub_08000274(&task6654);
}
s32 sub_0806569C(void)
{
  M2C_UNK **new_var2;
  M2C_UNK *new_var;
  new_var2 = &new_var;
  new_var = &gUnk_03006000;
  if (sub_08000470(*new_var2) == 0)
  {
    return 0;
  }
  if (new_var2)
  {
    return 1;
  }
  else
  {
    return 1;
  }
}
#ifdef NONMATCHING
void sub_080656B8(s32 owner)
{
    s32 *global = &gUnk_0300602C;
    s32 mem;
    s32 offset;
    u32 i;
    mem = sub_08001494(0x4B4);
    *global = mem;
    *(s32 *)mem = owner;
    i = 0;
    offset = 0;
    do {
        *(s32 *)(*global + 0xC + offset) = 0;
        offset += 0x28;
        i++;
    } while (i <= 29);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_080656B8);
#endif
void sub_080656EC(void)
{
    u8 *base = (u8 *)gUnk_0300602C + 4;
    u32 i = 0;
    u32 result;
    do {
        while ((result = sub_08000470((u32)(base + i * 0x28))) != 0)
            sub_080003A8((u32)(base + i * 0x28));
        i++;
    } while (i <= 29);
    sub_08001538(gUnk_0300602C);
    gUnk_0300602C = result;
}
void sub_08065748(u32 a, u32 b, u32 c)
{
    u32 result;
    u32 i;
    u32 mem;
    u8 *entry = (u8 *)gUnk_0300602C + 4;
    i = 0;
    while (1) {
        if (i > 29) return;
        if (sub_08000470((u32)entry) == 0) {
            result = *(u32 *)(entry + 8);
            if (result == 0) break;
        }
        i++;
        entry += 0x28;
    }
    mem = sub_08001494(0x400);
    *(u32 *)(entry + 0x20) = mem;
    if (mem == 0) return;
    *(u32 *)(entry + 8) = 0x3C;
    *(u32 *)(entry + 0xC) = (u32)sub_080634D8;
    *(u32 *)(entry + 0x10) = mem + 0x3FC;
    *(u32 *)(entry + 0x24) = result;
    sub_08000274(entry, (b << 16) | a, i | (c << 16));
}
extern s32 gUnk_03006030;
void sub_080657C4(u32 a, u32 mode)
{
    u32 i;
    u32 mem;
    u8 *entry = (u8 *)gUnk_03006030;
    i = 0;
    while (1) {
        if (i > 3) return;
        if (sub_08000470((u32)entry) == 0) break;
        i++;
        entry += 0x28;
    }
    while ((mem = sub_08001494(0x400), *(u32 *)(entry + 0x20) = mem) == 0)
        sub_080003F0();
    *(u32 *)(entry + 8) = 0x3C;
    switch (mode) {
    case 0: *(u32 *)(entry + 0xC) = (u32)sub_080636B0; break;
    case 1: *(u32 *)(entry + 0xC) = (u32)sub_08063B80; break;
    }
    *(u32 *)(entry + 0x10) = *(u32 *)(entry + 0x20) + 0x3FC;
    *(u32 *)(entry + 0x24) = 0;
    sub_08000274(entry, a);
}
void sub_08065838(u32 a, u32 b)
{
    u32 result;
    u32 i;
    u32 mem;
    u8 *entry = (u8 *)gUnk_03006208;
    i = 0;
    while (1) {
        if (i > 3) return;
        result = sub_08000470((u32)entry);
        if (result == 0) break;
        i++;
        entry += 0x28;
    }
    mem = sub_08001494(0x400);
    *(u32 *)(entry + 0x20) = mem;
    if (mem == 0) return;
    *(u32 *)(entry + 8) = 0x3C;
    *(u32 *)(entry + 0xC) = (u32)sub_08065BD0;
    *(u32 *)(entry + 0x10) = mem + 0x3FC;
    *(u32 *)(entry + 0x24) = result;
    sub_08000274(entry, a, b);
}
void sub_080658A0(void)
{
    u32 i;
    gUnk_03006208 = sub_08001494(0xA0);
    for (i = 0; i < 4; i++)
        M2C_FIELD((u8 *)gUnk_03006208 + i * 0x28, s32 *, 8) = 0;
}
void sub_080658CC(void)
{
    s32 base = gUnk_03006208;
    u32 i = 0;
    u32 result;
    do {
        while ((result = sub_08000470(i * 0x28 + base)) != 0)
            sub_080003F0();
        i++;
    } while (i <= 3);
    sub_08001538(gUnk_03006208);
    gUnk_03006208 = result;
}
void sub_08065918(u32 a, u32 b)
{
    u8 *mem;
    if (sub_08000470((u32)&gUnk_030061E0) == 0) {
        gUnk_030061E0.f8 = 0x3C;
        while ((mem = (u8 *)sub_08001494(0xC00), gUnk_030061E0.f20 = mem) == 0)
            sub_080003F0();
        gUnk_030061E0.fC = (void (*)())sub_0806441C;
        gUnk_030061E0.f10 = gUnk_030061E0.f20 + 0xBFC;
        gUnk_030061E0.f24 = 0;
        sub_08000274(&gUnk_030061E0, a, b);
    }
}
#ifdef NONMATCHING
u32 sub_08065974(void)
{
    u32 count = sub_08002164();
    u32 i = 0;
    u8 *entry;
    if (i < count) {
        entry = (u8 *)gUnk_03003CE0 + 0x148;
        do {
            if (((u32)(*(u8 *)*(u32 *)entry << 28) >> 28) == 14)
                return 1;
            entry += 0x14C;
            i++;
        } while (i < count);
    }
    return 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08065974);
#endif
