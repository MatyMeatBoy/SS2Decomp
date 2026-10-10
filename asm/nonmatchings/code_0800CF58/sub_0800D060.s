	thumb_func_start sub_0800D060
sub_0800D060: @ 0x0800D060
	ldr r0, _0800D06C
	ldr r0, [r0, #0]
	lsrs r0, r0, #0x17
	movs r1, #1
	ands r0, r1
	bx lr
_0800D06C: .4byte gUnk_03003478
	thumb_func_end sub_0800D060
