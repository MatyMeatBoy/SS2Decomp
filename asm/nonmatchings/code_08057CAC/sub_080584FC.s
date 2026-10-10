	thumb_func_start sub_080584FC
sub_080584FC: @ 0x080584FC
	ldr r1, _0805850C
	ldr r2, [r1, #0]
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
	bx lr
_0805850C: .4byte gUnk_03005CF4
	thumb_func_end sub_080584FC
