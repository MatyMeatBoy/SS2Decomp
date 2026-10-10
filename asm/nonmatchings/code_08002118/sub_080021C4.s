	thumb_func_start sub_080021C4
sub_080021C4: @ 0x080021C4
	ldr r0, _080021D0
	ldr r1, [r0, #0]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #0]
	bx lr
_080021D0: .4byte gUnk_030027D0
	thumb_func_end sub_080021C4
