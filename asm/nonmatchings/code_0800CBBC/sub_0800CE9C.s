	thumb_func_start sub_0800CE9C
sub_0800CE9C: @ 0x0800CE9C
	ldr r0, _0800CEA8
	ldr r1, [r0, #0]
	ldr r2, _0800CEAC
	ands r1, r2
	str r1, [r0, #0]
	bx lr
_0800CEA8: .4byte gUnk_03003478
_0800CEAC: .4byte 0xFFFFEFFF
	thumb_func_end sub_0800CE9C
