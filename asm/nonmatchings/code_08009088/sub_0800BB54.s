	thumb_func_start sub_0800BB54
sub_0800BB54: @ 0x0800BB54
	ldr r0, _0800BB64
	adds r0, #0x9c
	ldr r1, [r0, #0]
	movs r2, #0xc
	orrs r1, r2
	str r1, [r0, #0]
	bx lr
	.2byte 0x0000
_0800BB64: .4byte gUnk_03003170
	thumb_func_end sub_0800BB54
