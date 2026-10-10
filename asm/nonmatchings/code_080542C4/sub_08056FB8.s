	thumb_func_start sub_08056FB8
sub_08056FB8: @ 0x08056FB8
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
	bl sub_08026CD0
	pop {r0}
	bx r0
	thumb_func_end sub_08056FB8
