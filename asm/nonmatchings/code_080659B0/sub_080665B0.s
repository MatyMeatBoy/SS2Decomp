	thumb_func_start sub_080665B0
sub_080665B0: @ 0x080665B0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080665C8
	ldr r0, [r4, #0]
	cmp r0, #0x31
	bhi _080665C4
	bl sub_0800CFF0
	cmp r0, #0
	beq _080665D0
_080665C4:
	movs r0, #0
	b _08066614
_080665C8: .4byte gUnk_03006338
_080665CC:
	str r5, [r3, #8]
	b _08066612
_080665D0:
	ldr r0, _0806661C
	ldr r3, [r0, #0]
	movs r2, #0
	ldr r1, [r4, #0]
	adds r4, r0, #0
	cmp r2, r1
	bhs _080665F2
_080665DE:
	ldr r0, [r3, #4]
	cmp r0, #1
	bne _080665EA
	ldrb r0, [r3, #0]
	cmp r0, #0xa6
	beq _080665CC
_080665EA:
	adds r2, #1
	adds r3, #0x88
	cmp r2, r1
	blo _080665DE
_080665F2:
	ldr r2, _08066620
	ldr r1, [r2, #0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [r4, #0]
	adds r3, r1, r0
	movs r1, #1
	str r1, [r3, #4]
	movs r0, #0xa6
	strb r0, [r3, #0]
	str r5, [r3, #8]
	strb r1, [r3, #1]
	ldr r0, [r2, #0]
	adds r0, #1
	str r0, [r2, #0]
_08066612:
	movs r0, #1
_08066614:
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000
_0806661C: .4byte gUnk_03006300
_08066620: .4byte gUnk_03006338
	thumb_func_end sub_080665B0
