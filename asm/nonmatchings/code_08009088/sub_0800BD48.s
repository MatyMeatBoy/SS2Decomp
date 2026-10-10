	thumb_func_start sub_0800BD48
sub_0800BD48: @ 0x0800BD48
	ldr r3, _0800BD58
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #3
	adds r2, r2, r3
	strh r1, [r2, #0x16]
	bx lr
	.2byte 0x0000
_0800BD58: .4byte gUnk_03003170
	thumb_func_end sub_0800BD48
