#include "global.h"

void sub_08086860(void);
void sub_08087CC0(void);
void sub_08087A5C(void);

INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08087CC0);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_080887D4);
void sub_08088914(void)
{
    u8 *obj = (u8 *)0x03006450;
    u32 mem = sub_08001494(0x1000);
    *(u32 *)(obj + 0x20) = mem;
    *(u32 *)(obj + 0x10) = mem + 0xFFC;
    *(u32 *)(obj + 8) = 0x64;
    *(u32 *)(obj + 0x24) = 0;
    *(u32 *)(obj + 0xC) = (u32)sub_08086860;
    sub_08000274(obj, 0);
}
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808894C);
void sub_0808899C(void)
{
    u8 *obj = (u8 *)0x03006450;
    u32 mem = sub_08001494(0x1000);
    *(u32 *)(obj + 0x20) = mem;
    *(u32 *)(obj + 0x10) = mem + 0xFFC;
    *(u32 *)(obj + 8) = 0x64;
    *(u32 *)(obj + 0x24) = 0;
    *(u32 *)(obj + 0xC) = (u32)sub_08087CC0;
    sub_08000274(obj, 0);
}
void sub_080889D4(u32 arg0, u32 arg1)
{
    u8 *obj = (u8 *)0x030061B0;
    u32 mem = sub_08001494(0xC00);
    *(u32 *)(obj + 0x20) = mem;
    *(u32 *)(obj + 0xC) = (u32)sub_08087A5C;
    *(u32 *)(obj + 0x10) = mem + 0xBFC;
    *(u32 *)(obj + 8) = 0xA;
    *(u32 *)(obj + 0x24) = 0;
    sub_08000274_(obj, arg0, (u16)arg1);
}
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08088A18);
void sub_08088A60(u32 arg0, u32 arg1)
{
    u8 *obj = (u8 *)0x030061B0;
    u32 mem = sub_08001494(0xC00);
    *(u32 *)(obj + 0x20) = mem;
    *(u32 *)(obj + 0xC) = (u32)sub_08087A5C;
    *(u32 *)(obj + 0x10) = mem + 0xBFC;
    *(u32 *)(obj + 8) = 0xA;
    *(u32 *)(obj + 0x24) = 0;
    sub_08000274_(obj, arg0, (u16)arg1 | 0x10000);
}
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08088AA8);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08088B24);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08088B6C);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08088C24);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08088F30);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089204);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089384);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089500);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089784);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_080898D4);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089AE4);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089CA0);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089EC4);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A008);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A294);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A380);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A4D4);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A744);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A830);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A984);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808AA70);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808AC08);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808AD90);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808AFA4);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808AFE8);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808B978);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808C020);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808C0C4);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808CB58);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808D05C);
void sub_0808D0B0(void) {
    sub_08057934();
    sub_08057984();
    sub_080587E4();
}
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808D0C4);
void sub_0808D118(void) {

}
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808D11C);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808D190);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808D204);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808D278);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808D31C);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808D390);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808D404);
