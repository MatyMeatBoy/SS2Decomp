	thumb_func_start sub_0805A6F0
sub_0805A6F0: @ 0x0805A6F0
	ldr r0, _0805A700
	ldr r2, [r0, #0]
	ldrh r1, [r2, #4]
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r2, #4]
	bx lr
	.2byte 0x0000
_0805A700: .4byte gUnk_03005CF4
	thumb_func_end sub_0805A6F0
