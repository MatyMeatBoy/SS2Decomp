	thumb_func_start sub_080B73A0
sub_080B73A0: @ 0x080B73A0
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080B7150
	pop {r0}
	bx r0
	thumb_func_end sub_080B73A0
