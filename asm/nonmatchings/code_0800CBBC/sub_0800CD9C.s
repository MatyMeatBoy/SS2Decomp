	thumb_func_start sub_0800CD9C
sub_0800CD9C: @ 0x0800CD9C
	ldr r0, _0800CDA8
	ldr r1, [r0, #0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0, #0]
	bx lr
_0800CDA8: .4byte gUnk_03003478
	thumb_func_end sub_0800CD9C
