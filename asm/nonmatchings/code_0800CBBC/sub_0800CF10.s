	thumb_func_start sub_0800CF10
sub_0800CF10: @ 0x0800CF10
	ldr r0, _0800CF1C
	ldr r0, [r0, #0]
	lsrs r0, r0, #0xe
	movs r1, #1
	ands r0, r1
	bx lr
_0800CF1C: .4byte gUnk_03003478
	thumb_func_end sub_0800CF10
