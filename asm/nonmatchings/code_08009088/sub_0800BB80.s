	thumb_func_start sub_0800BB80
sub_0800BB80: @ 0x0800BB80
	ldr r2, _0800BB90
	adds r3, r2, #0
	adds r3, #0x80
	strh r0, [r3, #0]
	adds r2, #0x82
	strh r1, [r2, #0]
	bx lr
	.2byte 0x0000
_0800BB90: .4byte gUnk_03003170
	thumb_func_end sub_0800BB80
