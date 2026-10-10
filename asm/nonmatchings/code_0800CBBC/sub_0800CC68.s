	thumb_func_start sub_0800CC68
sub_0800CC68: @ 0x0800CC68
	ldr r1, _0800CC7C
	movs r0, #0
	str r0, [r1, #0]
	ldr r2, _0800CC80
	ldr r0, [r2, #0]
	ldr r1, _0800CC84
	ands r0, r1
	str r0, [r2, #0]
	bx lr
	.2byte 0x0000
_0800CC7C: .4byte gUnk_030034A8
_0800CC80: .4byte gUnk_03003478
_0800CC84: .4byte 0xFFF7FFFF
	thumb_func_end sub_0800CC68
