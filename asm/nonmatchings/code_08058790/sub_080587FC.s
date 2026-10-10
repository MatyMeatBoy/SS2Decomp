	thumb_func_start sub_080587FC
sub_080587FC: @ 0x080587FC
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0800CC48
	pop {r0}
	bx r0
	thumb_func_end sub_080587FC
