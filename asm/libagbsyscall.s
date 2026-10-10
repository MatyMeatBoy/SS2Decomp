	.include "asm/macros.inc"

	.syntax unified
	.text

	.include "asm/nonmatchings/libagbsyscall/ArcTan2.s"
	.include "asm/nonmatchings/libagbsyscall/CpuFastSet.s"
	.include "asm/nonmatchings/libagbsyscall/CpuSet.s"
	.include "asm/nonmatchings/libagbsyscall/Div.s"
	.include "asm/nonmatchings/libagbsyscall/LZ77UnCompWram.s"
	.include "asm/nonmatchings/libagbsyscall/ObjAffineSet.s"
	.include "asm/nonmatchings/libagbsyscall/RegisterRamReset.s"
	.include "asm/nonmatchings/libagbsyscall/Sqrt.s"
	.include "asm/nonmatchings/libagbsyscall/VBlankIntrWait.s"
	.include "asm/nonmatchings/libagbsyscall/SoftReset.s"
	.align 2, 0 @ Don't pad with nop
