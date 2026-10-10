	thumb_func_start sub_0805D4C4
sub_0805D4C4: @ 0x0805D4C4
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r4, #0
	ldr r0, _0805D4F0
	ldr r1, [r0, #0]
	movs r2, #0
	movs r3, #0
_0805D4D4:
	ldrh r0, [r1, #0xc]
	cmp r0, r5
	bne _0805D4E0
	strh r3, [r1, #0xa]
	strh r3, [r1, #0xc]
	movs r4, #1
_0805D4E0:
	adds r2, #1
	adds r1, #0x20
	cmp r2, #0xf
	bls _0805D4D4
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
_0805D4F0: .4byte gUnk_03005D58
	thumb_func_end sub_0805D4C4
