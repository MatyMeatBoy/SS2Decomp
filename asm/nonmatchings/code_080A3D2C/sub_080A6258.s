	thumb_func_start sub_080A6258
sub_080A6258: @ 0x080A6258
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0]
	movs r5, #0
	bl sub_080020F4
	ldr r1, _080A642C
	mov r8, r1
	ldr r1, [r1, #0]
	ldr r4, [r1, #0x14]
	asrs r4, r4, #8
	ldr r7, _080A6430
	movs r6, #0xa6
	lsls r6, r6, #1
	muls r0, r6, r0
	ldr r2, _080A6434
	adds r0, r0, r2
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_080020F4
	mov r2, r8
	ldr r1, [r2, #0]
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	adds r1, #0xc
	muls r0, r6, r0
	movs r2, #0x90
	adds r2, r2, r7
	mov sl, r2
	add r0, sl
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	subs r1, r1, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	muls r0, r4, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x17
	bls _080A62D0
	b _080A64F4
_080A62D0:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080A62DA
	b _080A64F4
_080A62DA:
	bl sub_0800CCCC
	cmp r0, #0
	beq _080A62E4
	b _080A64F4
_080A62E4:
	bl sub_0800CD8C
	cmp r0, #0
	beq _080A62EE
	b _080A64F4
_080A62EE:
	mov r1, r8
	ldr r0, [r1, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xb
	bne _080A62FA
	b _080A64F4
_080A62FA:
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
	beq _080A6314
	b _080A64F4
_080A6314:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _080A6326
	b _080A64F4
_080A6326:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	bne _080A6336
	b _080A64F4
_080A6336:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	bne _080A6346
	b _080A64F4
_080A6346:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	bne _080A6356
	b _080A64F4
_080A6356:
	bl sub_080020F4
	mov r1, r8
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	movs r0, #0xe4
	adds r0, r0, r7
	mov r9, r0
	add r1, r9
	ldr r1, [r1, #0]
	ldr r0, [r2, #0x50]
	cmp r1, r0
	bne _080A6378
	b _080A64F4
_080A6378:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	movs r1, #0xa
	strh r1, [r0, #0x20]
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0xb0
	ldr r1, _080A6438
	strh r1, [r0, #0]
	bl sub_080020F4
	adds r5, r0, #0
	mov r1, r8
	ldr r4, [r1, #0]
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r6, r1
	adds r1, r1, r7
	adds r0, r4, #0
	bl sub_0801ED8C
	adds r1, r5, #0
	muls r1, r6, r1
	adds r1, r1, r7
	adds r1, #0x88
	ldrh r2, [r1, #0]
	adds r0, r0, r2
	strh r0, [r1, #0]
	bl sub_080020F4
	mov r1, r8
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	add r1, r9
	ldr r0, [r2, #0x50]
	str r0, [r1, #0]
	adds r0, #1
	str r0, [r2, #0x50]
	bl sub_080020F4
	muls r0, r6, r0
	ldr r2, _080A6434
	adds r0, r0, r2
	ldr r4, [r0, #0]
	asrs r4, r4, #8
	mov r1, r8
	ldr r0, [r1, #0]
	ldr r0, [r0, #0x14]
	asrs r0, r0, #8
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_080020F4
	muls r0, r6, r0
	add r0, sl
	ldr r1, [r0, #0]
	asrs r1, r1, #8
	mov r2, r8
	ldr r0, [r2, #0]
	ldr r0, [r0, #0x18]
	asrs r0, r0, #8
	subs r1, r1, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsls r1, r0, #3
	lsrs r4, r0, #0x1d
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bls _080A643E
	cmp r4, #6
	bhi _080A643C
	adds r4, #1
	b _080A643E
	.2byte 0x0000
_080A642C: .4byte gUnk_03000400
_080A6430: .4byte gUnk_03003CE0
_080A6434: .4byte gUnk_03003D6C
_080A6438: .4byte 0x0000FFFE
_080A643C:
	movs r4, #0
_080A643E:
	cmp r4, #0
	beq _080A6460
	cmp r4, #1
	beq _080A6478
	bl sub_080020F4
	ldr r2, _080A645C
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	subs r1, r4, #2
	adds r0, #0xca
	b _080A648A
	.2byte 0x0000
_080A645C: .4byte gUnk_03003CE0
_080A6460:
	bl sub_080020F4
	ldr r2, _080A6474
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xca
	movs r1, #6
	b _080A648A
_080A6474: .4byte gUnk_03003CE0
_080A6478:
	bl sub_080020F4
	ldr r2, _080A6508
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xca
	movs r1, #7
_080A648A:
	strh r1, [r0, #0]
	bl sub_080020F4
	ldr r6, _080A6508
	movs r5, #0xa6
	lsls r5, r5, #1
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0xcc
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #0]
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0xc8
	movs r1, #8
	strh r1, [r0, #0]
	ldr r0, [sp, #0]
	cmp r0, #0
	beq _080A64F2
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0xc4
	movs r1, #0
	ldrsh r4, [r0, r1]
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x88
	ldrh r0, [r0, #0]
	cmp r4, r0
	ble _080A64F2
	ldr r0, _080A650C
	movs r1, #0
	strb r1, [r0, #0]
	bl sub_08015C14
	bl sub_0800CE68
	cmp r0, #0
	bne _080A64EE
	bl sub_0800CC98
	cmp r0, #0
	beq _080A64F2
_080A64EE:
	bl sub_0800D038
_080A64F2:
	movs r5, #1
_080A64F4:
	adds r0, r5, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_080A6508: .4byte gUnk_03003CE0
_080A650C: .4byte gUnk_03000406
	thumb_func_end sub_080A6258
