	thumb_func_start sub_0805A6A0
sub_0805A6A0: @ 0x0805A6A0
	ldr r0, _0805A6B0
	ldr r2, [r0, #0]
	ldrh r1, [r2, #4]
	ldr r0, _0805A6B4
	ands r0, r1
	strh r0, [r2, #4]
	bx lr
	.2byte 0x0000
_0805A6B0: .4byte gUnk_03005CF4
_0805A6B4: .4byte 0x0000FEFF
	thumb_func_end sub_0805A6A0
