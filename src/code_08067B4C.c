#include "global.h"

extern u32 gUnk_03006338;

extern s32 gUnk_03005CF4;
#ifdef NONMATCHING

#endif

void sub_08067B4C(void) {

}
u32 sub_08067B50(void)
{
    u8 *entry;
    u8 *source;
    u32 *count = &gUnk_03006338;
    if (*count > 0x31) return 0;
    entry = (u8 *)gUnk_03006300 + *count * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x82;
    source = (u8 *)gUnk_030034E0;
    *(u32 *)(entry + 8) = *(u16 *)(source + 0xA) | ((u32)*(u16 *)(source + 0xC) << 16);
    entry[1] = 1;
    (*count)++;
    return 1;
}
u32 sub_08067B9C(u32 arg0, u32 arg1, void *source)
{
    u32 count = gUnk_03006338;
    u8 *entry;

    if (count > 0x31)
        return 0;
    if (source != NULL) {
    entry = (u8 *)gUnk_03006300 + count * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x97;
    *(u32 *)(entry + 8) = arg0;
    *(u32 *)(entry + 0xC) = arg1;
    CpuSet(source, entry + 0x10, 0x04000004);
    entry[1] = 3;
    gUnk_03006338++;
    return 1;
    }
}
void sub_08067BF8(void) {
    sub_08065E38(0x37564);
}
s32 sub_08067C08(void) {
    return sub_080682B8(0x37564);
}
s32 sub_08067C18(void) {
    return sub_08068330(0x37564);
}
u32 sub_08067C28(const u32 *arg0)
{
    u8 *entry;
    u32 *n = (u32 *)0x03006338;
    if (*n > 0x31)
        return 0;
    entry =  *(u8 **)0x03006300 + *n * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x87;
    *(u32 *)(entry + 8) = *arg0;
    entry[1] = 1;
    (*n)++;
    return 1;
}
s32 sub_08067C68(s32 arg0)
{
    u8 *p;
    if (gUnk_03006338 > 0x31) return 0;
    p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x88;
    *(u32 *)(p + 4) = 1; *p = 0x88; *(u32 *)(p + 8) = arg0; p[1] = 1;
    gUnk_03006338++; return 1;
}
s32 sub_08067CA8(s32 arg0)
{
    u8 *p;
    if (gUnk_03006338 > 0x31) return 0;
    p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x88;
    *(u32 *)(p + 4) = 1; *p = 0x89; *(u32 *)(p + 8) = arg0; p[1] = 1;
    gUnk_03006338++; return 1;
}
u32 sub_08067CE8(void *arg0)
{
    u8 *entry;
    u32 *n = (u32 *)0x03006338;
    if (*n > 0x31)
        return 0;
    entry =  *(u8 **)0x03006300 + *n * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0xB0;
    *(void **)(entry + 8) = arg0;
    entry[1] = 1;
    (*n)++;
    return 1;
}
u32 sub_08067D28(const void *source)
{
    u8 *entry;
    u32 *count = (u32 *)0x03006338;
    if (*count <= 0x31) {
        entry = *(u8 **)0x03006300 + *count * 0x88;
        *(u32 *)(entry + 4) = 1;
        entry[0] = 0x8B;
        CpuSet(source, entry + 8, 0x04000002);
        entry[1] = 1;
        (*count)++;
        return 1;
    }
    return 0;
}
u32 sub_08067D74(void)
{
    u32 index = gUnk_03006338;
    u8 *entry;
    if (index > 0x31)
        return 0;
    entry = (u8 *)gUnk_03006300 + index * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x8C;
    *(u32 *)(entry + 8) = gUnk_03003CE0[sub_080020F4()].flags;
    entry[1] = 1;
    gUnk_03006338++;
    return 1;
}
s32 sub_08067DC8(void)
{
    u8 *p;
    if (gUnk_03006338 > 0x31) return 0;
    p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x88;
    *(u32 *)(p + 4) = 1; *p = 0x8D;
    *(u32 *)(p + 8) = *(u32 *)((u8 *)(uintptr_t)gUnk_03005CF4 + 0x40); p[1] = 1;
    gUnk_03006338++; return 1;
}
 s32 sub_08067E08(void)
{
    u8 *p;
    if (gUnk_03006338 > 0x31) return 0;
    p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x88;
    *(u32 *)(p + 4) = 1; *p = 0x90;
    *(u32 *)(p + 8) = *(u32 *)((u8 *)(uintptr_t)gUnk_03005CF4 + 0x3C); p[1] = 1;
    gUnk_03006338++; return 1;
}
s32 sub_08067E48(void)
{
    return M2C_FIELD(gUnk_03006300, u32 *, 4) == 2;
}
/* Remove the queued link message with tag 0x91 whose u16 at +0xE equals `arg` (shift the queue down). */
s32 sub_08067E60(u32 arg)
{
    u8 *p;
    u32 i;

    p = (u8 *)(uintptr_t)gUnk_03006300;
    for (i = 0; i < (u32)gUnk_03006338; i++, p += 0x88) {
        if (*(u32 *)(p + 4) == 1 && p[0] == 0x91 && *(u16 *)(p + 0xE) == arg) {
            CpuSet(p + 0x88, p, (((0x31 - i) * 0x22) & 0x1FFFFF) | 0x04000000);
            gUnk_03006338--;
        }
    }
}
s32 sub_08067EC8(void)
{
    u8 *p;
    u32 z;
    if (gUnk_03006338 > 0x31)
        return 0;
    p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x88;
    *(u32 *)(p + 4) = 1;
    z = 0;
    *p = 0x93;
    *(u32 *)(p + 8) = z;
    p[1] = 2;
    gUnk_03006338++;
    return 1;
}
#ifdef NONMATCHING
static s32 sub_08067Fxx(s32 a, s32 b, s32 c, u8 type)
{ u8 *p; if (gUnk_03006338 > 0x31) return 0; p=(u8 *)(uintptr_t)gUnk_03006300+gUnk_03006338*0x88; *(u32 *)(p+4)=1; *p=type; *(u32 *)(p+8)=(b<<16)|a; *(u32 *)(p+0xc)=c; p[1]=1; gUnk_03006338++; return 1; }
#endif
s32 sub_08067F04(s32 a, s32 b, s32 c)
{
    u8 *entry;
    if (gUnk_03006338 > 0x31) return 0;
    entry = (u8 *)gUnk_03006300 + gUnk_03006338 * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x9C;
    *(u32 *)(entry + 8) = (b << 16) | a;
    *(u32 *)(entry + 0xC) = c;
    entry[1] = 1;
    gUnk_03006338++;
    return 1;
}
s32 sub_08067F4C(s32 a, s32 b, s32 c)
{
    u8 *entry;
    if (gUnk_03006338 > 0x31) return 0;
    entry = (u8 *)gUnk_03006300 + gUnk_03006338 * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x9D;
    *(u32 *)(entry + 8) = (a << 16) | b;
    *(u32 *)(entry + 0xC) = c;
    entry[1] = 1;
    gUnk_03006338++;
    return 1;
}
u32 sub_08067F94(u32 a, u32 b, u32 c)
{
    u8 *entry;
    u32 *count = &gUnk_03006338;
    if (*count > 0x31)
        return 0;
    entry = (u8 *)gUnk_03006300 + *count * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x9E;
    *(u32 *)(entry + 8) = (c << 16) | (b << 8) | a;
    entry[1] = 1;
    (*count)++;
    return 1;
}
u32 sub_08067FE0(u16 value, u16 handle)
{
    u32 index = gUnk_03006338;
    u8 *entry;
    if (index > 0x31)
        return 0;
    if (handle == 0)
        return 1;
    entry = (u8 *)gUnk_03006300 + index * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0xA0;
    *(u32 *)(entry + 8) = handle | ((u32)value << 16);
    entry[1] = 1;
    gUnk_03006338++;
    return 1;
}
u32 sub_08068030(u32 value)
{
    u32 *count = (u32 *)0x03006338;
    u8 *entry;
    if (*count > 0x31) return 0;
    entry = *(u8 **)0x03006300 + *count * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0xA1;
    *(u32 *)(entry + 8) = value;
    entry[1] = 1;
    (*count)++;
    return 1;
}
u32 sub_08068070(u32 a, u32 b) { u32 *n=(u32 *)0x03006338; u8 *e; if(*n>0x31)return 0; e=*(u8 **)0x03006300+*n*0x88; *(u32 *)(e+4)=1;e[0]=0xA3;*(u32 *)(e+8)=a;*(u32 *)(e+0xC)=b;e[1]=1;(*n)++;return 1; }
u32 sub_080680B4(u32 a, u32 b) { u32 *n=(u32 *)0x03006338; u8 *e; if(*n>0x31)return 0; e=*(u8 **)0x03006300+*n*0x88; *(u32 *)(e+4)=1;e[0]=0xA2;*(u32 *)(e+8)=a;*(u32 *)(e+0xC)=b;e[1]=1;(*n)++;return 1; }
u32 sub_080680F8(u32 value)
{
    u8 *entry;
    u32 *count = (u32 *)0x03006338;
    if (*count <= 0x31 && sub_0800CFF0() == 0) {
        entry = *(u8 **)0x03006300 + *count * 0x88;
        sub_0800CFC8();
        *(u32 *)(entry + 4) = 1;
        entry[0] = 0xA5;
        *(u32 *)(entry + 8) = value;
        entry[1] = 1;
        (*count)++;
        return 1;
    }
    return 0;
}
u32 sub_08068144(u32 value)
{
    u8 *entry;
    u32 *count = (u32 *)0x03006338;
    if (*count <= 0x31 && sub_0800CFF0() == 0) {
        entry = *(u8 **)0x03006300 + *count * 0x88;
        *(u32 *)(entry + 4) = 1;
        entry[0] = 0xA7;
        *(u32 *)(entry + 8) = value;
        entry[1] = 1;
        (*count)++;
        return 1;
    }
    return 0;
}
s32 sub_0806818C(u32 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4)
{
    u8 *entry;
    u32 *count = (u32 *)0x03006338;
    if (*count <= 0x31 && sub_0800CFF0() == 0) {
        entry = *(u8 **)0x03006300 + *count * 0x88;
        *(u32 *)(entry + 4) = 1;
        entry[0] = 0xA8;
        *(u32 *)(entry + 8) = (arg1 << 16) | arg0;
        *(u32 *)(entry + 0xC) = arg2;
        *(u32 *)(entry + 0x10) = arg3;
        *(u32 *)(entry + 0x14) = arg4;
        entry[1] = 2;
        (*count)++;
        return 1;
    }
    return 0;
}
u32 sub_080681F4(u32 callback)
{
    u8 *entry;
    u32 *count = (u32 *)0x03006338;
    if (*count <= 0x31 && sub_0800CFF0() == 0) {
        entry = *(u8 **)0x03006300 + *count * 0x88;
        *(u32 *)(entry + 4) = 1;
        entry[0] = 0xA9;
        *(u32 *)(entry + 8) = callback;
        entry[1] = 1;
        (*count)++;
        return 1;
    }
    return 0;
}
/* Enqueue message 0xAA (lobby/setting block) unless sub_0800CFF0() says no. */
u32 sub_0806823C(u32 a, s32 b, u32 c, u32 d, u32 e)
{
    u8 *p;
    if (gUnk_03006338 < 0x32 && sub_0800CFF0() == 0) {
        p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x88;
        *(u32 *)(p + 4) = 1;
        *p = 0xAA;
        *(u32 *)(p + 8) = (b << 16) | a;
        *(u32 *)(p + 0xC) = c;
        *(u32 *)(p + 0x10) = d;
        *(u32 *)(p + 0x14) = e;
        p[1] = 2;
        gUnk_03006338++;
        return 1;
    }
    return 0;
}
u32 sub_080682A4(void)
{
    if (gUnk_03006338 > 0x31)
        return 1;
    return 0;
}
s32 sub_080682B8(s32 callback)
{
    extern u32 counts[] asm("gUnk_03006210");
    extern s32 entries[][10] asm("gUnk_03006260");
    u32 count = sub_08002164();
    u32 found = 0;
    u32 i;
    u32 j;
    for (i = 0; i < count; i++) {
        for (j = 0; j <= counts[i]; j++) {
            if (entries[i][j] == callback) {
                found++;
                break;
            }
        }
    }
    return count == found;
}
s32 sub_08068330(s32 callback)
{
    extern u32 states[] asm("gUnk_03006210");
    u32 player;
    u8 *entry;
    u32 *count = &gUnk_03006338;
    if (*count > 0x31)
        return 0;
    player = sub_080020F4();
    if (states[player] > 9)
        return 0;
    entry = (u8 *)gUnk_03006300 + *count * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x84;
    *(u32 *)(entry + 8) = callback;
    entry[1] = 1;
    (*count)++;
    return 1;
}
void sub_08068384(void)
{
    extern u32 records[][10] asm("gUnk_03006260");
    extern u32 states[] asm("gUnk_03006210");
    u32 i;
    u32 count = sub_08002164();
    for (i = 0; i < count; i++) {
        u32 j;
        for (j = 0; j < 10; j++) {
            records[i][j] = (u32)-1;
            states[i] = 0;
        }
    }
}
void sub_080683CC(void) {
    sub_08065F08(0x37564);
}
s32 sub_080683DC(s32 callback)
{
    extern u32 counts[] asm("gUnk_03006210");
    extern s32 entries[][10] asm("gUnk_03006260");
    u32 count = sub_08002164();
    u32 found = 0;
    u32 i;
    u32 j;
    for (i = 0; i < count; i++) {
        for (j = 0; j <= counts[i]; j++) {
            if (entries[i][j] == callback) {
                found++;
                break;
            }
        }
    }
    return found;
}
u32 sub_08068450(u8 value) { u32 *n=(u32 *)0x03006338; u8 *e; if(*n>0x31)return 0; e=*(u8 **)0x03006300+*n*0x88; *(u32 *)(e+4)=1;e[0]=0xAC;*(u32 *)(e+8)=value;e[1]=1;(*n)++;return 1; }
u8 sub_08068490(void) {
    return gUnk_0300636C;
}
u32 sub_0806849C(u32 a)
{
    gUnk_0300636C = 0xFF;
    return a;
}
u32 sub_080684A8(u8 value) { u32 *n=(u32 *)0x03006338; u8 *e; if(*n>0x31)return 0; e=*(u8 **)0x03006300+*n*0x88; *(u32 *)(e+4)=1;e[0]=0xAD;*(u32 *)(e+8)=value;e[1]=1;(*n)++;return 1; }
u8 sub_080684E8(void) {
    return gUnk_03006224;
}
unsigned int sub_080684F4(void)
{
  gUnk_03006224 = 0xFF;
}
u32 sub_08068500(u8 value) { u32 *n=(u32 *)0x03006338; u8 *e; if(*n>0x31)return 0; e=*(u8 **)0x03006300+*n*0x88; *(u32 *)(e+4)=1;e[0]=0xAE;*(u32 *)(e+8)=value;e[1]=1;(*n)++;return 1; }
u8 sub_08068540(void) {
    return gUnk_03006228;
}
int sub_0806854C(void)
{
  gUnk_03006228 = 0xFF;
}
s32 sub_08068558(void)
{
    u8 *p;
    if (gUnk_03006338 > 0x31)
        return 0;
    p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x88;
    *(u32 *)(p + 4) = 1;
    *p = 0xAF;
    *(u32 *)(p + 8) = 1;
    p[1] = 1;
    gUnk_03006338++;
    return 1;
}
void sub_08068590(void)
{
    u8 *records;
    u32 i;

    gUnk_03006338--;
    if ((s32)gUnk_03006338 < 0)
        gUnk_03006338 = 0;
    records = (u8 *)gUnk_03006300;
    for (i = 0; i < gUnk_03006338; i++)
        memcpy(records + i * 0x88, records + (i + 1) * 0x88, 0x88);
    *(u32 *)(records + i * 0x88 + 4) = 0;
}
u32 sub_080685F0(u32 n)
{
    u32 rem = n & 7;
    if (rem != 0)
        n += 8 - rem;
    return n >> 3;
}
void sub_08068600(void)
{
    extern u8 taskA[] asm("gUnk_03006310");
    extern u8 taskB[] asm("gUnk_03006230");
    u32 i;

    if (sub_08000470((u32)taskA) != 0)
        sub_080003A8((u32)taskA);
    if (sub_08000470((u32)taskB) != 0)
        sub_080003A8((u32)taskB);
    if (sub_08000470(gUnk_03006368) != 0)
        sub_080003A8(gUnk_03006368);

    for (i = 0; i < 4; i++) {
        if (sub_08000470(gUnk_03006258 + i * 0x28) != 0)
            sub_080003A8(gUnk_03006258 + i * 0x28);
    }
}
