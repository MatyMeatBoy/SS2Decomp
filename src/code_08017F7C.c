#include "global.h"

extern u8 gUnk_03005C60[];
extern u32 gUnk_03005CA0[];
void sub_0801A7AC(void);

INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08017F7C);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801801C);
void *sub_08019BF8(u32 id)
{
    u8 *entry = (u8 *)gUnk_030056F4;
    u32 mask = gUnk_030056FC;
    u32 i;
    for (i = 0; i < 5; i++, entry += 0x2E0)
        if ((mask & (1u << i)) != 0 && *(u16 *)(entry + 2) == (u16)id)
            return entry;
    return 0;
}
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019C3C);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019C8C);
u32 sub_08019CDC(void)
{
    u32 i = 0;
    do {
        i++;
    } while (i <= 4);
    return i;
}
u32 sub_08019CE8(u8 *obj)
{
    u16 *value = (u16 *)(obj + 0x5C);
    u16 *timer = (u16 *)(obj + 0x4A);
    *value -= (*timer & 0x7FFF);
    *timer = 0;
    if ((s16)*value < 0 || *value == 0) {
        *(u16 *)(obj + 0xC) = 0xB;
        *value = 0;
        return 1;
    }
    return 0;
}
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019D34);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019D7C);
u32 sub_08019DE0(u32 value)
{
    u8 *entry=*(u8 **)0x030056F4; u32 flags=*(u32 *)0x030056FC, i;
    for(i=0;i<=4;i++,entry+=0x2E0)
        if((flags&(1<<i)) && *(u32 *)(entry+0x2C)==value) return 1;
    return 0;
}
s32 sub_08019E20(s32 arg0) {
    sub_0800CE30();
    return arg0;
}
s32 sub_08019E30(s32 arg0)
{
  s32 temp_r1;
  s32 var_r4;
  u32 var_r2;
  void *var_r3;
  s32 *new_var;
  var_r3 = gUnk_030056F4;
  var_r4 = 0;
  var_r2 = 0;
  new_var = &gUnk_030056FC;
  do
  {
    temp_r1 = 1 << var_r2;
    if (((*new_var) & temp_r1) && ((*((s32 *) (((s8 *) var_r3) + 0x2C))) == arg0))
    {
      var_r4 |= temp_r1;
    }
    var_r2 += 1;
    var_r3 += 0x2E0;
  }
  while (var_r2 <= 4U);
  return var_r4;
}
u32 sub_08019E74(u32 value)
{
    u32 active=*(u16 *)0x03005724, result=0, i;
    u8 *table=*(u8 **)0x030042E8;
    for(i=0;i<=1;i++) if((active&(1<<i)) && *(u32 *)(table+i*8)==value) result|=1<<i;
    return result;
}
void sub_08019EB8(u16 key, u16 value)
{
    u8 *entry=*(u8 **)0x030056F4; u32 flags=*(u32 *)0x030056FC, i;
    for(i=0;i<=4;i++,entry+=0x2E0)
        if((flags&(1<<i)) && *(u16 *)(entry+2)==key) { *(u16 *)(entry+0x88)=value; return; }
}
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019F04);
void sub_08019F60(u16 *data)
{
    u32 index=sub_08002164(); u32 *rates=(u32 *)0x0848FA0C;
    data[3]=(u16)((data[3]*rates[index*3+0])/100);
    if(index>1) data[0]=(u16)(((data[0]+2)*rates[index*3+1])/100);
}
u32 sub_08019FA8(void)
{
    u16 flags = gUnk_03005724;
    u32 i;
    for (i = 0; i <= 1; i++)
        if ((flags >> i) & 1) return 0;
    return 1;
}
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_08019FD8);
s32 sub_0801A040(u16 arg0) {
    return sub_08019D34(arg0);
}
void sub_0801A050(u16 key)
{
    u8 *entry;
    u32 flags, i;
    if (key == 0) return;
    entry=*(u8 **)0x030056F4; flags=*(u32 *)0x030056FC;
    for(i=0;i<=4;i++,entry+=0x2E0) if((flags&(1<<i)) && *(u16 *)(entry+2)==key) { *(u16 *)(entry+0x7A)|=1<<i; return; }
}
void sub_0801A0A4(void *arg0) {
    M2C_FIELD(arg0, s8 *, 0x1DC) = 2;
}
void sub_0801A0B0(void *arg0) {
    M2C_FIELD(arg0, s8 *, 0x1DC) = 0;
}
void sub_0801A0BC(u16 key, u8 value)
{
    u8 *e;
    u32 f, i;
    if(!key)return;
    e=*(u8 **)0x030056F4; f=*(u32 *)0x030056FC;
    for(i=0;i<=4;i++,e+=0x2E0) if((f&(1<<i))&&*(u16 *)(e+2)==key){e[0x1DC]=value;return;}
}
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A120);
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A1C8);
s32 sub_0801A270(void) { u32 i; for (i=0;i<=4;i++) if (!(gUnk_030056FC & (1<<i))) return i; return -1; }
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A298);
u32 sub_0801A2F0(u8 *table)
{
    u32 roll=sub_080008C8()%100, sum=table[1], i=0;
    while(roll>=sum && i<2) { i++; table+=4; sum += table[1]; }
    return table[0];
}
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A328);
void sub_0801A388(u32 index)
{
    u8 *entry=*(u8 **)0x030056F4 + index*0x2E0;
    *(u16 *)(entry+0x7A)|=4;
    entry[0x27B]=0;
    entry[0x1FD]=0xFF;
}
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A3D0);
void sub_0801A500(void)
{
}
extern u16 gUnk_03005C94;
extern u16 gUnk_03005C54;
extern u8 gUnk_03005C40[20];
extern u8 gUnk_03005740[];
extern const u8 gUnk_080B9AD0[];

