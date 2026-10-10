	thumb_func_start sub_0809561C
sub_0809561C: @ 0x0809561C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa4
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x14
	ble _08095634
	movs r1, #0x14
_08095634:
	lsls r1, r1, #0x18
	mov r9, r1
	add r5, sp, #0x7c
	mov r0, sp
	adds r0, #0x48
	str r0, [sp, #0x94]
	movs r1, #0x37
	add r1, sp
	mov sl, r1
	mov r2, sp
	adds r2, #0x82
	str r2, [sp, #0xa0]
	adds r0, #0x38
	str r0, [sp, #0x9c]
	mov r1, sp
	adds r1, #0x64
	str r1, [sp, #0x98]
	mov r2, r9
	asrs r1, r2, #0x18
	lsls r0, r1, #1
	adds r4, r0, r1
_0809565E:
	lsls r0, r4, #3
	bl sub_08001494
	adds r7, r0, #0
	bl sub_080003F0
	cmp r7, #0
	beq _0809565E
	movs r6, #0
	str r6, [sp, #0x7c]
	mov r0, r9
	asrs r0, r0, #0x18
	mov r8, r0
	lsls r2, r0, #1
	add r2, r8
	lsls r2, r2, #1
	ldr r0, _08095720
	ands r2, r0
	movs r0, #0xa0
	lsls r0, r0, #0x13
	orrs r2, r0
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_080B8578
	ldr r1, _08095724
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	add r0, sp, #0x14
	movs r2, #7
	adds r3, r5, #0
	bl sub_08065158
	ldr r1, _08095728
	str r4, [sp, #0]
	ldr r0, [sp, #0x94]
	movs r2, #0
	adds r3, r5, #0
	bl sub_08065158
	mov r1, sl
	strb r6, [r1, #0]
	ldr r2, [sp, #0x94]
	strb r4, [r2, #0x1c]
	ldr r1, [sp, #0x20]
	adds r1, #0xe0
	movs r0, #0x10
	movs r2, #1
	bl sub_08000AF0
	ldr r0, [sp, #0x94]
	ldr r1, [r0, #0xc]
	movs r0, #0x11
	movs r2, #1
	bl sub_08000AF0
	movs r5, #0
	cmp r5, r8
	bge _08095700
	ldr r6, _0809572C
	movs r4, #0xa0
	lsls r4, r4, #8
	mov r2, r8
	movs r3, #1
_080956E2:
	lsls r1, r5, #0x18
	asrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r7
	str r6, [r0, #0]
	str r4, [r0, #4]
	strb r3, [r0, #9]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	asrs r1, r1, #0x18
	cmp r1, r2
	blt _080956E2
_08095700:
	movs r1, #0
	str r1, [sp, #0x8c]
	ldr r2, [sp, #0xa0]
	strh r1, [r2, #0]
	add r0, sp, #0x8c
	ldrh r1, [r0, #0]
	ldr r0, [sp, #0x9c]
	strh r1, [r0, #0]
	movs r0, #1
	strb r0, [r7, #8]
	movs r0, #0x1e
	strb r0, [r7, #0xb]
	movs r0, #6
	bl sub_0801AB50
	b _08095734
_08095720: .4byte 0x001FFFFF
_08095724: .4byte 0x00050046
_08095728: .4byte 0x00050047
_0809572C: .4byte 0xFFFFE000
_08095730:
	bl sub_080003F0
_08095734:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08095730
_0809573C:
	movs r1, #0
	str r1, [sp, #0x90]
	movs r5, #0
	mov sl, r5
	mov r2, r9
	cmp r2, #0
	bgt _0809574C
	b _0809596A
_0809574C:
	lsls r1, r5, #0x18
	asrs r2, r1, #0x18
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r3, r0, r7
	ldrb r0, [r3, #0xb]
	mov r8, r1
	cmp r0, #0
	beq _08095766
	subs r0, #1
	strb r0, [r3, #0xb]
	b _08095788
_08095766:
	mov r1, r9
	asrs r0, r1, #0x18
	subs r0, #1
	cmp r0, r2
	ble _08095788
	ldrb r0, [r3, #8]
	cmp r0, #0
	beq _08095788
	adds r1, r3, #0
	adds r1, #0x18
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne _08095788
	movs r0, #1
	strb r0, [r1, #8]
	movs r0, #0x1e
	strb r0, [r1, #0xb]
_08095788:
	mov r2, r8
	asrs r0, r2, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	ldrb r0, [r1, #8]
	subs r0, #1
	cmp r0, #7
	bls _0809579E
	b _0809592E
_0809579E:
	lsls r0, r0, #2
	ldr r1, _080957A8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_080957A8: .4byte _080957AC
_080957AC:
	.4byte _080957CC
_080957B0: .4byte _08095826
_080957B4: .4byte _0809592E
_080957B8: .4byte _08095890
_080957BC: .4byte _080958BA
_080957C0: .4byte _080958F0
_080957C4: .4byte _08095912
_080957C8: .4byte _0809592E
_080957CC:
	mov r0, r8
	asrs r2, r0, #0x18
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r6, r0, r7
	ldr r0, [r6, #0]
	ldr r1, [r6, #4]
	ldr r3, _08095800
	lsls r2, r2, #3
	adds r4, r2, r3
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	movs r5, #2
	str r5, [sp, #0]
	bl sub_08097B6C
	cmp r0, #0
	beq _08095804
	movs r0, #0
	movs r1, #2
	strh r5, [r6, #0xe]
	strh r0, [r6, #0x12]
	strh r0, [r6, #0x10]
	strb r1, [r6, #8]
	b _0809592E
_08095800: .4byte gUnk_0851863C
_08095804:
	ldr r0, [r6, #0]
	ldr r1, [r6, #4]
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	add r4, sp, #0x84
	str r4, [sp, #0]
	bl sub_080979D8
	ldr r0, [r6, #0]
	ldr r1, [sp, #0x84]
	adds r0, r0, r1
	str r0, [r6, #0]
	ldr r0, [r6, #4]
	ldr r1, [r4, #4]
	adds r0, r0, r1
	str r0, [r6, #4]
	b _0809592E
_08095826:
	mov r1, r8
	asrs r4, r1, #0x18
	cmp r4, #0
	bne _08095876
	ldrb r1, [r7, #0xa]
	cmp r1, #3
	bhi _08095858
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08095840
	movs r0, #3
	b _08095842
_08095840:
	movs r0, #2
_08095842:
	strh r0, [r7, #0xe]
	mov r2, r8
	asrs r0, r2, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	ldrb r0, [r1, #0xa]
	adds r0, #1
	strb r0, [r1, #0xa]
	b _0809592E
_08095858:
	movs r0, #1
	str r0, [sp, #0x8c]
	movs r0, #0xc5
	lsls r0, r0, #1
	bl sub_0805865C
	strh r4, [r7, #0xc]
	add r1, sp, #0x8c
	ldrh r1, [r1, #0]
	strh r1, [r7, #0xe]
	strh r4, [r7, #0x12]
	strh r4, [r7, #0x10]
	movs r0, #3
	strb r0, [r7, #8]
	b _0809592E
_08095876:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r7
	movs r2, #0
	strh r2, [r0, #0xc]
	movs r1, #1
	strh r1, [r0, #0xe]
	strh r2, [r0, #0x12]
	strh r2, [r0, #0x10]
	movs r1, #3
	strb r1, [r0, #8]
	b _0809592E
_08095890:
	mov r2, r8
	asrs r1, r2, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r0, r7
	ldrh r0, [r2, #0xc]
	cmp r0, #0x77
	bhi _080958A8
	adds r0, #1
	strh r0, [r2, #0xc]
	b _0809592E
_080958A8:
	movs r0, #0
	strh r0, [r2, #0xc]
	movs r1, #2
	strh r1, [r2, #0xe]
	strh r0, [r2, #0x12]
	strh r0, [r2, #0x10]
	movs r0, #5
	strb r0, [r2, #8]
	b _0809592E
_080958BA:
	mov r0, r8
	asrs r1, r0, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r4, r0, r7
	ldrh r0, [r4, #0xc]
	cmp r0, #0x1d
	bhi _080958D2
	adds r0, #1
	strh r0, [r4, #0xc]
	b _0809592E
_080958D2:
	ldr r0, _080958EC
	bl sub_0805865C
	movs r1, #0
	strb r1, [r4, #9]
	strh r1, [r4, #0x14]
	movs r0, #7
	strh r0, [r4, #0xe]
	strh r1, [r4, #0x12]
	strh r1, [r4, #0x10]
	movs r0, #6
	strb r0, [r4, #8]
	b _0809592E
_080958EC: .4byte 0x0000018B
_080958F0:
	mov r2, r8
	asrs r1, r2, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, r7
	ldrh r2, [r1, #0x14]
	cmp r2, #1
	bne _0809592E
	movs r0, #0
	strh r0, [r1, #0xc]
	strb r2, [r1, #9]
	strh r2, [r1, #0xe]
	strh r0, [r1, #0x12]
	strh r0, [r1, #0x10]
	movs r0, #7
	b _0809592C
_08095912:
	mov r0, r8
	asrs r1, r0, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, r7
	ldrh r0, [r1, #0xc]
	cmp r0, #0x59
	bhi _0809592A
	adds r0, #1
	strh r0, [r1, #0xc]
	b _0809592E
_0809592A:
	movs r0, #8
_0809592C:
	strb r0, [r1, #8]
_0809592E:
	mov r2, r8
	asrs r1, r2, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	cmp r0, #3
	bhi _08095948
	cmp r0, #3
	beq _08095948
	movs r0, #1
	str r0, [sp, #0x90]
_08095948:
	mov r2, r8
	asrs r1, r2, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	cmp r0, #8
	beq _0809595E
	movs r0, #1
	mov sl, r0
_0809595E:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r0, r9
	bge _0809596A
	b _0809574C
_0809596A:
	movs r0, #0xff
	lsls r0, r0, #0x18
	add r0, r9
	lsrs r5, r0, #0x18
	lsls r0, r5, #0x18
	cmp r0, #0
	blt _080959E2
	movs r6, #0
_0809597A:
	asrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	ldrb r0, [r1, #8]
	cmp r0, #3
	bhi _08095994
	ldr r2, [sp, #0x90]
	cmp r2, #0
	bne _08095994
	movs r0, #4
	strb r0, [r1, #8]
_08095994:
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r4, r0, r7
	ldrh r1, [r4, #0xe]
	adds r2, r4, #0
	adds r2, #0x10
	adds r3, r4, #0
	adds r3, #0x12
	ldrb r0, [r4, #9]
	str r0, [sp, #0]
	add r0, sp, #0x14
	bl sub_08065370
	strh r0, [r4, #0x14]
	ldr r0, [r4, #0]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	ldrh r2, [r4, #0xe]
	ldrh r3, [r4, #0x10]
	str r6, [sp, #0]
	add r4, sp, #0x30
	str r4, [sp, #4]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #8]
	ldr r4, [sp, #0x14]
	str r4, [sp, #0xc]
	str r6, [sp, #0x10]
	bl sub_080087AC
	subs r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r0, r5, #0x18
	cmp r0, #0
	bge _0809597A
_080959E2:
	movs r0, #1
	str r0, [sp, #0]
	ldr r0, [sp, #0x94]
	ldr r1, [sp, #0x8c]
	ldr r2, [sp, #0x9c]
	ldr r3, [sp, #0xa0]
	bl sub_08065370
	ldr r0, [sp, #0x9c]
	ldrh r3, [r0, #0]
	movs r1, #0
	str r1, [sp, #0]
	ldr r2, [sp, #0x98]
	str r2, [sp, #4]
	ldr r2, [sp, #0x94]
	ldr r0, [r2, #8]
	str r0, [sp, #8]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r0, #0x20
	movs r1, #0x28
	ldr r2, [sp, #0x8c]
	bl sub_080087AC
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #1
	bne _08095A24
	movs r0, #0
	mov sl, r0
_08095A24:
	mov r1, sl
	cmp r1, #0
	beq _08095A2C
	b _0809573C
_08095A2C:
	movs r0, #6
	bl sub_0801ABE8
	b _08095A38
_08095A34:
	bl sub_080003F0
_08095A38:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08095A34
	movs r0, #0xc5
	lsls r0, r0, #1
	bl sub_0805867C
	adds r0, r7, #0
	bl sub_08001538
	add sp, #0xa4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0809561C
