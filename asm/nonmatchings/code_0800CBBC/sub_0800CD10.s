	thumb_func_start sub_0800CD10
sub_0800CD10: @ 0x0800CD10
	ldr r0, _0800CD1C
	ldr r1, [r0, #0]
	movs r2, #0x10
	orrs r1, r2
	str r1, [r0, #0]
	bx lr
_0800CD1C: .4byte gUnk_03003478
	thumb_func_end sub_0800CD10
