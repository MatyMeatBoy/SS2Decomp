	thumb_func_start sub_080653B8
sub_080653B8: @ 0x080653B8
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #1
	strh r4, [r0, #0x2c]
	strh r1, [r0, #0x30]
	strh r2, [r0, #0x32]
	strh r3, [r0, #0x2e]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_080653B8
