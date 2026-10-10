	thumb_func_start sub_080A6510
sub_080A6510: @ 0x080A6510
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	movs r5, #0
	bl sub_080020F4
	ldr r1, _080A66D0
	mov r8, r1
	ldr r1, [r1, #0]
	ldr r4, [r1, #0x14]
	asrs r4, r4, #8
	ldr r7, _080A66D4
	movs r6, #0xa6
	lsls r6, r6, #1
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x8c
	adds r0, r0, r1
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
	muls r0, r6, r0
	adds r2, r7, #0
	adds r2, #0x90
	adds r0, r0, r2
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
	cmp r0, #0x2f
	bls _080A657E
	b _080A66C0
_080A657E:
	ldr r0, _080A66D8
	mov sl, r0
	ldrb r0, [r0, #0]
	cmp r0, #0xff
	beq _080A658A
	b _080A66C0
_080A658A:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080A6594
	b _080A66C0
_080A6594:
	bl sub_0800CD8C
	cmp r0, #0
	beq _080A659E
	b _080A66C0
_080A659E:
	bl sub_0800CCCC
	cmp r0, #0
	beq _080A65A8
	b _080A66C0
_080A65A8:
	mov r1, r8
	ldr r0, [r1, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xb
	bne _080A65B4
	b _080A66C0
_080A65B4:
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
	bne _080A66C0
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080A66C0
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	beq _080A66C0
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	beq _080A66C0
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	beq _080A66C0
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
	beq _080A66C0
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	movs r1, #0xa
	strh r1, [r0, #0x20]
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0xb0
	ldr r1, _080A66DC
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
	adds r0, r0, r7
	adds r0, #0xc4
	movs r2, #0
	ldrsh r4, [r0, r2]
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0x88
	ldrh r0, [r0, #0]
	cmp r4, r0
	ble _080A66BE
	movs r0, #0
	mov r1, sl
	strb r0, [r1, #0]
	bl sub_08015C14
	bl sub_0800CE68
	cmp r0, #0
	bne _080A66BA
	bl sub_0800CC98
	cmp r0, #0
	beq _080A66BE
_080A66BA:
	bl sub_0800D038
_080A66BE:
	movs r5, #1
_080A66C0:
	adds r0, r5, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080A66D0: .4byte gUnk_03000400
_080A66D4: .4byte gUnk_03003CE0
_080A66D8: .4byte gUnk_03000406
_080A66DC: .4byte 0x0000FFFE
	thumb_func_end sub_080A6510
