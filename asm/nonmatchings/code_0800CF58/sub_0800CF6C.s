	thumb_func_start sub_0800CF6C
sub_0800CF6C: @ 0x0800CF6C
	ldr r0, _0800CF78
	ldr r1, [r0, #0]
	ldr r2, _0800CF7C
	ands r1, r2
	str r1, [r0, #0]
	bx lr
_0800CF78: .4byte gUnk_03003478
_0800CF7C: .4byte 0xFFFEFFFF
	thumb_func_end sub_0800CF6C
