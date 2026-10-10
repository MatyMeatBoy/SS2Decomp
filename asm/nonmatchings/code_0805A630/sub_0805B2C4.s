	thumb_func_start sub_0805B2C4
sub_0805B2C4: @ 0x0805B2C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp, #0]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldrh r0, [r3, #0]
	cmp r0, #0
	bne _0805B2EE
	movs r0, #0
	b _0805B4BA
_0805B2E2:
	mov r0, sl
	str r0, [r2, #0]
	str r6, [r2, #4]
	movs r0, #1
	strh r0, [r2, #0xa]
	b _0805B4B8
_0805B2EE:
	ldr r1, _0805B3D4
	ldr r2, [r1, #0]
	ldr r0, _0805B3D8
	adds r4, r0, #0
	adds r5, r0, #0
	movs r6, #0
	movs r3, #0
	mov r8, r1
	movs r7, #1
_0805B300:
	ldrh r1, [r2, #0xa]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0805B316
	adds r6, #1
	ldrh r0, [r2, #0xc]
	cmp r0, r4
	bhs _0805B316
	adds r4, r0, #0
	adds r5, r3, #0
_0805B316:
	adds r3, #1
	adds r2, #0x20
	cmp r3, #0xf
	bls _0805B300
	cmp r6, #0xf
	bls _0805B32E
	mov r1, r8
	ldr r2, [r1, #0]
	lsls r0, r5, #5
	adds r0, r0, r2
	movs r1, #0
	strh r1, [r0, #0xa]
_0805B32E:
	movs r0, #0x20
	ldr r3, [sp, #8]
	ands r0, r3
	movs r5, #0
	str r5, [sp, #0x10]
	cmp r0, #0
	beq _0805B33E
	str r3, [sp, #0x10]
_0805B33E:
	movs r7, #0
_0805B340:
	adds r0, r7, #0
	subs r0, #0xa
	lsls r0, r0, #0xa
	ldr r6, [sp, #0]
	adds r6, r6, r0
	mov sl, r6
	movs r4, #0
	adds r0, r7, #1
	str r0, [sp, #0x14]
_0805B352:
	adds r0, r4, #0
	subs r0, #0xa
	lsls r0, r0, #0xa
	ldr r1, [sp, #4]
	adds r6, r1, r0
	mov r0, sl
	adds r1, r6, #0
	ldr r2, [sp, #0x10]
	bl sub_0800AE50
	movs r1, #7
	ands r1, r0
	lsls r5, r4, #2
	adds r3, r4, #1
	mov r8, r3
	cmp r1, #0
	bne _0805B3E4
	ldr r0, _0805B3D4
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r0, _0805B3DC
	mov r9, r0
_0805B37E:
	ldrh r1, [r2, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805B3B2
	ldr r0, [r2, #0]
	mov r1, sl
	subs r0, r1, r0
	asrs r1, r0, #8
	cmp r1, #0
	bge _0805B396
	negs r1, r1
_0805B396:
	ldr r0, [r2, #4]
	subs r0, r6, r0
	asrs r0, r0, #8
	cmp r0, #0
	bge _0805B3A2
	negs r0, r0
_0805B3A2:
	cmp r1, #7
	bgt _0805B3B2
	cmp r0, #7
	bgt _0805B3B2
	ldr r0, [sp, #8]
	ldrh r1, [r2, #8]
	cmp r0, r1
	beq _0805B3E0
_0805B3B2:
	adds r3, #1
	adds r2, #0x20
	cmp r3, #0xf
	bls _0805B37E
	movs r0, #0
_0805B3BC:
	cmp r0, #0
	bne _0805B3E4
	mov r3, r9
	ldr r0, [r3, #0]
	adds r1, r5, r4
	lsls r1, r1, #2
	adds r1, r1, r4
	adds r1, r1, r7
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0]
	b _0805B3F6
_0805B3D4: .4byte gUnk_03005D58
_0805B3D8: .4byte 0x00011170
_0805B3DC: .4byte gUnk_03000124
_0805B3E0:
	adds r0, r2, #0
	b _0805B3BC
_0805B3E4:
	ldr r0, _0805B4A0
	ldr r1, [r0, #0]
	adds r0, r5, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r0, r0, r7
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1, #0]
_0805B3F6:
	mov r4, r8
	cmp r4, #0x14
	ble _0805B352
	ldr r7, [sp, #0x14]
	cmp r7, #0x14
	ble _0805B340
	ldr r0, _0805B4A4
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r4, _0805B4A8
_0805B40A:
	ldrh r1, [r2, #0xa]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0805B4B0
	ldr r5, [sp, #0]
	str r5, [r2, #0]
	ldr r6, [sp, #4]
	str r6, [r2, #4]
	adds r1, r2, #0
	adds r1, #0x10
	ldr r0, [sp, #0xc]
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r3, _0805B4AC
	ldrh r1, [r3, #0]
	adds r0, r1, #1
	strh r0, [r3, #0]
	strh r1, [r2, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	bls _0805B440
	movs r0, #1
	strh r0, [r3, #0]
_0805B440:
	movs r0, #5
	strh r0, [r2, #0xe]
	mov r0, sp
	ldrh r0, [r0, #8]
	strh r0, [r2, #8]
	movs r5, #0
	mov r9, r5
_0805B44E:
	negs r7, r5
	mov r8, r7
	cmp r7, r5
	bge _0805B48E
	mov ip, r9
_0805B458:
	lsls r1, r7, #0xa
	ldr r0, [r2, #0]
	adds r0, r0, r1
	mov sl, r0
	mov r4, r8
	cmp r4, r5
	bge _0805B488
	ldr r3, [r2, #4]
	ldr r0, _0805B4A0
	ldr r0, [r0, #0]
	adds r0, #0xdc
	adds r0, r7, r0
	mov r6, ip
	adds r1, r6, r0
_0805B474:
	lsls r0, r4, #0xa
	adds r6, r3, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq _0805B480
	b _0805B2E2
_0805B480:
	adds r1, #0x15
	adds r4, #1
	cmp r4, r5
	blt _0805B474
_0805B488:
	adds r7, #1
	cmp r7, r5
	blt _0805B458
_0805B48E:
	movs r0, #0x15
	negs r0, r0
	add r9, r0
	adds r5, #1
	cmp r5, #9
	ble _0805B44E
	movs r0, #1
	strh r0, [r2, #0xa]
	b _0805B4B8
_0805B4A0: .4byte gUnk_03000124
_0805B4A4: .4byte gUnk_03005D58
_0805B4A8: .4byte 0x0000FFFE
_0805B4AC: .4byte gUnk_03005D5C
_0805B4B0:
	adds r3, #1
	adds r2, #0x20
	cmp r3, #0xf
	bls _0805B40A
_0805B4B8:
	adds r0, r2, #0
_0805B4BA:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0805B2C4
