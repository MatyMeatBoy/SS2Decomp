#include "global.h"

extern u32 gUnk_03005CFC;
extern u32 gUnk_03005D00;

INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08021DC4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08021E44);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08021EC8);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08021F58);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08021FE0);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022028);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022078);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022100);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022180);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022200);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022284);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_0802230C);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080223A4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080223F4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_0802247C);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022504);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_0802258C);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022630);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080226A4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022E60);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023274);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023684);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080239E0);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023A3C);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023ED8);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023F98);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_0802413C);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08024538);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080245CC);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080257D4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08025890);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08026338);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080263B4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080267DC);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08026858);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08026C54);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08026CD0);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_0802704C);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080277E0);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08027B50);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08027C1C);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08028368);
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
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08028918);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080289C0);
