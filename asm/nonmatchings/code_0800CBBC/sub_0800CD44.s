	thumb_func_start sub_0800CD44
sub_0800CD44: @ 0x0800CD44
	ldr r0, _0800CD50
	ldr r1, [r0, #0]
	movs r2, #0x20
	orrs r1, r2
	str r1, [r0, #0]
	bx lr
_0800CD50: .4byte gUnk_03003478
	thumb_func_end sub_0800CD44
