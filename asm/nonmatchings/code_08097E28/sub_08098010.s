	thumb_func_start sub_08098010
sub_08098010: @ 0x08098010
	ldr r1, _08098020
	strb r0, [r1, #0]
	ldr r2, _08098024
	ldrb r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0]
	bx lr
_08098020: .4byte gUnk_030002BC
_08098024: .4byte gUnk_030002BD
	thumb_func_end sub_08098010
