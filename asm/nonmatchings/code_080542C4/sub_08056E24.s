	thumb_func_start sub_08056E24
sub_08056E24: @ 0x08056E24
	ldr r0, _08056E34
	ldr r2, [r0, #0]
	ldrh r1, [r2, #4]
	movs r0, #8
	orrs r0, r1
	strh r0, [r2, #4]
	bx lr
	.2byte 0x0000
_08056E34: .4byte gUnk_03005CF4
	thumb_func_end sub_08056E24
