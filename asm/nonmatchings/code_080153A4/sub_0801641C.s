	thumb_func_start sub_0801641C
sub_0801641C: @ 0x0801641C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	bl sub_0800CDC0
	cmp r0, #0
	beq _08016454
	movs r1, #4
	ldr r4, _0801644C
	movs r3, #1
	ldr r2, [r4, #0]
_0801643A:
	adds r0, r3, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _08016450
	subs r1, #1
	cmp r1, #0
	bge _0801643A
	b _0801646C
_0801644C: .4byte gUnk_030056FC
_08016450:
	mov sl, r1
	b _08016472
_08016454:
	movs r1, #0
	ldr r4, _0801647C
	movs r3, #1
	ldr r2, [r4, #0]
_0801645C:
	adds r0, r3, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _08016450
	adds r1, #1
	cmp r1, #4
	ble _0801645C
_0801646C:
	movs r0, #1
	negs r0, r0
	mov sl, r0
_08016472:
	mov r1, sl
	cmp r1, #0
	bge _08016480
	movs r0, #0
	b _0801672E
_0801647C: .4byte gUnk_030056FC
_08016480:
	movs r1, #1
	mov r2, sl
	lsls r1, r2
	ldr r0, [r4, #0]
	orrs r0, r1
	str r0, [r4, #0]
	ldr r1, _080165D8
	lsls r0, r2, #1
	add r0, sl
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r7, r1, r0
	mov r3, r8
	ldrh r0, [r3, #4]
	ldr r4, _080165DC
	ands r4, r0
	subs r5, r4, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _080164B0
	adds r5, #0xc5
_080164B0:
	movs r0, #0xd8
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _080165E0
	adds r3, r1, r0
	mov r4, r8
	ldrh r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080164D6
	adds r0, r3, #0
	adds r0, #0x47
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080164D6
	adds r3, #0xd8
_080164D6:
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r7, r1
	str r3, [r0, #0]
	movs r2, #0
	mov r9, r2
	movs r5, #0
	mov r4, sl
	strh r4, [r7, #0]
	movs r0, #0xfe
	lsls r0, r0, #1
	adds r6, r7, r0
	movs r4, #0xf
	mov r1, sl
	ands r1, r4
	ldrb r2, [r6, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #0]
	mov r1, r8
	ldrh r0, [r1, #6]
	strh r0, [r7, #2]
	ldrh r0, [r1, #0]
	lsls r0, r0, #0xb
	str r0, [r7, #0x14]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0xb
	str r0, [r7, #0x18]
	ldrh r0, [r1, #0]
	lsls r0, r0, #3
	str r0, [r7, #0x24]
	ldrh r0, [r1, #2]
	lsls r0, r0, #3
	str r0, [r7, #0x28]
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	str r0, [r7, #0x1c]
	str r1, [r7, #0x20]
	mov r2, r8
	ldr r0, [r2, #0x14]
	str r0, [r7, #0x2c]
	movs r1, #0x81
	lsls r1, r1, #2
	adds r0, r7, r1
	adds r1, r3, #0
	movs r2, #0xd8
	bl sub_080B96A4
	mov r2, r8
	ldrh r0, [r2, #8]
	strh r0, [r7, #8]
	ldrh r1, [r2, #0x10]
	ldr r0, _080165E4
	ands r0, r1
	adds r1, r7, #0
	adds r1, #0x84
	strh r0, [r1, #0]
	ldrh r0, [r2, #0x12]
	adds r1, #2
	strh r0, [r1, #0]
	adds r0, r7, #0
	adds r0, #0x5a
	strh r5, [r0, #0]
	adds r0, #8
	strh r5, [r0, #0]
	adds r0, #0x1a
	strh r5, [r0, #0]
	adds r0, #4
	strh r5, [r0, #0]
	movs r0, #0x64
	str r0, [r7, #0x54]
	adds r2, r7, #0
	adds r2, #0x7a
	strh r5, [r2, #0]
	ldr r3, _080165E8
	adds r5, r7, r3
	mov r0, r9
	strb r0, [r5, #0]
	ldr r1, _080165EC
	adds r3, r7, r1
	movs r0, #1
	strb r0, [r3, #0]
	ldrb r0, [r6, #0]
	ands r4, r0
	strb r4, [r6, #0]
	movs r4, #0xff
	lsls r4, r4, #1
	adds r0, r7, r4
	mov r1, r9
	strb r1, [r0, #0]
	adds r4, #1
	adds r0, r7, r4
	strb r1, [r0, #0]
	ldrh r1, [r7, #2]
	adds r4, #3
	adds r0, r7, r4
	strh r1, [r0, #0]
	mov r0, r8
	ldrh r1, [r0, #4]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	str r2, [sp, #4]
	cmp r0, #0
	beq _080165BC
	ldrh r0, [r2, #0]
	movs r1, #0x44
	orrs r0, r1
	strh r0, [r2, #0]
	mov r1, r9
	strb r1, [r3, #0]
	movs r0, #0xff
	strb r0, [r5, #0]
_080165BC:
	bl sub_0800CCCC
	cmp r0, #0
	beq _080165F4
	bl sub_080020F4
	ldr r2, _080165F0
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r1, [r0, #0x2c]
	b _080165FA
	.2byte 0x0000
_080165D8: .4byte gUnk_030056F4
_080165DC: .4byte 0x00000FFF
_080165E0: .4byte gUnk_0847AD3C
_080165E4: .4byte 0x0000FF7F
_080165E8: .4byte 0x000001FD
_080165EC: .4byte 0x00000201
_080165F0: .4byte gUnk_03003CE0
_080165F4:
	ldr r0, _080166BC
	adds r0, #0x90
	ldrh r1, [r0, #0]
_080165FA:
	adds r0, r7, #0
	adds r0, #0x48
	strh r1, [r0, #0]
	mov r0, sl
	adds r0, #4
	lsls r0, r0, #0x18
	str r0, [r7, #0x50]
	adds r0, r7, #0
	adds r0, #0x60
	movs r1, #0
	strh r1, [r0, #0]
	subs r0, #0x20
	strh r1, [r0, #0]
	ldrh r0, [r7, #0]
	adds r0, #1
	adds r2, r7, #0
	adds r2, #0x76
	strh r0, [r2, #0]
	mov r3, r8
	ldrh r2, [r3, #0xc]
	adds r0, r7, #0
	adds r0, #0x78
	strh r2, [r0, #0]
	adds r0, #0x10
	strh r1, [r0, #0]
	str r1, [r7, #0x30]
	str r1, [r7, #0x38]
	str r1, [r7, #0x34]
	str r1, [r7, #0x3c]
	movs r6, #0
	mov r4, sl
	lsls r4, r4, #2
	str r4, [sp, #8]
	mov r0, sl
	lsls r0, r0, #0xa
	str r0, [sp, #0xc]
	mov r9, sp
	adds r5, r7, #0
	adds r5, #0x94
	adds r4, r7, #0
	adds r4, #0x8c
_0801664C:
	ldr r0, _080166C0
	strh r0, [r4, #0]
	movs r3, #0
	mov r1, r9
	strh r3, [r1, #0]
	mov r0, sp
	adds r1, r5, #0
	ldr r2, _080166C4
	str r3, [sp, #0x10]
	bl sub_080B8578
	adds r5, #0x28
	adds r4, #0x28
	adds r6, #1
	ldr r3, [sp, #0x10]
	cmp r6, #7
	bls _0801664C
	mov r2, r8
	ldrh r1, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08016686
	ldr r4, [sp, #4]
	ldrh r0, [r4, #0]
	movs r1, #2
	orrs r0, r1
	strh r0, [r4, #0]
_08016686:
	mov r0, r8
	ldrh r1, [r0, #4]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	beq _080166A0
	ldr r1, [sp, #4]
	ldrh r0, [r1, #0]
	movs r1, #8
	orrs r0, r1
	ldr r2, [sp, #4]
	strh r0, [r2, #0]
_080166A0:
	movs r3, #0xee
	lsls r3, r3, #1
	adds r0, r7, r3
	movs r1, #0
	strb r1, [r0, #0]
	mov r4, r8
	ldrh r0, [r4, #0xe]
	cmp r0, #1
	beq _080166D2
	cmp r0, #1
	bgt _080166C8
	cmp r0, #0
	beq _080166CE
	b _080166DA
_080166BC: .4byte gUnk_03003170
_080166C0: .4byte 0x0000FFFF
_080166C4: .4byte 0x01000018
_080166C8:
	cmp r0, #2
	beq _080166D6
	b _080166DA
_080166CE:
	movs r0, #0xe
	b _080166DC
_080166D2:
	movs r0, #0xf
	b _080166DC
_080166D6:
	strh r1, [r7, #0xc]
	b _080166DE
_080166DA:
	movs r0, #0
_080166DC:
	strh r0, [r7, #0xc]
_080166DE:
	ldr r4, _08016740
	ldr r2, [sp, #8]
	add r2, sl
	lsls r2, r2, #3
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r2, r0
	ldr r1, _08016744
	str r1, [r0, #0]
	adds r1, r4, #0
	adds r1, #0x10
	adds r1, r2, r1
	ldr r0, _08016748
	ldr r3, [sp, #0xc]
	adds r0, r3, r0
	str r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #0x20
	adds r0, r2, r0
	movs r3, #0
	str r3, [r0, #0]
	adds r0, r4, #0
	adds r0, #8
	adds r0, r2, r0
	movs r1, #0x3c
	str r1, [r0, #0]
	adds r0, r4, #0
	adds r0, #0x18
	adds r0, r2, r0
	str r3, [r0, #0]
	adds r0, r2, r4
	str r3, [r0, #0]
	adds r1, r4, #0
	adds r1, #0x24
	adds r2, r2, r1
	str r3, [r2, #0]
	adds r1, r7, #0
	bl sub_08000274
	movs r0, #1
_0801672E:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_08016740: .4byte gUnk_03004220
_08016744: .4byte sub_0801801C
_08016748: .4byte gUnk_030046EC
	thumb_func_end sub_0801641C
