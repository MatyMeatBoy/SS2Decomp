	thumb_func_start sub_0800D108
sub_0800D108: @ 0x0800D108
	ldr r0, _0800D114
	ldr r1, [r0, #0]
	ldr r2, _0800D118
	ands r1, r2
	str r1, [r0, #0]
	bx lr
_0800D114: .4byte gUnk_03003478
_0800D118: .4byte 0xFFFFF7FF
	thumb_func_end sub_0800D108
