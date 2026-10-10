	thumb_func_start sub_0800CB78
sub_0800CB78: @ 0x0800CB78
	ldr r0, _0800CB84
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	bx lr
	.2byte 0x0000
_0800CB84: .4byte gUnk_03003478
	thumb_func_end sub_0800CB78
