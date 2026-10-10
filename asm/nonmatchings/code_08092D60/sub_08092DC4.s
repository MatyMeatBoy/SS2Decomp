	thumb_func_start sub_08092DC4
sub_08092DC4: @ 0x08092DC4
	push {r4, lr}
	ldr r4, _08092DE8
	movs r0, #0x28
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0]
	cmp r1, #0
	beq _08092DE0
	movs r0, #0
	str r0, [r1, #8]
	ldr r1, _08092DEC
	movs r0, #4
	strb r0, [r1, #0]
_08092DE0:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_08092DE8: .4byte gUnk_03000260
_08092DEC: .4byte gUnk_03000258
	thumb_func_end sub_08092DC4
