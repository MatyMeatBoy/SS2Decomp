	thumb_func_start sub_0800BB94
sub_0800BB94: @ 0x0800BB94
	ldr r2, _0800BBA4
	adds r3, r2, #0
	adds r3, #0x84
	strh r0, [r3, #0]
	adds r2, #0x86
	strh r1, [r2, #0]
	bx lr
	.2byte 0x0000
_0800BBA4: .4byte gUnk_03003170
	thumb_func_end sub_0800BB94
