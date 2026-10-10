	thumb_func_start sub_0800CE40
sub_0800CE40: @ 0x0800CE40
	ldr r0, _0800CE50
	ldr r1, [r0, #0]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	str r1, [r0, #0]
	bx lr
	.2byte 0x0000
_0800CE50: .4byte gUnk_03003478
	thumb_func_end sub_0800CE40
