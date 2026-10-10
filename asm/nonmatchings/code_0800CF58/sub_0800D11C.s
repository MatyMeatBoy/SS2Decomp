	thumb_func_start sub_0800D11C
sub_0800D11C: @ 0x0800D11C
	ldr r0, _0800D128
	ldr r0, [r0, #0]
	lsrs r0, r0, #0xb
	movs r1, #1
	ands r0, r1
	bx lr
_0800D128: .4byte gUnk_03003478
	thumb_func_end sub_0800D11C
