	thumb_func_start sub_0800BB40
sub_0800BB40: @ 0x0800BB40
	ldr r0, _0800BB50
	adds r0, #0x9c
	ldr r1, [r0, #0]
	movs r2, #2
	orrs r1, r2
	str r1, [r0, #0]
	bx lr
	.2byte 0x0000
_0800BB50: .4byte gUnk_03003170
	thumb_func_end sub_0800BB40
