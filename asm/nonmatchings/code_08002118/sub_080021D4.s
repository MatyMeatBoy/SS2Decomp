	thumb_func_start sub_080021D4
sub_080021D4: @ 0x080021D4
	ldr r0, _080021E4
	ldr r1, [r0, #0]
	movs r2, #5
	negs r2, r2
	ands r1, r2
	str r1, [r0, #0]
	bx lr
	.2byte 0x0000
_080021E4: .4byte gUnk_030027D0
	thumb_func_end sub_080021D4
