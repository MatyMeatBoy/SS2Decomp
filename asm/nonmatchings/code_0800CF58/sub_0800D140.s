	thumb_func_start sub_0800D140
sub_0800D140: @ 0x0800D140
	ldr r0, _0800D14C
	ldr r1, [r0, #0]
	ldr r2, _0800D150
	ands r1, r2
	str r1, [r0, #0]
	bx lr
_0800D14C: .4byte gUnk_03003478
_0800D150: .4byte 0xFFEFFFFF
	thumb_func_end sub_0800D140
