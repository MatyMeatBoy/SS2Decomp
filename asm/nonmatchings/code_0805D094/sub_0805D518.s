	thumb_func_start sub_0805D518
sub_0805D518: @ 0x0805D518
	push {r4, lr}
	ldr r0, _0805D544
	ldr r2, [r0, #0]
	movs r3, #0
	movs r4, #0x20
_0805D522:
	ldrh r1, [r2, #8]
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0805D534
	strh r0, [r2, #0xa]
	strh r0, [r2, #0xc]
_0805D534:
	adds r3, #1
	adds r2, #0x20
	cmp r3, #0xf
	bls _0805D522
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_0805D544: .4byte gUnk_03005D58
	thumb_func_end sub_0805D518
