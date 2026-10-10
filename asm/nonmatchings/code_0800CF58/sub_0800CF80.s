	thumb_func_start sub_0800CF80
sub_0800CF80: @ 0x0800CF80
	ldr r0, _0800CF8C
	ldrh r0, [r0, #2]
	movs r1, #1
	ands r0, r1
	bx lr
	.2byte 0x0000
_0800CF8C: .4byte gUnk_03003478
	thumb_func_end sub_0800CF80
