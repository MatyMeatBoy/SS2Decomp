	thumb_func_start sub_080AC5B4
sub_080AC5B4: @ 0x080AC5B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r0, #0
	str r0, [sp, #0]
	bl sub_080020F4
	ldr r1, _080AC77C
	mov r8, r1
	ldr r1, [r1, #0]
	ldr r7, _080AC780
	movs r6, #0xa6
	lsls r6, r6, #1
	muls r0, r6, r0
	movs r2, #0x8c
	adds r2, r2, r7
	mov sl, r2
	add r0, sl
	ldr r4, [r1, #0x14]
	ldr r0, [r0, #0]
	subs r4, r4, r0
	lsls r4, r4, #8
	lsrs r4, r4, #0x10
	bl sub_080020F4
	mov r2, r8
	ldr r1, [r2, #0]
	muls r0, r6, r0
	ldr r2, _080AC784
	adds r0, r0, r2
	ldr r1, [r1, #0x18]
	ldr r0, [r0, #0]
	subs r1, r1, r0
	asrs r1, r1, #8
	subs r1, #8
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
	bls _080AC622
	b _080AC806
_080AC622:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080AC62C
	b _080AC806
_080AC62C:
	bl sub_0800CCCC
	cmp r0, #0
	beq _080AC636
	b _080AC806
_080AC636:
	bl sub_0800CD8C
	cmp r0, #0
	beq _080AC640
	b _080AC806
_080AC640:
	mov r1, r8
	ldr r0, [r1, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xb
	bne _080AC64C
	b _080AC806
_080AC64C:
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
	beq _080AC666
	b _080AC806
_080AC666:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _080AC678
	b _080AC806
_080AC678:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	bne _080AC688
	b _080AC806
_080AC688:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	bne _080AC698
	b _080AC806
_080AC698:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	bne _080AC6A8
	b _080AC806
_080AC6A8:
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
	bne _080AC6CA
	b _080AC806
_080AC6CA:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	movs r1, #0xa
	strh r1, [r0, #0x20]
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0xb0
	ldr r1, _080AC788
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
	lsls r0, r0, #1
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
	movs r2, #1
	str r2, [sp, #0]
	bl sub_080020F4
	muls r0, r6, r0
	add r0, sl
	mov r2, r8
	ldr r1, [r2, #0]
	ldr r4, [r0, #0]
	ldr r0, [r1, #0x14]
	subs r4, r4, r0
	lsls r4, r4, #8
	lsrs r4, r4, #0x10
	bl sub_080020F4
	muls r0, r6, r0
	ldr r1, _080AC784
	adds r0, r0, r1
	mov r1, r8
	ldr r2, [r1, #0]
	ldr r1, [r0, #0]
	ldr r0, [r2, #0x18]
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
	bls _080AC78E
	cmp r4, #6
	bhi _080AC78C
	adds r4, #1
	b _080AC78E
	.2byte 0x0000
_080AC77C: .4byte gUnk_03000434
_080AC780: .4byte gUnk_03003CE0
_080AC784: .4byte gUnk_03003D70
_080AC788: .4byte 0x0000FFFE
_080AC78C:
	movs r4, #0
_080AC78E:
	cmp r4, #0
	beq _080AC7B0
	cmp r4, #1
	beq _080AC7C8
	bl sub_080020F4
	ldr r2, _080AC7AC
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	subs r1, r4, #2
	adds r0, #0xca
	b _080AC7DA
	.2byte 0x0000
_080AC7AC: .4byte gUnk_03003CE0
_080AC7B0:
	bl sub_080020F4
	ldr r2, _080AC7C4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xca
	movs r1, #6
	b _080AC7DA
_080AC7C4: .4byte gUnk_03003CE0
_080AC7C8:
	bl sub_080020F4
	ldr r2, _080AC818
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xca
	movs r1, #7
_080AC7DA:
	strh r1, [r0, #0]
	bl sub_080020F4
	ldr r5, _080AC818
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
	movs r1, #0x16
	strh r1, [r0, #0]
	movs r0, #0xbb
	bl sub_0805865C
_080AC806:
	ldr r0, [sp, #0]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080AC818: .4byte gUnk_03003CE0
	thumb_func_end sub_080AC5B4
