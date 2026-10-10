	thumb_func_start sub_0800CFDC
sub_0800CFDC: @ 0x0800CFDC
	ldr r0, _0800CFE8
	ldr r1, [r0, #0]
	ldr r2, _0800CFEC
	ands r1, r2
	str r1, [r0, #0]
	bx lr
_0800CFE8: .4byte gUnk_03003478
_0800CFEC: .4byte 0xFFFBFFFF
	thumb_func_end sub_0800CFDC
