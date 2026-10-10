	thumb_func_start sub_0809043C
sub_0809043C: @ 0x0809043C
	push {lr}
	adds r2, r0, #0
	lsls r0, r2, #8
	bl sub_080B9394
	pop {r1}
	bx r1
	thumb_func_end sub_0809043C
