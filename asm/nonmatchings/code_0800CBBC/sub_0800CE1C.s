	thumb_func_start sub_0800CE1C
sub_0800CE1C: @ 0x0800CE1C
	ldr r0, _0800CE28
	ldr r1, [r0, #0]
	ldr r2, _0800CE2C
	ands r1, r2
	str r1, [r0, #0]
	bx lr
_0800CE28: .4byte gUnk_03003478
_0800CE2C: .4byte 0xFFFFFDFF
	thumb_func_end sub_0800CE1C
