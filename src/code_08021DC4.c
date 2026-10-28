#include "global.h"

extern u32 gUnk_03005CFC;
extern u32 gUnk_03005D00;
extern s32 gUnk_03005CF0;
void sub_08025890(void);
void sub_080263B4(void);
void sub_080226A4(void);
void sub_08021960(void);
void sub_08021AD8(void);
void sub_08021214(void);

extern void sub_08026858(void);

void sub_08021DC4(s32 arg0) {
    s32 *temp_r4;
    u32 var_r5;
    void *temp_r0;
    register volatile u32 *flags asm("r2");
    u32 one;
    register u32 firstMask asm("r1");
    var_r5 = 0;
    flags = (volatile u32 *)&gUnk_03005CE4;
    asm volatile("movs %0, #1" : "=r"(firstMask));
    if (*flags & firstMask) {
        one = 1;
        do {
            var_r5 += 1;
            if (var_r5 > 0x1FU) break;
        } while (*flags & (one << var_r5));
    }
    if (var_r5 <= 0x1FU) {
        temp_r4 = gUnk_03005CE0 + (var_r5 * 0x28);
        M2C_FIELD(temp_r4, M2C_UNK **, 0xC) = &sub_08020E08;
        temp_r0 = sub_08001494(0x400U);
        M2C_FIELD(temp_r4, void **, 0x20) = temp_r0;
        if (temp_r0 != NULL) {
            M2C_FIELD(temp_r4, void **, 0x10) = (void *)(temp_r0 + 0x3FC);
            M2C_FIELD(temp_r4, s32 *, 8) = 0x46;
            M2C_FIELD(temp_r4, s32 *, 0x24) = 0;
            sub_08000274_(temp_r4, arg0, var_r5);
            gUnk_03005CE4 |= 1 << var_r5;
        }
    }
}
void sub_08021E44(s32 arg0, s32 arg1) {
    s32 *temp_r4;
    u32 var_r5;
    void *temp_r0;
    register volatile u32 *flags asm("r2");
    u32 one;
    register u32 firstMask asm("r1");
    var_r5 = 0;
    flags = (volatile u32 *)&gUnk_03005CE4;
    asm volatile("movs %0, #1" : "=r"(firstMask));
    if (*flags & firstMask) {
        one = 1;
        do {
            var_r5 += 1;
            if (var_r5 > 0x1FU) break;
        } while (*flags & (one << var_r5));
    }
    if (var_r5 <= 0x1FU) {
        temp_r4 = gUnk_03005CE0 + (var_r5 * 0x28);
        M2C_FIELD(temp_r4, M2C_UNK **, 0xC) = &sub_080210A8;
        temp_r0 = sub_08001494(0x400U);
        M2C_FIELD(temp_r4, void **, 0x20) = temp_r0;
        if (temp_r0 != NULL) {
            M2C_FIELD(temp_r4, void **, 0x10) = (void *)(temp_r0 + 0x3FC);
            M2C_FIELD(temp_r4, s32 *, 8) = 0x46;
            M2C_FIELD(temp_r4, s32 *, 0x24) = 0;
            sub_08000274_(temp_r4, (var_r5 << 0x10) | arg0, arg1);
            gUnk_03005CE4 |= 1 << var_r5;
        }
    }
}
void sub_08021EC8(u32 arg0, u32 arg1, s32 arg2) {
    s32 *temp_r4;
    u32 var_r5;
    void *temp_r0;
    register volatile u32 *flags asm("r2");
    u32 one;
    register u32 firstMask asm("r1");
    var_r5 = 0;
    flags = (volatile u32 *)&gUnk_03005CE4;
    asm volatile("movs %0, #1" : "=r"(firstMask));
    if (*flags & firstMask) {
        one = 1;
        do {
            var_r5 += 1;
            if (var_r5 > 0x1FU) break;
        } while (*flags & (one << var_r5));
    }
    if (var_r5 <= 0x1FU) {
        temp_r4 = gUnk_03005CE0 + (var_r5 * 0x28);
        arg0 >>= 8;
        arg1 >>= 8;
        arg0 |= arg1 << 0x10;
        M2C_FIELD(temp_r4, M2C_UNK **, 0xC) = &sub_08021214;
        temp_r0 = sub_08001494(0x400U);
        M2C_FIELD(temp_r4, void **, 0x20) = temp_r0;
        if (temp_r0 != NULL) {
            M2C_FIELD(temp_r4, void **, 0x10) = (void *)(temp_r0 + 0x3FC);
            M2C_FIELD(temp_r4, s32 *, 8) = 0x46;
            M2C_FIELD(temp_r4, s32 *, 0x24) = 0;
            sub_08000274_(temp_r4, arg0, (var_r5 << 0x10) | arg2);
            gUnk_03005CE4 |= 1 << var_r5;
        }
    }
}
void sub_08021F58(s32 arg0, s32 arg1) {
    s32 *temp_r4;
    u32 var_r5;
    void *temp_r0;
    register volatile u32 *flags asm("r2");
    u32 one;
    register u32 firstMask asm("r1");
    var_r5 = 0;
    flags = (volatile u32 *)&gUnk_03005CE4;
    asm volatile("movs %0, #1" : "=r"(firstMask));
    if (*flags & firstMask) {
        one = 1;
        do {
            var_r5 += 1;
            if (var_r5 > 0x1FU) break;
        } while (*flags & (one << var_r5));
    }
    if (var_r5 <= 0x1FU) {
        temp_r4 = gUnk_03005CE0 + (var_r5 * 0x28);
        M2C_FIELD(temp_r4, M2C_UNK **, 0xC) = &sub_080215E4;
        temp_r0 = sub_08001494(0x400U);
        M2C_FIELD(temp_r4, void **, 0x20) = temp_r0;
        if (temp_r0 != NULL) {
            M2C_FIELD(temp_r4, void **, 0x10) = (void *)(temp_r0 + 0x3FC);
            M2C_FIELD(temp_r4, s32 *, 8) = 0x46;
            M2C_FIELD(temp_r4, s32 *, 0x24) = 0;
            sub_08000274_(temp_r4, (arg0 >> 8) | ((arg1 >> 8) << 0x10), var_r5);
            gUnk_03005CE4 |= 1 << var_r5;
        }
    }
}
s32 sub_08021FE0(s32 *arg0, s32 *arg1, u16 *arg2, u16 *arg3) {
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
void sub_08022028(u8 *arg0, u8 *arg1, u16 arg2) {
    ArcTan2((s16)((*(s32 *)(arg1 + 0x8C) - *(s32 *)(arg0 + 0)) << 8 >> 16),
            (s16)((*(s32 *)(arg1 + 0x90) - *(s32 *)(arg0 + 4)) << 8 >> 16));
    *(u16 *)(arg1 + 0xCC) = 0;
    *(u16 *)(arg1 + 0xD0) = 0;
    *(u16 *)(arg1 + 0xCE) = 0;
    *(u16 *)(arg1 + 0x88) += arg2;
    *(u16 *)(arg1 + 0x20) = 0xA;
}
void sub_08022078(s32 arg0, s32 arg1) {
    s32 *temp_r4;
    u32 var_r5;
    void *temp_r0;
    register volatile u32 *flags asm("r2");
    u32 one;
    register u32 firstMask asm("r1");
    var_r5 = 0;
    flags = (volatile u32 *)&gUnk_03005CE4;
    asm volatile("movs %0, #1" : "=r"(firstMask));
    if (*flags & firstMask) {
        one = 1;
        do {
            var_r5 += 1;
            if (var_r5 > 0x1FU) break;
        } while (*flags & (one << var_r5));
    }
    if (var_r5 <= 0x1FU) {
        temp_r4 = gUnk_03005CE0 + (var_r5 * 0x28);
        M2C_FIELD(temp_r4, M2C_UNK **, 0xC) = &sub_08020F74;
        temp_r0 = sub_08001494(0x400U);
        M2C_FIELD(temp_r4, void **, 0x20) = temp_r0;
        if (temp_r0 != NULL) {
            M2C_FIELD(temp_r4, void **, 0x10) = (void *)(temp_r0 + 0x3FC);
            M2C_FIELD(temp_r4, s32 *, 8) = 0x46;
            M2C_FIELD(temp_r4, s32 *, 0x24) = 0;
            sub_08000274_(temp_r4, (arg0 >> 8) | ((arg1 >> 8) << 0x10), var_r5);
            gUnk_03005CE4 |= 1 << var_r5;
        }
    }
}
void sub_08022100(s32 arg0) {
    s32 *temp_r4;
    u32 var_r5;
    void *temp_r0;
    register volatile u32 *flags asm("r2");
    u32 one;
    register u32 firstMask asm("r1");
    var_r5 = 0;
    flags = (volatile u32 *)&gUnk_03005CE4;
    asm volatile("movs %0, #1" : "=r"(firstMask));
    if (*flags & firstMask) {
        one = 1;
        do {
            var_r5 += 1;
            if (var_r5 > 0x1FU) break;
        } while (*flags & (one << var_r5));
    }
    if (var_r5 <= 0x1FU) {
        temp_r4 = gUnk_03005CE0 + (var_r5 * 0x28);
        M2C_FIELD(temp_r4, M2C_UNK **, 0xC) = &sub_0802133C;
        temp_r0 = sub_08001494(0x400U);
        M2C_FIELD(temp_r4, void **, 0x20) = temp_r0;
        if (temp_r0 != NULL) {
            M2C_FIELD(temp_r4, void **, 0x10) = (void *)(temp_r0 + 0x3FC);
            M2C_FIELD(temp_r4, s32 *, 8) = 0x46;
            M2C_FIELD(temp_r4, s32 *, 0x24) = 0;
            sub_08000274_(temp_r4, arg0, var_r5);
            gUnk_03005CE4 |= 1 << var_r5;
        }
    }
}
void sub_08022180(s32 arg0) {
    s32 *temp_r4;
    u32 var_r5;
    void *temp_r0;
    register volatile u32 *flags asm("r2");
    u32 one;
    register u32 firstMask asm("r1");
    var_r5 = 0;
    flags = (volatile u32 *)&gUnk_03005CE4;
    asm volatile("movs %0, #1" : "=r"(firstMask));
    if (*flags & firstMask) {
        one = 1;
        do {
            var_r5 += 1;
            if (var_r5 > 0x1FU) break;
        } while (*flags & (one << var_r5));
    }
    if (var_r5 <= 0x1FU) {
        temp_r4 = gUnk_03005CE0 + (var_r5 * 0x28);
        M2C_FIELD(temp_r4, M2C_UNK **, 0xC) = &sub_08021490;
        temp_r0 = sub_08001494(0x400U);
        M2C_FIELD(temp_r4, void **, 0x20) = temp_r0;
        if (temp_r0 != NULL) {
            M2C_FIELD(temp_r4, void **, 0x10) = (void *)(temp_r0 + 0x3FC);
            M2C_FIELD(temp_r4, s32 *, 8) = 0x46;
            M2C_FIELD(temp_r4, s32 *, 0x24) = 0;
            sub_08000274_(temp_r4, arg0, var_r5);
            gUnk_03005CE4 |= 1 << var_r5;
        }
    }
}
void sub_08022200(s32 arg0, s32 arg1) {
    s32 *temp_r4;
    u32 var_r5;
    void *temp_r0;
    register volatile u32 *flags asm("r2");
    u32 one;
    register u32 firstMask asm("r1");
    var_r5 = 0;
    flags = (volatile u32 *)&gUnk_03005CE4;
    asm volatile("movs %0, #1" : "=r"(firstMask));
    if (*flags & firstMask) {
        one = 1;
        do {
            var_r5 += 1;
            if (var_r5 > 0x1FU) break;
        } while (*flags & (one << var_r5));
    }
    if (var_r5 <= 0x1FU) {
        temp_r4 = gUnk_03005CE0 + (var_r5 * 0x28);
        M2C_FIELD(temp_r4, M2C_UNK **, 0xC) = &sub_080217D8;
        temp_r0 = sub_08001494(0x400U);
        M2C_FIELD(temp_r4, void **, 0x20) = temp_r0;
        if (temp_r0 != NULL) {
            M2C_FIELD(temp_r4, void **, 0x10) = (void *)(temp_r0 + 0x3FC);
            M2C_FIELD(temp_r4, s32 *, 8) = 0x46;
            M2C_FIELD(temp_r4, s32 *, 0x24) = 0;
            sub_08000274_(temp_r4, (arg1 << 0x10) | arg0, var_r5);
            gUnk_03005CE4 |= 1 << var_r5;
        }
    }
}
void sub_08022284(s32 arg0, s32 arg1) {
    s32 *temp_r4;
    u32 var_r5;
    void *temp_r0;
    register volatile u32 *flags asm("r2");
    u32 one;
    register u32 firstMask asm("r1");
    if (arg1 != 0) {
        var_r5 = 0;
        flags = (volatile u32 *)&gUnk_03005CE4;
        asm volatile("movs %0, #1" : "=r"(firstMask));
        if (*flags & firstMask) {
            one = 1;
            do {
                var_r5 += 1;
                if (var_r5 > 0x1FU) break;
            } while (*flags & (one << var_r5));
        }
        if (var_r5 <= 0x1FU) {
            temp_r4 = gUnk_03005CE0 + (var_r5 * 0x28);
            M2C_FIELD(temp_r4, M2C_UNK **, 0xC) = &sub_08021960;
            temp_r0 = sub_08001494(0x400U);
            M2C_FIELD(temp_r4, void **, 0x20) = temp_r0;
            if (temp_r0 != NULL) {
                M2C_FIELD(temp_r4, void **, 0x10) = (void *)(temp_r0 + 0x3FC);
                M2C_FIELD(temp_r4, s32 *, 8) = 0x46;
                M2C_FIELD(temp_r4, s32 *, 0x24) = 0;
                sub_08000274_(temp_r4, (arg1 << 0x10) | arg0, var_r5);
                gUnk_03005CE4 |= 1 << var_r5;
            }
        }
    }
}
void sub_0802230C(u32 arg0, u32 arg1, s32 arg2) {
    s32 *temp_r4;
    register u32 var_r5 asm("r5");
    u32 packed;
    void *temp_r0;
    register u32 val0 asm("r4");
    register u32 val1 asm("ip");
    u32 val2;
    register volatile u32 *flags asm("r2");
    u32 one;
    register u32 firstMask asm("r1");
    asm volatile("movs %0, r0\n\tmov %1, r1\n\tmovs %2, r2" : "=r"(val0), "=r"(val1), "=r"(val2));
    var_r5 = 0;
    flags = (volatile u32 *)&gUnk_03005CE4;
    asm volatile("movs %0, #1" : "=r"(firstMask));
    if (*flags & firstMask) {
        one = 1;
        do {
            var_r5 += 1;
            if (var_r5 > 0x1FU) break;
        } while (*flags & (one << var_r5));
    }
    if (var_r5 <= 0x1FU) {
        packed = (val0 >> 8) | ((val1 >> 8) << 0x10);
        if (val2 != 0) val2 = 1;
        temp_r4 = gUnk_03005CE0 + (var_r5 * 0x28);
        M2C_FIELD(temp_r4, M2C_UNK **, 0xC) = &sub_08021AD8;
        temp_r0 = sub_08001494(0x400U);
        M2C_FIELD(temp_r4, void **, 0x20) = temp_r0;
        if (temp_r0 != NULL) {
            M2C_FIELD(temp_r4, void **, 0x10) = (void *)(temp_r0 + 0x3FC);
            M2C_FIELD(temp_r4, s32 *, 8) = 0x46;
            M2C_FIELD(temp_r4, s32 *, 0x24) = 0;
            sub_08000274_(temp_r4, packed, (val2 << 0x10) | var_r5);
            gUnk_03005CE4 |= 1 << var_r5;
        }
    }
}
u32 sub_080223A4(s16 a, s16 b) {
    s16 q = (a + 10) * 125 / (a + b + 20);
    u16 r = (u16)sub_080008C8() % 100;
    if (q >= r) {
        return 1;
    }
    return 0;
}
void sub_080223F4(s32 arg0, s32 arg1) {
    s32 *temp_r4;
    u32 var_r5;
    void *temp_r0;
    register volatile u32 *flags asm("r2");
    u32 one;
    register u32 firstMask asm("r1");
    var_r5 = 0;
    flags = (volatile u32 *)&gUnk_03005CE4;
    asm volatile("movs %0, #1" : "=r"(firstMask));
    if (*flags & firstMask) {
        one = 1;
        do {
            var_r5 += 1;
            if (var_r5 > 0x1FU) break;
        } while (*flags & (one << var_r5));
    }
    if (var_r5 <= 0x1FU) {
        temp_r4 = gUnk_03005CE0 + (var_r5 * 0x28);
        M2C_FIELD(temp_r4, M2C_UNK **, 0xC) = &sub_0802258C;
        temp_r0 = sub_08001494(0x400U);
        M2C_FIELD(temp_r4, void **, 0x20) = temp_r0;
        if (temp_r0 != NULL) {
            M2C_FIELD(temp_r4, void **, 0x10) = (void *)(temp_r0 + 0x3FC);
            M2C_FIELD(temp_r4, s32 *, 8) = 0x46;
            M2C_FIELD(temp_r4, s32 *, 0x24) = 0;
            sub_08000274_(temp_r4, (arg0 >> 8) | ((arg1 >> 8) << 0x10), var_r5);
            gUnk_03005CE4 |= 1 << var_r5;
        }
    }
}
void sub_0802247C(s32 arg0, s32 arg1) {
    s32 *temp_r4;
    u32 var_r5;
    void *temp_r0;
    register volatile u32 *flags asm("r2");
    u32 one;
    register u32 firstMask asm("r1");
    var_r5 = 0;
    flags = (volatile u32 *)&gUnk_03005CE4;
    asm volatile("movs %0, #1" : "=r"(firstMask));
    if (*flags & firstMask) {
        one = 1;
        do {
            var_r5 += 1;
            if (var_r5 > 0x1FU) break;
        } while (*flags & (one << var_r5));
    }
    if (var_r5 <= 0x1FU) {
        temp_r4 = gUnk_03005CE0 + (var_r5 * 0x28);
        M2C_FIELD(temp_r4, M2C_UNK **, 0xC) = &sub_08020D40;
        temp_r0 = sub_08001494(0x400U);
        M2C_FIELD(temp_r4, void **, 0x20) = temp_r0;
        if (temp_r0 != NULL) {
            M2C_FIELD(temp_r4, void **, 0x10) = (void *)(temp_r0 + 0x3FC);
            M2C_FIELD(temp_r4, s32 *, 8) = 0x46;
            M2C_FIELD(temp_r4, s32 *, 0x24) = 0;
            sub_08000274_(temp_r4, (arg0 >> 8) | ((arg1 >> 8) << 0x10), var_r5);
            gUnk_03005CE4 |= 1 << var_r5;
        }
    }
}
void sub_08022504(s32 arg0, s32 arg1) {
    s32 *temp_r4;
    u32 var_r5;
    void *temp_r0;
    register volatile u32 *flags asm("r2");
    u32 one;
    register u32 firstMask asm("r1");
    var_r5 = 0;
    flags = (volatile u32 *)&gUnk_03005CE4;
    asm volatile("movs %0, #1" : "=r"(firstMask));
    if (*flags & firstMask) {
        one = 1;
        do {
            var_r5 += 1;
            if (var_r5 > 0x1FU) break;
        } while (*flags & (one << var_r5));
    }
    if (var_r5 <= 0x1FU) {
        temp_r4 = gUnk_03005CE0 + (var_r5 * 0x28);
        M2C_FIELD(temp_r4, M2C_UNK **, 0xC) = &sub_080216BC;
        temp_r0 = sub_08001494(0x400U);
        M2C_FIELD(temp_r4, void **, 0x20) = temp_r0;
        if (temp_r0 != NULL) {
            M2C_FIELD(temp_r4, void **, 0x10) = (void *)(temp_r0 + 0x3FC);
            M2C_FIELD(temp_r4, s32 *, 8) = 0x46;
            M2C_FIELD(temp_r4, s32 *, 0x24) = 0;
            sub_08000274_(temp_r4, (arg0 >> 8) | ((arg1 >> 8) << 0x10), var_r5);
            gUnk_03005CE4 |= 1 << var_r5;
        }
    }
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_0802258C);
void sub_08022630(void) {
    u8 *p;
    u32 q;
    gUnk_03005CF4 = (s32)sub_08001494(0x1E78);
    p = (u8 *)gUnk_03005CF4;
    *(u32 *)(p + 0x17A0) = (u32)sub_080226A4;
    q = (u32)sub_08001494(0x800);
    p = (u8 *)gUnk_03005CF4;
    *(u32 *)(p + 0x17B4) = q;
    *(u32 *)(p + 0x17A4) = q + 0x7FC;
    *(u32 *)(p + 0x179C) = 0x46;
    *(u32 *)(p + 0x17B8) = 0;
    *(u16 *)(p + 4) = 0;
    *(u32 *)(p + 0x54) = 0;
    sub_08000274(p + 0x1794,
        0x1794);
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080226A4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022E60);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023274);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023684);
#ifdef NONMATCHING
u32 sub_080239E0(u32 group)
{
    u8 *base=*(u8 **)0x03005CF4 + 0x1C8 + (group&0xFF)*5; u32 zero=0,two=0,i;
    for(i=0;i<=4;i++){ if(base[i]==0)zero++; if(base[i]==2)two++; }
    return zero==two;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080239E0);
