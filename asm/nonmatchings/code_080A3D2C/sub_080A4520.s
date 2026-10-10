	thumb_func_start sub_080A4520
sub_080A4520: @ 0x080A4520
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	bl sub_080020F4
	ldr r1, _080A46E4
	mov r8, r1
	ldr r1, [r1, #0]
	ldr r4, [r1, #0x14]
	asrs r4, r4, #8
	ldr r7, _080A46E8
	movs r6, #0xa6
	lsls r6, r6, #1
	muls r0, r6, r0
	ldr r2, _080A46EC
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
	cmp r0, #0x27
	bls _080A458C
	b _080A4768
_080A458C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080A4596
	b _080A4768
_080A4596:
	bl sub_0800CD8C
	cmp r0, #0
	beq _080A45A0
	b _080A4768
_080A45A0:
	bl sub_0800CCCC
	cmp r0, #0
	beq _080A45AA
	b _080A4768
_080A45AA:
	mov r1, r8
	ldr r0, [r1, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xb
	bne _080A45B6
	b _080A4768
_080A45B6:
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
	beq _080A45D0
	b _080A4768
_080A45D0:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _080A45E2
	b _080A4768
_080A45E2:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	bne _080A45F2
	b _080A4768
_080A45F2:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	bne _080A4602
	b _080A4768
_080A4602:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	bne _080A4612
	b _080A4768
_080A4612:
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
	bne _080A4634
	b _080A4768
_080A4634:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	movs r1, #0xa
	strh r1, [r0, #0x20]
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0xb0
	ldr r1, _080A46F0
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
	bl sub_080020F4
	muls r0, r6, r0
	ldr r2, _080A46EC
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
	bls _080A46F6
	cmp r4, #6
	bhi _080A46F4
	adds r4, #1
	b _080A46F6
	.2byte 0x0000
_080A46E4: .4byte gUnk_03000364
_080A46E8: .4byte gUnk_03003CE0
_080A46EC: .4byte gUnk_03003D6C
_080A46F0: .4byte 0x0000FFFE
_080A46F4:
	movs r4, #0
_080A46F6:
	cmp r4, #0
	beq _080A4718
	cmp r4, #1
	beq _080A4730
	bl sub_080020F4
	ldr r2, _080A4714
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	subs r1, r4, #2
	adds r0, #0xca
	b _080A4742
	.2byte 0x0000
_080A4714: .4byte gUnk_03003CE0
_080A4718:
	bl sub_080020F4
	ldr r2, _080A472C
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xca
	movs r1, #6
	b _080A4742
_080A472C: .4byte gUnk_03003CE0
_080A4730:
	bl sub_080020F4
	ldr r2, _080A4798
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xca
	movs r1, #7
_080A4742:
	strh r1, [r0, #0]
	bl sub_080020F4
	ldr r5, _080A4798
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
	movs r1, #0x10
	strh r1, [r0, #0]
_080A4768:
	ldr r4, _080A4798
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r4
	adds r0, #0xc8
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _080A4788
	ldr r0, _080A479C
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x50]
	adds r0, #1
	str r0, [r1, #0x50]
_080A4788:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080A4798: .4byte gUnk_03003CE0
_080A479C: .4byte gUnk_03000364
	thumb_func_end sub_080A4520
