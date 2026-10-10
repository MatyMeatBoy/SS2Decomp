	thumb_func_start sub_0800CF34
sub_0800CF34: @ 0x0800CF34
	ldr r0, _0800CF40
	ldr r1, [r0, #0]
	ldr r2, _0800CF44
	ands r1, r2
	str r1, [r0, #0]
	bx lr
_0800CF40: .4byte gUnk_03003478
_0800CF44: .4byte 0xFFDFFFFF
	thumb_func_end sub_0800CF34
