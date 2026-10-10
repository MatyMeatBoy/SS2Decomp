	thumb_func_start sub_0800CC88
sub_0800CC88: @ 0x0800CC88
	ldr r0, _0800CC94
	ldr r0, [r0, #0]
	lsrs r0, r0, #0x13
	movs r1, #1
	ands r0, r1
	bx lr
_0800CC94: .4byte gUnk_03003478
	thumb_func_end sub_0800CC88
