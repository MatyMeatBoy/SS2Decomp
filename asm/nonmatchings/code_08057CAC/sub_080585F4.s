	thumb_func_start sub_080585F4
sub_080585F4: @ 0x080585F4
	push {lr}
	lsls r0, r0, #8
	lsls r1, r1, #8
	bl sub_0805D37C
	bl sub_080687A8
	pop {r0}
	bx r0
	thumb_func_end sub_080585F4
