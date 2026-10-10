	thumb_func_start sub_0800CC18
sub_0800CC18: @ 0x0800CC18
	ldr r1, _0800CC2C
	movs r0, #0
	str r0, [r1, #0]
	ldr r2, _0800CC30
	ldr r0, [r2, #0]
	ldr r1, _0800CC34
	ands r0, r1
	str r0, [r2, #0]
	bx lr
	.2byte 0x0000
_0800CC2C: .4byte gUnk_030034D8
_0800CC30: .4byte gUnk_03003478
_0800CC34: .4byte 0xFFFF7FFF
	thumb_func_end sub_0800CC18
