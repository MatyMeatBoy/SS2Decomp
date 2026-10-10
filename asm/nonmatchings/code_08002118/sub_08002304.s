	thumb_func_start sub_08002304
sub_08002304: @ 0x08002304
	push {lr}
	ldr r2, _08002328
	ldr r1, [r2, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08002322
	movs r0, #9
	negs r0, r0
	ands r1, r0
	str r1, [r2, #0]
	movs r0, #0xfa
	lsls r0, r0, #5
	bl sub_08000420
_08002322:
	pop {r0}
	bx r0
	.2byte 0x0000
_08002328: .4byte gUnk_030027D0
	thumb_func_end sub_08002304
