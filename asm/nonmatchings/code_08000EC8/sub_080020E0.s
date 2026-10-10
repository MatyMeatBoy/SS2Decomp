	thumb_func_start sub_080020E0
sub_080020E0: @ 0x080020E0
	ldr r0, _080020F0
	ldr r1, [r0, #0]
	movs r2, #0x80
	lsls r2, r2, #0x17
	orrs r1, r2
	str r1, [r0, #0]
	bx lr
	.2byte 0x0000
_080020F0: .4byte gUnk_030027D0
	thumb_func_end sub_080020E0
