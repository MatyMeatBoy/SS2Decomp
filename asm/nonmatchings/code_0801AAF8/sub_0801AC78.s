	thumb_func_start sub_0801AC78
sub_0801AC78: @ 0x0801AC78
	movs r2, #0
	ldr r0, _0801ACA8
	ldrh r1, [r0, #0]
	movs r0, #0x16
	ands r0, r1
	cmp r0, #0
	bne _0801AC88
	movs r2, #1
_0801AC88:
	cmp r2, #0
	beq _0801ACB4
	ldr r0, _0801ACAC
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _0801ACB4
	ldr r0, _0801ACB0
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0801ACB4
	movs r0, #1
	b _0801ACB6
	.2byte 0x0000
_0801ACA8: .4byte gUnk_03000028
_0801ACAC: .4byte gUnk_03000026
_0801ACB0: .4byte gUnk_03000022
_0801ACB4:
	movs r0, #0
_0801ACB6:
	bx lr
	thumb_func_end sub_0801AC78
