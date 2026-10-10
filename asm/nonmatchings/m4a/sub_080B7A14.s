	thumb_func_start sub_080B7A14
sub_080B7A14: @ 0x080B7A14
	push {r4, lr}
	adds r2, r1, #0
	movs r0, #1
	ldrb r1, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq _080B7A8C
	ldrb r3, [r2, #0x13]
	ldrb r1, [r2, #0x12]
	adds r0, r3, #0
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _080B7A3C
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_080B7A3C:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _080B7A52
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_080B7A52:
	movs r0, #0x80
	negs r0, r0
	cmp r1, r0
	bge _080B7A5E
	adds r1, r0, #0
	b _080B7A64
_080B7A5E:
	cmp r1, #0x7f
	ble _080B7A64
	movs r1, #0x7f
_080B7A64:
	adds r0, r1, #0
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bls _080B7A76
	movs r0, #0xff
_080B7A76:
	strb r0, [r2, #0x10]
	movs r0, #0x7f
	subs r0, r0, r1
	muls r0, r3, r0
	lsrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bls _080B7A8A
	movs r0, #0xff
_080B7A8A:
	strb r0, [r2, #0x11]
_080B7A8C:
	ldrb r1, [r2, #0]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _080B7AD0
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	ldrb r1, [r2, #0xf]
	muls r0, r1, r0
	movs r1, #0xc
	ldrsb r1, [r2, r1]
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0xa
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #0xb
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	adds r1, r0, r1
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _080B7ACA
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_080B7ACA:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_080B7AD0:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2, #0]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_080B7A14
