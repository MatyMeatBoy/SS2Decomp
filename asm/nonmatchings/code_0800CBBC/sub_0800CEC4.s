	thumb_func_start sub_0800CEC4
sub_0800CEC4: @ 0x0800CEC4
	ldr r0, _0800CED0
	ldr r1, [r0, #0]
	ldr r2, _0800CED4
	ands r1, r2
	str r1, [r0, #0]
	bx lr
_0800CED0: .4byte gUnk_03003478
_0800CED4: .4byte 0xFFFFDFFF
	thumb_func_end sub_0800CEC4
