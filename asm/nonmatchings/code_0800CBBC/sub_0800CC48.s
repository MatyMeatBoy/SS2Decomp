	thumb_func_start sub_0800CC48
sub_0800CC48: @ 0x0800CC48
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0800CC60
	str r0, [r1, #0]
	ldr r2, _0800CC64
	ldr r0, [r2, #0]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r2, #0]
	bx lr
	.2byte 0x0000
_0800CC60: .4byte gUnk_030034A8
_0800CC64: .4byte gUnk_03003478
	thumb_func_end sub_0800CC48
