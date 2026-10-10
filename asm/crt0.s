	.include "asm/macros.inc"

	.syntax unified
	.text
	.arm

@ Standard AGB SDK start up code.

	arm_func_start Start
Start: @ 0x080000C0
	mov r0, #0x12           @ PSR_IRQ_MODE
	msr cpsr_fc, r0
	ldr sp, sp_irq
	mov r0, #0x1f           @ PSR_SYS_MODE
	msr cpsr_fc, r0
	ldr sp, sp_sys
	ldr r1, =0x03007FFC     @ INTR_VECTOR
	add r0, pc, #0x20       @ IntrMain
	str r0, [r1]
	ldr r1, =AgbMain
	mov lr, pc
	bx r1
	b Start

	.align 2, 0
sp_sys: .4byte 0x03007E60
sp_irq: .4byte 0x03007FA0
	.pool
	arm_func_end Start

@ Interrupt dispatcher. Copied to IWRAM by AgbMain and installed in INTR_VECTOR.
	arm_func_start IntrMain
IntrMain: @ 0x08000104
	mov r3, #0x4000000
	add r3, r3, #0x200      @ REG_IE
	ldr r2, [r3]
	ldrh r1, [r3, #8]       @ REG_IME
	mrs r0, spsr
	stmfd sp!, {r0-r3, lr}
	mov r0, #1
	strh r0, [r3, #8]
	and r1, r2, r2, lsr #16
	mov ip, #0
	ands r0, r1, #0x4       @ INTR_FLAG_VCOUNT
	bne IntrMain_FoundIntr
	add ip, ip, #4
	ands r0, r1, #0x2       @ INTR_FLAG_HBLANK
	bne IntrMain_FoundIntr
	add ip, ip, #4
	ands r0, r1, #0xc0      @ INTR_FLAG_SERIAL | INTR_FLAG_TIMER3
	bne IntrMain_FoundIntr
	add ip, ip, #4
	ands r0, r1, #0x800     @ INTR_FLAG_DMA3
	bne IntrMain_FoundIntr
	add ip, ip, #4
	ands r0, r1, #0x100     @ INTR_FLAG_DMA0
	bne IntrMain_FoundIntr
	add ip, ip, #4
	ands r0, r1, #0x1       @ INTR_FLAG_VBLANK
	bne IntrMain_FoundIntr
	add ip, ip, #4
	ands r0, r1, #0x8       @ INTR_FLAG_TIMER0
	bne IntrMain_FoundIntr
	add ip, ip, #4
	ands r0, r1, #0x10      @ INTR_FLAG_TIMER1
	bne IntrMain_FoundIntr
	add ip, ip, #4
	ands r0, r1, #0x20      @ INTR_FLAG_TIMER2
	bne IntrMain_FoundIntr
	add ip, ip, #4
	ands r0, r1, #0x40      @ INTR_FLAG_SERIAL
	bne IntrMain_FoundIntr
	add ip, ip, #4
	ands r0, r1, #0x200     @ INTR_FLAG_DMA1
	bne IntrMain_FoundIntr
	add ip, ip, #4
	ands r0, r1, #0x400     @ INTR_FLAG_DMA2
	bne IntrMain_FoundIntr
	add ip, ip, #4
	ands r0, r1, #0x1000    @ INTR_FLAG_KEYPAD
	bne IntrMain_FoundIntr
	add ip, ip, #4
	ands r0, r1, #0x2000    @ INTR_FLAG_GAMEPAK
	strbne r0, [r3, #-0x17c] @ REG_SOUNDCNT_X
	bne .                   @ spin
IntrMain_FoundIntr:
	strh r0, [r3, #2]       @ REG_IF
	mov r1, #0x20c0
	bic r2, r2, r0
	and r1, r1, r2
	strh r1, [r3]           @ REG_IE
	mrs r3, cpsr
	bic r3, r3, #0xdf
	orr r3, r3, #0x1f       @ PSR_SYS_MODE
	msr cpsr_fc, r3
	ldr r1, =gUnk_030012A0  @ gIntrTable
	add r1, r1, ip
	ldr r0, [r1]
	stmfd sp!, {lr}
	add lr, pc, #0
	bx r0
	ldmfd sp!, {lr}
	mrs r3, cpsr
	bic r3, r3, #0xdf
	orr r3, r3, #0x92       @ PSR_I_BIT | PSR_IRQ_MODE
	msr cpsr_fc, r3
	ldmfd sp!, {r0-r3, lr}
	strh r2, [r3]           @ REG_IE
	strh r1, [r3, #8]       @ REG_IME
	msr spsr_fc, r0
	bx lr
	.pool
	arm_func_end IntrMain
