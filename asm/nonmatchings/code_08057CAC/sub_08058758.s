	thumb_func_start sub_08058758
sub_08058758: @ 0x08058758
	push {lr}
	lsls r0, r0, #8
	lsls r1, r1, #8
	movs r3, #1
	bl sub_08073E2C
	pop {r0}
	bx r0
	thumb_func_end sub_08058758
