	thumb_func_start sub_08001B04
sub_08001B04: @ 0x08001B04
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080B882C
	pop {r0}
	bx r0
	thumb_func_end sub_08001B04
