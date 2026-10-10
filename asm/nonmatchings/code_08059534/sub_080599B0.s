	thumb_func_start sub_080599B0
sub_080599B0: @ 0x080599B0
	ldr r1, _080599C0
	ldr r2, [r1, #0]
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0x38]
	bics r0, r1
	str r0, [r2, #0x38]
	bx lr
_080599C0: .4byte gUnk_03005CF4
	thumb_func_end sub_080599B0
