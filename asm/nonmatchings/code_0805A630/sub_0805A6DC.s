	thumb_func_start sub_0805A6DC
sub_0805A6DC: @ 0x0805A6DC
	ldr r0, _0805A6EC
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #7
	movs r1, #1
	ands r0, r1
	bx lr
	.2byte 0x0000
_0805A6EC: .4byte gUnk_03005CF4
	thumb_func_end sub_0805A6DC
