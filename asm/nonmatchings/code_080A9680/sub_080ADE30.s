	thumb_func_start sub_080ADE30
sub_080ADE30: @ 0x080ADE30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r0, #0
	mov r9, r0
	bl sub_080020F4
	ldr r7, _080ADFE8
	movs r6, #0xa6
	lsls r6, r6, #1
	muls r0, r6, r0
	ldr r1, _080ADFEC
	adds r0, r0, r1
	ldr r4, [r5, #0x14]
	ldr r0, [r0, #0]
	subs r4, r4, r0
	lsls r4, r4, #8
	lsrs r4, r4, #0x10
	bl sub_080020F4
	muls r0, r6, r0
	movs r2, #0x90
	adds r2, r2, r7
	mov sl, r2
	add r0, sl
	ldr r1, [r5, #0x18]
	ldr r0, [r0, #0]
	subs r1, r1, r0
	lsls r1, r1, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	muls r0, r4, r0
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _080ADE90
	b _080AE06C
_080ADE90:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080ADE9A
	b _080AE06C
_080ADE9A:
	bl sub_0800CCCC
	cmp r0, #0
	beq _080ADEA4
	b _080AE06C
_080ADEA4:
	bl sub_0800CD8C
	cmp r0, #0
	beq _080ADEAE
	b _080AE06C
_080ADEAE:
	ldrh r0, [r5, #0xc]
	cmp r0, #0xe
	bne _080ADEB6
	b _080AE06C
_080ADEB6:
	cmp r0, #0xb
	bne _080ADEBC
	b _080AE06C
_080ADEBC:
	cmp r0, #0xa
	bne _080ADEC2
	b _080AE06C
_080ADEC2:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0xc8
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080ADED4
	b _080AE06C
_080ADED4:
	bl sub_080020F4
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _080ADEEE
	b _080AE06C
_080ADEEE:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _080ADF00
	b _080AE06C
_080ADF00:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	bne _080ADF10
	b _080AE06C
_080ADF10:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	bne _080ADF20
	b _080AE06C
_080ADF20:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	bne _080ADF30
	b _080AE06C
_080ADF30:
	bl sub_080020F4
	ldrh r1, [r5, #0]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	movs r0, #0xe4
	adds r0, r0, r7
	mov r8, r0
	add r1, r8
	ldr r1, [r1, #0]
	ldr r0, [r5, #0x50]
	cmp r1, r0
	bne _080ADF4E
	b _080AE06C
_080ADF4E:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	movs r1, #0xa
	strh r1, [r0, #0x20]
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0xb0
	ldr r1, _080ADFF0
	strh r1, [r0, #0]
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r6, r1
	adds r1, r1, r7
	adds r0, r5, #0
	bl sub_0801ED8C
	adds r1, r4, #0
	muls r1, r6, r1
	adds r1, r1, r7
	adds r1, #0x88
	ldrh r2, [r1, #0]
	adds r0, r0, r2
	strh r0, [r1, #0]
	bl sub_080020F4
	ldrh r1, [r5, #0]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	add r1, r8
	ldr r0, [r5, #0x50]
	str r0, [r1, #0]
	adds r0, #1
	str r0, [r5, #0x50]
	bl sub_080020F4
	muls r0, r6, r0
	ldr r1, _080ADFEC
	adds r0, r0, r1
	ldr r4, [r0, #0]
	ldr r0, [r5, #0x14]
	subs r4, r4, r0
	lsls r4, r4, #8
	lsrs r4, r4, #0x10
	bl sub_080020F4
	muls r0, r6, r0
	add r0, sl
	ldr r1, [r0, #0]
	ldr r0, [r5, #0x18]
	subs r1, r1, r0
	lsls r1, r1, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsls r1, r0, #3
	lsrs r4, r0, #0x1d
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bls _080ADFF6
	cmp r4, #6
	bhi _080ADFF4
	adds r4, #1
	b _080ADFF6
_080ADFE8: .4byte gUnk_03003CE0
_080ADFEC: .4byte gUnk_03003D6C
_080ADFF0: .4byte 0x0000FFFE
_080ADFF4:
	movs r4, #0
_080ADFF6:
	cmp r4, #0
	beq _080AE018
	cmp r4, #1
	beq _080AE030
	bl sub_080020F4
	ldr r2, _080AE014
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	subs r1, r4, #2
	adds r0, #0xca
	b _080AE042
	.2byte 0x0000
_080AE014: .4byte gUnk_03003CE0
_080AE018:
	bl sub_080020F4
	ldr r2, _080AE02C
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xca
	movs r1, #6
	b _080AE042
_080AE02C: .4byte gUnk_03003CE0
_080AE030:
	bl sub_080020F4
	ldr r2, _080AE07C
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xca
	movs r1, #7
_080AE042:
	strh r1, [r0, #0]
	bl sub_080020F4
	ldr r5, _080AE07C
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0xcc
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #0]
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0xc8
	movs r1, #8
	strh r1, [r0, #0]
	movs r2, #1
	mov r9, r2
_080AE06C:
	mov r0, r9
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080AE07C: .4byte gUnk_03003CE0
	thumb_func_end sub_080ADE30
