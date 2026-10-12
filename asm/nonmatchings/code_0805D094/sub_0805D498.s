	thumb_func_start sub_0805D498
sub_0805D498: @ 0x0805D498
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _0805D4B4
	ldr r1, [r0, #0]
	movs r2, #0
_0805D4A2:
	ldrh r0, [r1, #0xa]
	cmp r0, #2
	bne _0805D4B8
	ldrh r0, [r1, #0xc]
	cmp r0, r3
	bne _0805D4B8
	adds r0, r1, #0
	b _0805D4C2
	.2byte 0x0000
_0805D4B4: .4byte gUnk_03005D58
_0805D4B8:
	adds r2, #1
	adds r1, #0x20
	cmp r2, #0xf
	bls _0805D4A2
	movs r0, #0
_0805D4C2:
	bx lr
	thumb_func_end sub_0805D498
