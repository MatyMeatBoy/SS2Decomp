	thumb_func_start sub_0800CC98
sub_0800CC98: @ 0x0800CC98
	ldr r0, _0800CCA4
	ldr r0, [r0, #0]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	bx lr
_0800CCA4: .4byte gUnk_03003478
	thumb_func_end sub_0800CC98
