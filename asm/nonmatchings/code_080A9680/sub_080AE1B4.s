	thumb_func_start sub_080AE1B4
sub_080AE1B4: @ 0x080AE1B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	movs r5, #0
	ldr r7, _080AE220
	movs r0, #0xa6
	lsls r0, r0, #1
	mov ip, r0
	ldr r6, _080AE224
	movs r4, #0
_080AE1CA:
	movs r2, #0
	adds r3, r5, #1
	mov r1, ip
	muls r1, r5, r1
_080AE1D2:
	lsls r0, r2, #2
	adds r0, r0, r1
	adds r0, r0, r6
	str r4, [r0, #0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _080AE1D2
	lsls r0, r3, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _080AE1CA
	bl sub_08002164
	strb r0, [r7, #0]
	bl sub_080AF2BC
	movs r5, #0
	ldrb r1, [r7, #0]
	cmp r5, r1
	bhs _080AE212
	adds r4, r7, #0
_080AE200:
	adds r0, r5, #0
	bl sub_080AF350
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrb r2, [r4, #0]
	cmp r5, r2
	blo _080AE200
_080AE212:
	bl sub_08097FE4
	bl sub_08097A4C
	bl sub_08067C18
	b _080AE22C
_080AE220: .4byte gUnk_03000780
_080AE224: .4byte gUnk_03003DC4
_080AE228:
	bl sub_080003F0
_080AE22C:
	bl sub_08067C08
	cmp r0, #0
	beq _080AE228
	bl sub_08067BF8
	ldr r6, _080AE240
	mov r8, r6
	b _080AE284
	.2byte 0x0000
_080AE240: .4byte gUnk_03000780
_080AE244:
	movs r2, #0
	movs r5, #0
	mov r1, r8
	ldrb r0, [r1, #0]
	ldr r7, _080AE2A8
	cmp r5, r0
	bhs _080AE27A
	ldr r4, _080AE2AC
	movs r3, #0xac
	adds r1, r0, #0
_080AE258:
	adds r0, r5, #0
	muls r0, r3, r0
	adds r0, r0, r4
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0
	bne _080AE270
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080AE270:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r1
	blo _080AE258
_080AE27A:
	ldrb r7, [r7, #0]
	cmp r2, r7
	beq _080AE294
	bl sub_080003F0
_080AE284:
	bl sub_0800CB78
	cmp r0, #0
	bne _080AE294
	bl sub_08056E90
	cmp r0, #0
	beq _080AE244
_080AE294:
	ldr r0, _080AE2B0
	movs r1, #0
	str r1, [r0, #0]
	bl sub_080683CC
	ldr r0, _080AE2B4
	bl sub_08068330
	b _080AE2BC
	.2byte 0x0000
_080AE2A8: .4byte gUnk_03000780
_080AE2AC: .4byte gUnk_030004D0
_080AE2B0: .4byte gUnk_030056FC
_080AE2B4: .4byte 0xDEADFACE
_080AE2B8:
	bl sub_080003F0
_080AE2BC:
	ldr r0, _080AE2D0
	bl sub_080682B8
	cmp r0, #0
	beq _080AE2B8
	ldr r0, _080AE2D0
	bl sub_08065E38
	b _080AE2D8
	.2byte 0x0000
_080AE2D0: .4byte 0xDEADFACE
_080AE2D4:
	bl sub_080003F0
_080AE2D8:
	bl sub_08058DB0
	cmp r0, #0
	bne _080AE2D4
	bl sub_080020F4
	ldr r1, _080AE330
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r0, r2, r0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _080AE2FE
	b _080AE400
_080AE2FE:
	movs r5, #0
	ldr r0, _080AE334
	ldrb r0, [r0, #0]
	cmp r5, r0
	bhs _080AE372
	ldr r7, _080AE338
	movs r6, #0xac
_080AE30C:
	adds r0, r5, #0
	muls r0, r6, r0
	adds r4, r0, r7
	ldr r0, [r4, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080AE364
	bl sub_0800CE30
	cmp r0, #1
	bne _080AE33C
	ldr r0, [r4, #0]
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0x55
	b _080AE346
_080AE330: .4byte gUnk_03003CE0
_080AE334: .4byte gUnk_03000780
_080AE338: .4byte gUnk_030004D0
_080AE33C:
	ldr r0, [r4, #0]
	movs r2, #0x85
	lsls r2, r2, #2
	adds r0, r0, r2
	movs r1, #0x28
_080AE346:
	str r1, [r0, #0]
	ldr r0, _080AE410
	ldr r0, [r0, #0]
	adds r1, r5, #0
	muls r1, r6, r1
	adds r1, r1, r7
	ldr r1, [r1, #0]
	movs r2, #0x81
	lsls r2, r2, #2
	adds r1, r1, r2
	bl sub_0801E46C
	lsls r1, r5, #2
	add r1, sp
	str r0, [r1, #0]
_080AE364:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _080AE414
	ldrb r0, [r0, #0]
	cmp r5, r0
	blo _080AE30C
_080AE372:
	movs r1, #0x1d
	ldr r7, _080AE414
	movs r6, #1
	negs r6, r6
	mov r8, r6
_080AE37C:
	movs r5, #0
	lsls r4, r1, #0x10
	ldrb r0, [r7, #0]
	cmp r5, r0
	bhs _080AE3B8
	ldr r6, _080AE418
_080AE388:
	movs r0, #0xac
	muls r0, r5, r0
	adds r0, r0, r6
	ldr r2, [r0, #0]
	adds r0, r2, #0
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080AE3AC
	ldr r0, [r2, #0x18]
	subs r0, #0x20
	str r0, [r2, #0x18]
	lsls r0, r5, #2
	add r0, sp
	ldr r1, [r0, #0]
	adds r0, r2, #0
	bl sub_0806171C
_080AE3AC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrb r1, [r7, #0]
	cmp r5, r1
	blo _080AE388
_080AE3B8:
	bl sub_080003F0
	ldr r2, _080AE41C
	adds r0, r4, r2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r8
	bne _080AE37C
	movs r5, #0
	ldr r0, _080AE414
	ldrb r0, [r0, #0]
	cmp r5, r0
	bhs _080AE400
	ldr r4, _080AE418
_080AE3D4:
	movs r0, #0xac
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080AE3F2
	ldr r0, _080AE410
	ldr r0, [r0, #0]
	lsls r1, r5, #2
	add r1, sp
	ldr r1, [r1, #0]
	bl sub_0801E4CC
_080AE3F2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _080AE414
	ldrb r0, [r0, #0]
	cmp r5, r0
	blo _080AE3D4
_080AE400:
	bl sub_08056E24
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AE410: .4byte gUnk_030034E0
_080AE414: .4byte gUnk_03000780
_080AE418: .4byte gUnk_030004D0
_080AE41C: .4byte 0xFFFF0000
	thumb_func_end sub_080AE1B4
