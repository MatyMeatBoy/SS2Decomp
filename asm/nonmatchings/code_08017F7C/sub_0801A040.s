	thumb_func_start sub_0801A040
sub_0801A040: @ 0x0801A040
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08019D34
	pop {r1}
	bx r1
	thumb_func_end sub_0801A040
