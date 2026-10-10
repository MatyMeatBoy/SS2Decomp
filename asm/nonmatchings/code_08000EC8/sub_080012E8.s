	thumb_func_start sub_080012E8
sub_080012E8: @ 0x080012E8
	ldr r1, _080012F4
	ldr r2, [r1, #0]
	str r0, [r1, #0]
	adds r0, r2, #0
	bx lr
	.2byte 0x0000
_080012F4: .4byte gUnk_03002360
	thumb_func_end sub_080012E8
