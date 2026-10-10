	.include "asm/macros.inc"

	.syntax unified
	.text

	.include "asm/nonmatchings/libgcc_thumb/_call_via_r0.s"
	.include "asm/nonmatchings/libgcc_thumb/_call_via_r1.s"
	.include "asm/nonmatchings/libgcc_thumb/_call_via_r2.s"
	.include "asm/nonmatchings/libgcc_thumb/_call_via_r3.s"
	.include "asm/nonmatchings/libgcc_thumb/_call_via_r4.s"
	.include "asm/nonmatchings/libgcc_thumb/_call_via_r5.s"
	.include "asm/nonmatchings/libgcc_thumb/_call_via_r6.s"
	.include "asm/nonmatchings/libgcc_thumb/_call_via_r7.s"
	.include "asm/nonmatchings/libgcc_thumb/_call_via_r8.s"
	.include "asm/nonmatchings/libgcc_thumb/_call_via_r9.s"
	.include "asm/nonmatchings/libgcc_thumb/_call_via_sl.s"
	.include "asm/nonmatchings/libgcc_thumb/_call_via_fp.s"
	.include "asm/nonmatchings/libgcc_thumb/_call_via_ip.s"
	.include "asm/nonmatchings/libgcc_thumb/_call_via_sp.s"
	.include "asm/nonmatchings/libgcc_thumb/_call_via_lr.s"
	.align 2, 0 @ Don't pad with nop
