	thumb_func_start sub_08056E64
sub_08056E64: @ 0x08056E64
	ldr r0, _08056E74
	ldr r2, [r0, #0]
	ldrh r1, [r2, #4]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r2, #4]
	bx lr
	.2byte 0x0000
_08056E74: .4byte gUnk_03005CF4
	thumb_func_end sub_08056E64
