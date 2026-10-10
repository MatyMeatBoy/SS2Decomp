	thumb_func_start sub_0800CE68
sub_0800CE68: @ 0x0800CE68
	ldr r0, _0800CE74
	ldr r0, [r0, #0]
	lsrs r0, r0, #0xa
	movs r1, #1
	ands r0, r1
	bx lr
_0800CE74: .4byte gUnk_03003478
	thumb_func_end sub_0800CE68
