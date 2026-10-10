	thumb_func_start sub_08006E20
sub_08006E20: @ 0x08006E20
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_080B820C
	pop {r0}
	bx r0
	thumb_func_end sub_08006E20
