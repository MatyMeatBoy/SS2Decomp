#include "global.h"

void sub_08066898(void);
void sub_08067AFC(void);
extern void sub_08066720();
extern u8 *sub_08002118();
void sub_08064E14(void);
void sub_0806690C(u32 peer);
void sub_08065A1C(u32 a, s32 frames);
extern u32 sub_08001638(u32 size);
extern void sub_0806335C(void);
extern M2C_UNK sub_08000274_task(void *) __asm__("sub_08000274");

extern s32 gUnk_03006030;

void sub_080659B0(void *arg0, s16 arg1)
{
  s8 *new_var;
  s8 *new_var2;
  int new_var3;
  new_var3 = 0;
  new_var = (s8 *) arg0;
  *((s16 *) (new_var + 0x2C)) = arg1;
 do { new_var2 = new_var + 0x30; } while (0);
  if (1)
  {
    *((s16 *) new_var2) = 0;
  }
  *((s16 *) (new_var + 0x32)) = 0;
  *((s16 *) (new_var + 0x2E)) = new_var3;
}
void sub_080659BC(void *arg0, s32 arg1, s32 arg2, u16 arg3, s32 arg4, s32 arg5) {
    sub_08007CF0(arg1, arg2, arg3, (u16) arg4, (s32) (u8) arg5, arg0 + 0x1C, M2C_FIELD(arg0, s32 *, 8), M2C_FIELD(arg0, s32 *, 0));
}
void sub_080659F4(s32 *arg0, s32 arg1, s32 arg2, s32 arg3)
{
  if (arg1 == arg2)
  {
    *arg0 = arg1;
    if (1)
    {
      return;
    }
  }
  *arg0 = (((s32) (arg2 * arg3)) >> 0xA) + (((s32) (arg1 * (0x400 - arg3))) >> 0xA);
}
extern void sub_0801A3D0(s32, u16, u16);
extern void sub_0801A664(u16, s32);
void sub_08065A1C(u32 a, s32 frames)
{
    s32 color = 15;
    s32 text = sub_08007290(0x140000 | a);
    s32 offset = -((u32)sub_0801A638((u8 *)(text + 2)) >> 1);
    frames--;
    if (frames != -1) {
        do {
            if (sub_0805F184() == 0 && sub_0800CC98() == 0)
                sub_0801A3D0(text + 2, offset + 15, color);
            sub_080003F0();
            frames--;
        } while (frames != -1);
    }
    sub_0801A664(color, 2);
}
extern u32 sub_08001638(u32);
struct Task6A90 { u32 f0, f4, f8; void (*fC)(); u8 *f10; u32 f14, f18, f1C; u8 *f20; u32 f24; };
extern struct Task6A90 task6A90 asm("gUnk_030061B0");
void sub_08065A90(u32 a, u32 b)
{
    u8 *mem;
    if (sub_08000470((u32)&task6A90) == 0) {
        task6A90.f8 = 0x3C;
        while ((mem = (u8 *)sub_08001638(0x200), task6A90.f20 = mem) == 0)
            sub_080003F0();
        task6A90.fC = sub_08065A1C;
        task6A90.f10 = task6A90.f20 + 0x1FC;
        task6A90.f24 = 0;
        sub_08000274(&task6A90, a, b);
    }
}
s32 sub_08065AE8(void)
{
  int new_var;
 do { if (sub_08058DB0() == 0) { return 0; } return 1; } while (0); new_var = 0; do { } while (new_var);
}
void sub_08065AFC(void)
{
    struct Unk030061E0 *task = &gUnk_030061E0;
    u32 index;
    u32 memory;

    if (sub_08000470((u32)task) != 0)
        return;
    index = sub_080020F4();
    gUnk_03003CE0[index].flags |= 0x80;
    task->f8 = 0x3C;
    memory = sub_08001638(0x400);
    task->f20 = (void *)memory;
    task->fC = sub_0806335C;
    task->f10 = (u8 *)memory + 0x3FC;
    task->f24 = 0;
    sub_08000274_task(task);
}
void sub_08065B58(void)
{
    u32 i;
    gUnk_03006030 = sub_08001494(0xA0);
    for (i = 0; i < 4; i++)
        M2C_FIELD((u8 *)gUnk_03006030 + i * 0x28, s32 *, 8) = 0;
}
void sub_08065B84(void)
{
    s32 base = gUnk_03006030;
    u32 i = 0;
    u32 result;
    do {
        while ((result = sub_08000470(i * 0x28 + base)) != 0)
            sub_080003F0();
        i++;
    } while (i <= 3);
    sub_08001538(gUnk_03006030);
    gUnk_03006030 = result;
}
extern void sub_0800BC08(u32, u32, s16 *, s16 *, s32, s32);
extern void draw66(const u8 *, s32, s32) asm("sub_0801A764");
void ss2_08065BD0(s32 index, s32 frames) asm("sub_08065BD0");
void ss2_08065BD0(s32 index, s32 frames)
{
    s16 x;
    s16 y;
    u8 *player = (u8 *)&gUnk_03003CE0[index];
    u8 *text;
    u16 *data;
    frames--;
    if (frames != -1) {
        do {
            if (sub_0800CC98() == 0) {
                data = *(u16 **)(player + 0x148);
                sub_0800BC08(data[0] >> 4, (u32)(data[1] << 20) >> 20, &x, &y, 0x30, 1);
                draw66(player + 2, x - sub_0801A638(player + 2) * 4, y - 0x30);
            }
            sub_080003F0();
            frames--;
        } while (frames != -1);
    }
}
struct TaskC50 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern struct TaskC50 gTaskC50 asm("gUnk_03002840");
void sub_08065C50(u32 arg)
{
    if (sub_08000470((u32)&gTaskC50) == 0) {
        gTaskC50.f8 = 0x3C;
        while ((gTaskC50.f20 = sub_08001494(0xC00)) == 0)
            sub_080003F0();
        gTaskC50.fC = (u32)sub_08064E14;
        gTaskC50.f10 = gTaskC50.f20 + 0xBFC;
        gTaskC50.f24 = 0;
        sub_08000274((u32)&gTaskC50, arg);
    }
}
extern u8 gLinkFlagByte asm("gUnk_03006220");
extern u32 gRingIdx[] asm("gUnk_03006210");
extern u32 gRingBuf[] asm("gUnk_03006260");
void sub_08065CA8(void)
{
    register u32 clear asm("r2");
    register u32 i asm("r3");
    register u32 j asm("r2");
    register u8 *e asm("r0");
    register u32 *rp asm("r1");
    register u32 offset asm("r1");
    u32 next;
    register u32 fill asm("r4");
    register u32 zero asm("r5");
    u32 *idxBase;
    register u32 *ringBase asm("r6");

    asm("" : : : "r4", "r5", "r6", "r7");
    gUnk_03006368 = (s32)sub_08001494(0x28);
    gUnk_03006258 = (s32)sub_08001494(0xA0);
    gUnk_03006300 = (s32)(e = sub_08001494(0x1A90));
    gUnk_03006338 = 0;
    gUnk_0300636C = 0xFF;
    gUnk_03006224 = 0xFF;
    gUnk_03006228 = 0xFF;
    gLinkFlagByte = 0;
    clear = 0;
    do {
        *(u32 *)(e + 4) = 0;
        *(u16 *)(e + 2) = 0;
        clear++;
        e += 0x88;
    } while (clear < 0x32);
    i = 0;
    idxBase = gRingIdx;
    ringBase = gRingBuf;
    asm("" : "+r"(idxBase), "+r"(ringBase));
    fill = -1;
    zero = 0;
    do {
        offset = i << 2;
        *(u32 *)(offset + (u32)idxBase) = zero;
        j = 0;
        next = i + 1;
        rp = (u32 *)((offset + i) * 8 + (u32)ringBase);
        do {
            *rp++ = fill;
            j++;
        } while (j < 10);
        i = next;
    } while (i < 4);
    sub_08067AFC();
}
u32 sub_08065D50(void)
{
    u8 *entry;
    u8 *dst;
    u32 i;
    if (gUnk_03006338 > 0x31)
        return 0;
    entry = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x81;
    dst = entry + 8;
    for (i = 0; i <= 9; i++, dst++)
        *dst = ((u8 *)gUnk_030034E0)[i];
    entry[1] = 2;
    gUnk_03006338++;
    return 1;
}
struct Root67Player10 {u8 pad[0x10];u16 w10;u8 pad2[0x14C-0x12];};
u32 sub_08065DAC(void)
{
    u8 *p;
    register u32 n asm("r2");
    register u32 i asm("r3");
    u32 r;
    n = gUnk_03006338;
    if (n > 0x31) {
        r = 0;
    } else {
        p = (u8 *)(uintptr_t)gUnk_03006300;
        i = 0;
        if (i < n) {
          register u32 limit asm("r1") = n;
          do {
            if (*(u32 *)(p + 4) == 1 && p[0] == 0x83) {
                *(u32 *)(p + 8) = ({ u32 id = sub_080020F4(); register struct Root67Player10 *base asm("r2") = (struct Root67Player10 *)gUnk_03003CE0; base[id].w10; });
                goto done;
            }
          i++; p += 0x88;
          } while (i < limit);
        }
        p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x88;
        *(u32 *)(p + 4) = 1;
        *p = 0x83;
        *(u32 *)(p + 8) = ({ u32 id = sub_080020F4(); register struct Root67Player10 *base asm("r2") = (struct Root67Player10 *)gUnk_03003CE0; base[id].w10; });
        p[1] = 1;
        gUnk_03006338++;
    done:
        r = 1;
    }
    return r;
}

