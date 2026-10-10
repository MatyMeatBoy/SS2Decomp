	thumb_func_start sub_0805D2E0
sub_0805D2E0: @ 0x0805D2E0
	push {r4, lr}
	adds r1, r0, #0
	cmp r1, #0
	beq _0805D340
	ldrh r0, [r1, #0]
	cmp r0, #5
	bne _0805D340
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne _0805D340
	ldrh r0, [r1, #2]
	movs r1, #0xe0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r4, r0, #0
	bl sub_0801DE60
	adds r1, r4, #0
	adds r1, #0xa2
	ldrh r1, [r1, #0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0805D340
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0805D33C
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0xa1
	ldrb r2, [r0, #0]
	movs r3, #0x38
	ldrsh r0, [r1, r3]
	cmp r2, r0
	bgt _0805D340
	movs r0, #1
	b _0805D342
	.2byte 0x0000
_0805D33C: .4byte gUnk_03003CE0
_0805D340:
	movs r0, #0
_0805D342:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_0805D2E0
