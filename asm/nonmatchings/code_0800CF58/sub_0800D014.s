	thumb_func_start sub_0800D014
sub_0800D014: @ 0x0800D014
	ldr r0, _0800D020
	ldr r1, [r0, #0]
	ldr r2, _0800D024
	ands r1, r2
	str r1, [r0, #0]
	bx lr
_0800D020: .4byte gUnk_03003478
_0800D024: .4byte 0xFFBFFFFF
	thumb_func_end sub_0800D014
