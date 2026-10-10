	thumb_func_start sub_0800CDC0
sub_0800CDC0: @ 0x0800CDC0
	ldr r0, _0800CDCC
	ldr r0, [r0, #0]
	lsrs r0, r0, #7
	movs r1, #1
	ands r0, r1
	bx lr
_0800CDCC: .4byte gUnk_03003478
	thumb_func_end sub_0800CDC0