void sub_0801A508(void)
{
    u32 i;
    gUnk_03005C98 = 0;
    gUnk_03005C94 = 0;
    gUnk_03005730 = 0x12;
    sub_0801A558();
    CpuFastSet(gUnk_080B9AD0, (void *)0x0600C000, 0x380);
    for (i = 0; i <= 0x13; i++)
        gUnk_03005C40[i] = 1;
}

void sub_0801A558(void)
{
    u32 i;
    u32 zero = 0;
    for (i = 0; i <= 0x13; i++) {
        if (gUnk_03005C40[i]) {
            CpuFastSet(&zero, gUnk_03005740 + i * 0x40, 0x10);
            gUnk_03005C40[i] = 0;
        }
    }
    gUnk_03005C54 = 0;
    gUnk_03005C98 = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A5A8);
void sub_0801A628(void) {

}
void sub_0801A62C(void) {
    gUnk_03005C98 = 1;
}
s32 sub_0801A638(u8 *p)
{
    s32 n = 0;
    while (1) {
        u8 c = *p;
        if (c == 0xFD) break;
        if (c > 0xF1) break;
        n++;
        p++;
    }
    return n;
}
void sub_0801A650(u32 arg0)
{
  if (((u32) gUnk_03005730) > arg0)
  {
    gUnk_03005730 = (u16) arg0;
  }
}
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A664);
void sub_0801A6D4(u32 mode)
{
    u8 *base = 0;
    if (mode == 0)
        base = sub_08006EE0(0x80006, gUnk_08518938);
    else if (mode == 1)
        base = sub_08006EE0(0x8004A, gUnk_08518938);
    if (mode <= 1)
        base += 0x120;
    sub_08000AF0(base, 0x19, 1);
}
void sub_0801A70C(void)
{
    u32 count, i;
    gUnk_03005C54 = 0;
    count = sub_08007164(4);
    for (i = 0; i < count; i++)
        gUnk_03005CA0[i] = sub_08007290(i | 0x40000);
    sub_08065158(gUnk_03005C60, 0x5004A, -1, 0, 0);
}
void sub_0801A764(const u8 *script, u32 x, u32 y)
{
    while (script[0] != 0xFD && script[0] <= 0xF1) {
        u32 count = (u16)(script[0] - 1);
        sub_08065230(gUnk_03005C60, x, y, 0, count);
        x = (u16)(x + 8);
        script++;
    }
}
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A7AC);
void sub_0801A9BC(void)
{
    u8 *obj;
    *(u16 *)((u8 *)gUnk_03001250 + 0x40) = 0xBF;
    *(u16 *)((u8 *)gUnk_03001250 + 0x44) = 0x10;
    gUnk_03000024 = 0; gUnk_03000020 = 0; gUnk_03000022 = 0;
    gUnk_03000026 = 0; gUnk_03000028 = 0;
    sub_08000B50();
    obj = sub_08001494(0x400);
    *(u32 *)((u8 *)gUnk_03000030 + 0xC) = (u32)sub_0801A7AC;
    *(u32 *)((u8 *)gUnk_03000030 + 0x10) = (u32)obj + 0x3FC;
    *(u32 *)((u8 *)gUnk_03000030 + 0x20) = (u32)obj;
    *(u32 *)((u8 *)gUnk_03000030 + 8) = 1;
    *(u32 *)((u8 *)gUnk_03000030 + 0x24) = 0;
    sub_08000274(gUnk_03000030, 0);
}
void sub_0801AA34(u32 value)
{
    if (gUnk_03000026 < 0 && (gUnk_03000022 & 0x8000) != 0)
        return;
    gUnk_03000026 = -1;
    gUnk_03000020 = value;
    gUnk_03000022 = value;
    sub_08000420(100);
    gUnk_03000028 = (gUnk_03000028 | 2) & ~0x29;
}
void sub_0801AA8C(u32 value)
{
    if (gUnk_03000026 == 1 && gUnk_03000022 <= gUnk_03000020)
        return;
    gUnk_03000026 = 1;
    gUnk_03000020 = value;
    gUnk_03000022 = 0;
    sub_08000420(100);
    gUnk_03000028 = (gUnk_03000028 | 2) & ~0x29;
}
s32 sub_0801AAE0(void)
{
  s32 var_r2;
  var_r2 = 0;
  if (!(0x16 & gUnk_03000028))
  {
    var_r2 = 1;
  }
  return var_r2;
}