struct PeerRingE38 { s32 values[10]; };
extern struct PeerRingE38 peerRingsE38[] asm("gUnk_03006260");
void removeRingMessage67(s32 needle) asm("sub_08065E38");
void removeRingMessage67(s32 needle)
{
    u32 peer, count, j, k;
    count = sub_08002164();
    for (peer = 0; peer < count; peer++) {
        for (j = 0; j <= gRingIdx[peer]; j++) {
            if (peerRingsE38[peer].values[j] == needle) {
                for (k = j; k < gRingIdx[peer]; k++)
                    peerRingsE38[peer].values[k] = peerRingsE38[peer].values[k + 1];
                peerRingsE38[peer].values[k] = -1;
                gRingIdx[peer]--;
                break;
            }
        }
    }
}
void removeAllRingMessages67(s32 needle) asm("sub_08065F08");
void removeAllRingMessages67(s32 needle)
{
    u32 peer, count, j, k;
    count = sub_08002164();
    for (peer = 0; peer < count; peer++) {
        for (j = 0; j <= gRingIdx[peer]; j++) {
            if (peerRingsE38[peer].values[j] == needle) {
                for (k = j; k < gRingIdx[peer]; k++)
                    peerRingsE38[peer].values[k] = peerRingsE38[peer].values[k + 1];
                peerRingsE38[peer].values[k] = -1;
                gRingIdx[peer]--;

            }
        }
    }
}
u32 sub_08065FE8(void)
{
    u32 *n = (u32 *)0x03006338;
    u8 *entry;
    if (*n <= 0x31) {
        entry =  *(u8 **)0x03006300 + *n * 0x88;
        *(u32 *)(entry + 4) = 1;
        entry[0] = 0x85;
        CpuSet((u8 *)gUnk_03005CF4 + 0x22, entry + 8, 0xA);
        entry[1] = 3;
        (*n)++;
        return 1;
    }
    return 0;
}
extern u8 gLinkFlagByte asm("gUnk_03006220");
extern s32 sub_08017F7C(s32 *);
extern u32 root67QueueCountCheck asm("gUnk_03006338");
u32 sub_0806603C(s32 *src)
{
    s32 pos[2];
    int stride;
    register u8 *base asm("r1");
    u8 *p;
    stride = 8;
    if (root67QueueCountCheck > 0x31 ||
        ((base = (u8 *)*src,
          pos[0] = *(s16 *)(((*(u8 *)(src + 1) & ~0x80) * stride) + base + 10) << 11,
          pos[1] = *(s16 *)(((*(u8 *)(src + 1) & ~0x80) * stride) + base + 12) << 11,
          (*(u16 *)((base += ((*(u8 *)(src + 1) & ~0x80) * stride)) + 8) & 0x4000) == 0) && sub_08017F7C(pos) == 0) || gLinkFlagByte != 0) {
        return 0;
    }
    gLinkFlagByte++;
    p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x88;
    *(u32 *)(p + 4) = 1;
    *p = 0x86;
    CpuSet(src, p + 8, 0x04000002);
    p[1] = 1;
    gUnk_03006338++;
    return 1;
}
u32 sub_080660EC(u8 *src)
{
    u8 *p;
    u8 *payload;
    register u32 i asm("r3");
    register u32 n asm("r2");
    u32 r;
    n = gUnk_03006338;
    if (n > 0x31) {
        r = 0;
    } else {
        p = (u8 *)(uintptr_t)gUnk_03006300;
        for (i = 0; i < n; i++, p += 0x88) {
            if (*(u32 *)(p + 4) == 1 && p[0] == 0x8A && (payload = p + 8)[0] == src[0]) {
                *(u16 *)(payload + 4) += *(u16 *)(src + 4);
                payload[3] = src[3];
                payload[2] = src[2];
                goto done;
            }
        }
        p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x88;
        *(u32 *)(p + 4) = 1;
        *p = 0x8A;
        CpuSet(src, p + 8, 0x04000002);
        p[1] = 1;
        gUnk_03006338++;
    done:
        r = 1;
    }
    return r;
}
u32 queuePlayerBlob067(void) asm("sub_0806617C");
extern u8 root67Payload[] asm("gUnk_03003D38");
u32 queuePlayerBlob067(void)
{
    u8 *p;
    register u32 n asm("r2");
    register u32 i asm("r3");
    u32 r;
    n = gUnk_03006338;
    if (n > 0x31) {
        r = 0;
    } else {
        p = (u8 *)(uintptr_t)gUnk_03006300;
        i = 0;
        if (i < n) {
          register u32 limit asm("r1") = n;
          do {
            if (*(u32 *)(p + 4) == 1 && p[0] == 0x8E) {
                CpuSet(root67Payload + sub_080020F4() * 0x14C, p + 8, 0x0400000C);
                goto done;
            }
          i++; p += 0x88;
          } while (i < limit);
        }
        p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x88;
        *(u32 *)(p + 4) = 1;
        *p = 0x8E;
        CpuSet(root67Payload + sub_080020F4() * 0x14C, p + 8, 0x0400000C);
        p[1] = 6;
        gUnk_03006338++;
    done:
        r = 1;
    }
    return r;
}
u32 queuePlayerState067(void) asm("sub_08066220");
extern u8 root67Player38Payload[] asm("gUnk_03003D18");
u32 queuePlayerState067(void)
{
    u8 *p;
    register u32 n asm("r2");
    register u32 i asm("r3");
    u32 r;
    n = gUnk_03006338;
    if (n > 0x31) {
        r = 0;
    } else {
        p = (u8 *)(uintptr_t)gUnk_03006300;
        i = 0;
        if (i < n) {
          register u32 limit asm("r1") = n;
          do {
            if (*(u32 *)(p + 4) == 1 && p[0] == 0x8F) {
                CpuSet(root67Player38Payload + sub_080020F4() * 0x14C, p + 8, 0x04000008);
                goto done;
            }
          i++; p += 0x88;
          } while (i < limit);
        }
        p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x88;
        *(u32 *)(p + 4) = 1;
        *p = 0x8F;
        CpuSet(root67Player38Payload + sub_080020F4() * 0x14C, p + 8, 0x04000008);
        p[1] = 4;
        gUnk_03006338++;
    done:
        r = 1;
    }
    return r;
}
#ifdef NONMATCHING
extern u8 *gEntArr asm("gUnk_030056F4");
/* Enqueue tag 0x91 (entity `idx` velocity words at +0x1FC), coalescing with a pending 0x91 for the same entity id. */
u32 sub_080662C4(s32 idx)
{
    u8 *p;
    u8 *ent;
    u32 i;
    u32 n;
    u32 r;
    n = gUnk_03006338;
    if (n > 0x31) {
        r = 0;
    } else {
        p = (u8 *)(uintptr_t)gUnk_03006300;
        for (i = 0; i < n; i++, p += 0x88) {
            if (*(u32 *)(p + 4) == 1 && p[0] == 0x91) {
                ent = gEntArr + idx * 0x2E0;
                if (*(s16 *)(p + 0xE) == *(s16 *)(ent + 2)) {
                    CpuSet(ent + 0x1FC, p + 8, 0x04000002);
                    goto done;
                }
            }
        }
        p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x88;
        *(u32 *)(p + 4) = 1;
        *p = 0x91;
        CpuSet(gEntArr + idx * 0x2E0 + 0x1FC, p + 8, 0x04000002);
        p[1] = 1;
        gUnk_03006338++;
    done:
        r = 1;
    }
    return r;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_080662C4);
