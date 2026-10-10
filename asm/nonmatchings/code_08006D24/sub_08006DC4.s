	thumb_func_start sub_08006DC4
sub_08006DC4: @ 0x08006DC4
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080B73A0
	pop {r0}
	bx r0
	thumb_func_end sub_08006DC4
