	thumb_func_start sub_080599C4
sub_080599C4: @ 0x080599C4
	ldr r1, _080599D4
	ldr r2, [r1, #0]
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0x6c]
	orrs r0, r1
	str r0, [r2, #0x6c]
	bx lr
_080599D4: .4byte gUnk_03005CF4
	thumb_func_end sub_080599C4
