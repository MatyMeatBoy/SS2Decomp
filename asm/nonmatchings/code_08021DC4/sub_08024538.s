	thumb_func_start sub_08024538
sub_08024538: @ 0x08024538
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08024558
	adds r4, r1, r0
	ldr r0, [r4, #0x30]
	ldr r1, _0802455C
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0x30]
	b _08024566
_08024558: .4byte gUnk_03003CE0
_0802455C: .4byte 0xFFFFFBFF
_08024560:
	movs r0, #1
	bl sub_08057624
_08024566:
	bl sub_08067D74
	cmp r0, #0
	beq _08024560
	movs r0, #0x3c
	bl sub_08057624
	ldr r0, [r4, #0x30]
	movs r1, #4
	negs r1, r1
	ands r0, r1
	str r0, [r4, #0x30]
	b _08024586
_08024580:
	movs r0, #1
	bl sub_08057624
_08024586:
	bl sub_08067D74
	cmp r0, #0
	beq _08024580
	bl sub_0800CF80
	cmp r0, #0
	bne _080245A6
	adds r1, r4, #0
	adds r1, #0x68
	movs r0, #1
	strb r0, [r1, #0]
	b _080245A6
_080245A0:
	movs r0, #1
	bl sub_08057624
_080245A6:
	bl sub_0806617C
	cmp r0, #0
	beq _080245A0
	cmp r5, #0
	beq _080245BA
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x11
	b _080245C0
_080245BA:
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x10
_080245C0:
	orrs r0, r1
	str r0, [r4, #0x30]
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_08024538