#endif
extern volatile u32 root67Count asm("gUnk_03006338");
extern u8 *root67Entries asm("gUnk_03006300");
extern u8 *root67Sources asm("gUnk_030056F4");
u32 sub_080663A4(u32 index)
{
    register u32 count asm("r2") = root67Count;
    register u8 *entry asm("r2");
    register u8 *source asm("r0");
    if (count > 0x31) return 0;
    entry = root67Entries + count * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0x92;
    { register u8 *base asm("r1") = root67Sources;
      source = (u8 *)(index * 0x2E0 + (u32)base); }
    *(u32 *)(entry + 8) = *(u16 *)(source + 2);
    *(u32 *)(entry + 0xC) = *(u32 *)(source + 0x14);
    *(u32 *)(entry + 0x10) = *(u32 *)(source + 0x18);
    entry[1] = 2;
    root67Count++;
    return 1;
}
extern u8 *root67State asm("gUnk_03005CF4");
u32 sub_08066404(void)
{
    u32 count = root67Count;
    u8 *entry;
    register u32 *source asm("r0");
    u32 size,rem;
    register u8 *destination asm("r1");
    if(count>49) return 0;
    source=(u32 *)(root67State+0x1E4C);
    if(*source) {
        entry=root67Entries+count*0x88;
        *(u32 *)(entry+4)=1;
        entry[0]=0x94;
        source=(u32 *)(root67State+0x1E4C);
        destination=entry+8;
        CpuSet(source,destination,((*source+1)&0x1FFFFF)|0x04000000);
        size=*(u32 *)(root67State+0x1E4C)*4+4;
        rem=size&7;
        if(rem) { size += 8; size -= rem; }
        entry[1]=size>>3;
        root67Count++;
    }
    return 1;
}
u32 sub_08066490(u32 a, u32 b, u32 *src)
{
    u8 *p;
    if (gUnk_03006338 > 0x31)
        return 0;
    if (src != 0) {
        p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x88;
        *(u32 *)(p + 4) = 1;
        *p = 0x95;
        *(u32 *)(p + 8) = a;
        *(u32 *)(p + 0xC) = b;
        CpuSet(src, p + 0x10, 0x04000004);
        p[1] = 3;
        gUnk_03006338++;
        if ((sub_08002204() == 0 || sub_08002164() == 1) && sub_0800CCCC() == 0) {
            sub_0805B4CC(&a, &b);
            sub_0802230C(a, b, 1);
        }
        return 1;
    }
}
u32 sub_08066520(u32 a, u32 b, u16 c, u32 *src)
{
    u8 *p;
    if (gUnk_03006338 > 0x31)
        return 0;
    if (src != 0) {
        p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x88;
        *(u32 *)(p + 4) = 1;
        *p = 0x96;
        *(u32 *)(p + 8) = a;
        *(u32 *)(p + 0xC) = b;
        *(u32 *)(p + 0x10) = c;
        CpuSet(src, p + 0x14, 0x04000004);
        p[1] = 4;
        gUnk_03006338++;
        if ((sub_08002204() == 0 || sub_08002164() == 1) && sub_0800CCCC() == 0) {
            sub_0805B4CC(&a, &b);
            sub_0802230C(a, b, 1);
        }
        return 1;
    }
}
/* Enqueue tag 0xA6 (round end value), coalescing with a pending 0xA6; refused while sub_0800CFF0() != 0. */
u32 sub_080665B0(u32 value)
{
    u8 *p;
    u32 i;
    u32 r;
    if (gUnk_03006338 > 0x31 || sub_0800CFF0() != 0) {
        r = 0;
    } else {
        p = (u8 *)(uintptr_t)gUnk_03006300;
        for (i = 0; i < gUnk_03006338; i++, p += 0x88) {
            if (*(u32 *)(p + 4) == 1 && p[0] == 0xA6) {
                *(u32 *)(p + 8) = value;
                goto done;
            }
        }
        p = (u8 *)(uintptr_t)gUnk_03006300 + gUnk_03006338 * 0x88;
        *(u32 *)(p + 4) = 1;
        *p = 0xA6;
        *(u32 *)(p + 8) = value;
        p[1] = 1;
        gUnk_03006338++;
    done:
        r = 1;
    }
    return r;
}
extern u8 *syncData67 asm("gUnk_03004210");
extern u32 checkCount67 asm("gUnk_03006338");
u32 sub_08066624(void)
{
    u8 *entry;
    register u8 *dst asm("r3");
    register u32 i asm("r1");
    register u32 limit asm("r2");
    register u8 **dataAddress asm("r12");
    register u8 **branchAddress asm("r2");
    register u32 offset asm("r5");
    register u8 **readAddress asm("r6");
    u32 *counter;
    register u8 *src asm("r1");
    u32 y;
    u32 flag;
    limit = checkCount67;
    if (limit > 0x31) return 0;
    entry = (u8 *)(uintptr_t)gUnk_03006300 + limit * 0x88;
    *(u32 *)(entry + 4) = 1;
    entry[0] = 0xAB;
    if (sub_0800CE30() != 0) {
        branchAddress = &syncData67;
        src = *branchAddress;
        *(u32 *)(entry + 8) = *(u32 *)(src + 12);
        y = *(u32 *)(src + 16);
    } else {
        branchAddress = &syncData67;
        src = *branchAddress;
        *(u32 *)(entry + 8) = *(u32 *)(src + 4);
        y = *(u32 *)(src + 8);
    }
    *(u32 *)(entry + 12) = y;
    dataAddress = branchAddress;
    dst = entry + 16;
    limit = 7;
    i = 0;
    counter = &gUnk_03006338;
    readAddress = &syncData67;
    asm("" : "+r"(counter), "+r"(readAddress));
    offset = 0x140;
    do { register u8 *read asm("r0"); read=*readAddress; read+=offset; read+=i; *dst++=*read; i++; } while (i < limit);
    i = 0;
    if (i < limit) {
        readAddress = &syncData67;
        asm("" : "+r"(readAddress));
        offset = 0x14C;
        do { register u8 *read asm("r0"); read=*readAddress; read+=offset; read+=i; *dst++=*read; i++; } while (i < limit);
    }
    limit = 5;
    i = 0;
    readAddress = &syncData67;
    asm("" : "+r"(readAddress));
    offset = 0x147;
    do { register u8 *read asm("r0"); read=*readAddress; read+=offset; read+=i; *dst++=*read; i++; } while (i < limit);
    i = 0;
    if (i < limit) {
        readAddress = &syncData67;
        asm("" : "+r"(readAddress));
        offset = 0x153;
        do { register u8 *read asm("r0"); read=*readAddress; read+=offset; read+=i; *dst++=*read; i++; } while (i < limit);
    }
    flag = 0;
    branchAddress = dataAddress;
    if (*(u32 *)*branchAddress == 1) flag = 1;
    *dst = flag;
    entry[1] = 5;
    (*counter)++;
    return 1;
}
#ifdef NONMATCHING
/* Link message broadcast (lobby data sync). msg[0] = tag, msg[1] = number of 8-byte chunks, msg+8 = payload.
 * Writes into our MultiSio send block (sub_08002118(myId) + 8): [0]=id/cmd, [1]=cmd (0xB1 announce, 0xB2 chunk, 0x80 idle),
 * [2]=chunk number, [4..11]=8 payload bytes. Peers acknowledge by echoing bytes into their own block at offset 0x14+id. */
