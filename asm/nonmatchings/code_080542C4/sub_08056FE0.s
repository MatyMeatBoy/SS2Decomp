	thumb_func_start sub_08056FE0
sub_08056FE0: @ 0x08056FE0
	ldr r0, _08056FF0
	ldr r2, [r0, #0]
	ldrh r1, [r2, #4]
	ldr r0, _08056FF4
	ands r0, r1
	strh r0, [r2, #4]
	bx lr
	.2byte 0x0000
_08056FF0: .4byte gUnk_03005CF4
_08056FF4: .4byte 0x0000FFBF
	thumb_func_end sub_08056FE0
