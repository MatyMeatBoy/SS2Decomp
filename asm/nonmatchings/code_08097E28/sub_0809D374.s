	thumb_func_start sub_0809D374
sub_0809D374: @ 0x0809D374
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r5, [r7, #0x14]
	lsls r5, r5, #8
	lsrs r5, r5, #0x10
	ldr r6, [r7, #0x18]
	lsls r6, r6, #8
	lsrs r6, r6, #0x10
	ldr r0, _0809D40C
	mov r8, r0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	mov r9, r1
	mov r2, r9
	muls r2, r0, r2
	adds r0, r2, #0
	subs r1, #4
	add r8, r1
	add r0, r8
	ldr r0, [r0, #0]
	ldrh r4, [r0, #0]
	lsrs r4, r4, #4
	bl sub_080020F4
	mov r2, r9
	muls r2, r0, r2
	adds r0, r2, #0
	add r0, r8
	ldr r0, [r0, #0]
	ldrh r1, [r0, #2]
	lsls r1, r1, #0x14
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	subs r4, r4, r5
	lsrs r1, r1, #0x14
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	subs r1, r1, r6
	movs r0, #0
	mov r9, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	muls r0, r4, r0
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	adds r1, r5, #0
	muls r1, r5, r1
	adds r0, r0, r1
	bl sub_080B858C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x2f
	bls _0809D3EE
	b _0809D540
_0809D3EE:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsls r1, r0, #3
	lsrs r2, r0, #0x1d
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bls _0809D412
	cmp r2, #6
	bhi _0809D410
	adds r2, #1
	b _0809D412
_0809D40C: .4byte gUnk_03003CE0
_0809D410:
	movs r2, #0
_0809D412:
	movs r1, #8
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bne _0809D41E
	cmp r2, #2
	beq _0809D456
_0809D41E:
	cmp r0, #1
	bne _0809D426
	cmp r2, #3
	beq _0809D456
_0809D426:
	cmp r0, #2
	bne _0809D42E
	cmp r2, #4
	beq _0809D456
_0809D42E:
	cmp r0, #3
	bne _0809D436
	cmp r2, #5
	beq _0809D456
_0809D436:
	cmp r0, #4
	bne _0809D43E
	cmp r2, #6
	beq _0809D456
_0809D43E:
	cmp r0, #5
	bne _0809D446
	cmp r2, #7
	beq _0809D456
_0809D446:
	cmp r0, #6
	bne _0809D44E
	cmp r2, #0
	beq _0809D456
_0809D44E:
	cmp r0, #7
	bne _0809D540
	cmp r2, #1
	bne _0809D540
_0809D456:
	bl sub_0800CDF8
	cmp r0, #0
	bne _0809D540
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809D540
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809D540
	ldrh r0, [r7, #0xc]
	cmp r0, #0xb
	beq _0809D540
	bl sub_080020F4
	ldr r5, _0809D550
	movs r6, #0xa6
	lsls r6, r6, #1
	muls r0, r6, r0
	adds r1, r5, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _0809D540
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r5
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0809D540
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	beq _0809D540
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	beq _0809D540
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	beq _0809D540
	bl sub_080020F4
	ldrh r1, [r7, #0]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	movs r2, #0xe4
	adds r2, r2, r5
	mov r8, r2
	add r1, r8
	ldr r1, [r1, #0]
	ldr r0, [r7, #0x50]
	cmp r1, r0
	beq _0809D540
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r5
	movs r1, #0xa
	strh r1, [r0, #0x20]
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r5
	adds r0, #0xb0
	ldr r1, _0809D554
	strh r1, [r0, #0]
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r6, r1
	adds r1, r1, r5
	adds r0, r7, #0
	bl sub_0801ED8C
	adds r1, r4, #0
	muls r1, r6, r1
	adds r1, r1, r5
	adds r1, #0x88
	ldrh r2, [r1, #0]
	adds r0, r0, r2
	strh r0, [r1, #0]
	bl sub_080020F4
	ldrh r1, [r7, #0]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	add r1, r8
	ldr r0, [r7, #0x50]
	str r0, [r1, #0]
	adds r0, #1
	str r0, [r7, #0x50]
	movs r0, #1
	mov r9, r0
_0809D540:
	mov r0, r9
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_0809D550: .4byte gUnk_03003CE0
_0809D554: .4byte 0x0000FFFE
	thumb_func_end sub_0809D374