#endif
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023A3C);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023ED8);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023F98);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_0802413C);
void sub_08024538(s32 arg0) {
    struct Player *p;

    p = &gUnk_03003CE0[sub_080020F4()];
    p->flags = (p->flags & ~0x400) | 1;
    while (sub_08067D74() == 0) {
        (void)sub_08057624(1);
    }
    (void)sub_08057624(0x3C);
    p->flags &= ~3;
    while (sub_08067D74() == 0) {
        (void)sub_08057624(1);
    }
    if (sub_0800CF80() == 0) {
        *((u8 *)p + 0x68) = 1;
    }
    while (sub_0806617C() == 0) {
        (void)sub_08057624(1);
    }
    if (arg0 != 0) {
        p->flags |= 0x1000000;
    } else {
        p->flags |= 0x800000;
    }
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080245CC);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080257D4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08025890);
void sub_08026338(void *arg) {
    s32 *gp;
    s32 off;
    s32 base;
    void *temp_r0;

    gp = &gUnk_03005CF4;
    off = 0x17BC;
    if (sub_08000470(*gp + off) != 0) {
        sub_080003A8(*gp + off);
    }
    *(void **)(*gp + 0x17C8) = sub_08025890;
    temp_r0 = sub_08001494(0x400);
    base = *gp;
    *(void **)(base + 0x17DC) = temp_r0;
    *(void **)(base + 0x17CC) = (void *) (temp_r0 + 0x3FC);
    *(s32 *)(base + 0x17C4) = 0x46;
    *(s32 *)(base + 0x17E0) = 0;
    sub_08000274((M2C_UNK *) (base + off), (s32) arg);
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080263B4);
void sub_080267DC(void) {
    s32 *gp;
    s32 off;
    s32 base;
    void *temp_r0;

    gp = &gUnk_03005CF4;
    off = 0x17BC;
    if (sub_08000470(*gp + off) != 0) {
        sub_080003A8(*gp + off);
    }
    *(void **)(*gp + 0x17C8) = sub_080263B4;
    temp_r0 = sub_08001494(0x400);
    base = *gp;
    *(void **)(base + 0x17DC) = temp_r0;
    *(void **)(base + 0x17CC) = (void *) (temp_r0 + 0x3FC);
    *(s32 *)(base + 0x17C4) = 0x46;
    *(void **)(base + 0x17E0) = sub_0805A6A0;
    sub_08000274((M2C_UNK *) (base + off), (s32) sub_0805A6A0);
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08026858);
void sub_08026C54(void) {
    s32 *new_var2;
    s32 base;
    s32 p;
    int new_var;
    if (sub_08000470(gUnk_03005CF4 + 0x17E4) != 0) {
        sub_080003A8(gUnk_03005CF4 + 0x17E4);
    }
    base = gUnk_03005CF4;
    *((s32 *)(base + 0x17F0)) = (s32)sub_08026858;
    p = (s32)sub_08001494(0x400);
    new_var = 0x1804;
    base = gUnk_03005CF4;
    *((s32 *)(base + new_var)) = p;
    *((s32 *)(base + 0x17F4)) = p + 0x3FC;
    *((s32 *)(base + 0x17EC)) = 0x46;
    *((s32 *)(base + 0x1808)) = 0;
    new_var2 = &base;
    sub_08000274((*new_var2) + 0x17E4, 0);
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08026CD0);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_0802704C);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080277E0);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08027B50);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08027C1C);
struct E8368 { u16 h; u8 a; u8 c; };
struct GS8368 { u8 pad[0x1E4C]; u32 cnt; struct E8368 e[11]; };
extern struct GS8368 *gGS8368 asm("gUnk_03005CF4");
void sub_08028368(u32 a, u32 b, u32 c)
{
    if (gGS8368->cnt > 10)
        return;
    gGS8368->e[gGS8368->cnt].a = a;
    gGS8368->e[gGS8368->cnt].c = c;
    gGS8368->e[gGS8368->cnt].h = b;
    gGS8368->cnt++;
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080283C4);
void sub_08028498(u16 arg0)
{
  u32 *flagp;
  u32 mask;
  u32 flags;
  u32 *tbl;
  u32 off;
  u16 idx;
  idx = arg0 - 4;
  flagp = &gUnk_03005CFC;
  mask = 1 << idx;
  flags = *flagp;
  if (flags & mask)
  {
    tbl = &gUnk_03005D00;
    off = (idx * 3) * 4;
    if ((*((u32 *) ((((u8 *) (&gUnk_03005D00)) + off) + 8))) <= 1)
    {
      *((u32 *) (((u8 *) tbl) + off)) = 0;
      *((u32 *) ((((u8 *) (&gUnk_03005D00)) + off) + 4)) = 0;
      *((u32 *) ((((u8 *) (&gUnk_03005D00)) + off) + 8)) = 0;
      *flagp = flags & (~mask);
    }
    else
    {
      *((u32 *) ((((u8 *) (&gUnk_03005D00)) + off) + 8)) = (*((u32 *) ((((u8 *) (&gUnk_03005D00)) + off) + 8))) - 1;
    }
  }
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080284F4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08028830);
void sub_08028918(void) {
    s32 keep;
    s32 p;
    s32 q;
    u32 i;

    keep = sub_0800048C();
    p = gUnk_03005CF4 + 0xE34;
    i = 0;
    do {
        if (p != keep) {
            if (sub_08000470(p)) {
                sub_080003A8(p);
            }
        }
        i++;
        p += 0x28;
    } while (i <= 0x1D);
    p = gUnk_03005CF4 + 0x12E4;
    i = 0;
    do {
        if (p != keep) {
            if (sub_08000470(p)) {
                sub_080003A8(p);
            }
        }
        i++;
        p += 0x28;
    } while (i <= 0x1D);
    q = gUnk_03005CF4 + 0x7A4;
    i = 0;
    do {
        if (p != keep) {
            if (sub_08000470(q + 0x48)) {
                sub_080003A8(q + 0x48);
            }
        }
        i++;
        q += 0x70;
    } while (i <= 0xE);
    gUnk_03005CF0 = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080289C0);
