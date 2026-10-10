	thumb_func_start sub_0805A4A0
sub_0805A4A0: @ 0x0805A4A0
	lsls r0, r0, #0x10
	ldr r1, _0805A4B8
	ldr r1, [r1, #0]
	lsrs r0, r0, #0xf
	adds r1, #0x22
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.2byte 0x0000
_0805A4B8: .4byte gUnk_03005CF4
	thumb_func_end sub_0805A4A0
