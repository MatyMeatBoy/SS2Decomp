	thumb_func_start sub_0800D154
sub_0800D154: @ 0x0800D154
	ldr r0, _0800D160
	ldr r0, [r0, #0]
	lsrs r0, r0, #0x14
	movs r1, #1
	ands r0, r1
	bx lr
_0800D160: .4byte gUnk_03003478
	thumb_func_end sub_0800D154
