	thumb_func_start sub_0800CEE8
sub_0800CEE8: @ 0x0800CEE8
	ldr r0, _0800CEF8
	ldr r1, [r0, #0]
	movs r2, #0x80
	lsls r2, r2, #7
	orrs r1, r2
	str r1, [r0, #0]
	bx lr
	.2byte 0x0000
_0800CEF8: .4byte gUnk_03003478
	thumb_func_end sub_0800CEE8
