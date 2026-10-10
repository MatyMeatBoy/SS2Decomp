	thumb_func_start sub_080A05B4
sub_080A05B4: @ 0x080A05B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x78
	str r1, [sp, #0x58]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r1, _080A05F4
	ldr r4, _080A05F8
	ldrh r2, [r4, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065158
	add r1, sp, #0x10
	ldrh r0, [r4, #0]
	strb r0, [r1, #0x1c]
	mov r0, sl
	cmp r0, #1
	beq _080A0616
	cmp r0, #1
	bgt _080A05FC
	cmp r0, #0
	beq _080A0608
	b _080A0646
	.2byte 0x0000
_080A05F4: .4byte 0x0005000A
_080A05F8: .4byte gUnk_03000330
_080A05FC:
	mov r1, sl
	cmp r1, #2
	beq _080A0622
	cmp r1, #3
	beq _080A0632
	b _080A0646
_080A0608:
	add r1, sp, #0x44
	mov r2, sl
	strh r2, [r1, #0]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [sp, #0x50]
	b _080A0652
_080A0616:
	add r1, sp, #0x44
	mov r4, sl
	strh r4, [r1, #0]
	movs r0, #0x80
	lsls r0, r0, #6
	b _080A062C
_080A0622:
	add r1, sp, #0x44
	mov r5, sl
	strh r5, [r1, #0]
	movs r0, #0xe0
	lsls r0, r0, #8
_080A062C:
	str r0, [sp, #0x50]
	str r0, [sp, #0x5c]
	b _080A0658
_080A0632:
	add r1, sp, #0x44
	mov r0, sl
	strh r0, [r1, #0]
	movs r0, #0xe0
	lsls r0, r0, #8
	str r0, [sp, #0x50]
	movs r2, #0x80
	lsls r2, r2, #8
	str r2, [sp, #0x5c]
	b _080A0658
_080A0646:
	add r0, sp, #0x44
	movs r1, #0
	strh r1, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [sp, #0x50]
_080A0652:
	movs r3, #0x80
	lsls r3, r3, #8
	str r3, [sp, #0x5c]
_080A0658:
	add r4, sp, #0x44
	ldrh r0, [r4, #0]
	adds r0, #0xa
	movs r5, #0x46
	add r5, sp
	strh r0, [r5, #0]
	movs r0, #0xec
	lsls r0, r0, #7
	add r2, sp, #0x50
	str r0, [r2, #4]
	movs r0, #0
	str r0, [sp, #0x64]
	mov r1, sp
	adds r1, #0x4a
	strh r0, [r1, #0]
	add r0, sp, #0x48
	add r4, sp, #0x64
	ldrh r4, [r4, #0]
	strh r4, [r0, #0]
	movs r5, #0
	str r5, [sp, #0x6c]
	movs r3, #0
	str r3, [sp, #0x74]
	movs r4, #0
	str r4, [sp, #0x70]
	movs r5, #0x5a
	str r5, [sp, #0x68]
_080A068E:
	add r0, sp, #0x50
	movs r1, #0
	bl sub_08096AF4
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A06B6
	add r2, sp, #0x44
	ldrh r1, [r2, #0]
	str r0, [sp, #0]
	add r0, sp, #0x10
	add r2, sp, #0x48
	mov r3, sp
	adds r3, #0x4a
	bl sub_08065370
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
_080A06B6:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A077E
	bl sub_0800CD34
	cmp r0, #0
	bne _080A077E
	bl sub_0800CC98
	adds r4, r0, #0
	cmp r4, #0
	bne _080A077E
	ldr r0, _080A0920
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, _080A0924
	ldr r1, [r1, #0]
	ldr r3, _080A0928
	adds r1, r1, r3
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r0, [sp, #0x50]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x54]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r5, sp, #0x4c
	mov r6, sp
	adds r6, #0x4e
	str r4, [sp, #0]
	str r4, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800BC08
	movs r4, #0
	ldrsh r0, [r5, r4]
	add r1, sp, #0x44
	ldrh r2, [r1, #0]
	add r4, sp, #0x48
	ldrh r3, [r4, #0]
	movs r1, #2
	str r1, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r1, [sp, #0x18]
	str r1, [sp, #8]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0xc]
	movs r1, #0x9f
	bl sub_08007870
	adds r1, r0, #0
	movs r2, #0
	ldrsh r0, [r6, r2]
	str r0, [r1, #0xc]
	add r3, sp, #0x48
	ldrh r0, [r3, #0]
	cmp r0, #0
	beq _080A077E
	ldr r0, [sp, #0x50]
	asrs r0, r0, #8
	ldr r1, [sp, #0x54]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r3, #0x46
	add r3, sp
	ldrh r2, [r3, #0]
	add r5, sp, #0x48
	ldrh r3, [r5, #0]
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r0, [sp, #0]
	str r4, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r1, #0
	movs r1, #0x9f
	bl sub_08007870
	adds r1, r0, #0
	movs r2, #0
	ldrsh r0, [r6, r2]
	str r0, [r1, #0xc]
_080A077E:
	ldr r3, [sp, #0x70]
	cmp r3, #0
	beq _080A0786
	b _080A08EA
_080A0786:
	add r4, sp, #0x48
	ldrh r0, [r4, #0]
	cmp r0, #2
	beq _080A0790
	b _080A08EA
_080A0790:
	movs r5, #0x4a
	add r5, sp
	ldrh r0, [r5, #0]
	cmp r0, #0
	beq _080A079C
	b _080A08EA
_080A079C:
	movs r0, #0xc0
	bl sub_0805865C
	bl sub_080020F4
	ldr r1, [sp, #0x5c]
	asrs r4, r1, #8
	ldr r7, _080A092C
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
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x90
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	movs r1, #0x88
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
	bl sub_080B858C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x27
	bhi _080A08EA
	bl sub_0800CDF8
	cmp r0, #0
	bne _080A08EA
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A08EA
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A08EA
	ldr r3, _080A0924
	mov r8, r3
	ldr r0, [r3, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xb
	beq _080A08EA
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
	bne _080A08EA
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080A08EA
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	beq _080A08EA
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	beq _080A08EA
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	beq _080A08EA
	bl sub_080020F4
	mov r4, r8
	ldr r2, [r4, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	movs r5, #0xe4
	adds r5, r5, r7
	mov r9, r5
	add r1, r9
	ldr r1, [r1, #0]
	ldr r0, [r2, #0x50]
	cmp r1, r0
	beq _080A08EA
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	movs r1, #0xa
	strh r1, [r0, #0x20]
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0xb0
	ldr r1, _080A0930
	strh r1, [r0, #0]
	bl sub_080020F4
	adds r5, r0, #0
	ldr r4, [r4, #0]
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
	mov r3, r8
	ldr r2, [r3, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	add r1, r9
	ldr r0, [r2, #0x50]
	str r0, [r1, #0]
	adds r0, #1
	str r0, [r2, #0x50]
	movs r4, #1
	str r4, [sp, #0x70]
_080A08EA:
	ldr r5, [sp, #0x74]
	cmp r5, #0
	bne _080A0950
	add r1, sp, #0x48
	ldrh r0, [r1, #0]
	cmp r0, #2
	bne _080A0950
	movs r2, #0x4a
	add r2, sp
	ldrh r0, [r2, #0]
	cmp r0, #0
	bne _080A0950
	movs r3, #1
	str r3, [sp, #0x74]
	movs r0, #0x14
	bl sub_080A107C
	mov r4, sl
	cmp r4, #1
	bhi _080A0934
	movs r0, #0x20
	negs r0, r0
	movs r1, #0x14
	bl sub_08097D3C
	b _080A093C
	.2byte 0x0000
_080A0920: .4byte gUnk_03000330
_080A0924: .4byte gUnk_0300032C
_080A0928: .4byte 0x000002DA
_080A092C: .4byte gUnk_03003CE0
_080A0930: .4byte 0x0000FFFE
_080A0934:
	movs r0, #0x20
	movs r1, #0x14
	bl sub_08097D3C
_080A093C:
	bl sub_08097D64
	movs r0, #4
	bl sub_080A1070
	bl sub_080A104C
	movs r0, #0xbe
	bl sub_0805865C
_080A0950:
	ldr r5, [sp, #0x64]
	cmp r5, #0
	bne _080A0964
	ldr r1, [sp, #0x6c]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
	cmp r1, #0x3b
	bls _080A096E
_080A0964:
	ldr r0, [sp, #0x68]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
_080A096E:
	bl sub_080003F0
	ldr r0, [sp, #0x68]
	cmp r0, #0
	beq _080A097A
	b _080A068E
_080A097A:
	movs r0, #1
	ldr r1, [sp, #0x58]
	strb r0, [r1, #0]
	bl sub_080A1058
	bl sub_0800048C
	ldr r2, [sp, #0x68]
	str r2, [r0, #8]
	add sp, #0x78
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080A05B4
