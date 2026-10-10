	thumb_func_start sub_08090494
sub_08090494: @ 0x08090494
	push {lr}
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	bl __divsi3
	pop {r1}
	bx r1
	thumb_func_end sub_08090494
