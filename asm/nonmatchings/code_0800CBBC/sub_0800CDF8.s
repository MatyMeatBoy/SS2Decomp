	thumb_func_start sub_0800CDF8
sub_0800CDF8: @ 0x0800CDF8
	ldr r0, _0800CE04
	ldr r0, [r0, #0]
	lsrs r0, r0, #8
	movs r1, #1
	ands r0, r1
	bx lr
_0800CE04: .4byte gUnk_03003478
	thumb_func_end sub_0800CDF8
