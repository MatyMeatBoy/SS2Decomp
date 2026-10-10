	thumb_func_start sub_0805D5A0
sub_0805D5A0: @ 0x0805D5A0
	push {r4, r5, lr}
	movs r3, #0
	movs r2, #0
	ldr r0, _0805D5F0
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_0805D5B0:
	ldrh r0, [r1, #0]
	cmp r0, #0xa
	bne _0805D5BA
	ldr r0, [r1, #4]
	adds r3, r3, r0
_0805D5BA:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _0805D5B0
	lsrs r5, r3, #1
	movs r4, #0
_0805D5C6:
	ldr r0, _0805D5F0
	ldr r0, [r0, #0]
	lsls r1, r4, #4
	adds r0, r0, r1
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	cmp r0, #0xa
	bne _0805D5E0
	adds r0, r4, #0
	bl sub_0805D580
_0805D5E0:
	adds r4, #1
	cmp r4, #0x18
	bls _0805D5C6
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000
_0805D5F0: .4byte gUnk_030034E0
	thumb_func_end sub_0805D5A0
