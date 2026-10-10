	thumb_func_start sub_0800CE78
sub_0800CE78: @ 0x0800CE78
	ldr r0, _0800CE84
	ldr r0, [r0, #0]
	lsrs r0, r0, #0xc
	movs r1, #1
	ands r0, r1
	bx lr
_0800CE84: .4byte gUnk_03003478
	thumb_func_end sub_0800CE78
