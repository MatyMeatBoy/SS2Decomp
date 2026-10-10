	thumb_func_start sub_08056E38
sub_08056E38: @ 0x08056E38
	ldr r0, _08056E48
	ldr r2, [r0, #0]
	ldrh r1, [r2, #4]
	ldr r0, _08056E4C
	ands r0, r1
	strh r0, [r2, #4]
	bx lr
	.2byte 0x0000
_08056E48: .4byte gUnk_03005CF4
_08056E4C: .4byte 0x0000FFF7
	thumb_func_end sub_08056E38
