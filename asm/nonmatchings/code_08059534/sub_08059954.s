	thumb_func_start sub_08059954
sub_08059954: @ 0x08059954
	ldr r1, _08059964
	ldr r2, [r1, #0]
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
	bx lr
_08059964: .4byte gUnk_03005CF4
	thumb_func_end sub_08059954