void sub_08066720(u8 *msg)
{
    u8 *peers[4];
    u32 myId, n, i, k, acked, pos, lastPos, wait, j;
    u8 *buf, *src, *q;

    *(u32 *)(msg + 4) = 2;
    myId = sub_080020F4();
    buf = sub_08002118(myId) + 8;
    for (i = 0; i < sub_08002164(); i++)
        peers[i] = (u8 *)sub_08002238(i) + 0x14 + myId;
    n = sub_08002164();
    for (;;) {
        do {
            buf[0] = 0xB1;
            buf[1] = msg[0];
            buf[2] = msg[1];
            sub_080003F0();
            acked = 0;
            for (k = 0; k < n; k++) {
                if (*peers[k] == msg[0])
                    acked++;
            }
        } while (acked < n);
        wait = 0;
        lastPos = 0;
        pos = 0;
        if (msg[1] != 0) {
            src = msg + 8;
            do {
                buf[1] = 0xB2;
                buf[0] = myId;
                buf[2] = (pos >> 1) + 1;
                *(u32 *)(buf + 4) = *(u32 *)src;
                *(u32 *)(buf + 8) = *(u32 *)(src + 4);
                sub_080003F0();
                acked = 0;
                for (k = 0; k < n; k++) {
                    if (0x7F - (pos >> 1) == *peers[k])
                        acked++;
                }
                if (acked == n) {
                    src += 8;
                    pos += 2;
                    lastPos = pos;
                    wait = 0;
                } else if (lastPos == pos) {
                    wait++;
                }
                if (wait > 0x3C)
                    goto retry;
            } while (pos < msg[1] * 2);
        }
        if (wait > 0x3C)
            continue;
        buf[2] = pos + 1;
        sub_0800224C();
        gUnk_03006338--;
        if ((s32)gUnk_03006338 < 0)
            gUnk_03006338 = 0;
        q = (u8 *)gUnk_03006300;
        for (j = 0; j < gUnk_03006338; j++)
            memcpy(q + j * 0x88, q + (j + 1) * 0x88, 0x88);
        *(u32 *)(q + j * 0x88 + 4) = 0;
        buf[1] = 0x80;
        return;
    retry:
        ;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_08066720);
#endif
/* Link sender task spawner: when the first queued message (gUnk_03006300[0], 0x88 bytes) is pending (+4 == 1),
 * start sub_08066720 as a task on it (task object = *gUnk_03006368, stack 0x800). */
void sub_08066898(void)
{
    u8 *q;
    u8 *msg;
    u8 *t;

    sub_08002118(sub_080020F4());
    for (;;) {
        q = (u8 *)gUnk_03006300;
        msg = (*(u32 *)(q + 4) == 1) ? q : 0;
        if (msg != 0 && sub_08000470(gUnk_03006368) == 0) {
            while ((*(u32 *)((u8 *)gUnk_03006368 + 0x20) = (u32)sub_08001494(0x800)) == 0)
                sub_080003F0();
            t = (u8 *)gUnk_03006368;
            *(u32 *)(t + 0xC) = (u32)sub_08066720;
            *(u32 *)(t + 0x10) = *(u32 *)(t + 0x20) + 0x7FC;
            *(u32 *)(t + 8) = 0x65;
            *(u32 *)(t + 0x24) = 0;
            sub_08000274_(t, (u32)msg, 0);
        }
        sub_080003F0();
    }
}
#ifdef NONMATCHING
/* Link message RECEIVER (one task per peer, `peer` = sender id 0..3). See docs/LINK_CABLE.md and docs/LINK_MESSAGES.md.
 * Draft reconstructed from the asm/Ghidra (NOT byte-matching): offsets and control flow follow the original, helper
 * names are the raw addresses. Phase A waits for an announce block (blk[0]==0xB1, tag blk[1] in 0x81..0xB0, blk[2] chunks),
 * phase B acks the tag until the sender switches to chunk mode (blk[1]==0xB2), phase C receives 8-byte chunks into a 0x100
 * byte buffer acking each one, then the tag is dispatched. All waits are VBlank-synchronised stop-and-wait handshakes. */
#define XF(n) extern u32 x_##n() __asm__(#n);
XF(sub_080168FC) XF(sub_08016A7C) XF(sub_08056E24) XF(sub_08056E64) XF(sub_08056FB8) XF(sub_08057170)
XF(sub_08057328) XF(sub_08057430) XF(sub_0805865C) XF(sub_0805AB20) XF(sub_0805B2C4) XF(sub_0805B618)
XF(sub_0805BD5C) XF(sub_0805D37C) XF(sub_0805D460) XF(sub_0805D498) XF(sub_0805D4C4) XF(sub_08065918)
XF(sub_08065C50) XF(sub_08066490) XF(sub_0800CC98) XF(sub_0800CE30) XF(sub_0800D12C)
XF(sub_08019BF8) XF(sub_08007290) XF(sub_0801D7AC) XF(sub_0801DB94) XF(sub_0801E104) XF(sub_0801E164)
XF(sub_0801E1A4) XF(sub_0801E244) XF(sub_0801F2CC) XF(sub_0801F320) XF(sub_08021E44) XF(sub_08022200)
XF(sub_0802230C) XF(sub_08074DE8) XF(sub_08079888) XF(sub_08079CC4) XF(sub_080793BC) XF(sub_080008C8)
XF(sub_08000420)
extern u8 *gRxEntities asm("gUnk_030056F4");
extern u32 gRxEntityMask asm("gUnk_030056FC");
extern u8 *gRxGameState asm("gUnk_03005CF4");
extern u32 gRxRingIdx[] asm("gUnk_03006210");
extern u32 gRxRing[] asm("gUnk_03006260");
extern u32 gRxFlag asm("gUnk_03006220");
extern u8 *gRxQueue asm("gUnk_03006300");
extern u32 gRxQueueCount asm("gUnk_03006338");
extern u32 gRxLinkState asm("gUnk_03002730");
extern u8 *gRxProfile asm("gUnk_030034E0");
extern u8 *gRxMiscP asm("gUnk_03006440");
extern u8 gRxByteA asm("gUnk_0300636C");
extern u8 gRxByteB asm("gUnk_03006224");
extern u8 gRxByteC asm("gUnk_03006228");
#define RX_PL(i) ((u8 *)gUnk_03003CE0 + (i) * 0x14C)
#define RX_ENT(i) (gRxEntities + (i) * 0x2E0)
#define RX_ENQ(tag, chunks, e) \
    do { \
        if (gRxQueueCount < 0x32) { \
            (e) = gRxQueue + gRxQueueCount * 0x88; \
            *(u32 *)((e) + 4) = 1; \
            *(e) = (tag); \
            (e)[1] = (chunks); \
            gRxQueueCount++; \
        } \
    } while (0)

void sub_0806690C(u32 peer)
{
    u32 d[64];
    u32 myId, i, chunks, tag, cnt, last, wait, idx;
    u8 *ack, *blk, *pl, *ent, *e;

    myId = sub_080020F4();
    ack = sub_08002118(myId) + 0x14 + peer;
    blk = (u8 *)sub_08002238(peer) + 8;
    for (;;) {
        /* phase A: wait for an announce */
        for (;;) {
            tag = 0;
            sub_080003F0();
            if (blk[0] == 0xB1 && blk[1] > 0x80 && blk[1] < 0xB1) {
                chunks = blk[2];
                tag = blk[1];
            }
            *ack = 0x80;
            if (tag != 0)
                break;
        }
        /* phase B: ack the tag until the sender starts the chunks */
        cnt = 0;
        do {
            *ack = tag;
            sub_080003F0();
            if (gRxLinkState & (1 << peer)) {
                cnt++;
                if (cnt > 0x3C)
                    goto restart;
                if (blk[1] == 0xB2)
                    break;
            }
        } while (1);
        /* phase C: receive the chunks */
        last = 0xFFFFFFFF;
        wait = 0;
        idx = 0;
        if (chunks != 0) {
            do {
                idx = blk[2] - 1;
                if (idx < 0x100) {
                    d[idx * 2] = *(u32 *)(blk + 4);
                    d[idx * 2 + 1] = *(u32 *)(blk + 8);
                    *ack = 0x80 - blk[2];
                    sub_080003F0();
                    if (last == blk[2]) {
                        if (gRxLinkState & (1 << peer))
                            wait++;
                    } else {
                        wait = 0;
                        last = blk[2];
                    }
                    if (wait > 0x3C)
                        goto restart;
                    idx = blk[2] - 1;
                }
            } while (idx < chunks);
        }
        if (wait > 0x3C)
            continue;
        *ack = blk[2];
        sub_0800224C();
        pl = RX_PL(peer);
        switch (tag - 0x81) {
        case 0: /* profile: 10 bytes -> Player+2 */
            for (i = 0; i < 10; i++)
                pl[2 + i] = ((u8 *)d)[i];
            break;
        case 1: /* two u16 at Player+0xC; remote also +0x64/+0x66 */
            *(u16 *)(pl + 0xC) = d[0];
            *(u16 *)(pl + 0xE) = d[0] >> 16;
            if (peer != sub_080020F4()) {
                *(u16 *)(pl + 0x64) = d[0];
                pl[0x66] = d[0] >> 16;
            }
            break;
        case 2:
            if (peer != sub_080020F4())
                *(u16 *)(pl + 0x10) = d[0];
            break;
        case 3: /* ring of 9 words per peer */
            gRxRing[gRxRingIdx[peer] + peer * 10] = d[0];
            gRxRingIdx[peer]++;
            if (gRxRingIdx[peer] > 9)
                gRxRingIdx[peer] = 9;
            break;
        case 4:
            CpuSet(d, gRxGameState + 0x22, 10);
            break;
        case 5:
            x_sub_080168FC(d);
            gRxFlag = 0;
            break;
        case 6:
            x_sub_08016A7C(d[0]);
            break;
        case 7: /* entity id == d[0]: set bit 1 of +0x7A */
            for (i = 0; i < 5; i++) {
                if ((gRxEntityMask & (1 << i)) && d[0] == *(u16 *)(RX_ENT(i) + 2)) {
                    *(u16 *)(RX_ENT(i) + 0x7A) |= 1;
                    break;
                }
            }
            break;
        case 8: /* remote only: entity id == d[0] -> state 10, flag 0x80 */
            if (peer != sub_080020F4()) {
                for (i = 0; i < 5; i++) {
                    if ((gRxEntityMask & (1 << i)) && d[0] == *(u16 *)(RX_ENT(i) + 2)) {
                        ent = RX_ENT(i);
                        *(u16 *)(ent + 0xC) = 10;
                        *(u16 *)(ent + 0x7A) |= 0x80;
                        *(u16 *)(ent + 0x4A) = *(u16 *)(ent + 0x5C);
                        *(u32 *)(ent + 0x4C) = *(u16 *)(ent + 0x4A);
                        break;
                    }
                }
            }
            break;
        case 9: /* player-vs-player / player-vs-entity hit (see docs/LINK_MESSAGES.md) */
        case 10:
            break;
        case 0xB:
            if (peer != sub_080020F4())
                *(u32 *)(pl + 0x30) = d[0];
            break;
        case 0xC:
            *(u32 *)(gRxGameState + 0x40) = d[0];
            x_sub_08056E64();
            break;
        case 0xD:
            if (peer != sub_080020F4())
                CpuSet(d, pl + 0x58, 0x0400000C);
            break;
        case 0xE:
            if (peer != sub_080020F4())
                CpuSet(d, pl + 0x38, 0x04000008);
            break;
        case 0xF:
            *(u32 *)(gRxGameState + 0x38) |= d[0];
            break;
        case 0x10: /* remote only: entity (id = d[1]>>16) velocity */
            if (peer != sub_080020F4()) {
                for (i = 0; i < 5; i++) {
                    if ((gRxEntityMask & (1 << i)) && (d[1] >> 16) == *(u16 *)(RX_ENT(i) + 2)) {
                        *(u32 *)(RX_ENT(i) + 0x1FC) = d[0];
                        *(u32 *)(RX_ENT(i) + 0x200) = d[1];
                        break;
                    }
                }
            }
            break;
        case 0x11:
            if (peer != sub_080020F4()) {
                for (i = 0; i < 5; i++) {
                    if ((gRxEntityMask & (1 << i)) && d[0] == *(u16 *)(RX_ENT(i) + 2)) {
                        *(u32 *)(RX_ENT(i) + 0x14) = d[1];
                        *(u32 *)(RX_ENT(i) + 0x18) = d[2];
                    }
                }
            }
            break;
        case 0x12:
        case 0x2E:
            x_sub_08056E24();
            break;
        case 0x13: /* damage list: d[0] entries of {s16 amount, u8 target, u8 flag}, hp slots 0x24 bytes apart */
            if (peer != sub_080020F4()) {
                u8 *src = (u8 *)&d[1];
                for (i = 0; i < d[0]; i++, src += 4) {
                    u8 *slot = *(u8 **)gRxEntities;
                    (void)slot;
                }
            }
            break;
        case 0x14: /* host only: spawn from payload, re-enqueue as tag 0x98 */
        case 0x15:
        case 0x16:
            if (sub_080020F4() == 0) {
                u8 *r = (u8 *)x_sub_0805B2C4(d[0], d[1], d[2] & 0xFFFF, &d[3]);
                if (sub_08002164() > 1)
                    x_sub_0802230C(*(u32 *)r, *(u32 *)(r + 4), 1);
                RX_ENQ(0x98, 4, e);
                if (gRxQueueCount != 0 && e != 0)
                    CpuSet(r, e + 8, 0x04000008);
            }
            break;
        case 0x17:
            if (sub_080020F4() != 0) {
                u32 *q = (u32 *)x_sub_0805B618();
                for (i = 0; i < 8; i++)
                    q[i] = d[i];
            }
            break;
        case 0x1D: /* tag 0x9E */
            x_sub_08065918(pl, d[0]);
            break;
        case 0x1E:
            x_sub_0800D12C();
            x_sub_08056FB8(*(u16 *)(RX_PL(myId) + 0x2E), *(u16 *)(RX_PL(myId) + 0x2C));
            x_sub_08057170();
            x_sub_0805865C(0x24);
            break;
        case 0x1F:
            x_sub_0801D7AC(peer, myId, d[0] >> 16, d[0] & 0xFFFF);
            break;
        case 0x20:
            for (i = 0; i < 5; i++) {
                if ((gRxEntityMask & (1 << i)) && (d[0] & 0xFF) == *(u16 *)(RX_ENT(i) + 2)) {
                    *(u8 *)(RX_ENT(i) + 0x201) |= 2; /* shared tail at 0x08066AFC */
                    *(u16 *)(RX_ENT(i) + 0x8A) = 0;
                    *(u16 *)(gRxGameState + 0xC) = 0;
                }
            }
            break;
        case 0x22:
            x_sub_08057328(d[1], d[0]);
            break;
        case 0x23:
            x_sub_08057430(d[1], d[0], d[2]);
            break;
        case 0x24:
            x_sub_080793BC(peer);
            break;
        case 0x25:
            *(u16 *)(pl + 0x11E) = d[0];
            break;
        case 0x27:
            x_sub_08079888(d[0] & 0xFFFF, d[1], d[2], (d[0] >> 16) & 0xFFFF, d[3]);
            break;
        case 0x28:
            x_sub_08065C50(d[0]);
            break;
        case 0x29:
            x_sub_08079CC4(d[0] & 0xFFFF, d[1], d[2], (d[0] >> 16) & 0xFFFF, d[3]);
            break;
        case 0x2B:
        case 0x2C:
        case 0x2D:
            break;
        case 0x2F: /* tag 0xB0: entity id == d[0] -> state 10, flag 0x80 */
            for (i = 0; i < 5; i++) {
                if ((gRxEntityMask & (1 << i)) && d[0] == *(u16 *)(RX_ENT(i) + 2)) {
                    *(u16 *)(RX_ENT(i) + 0x7A) |= 0x80;
                    *(u16 *)(RX_ENT(i) + 0xC) = 10;
                    break;
                }
            }
            break;
        default:
            break;
        }
    restart:
        ;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080659B0", sub_0806690C);
#endif
void sub_08067A68(u32 index)
{
    struct Task { u32 pad[2]; u32 type; void (*fn)(u32); u8 *stack; u8 pad14[12]; u8 *mem; u32 state; };
    u8 *mem;
    struct Task *entry;
    u32 active;
    active = sub_08000470(gUnk_03006258 + index * 0x28);
    if (active == 0) {
        ((struct Task *)(index * 0x28 + gUnk_03006258))->fn = sub_0806690C;
        mem = (u8 *)sub_08001494(0xC00);
        entry = (struct Task *)(index * 0x28 + gUnk_03006258);
        entry->mem = mem;
        entry->stack = mem + 0xBFC;
        entry->type = 0x65;
        entry->state = active;
        sub_08000274(entry, index);
    }
}
s32 sub_08067AC0(void) {
    return 1;
}
s32 sub_08067AC4(void) {
    return 1;
}
s32 sub_08067AC8(void) {
    return 1;
}
s32 sub_08067ACC(void) {
    return 1;
}
s32 sub_08067AD0(void) {
    return 1;
}
s32 sub_08067AD4(void) {
    return 1;
}
s32 sub_08067AD8(void) {
    return 1;
}
s32 sub_08067ADC(void) {
    return 1;
}
s32 sub_08067AE0(void) {
    return 1;
}
s32 sub_08067AE4(void) {
    return 1;
}
s32 sub_08067AE8(void) {
    return 1;
}
void sub_08067AEC(void) {

}
s32 sub_08067AF0(void) {
    return 1;
}
void sub_08067AF4(void) {

}
void sub_08067AF8(void) {

}
void sub_08067AFC(void)
{
    extern u8 task[] asm("gUnk_03006310");
    u8 *obj;
    u32 mem;
    u32 i;
    obj = task;
    *(u32 *)(obj+0xC) = (u32)sub_08066898;
    mem = (u32)sub_08001494(0x400);
    *(u32 *)(obj+0x20) = mem;
    *(u32 *)(obj+0x10) = mem + 0x3FC;
    *(u32 *)(obj+8) = 0x65;
    *(u32 *)(obj+0x24) = (u32)sub_08068670;
    sub_08000274(obj);
    for (i = 0; i < sub_08002164(); i++) sub_08067A68(i);
}
