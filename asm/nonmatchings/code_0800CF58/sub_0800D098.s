	thumb_func_start sub_0800D098
sub_0800D098: @ 0x0800D098
	ldr r0, _0800D0A4
	ldrb r0, [r0, #3]
	movs r1, #1
	ands r0, r1
	bx lr
	.2byte 0x0000
_0800D0A4: .4byte gUnk_03003478
	thumb_func_end sub_0800D098
