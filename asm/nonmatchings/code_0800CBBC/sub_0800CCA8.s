	thumb_func_start sub_0800CCA8
sub_0800CCA8: @ 0x0800CCA8
	ldr r0, _0800CCB4
	ldr r1, [r0, #0]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #0]
	bx lr
_0800CCB4: .4byte gUnk_03003478
	thumb_func_end sub_0800CCA8
