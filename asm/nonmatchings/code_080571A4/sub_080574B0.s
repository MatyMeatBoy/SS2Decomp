	thumb_func_start sub_080574B0
sub_080574B0: @ 0x080574B0
	ldr r1, _080574C0
	ldr r2, [r1, #0]
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0x6c]
	bics r0, r1
	str r0, [r2, #0x6c]
	bx lr
_080574C0: .4byte gUnk_03005CF4
	thumb_func_end sub_080574B0
