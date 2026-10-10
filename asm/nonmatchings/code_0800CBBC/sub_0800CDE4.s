	thumb_func_start sub_0800CDE4
sub_0800CDE4: @ 0x0800CDE4
	ldr r0, _0800CDF0
	ldr r1, [r0, #0]
	ldr r2, _0800CDF4
	ands r1, r2
	str r1, [r0, #0]
	bx lr
_0800CDF0: .4byte gUnk_03003478
_0800CDF4: .4byte 0xFFFFFEFF
	thumb_func_end sub_0800CDE4
