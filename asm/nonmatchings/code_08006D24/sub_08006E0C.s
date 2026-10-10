	thumb_func_start sub_08006E0C
sub_08006E0C: @ 0x08006E0C
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	bl sub_080B8184
	pop {r0}
	bx r0
	thumb_func_end sub_08006E0C
