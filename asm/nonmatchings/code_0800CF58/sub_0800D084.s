	thumb_func_start sub_0800D084
sub_0800D084: @ 0x0800D084
	ldr r0, _0800D090
	ldr r1, [r0, #0]
	ldr r2, _0800D094
	ands r1, r2
	str r1, [r0, #0]
	bx lr
_0800D090: .4byte gUnk_03003478
_0800D094: .4byte 0xFEFFFFFF
	thumb_func_end sub_0800D084
