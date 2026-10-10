	.include "asm/macros.inc"

	.syntax unified
	.text

	.include "asm/nonmatchings/libgcc_div/__divsi3.s"
	.include "asm/nonmatchings/libgcc_div/__div0.s"
	.include "asm/nonmatchings/libgcc_div/__modsi3.s"
	.include "asm/nonmatchings/libgcc_div/__muldi3.s"
	.include "asm/nonmatchings/libgcc_div/__udivsi3.s"
	.include "asm/nonmatchings/libgcc_div/__umodsi3.s"
	.align 2, 0 @ Don't pad with nop
