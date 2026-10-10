	thumb_func_start sub_0800D04C
sub_0800D04C: @ 0x0800D04C
	ldr r0, _0800D058
	ldr r1, [r0, #0]
	ldr r2, _0800D05C
	ands r1, r2
	str r1, [r0, #0]
	bx lr
_0800D058: .4byte gUnk_03003478
_0800D05C: .4byte 0xFF7FFFFF
	thumb_func_end sub_0800D04C
