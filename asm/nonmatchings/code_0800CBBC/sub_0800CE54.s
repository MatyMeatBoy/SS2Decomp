	thumb_func_start sub_0800CE54
sub_0800CE54: @ 0x0800CE54
	ldr r0, _0800CE60
	ldr r1, [r0, #0]
	ldr r2, _0800CE64
	ands r1, r2
	str r1, [r0, #0]
	bx lr
_0800CE60: .4byte gUnk_03003478
_0800CE64: .4byte 0xFFFFFBFF
	thumb_func_end sub_0800CE54
