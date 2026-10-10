	thumb_func_start sub_0800CE30
sub_0800CE30: @ 0x0800CE30
	ldr r0, _0800CE3C
	ldr r0, [r0, #0]
	lsrs r0, r0, #9
	movs r1, #1
	ands r0, r1
	bx lr
_0800CE3C: .4byte gUnk_03003478
	thumb_func_end sub_0800CE30
