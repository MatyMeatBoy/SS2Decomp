	thumb_func_start sub_0800CFA4
sub_0800CFA4: @ 0x0800CFA4
	ldr r0, _0800CFB0
	ldr r1, [r0, #0]
	ldr r2, _0800CFB4
	ands r1, r2
	str r1, [r0, #0]
	bx lr
_0800CFB0: .4byte gUnk_03003478
_0800CFB4: .4byte 0xFFFDFFFF
	thumb_func_end sub_0800CFA4
