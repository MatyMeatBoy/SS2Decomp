	thumb_func_start sub_08006DF8
sub_08006DF8: @ 0x08006DF8
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_080B8110
	pop {r0}
	bx r0
	thumb_func_end sub_08006DF8
