	thumb_func_start sub_0800CEFC
sub_0800CEFC: @ 0x0800CEFC
	ldr r0, _0800CF08
	ldr r1, [r0, #0]
	ldr r2, _0800CF0C
	ands r1, r2
	str r1, [r0, #0]
	bx lr
_0800CF08: .4byte gUnk_03003478
_0800CF0C: .4byte 0xFFFFBFFF
	thumb_func_end sub_0800CEFC
