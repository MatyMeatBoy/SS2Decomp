	thumb_func_start sub_08058E14
sub_08058E14: @ 0x08058E14
	ldr r1, _08058E24
	ldr r2, [r1, #0]
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0x6c]
	orrs r0, r1
	str r0, [r2, #0x6c]
	bx lr
_08058E24: .4byte gUnk_03005CF4
	thumb_func_end sub_08058E14
