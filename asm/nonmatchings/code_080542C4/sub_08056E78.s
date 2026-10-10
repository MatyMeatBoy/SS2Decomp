	thumb_func_start sub_08056E78
sub_08056E78: @ 0x08056E78
	ldr r0, _08056E88
	ldr r2, [r0, #0]
	ldrh r1, [r2, #4]
	ldr r0, _08056E8C
	ands r0, r1
	strh r0, [r2, #4]
	bx lr
	.2byte 0x0000
_08056E88: .4byte gUnk_03005CF4
_08056E8C: .4byte 0x0000FFEF
	thumb_func_end sub_08056E78
