	thumb_func_start sub_08058510
sub_08058510: @ 0x08058510
	ldr r1, _08058520
	ldr r2, [r1, #0]
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0x38]
	bics r0, r1
	str r0, [r2, #0x38]
	bx lr
_08058520: .4byte gUnk_03005CF4
	thumb_func_end sub_08058510
