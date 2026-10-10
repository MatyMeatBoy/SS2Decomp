	thumb_func_start sub_08017C6C
sub_08017C6C: @ 0x08017C6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov r8, r0
	ldr r1, [r7, #0x18]
	mov r9, r1
	adds r1, r7, #0
	adds r1, #0x76
	ldrh r0, [r1, #0]
	lsls r3, r0, #0x10
	lsrs r0, r3, #0x10
	cmp r0, #4
	bls _08017C90
	b _08017DFC
_08017C90:
	ldr r0, _08017E10
	ldr r1, [r0, #0]
	movs r5, #1
	ands r1, r5
	ldrh r2, [r7, #0]
	adds r0, r5, #0
	ands r0, r2
	cmp r1, r0
	beq _08017CA4
	b _08017E02
_08017CA4:
	adds r4, r7, #0
	adds r4, #0x7a
	ldrh r0, [r4, #0]
	ldr r2, _08017E14
	mov ip, r2
	mov r1, ip
	ands r1, r0
	mov ip, r1
	strh r1, [r4, #0]
	ldr r2, _08017E18
	mov sl, r2
	adds r0, r7, r2
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r0, #0
	bne _08017CC8
	b _08017DEA
_08017CC8:
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0, #0]
	cmp r0, #0xff
	bne _08017CD6
	b _08017DEA
_08017CD6:
	ldr r1, _08017E1C
	asrs r2, r3, #0x10
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r3, r1, r0
	ldr r0, _08017E20
	adds r1, r5, #0
	lsls r1, r2
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq _08017DEA
	ldrh r0, [r7, #0xc]
	cmp r0, #0xb
	beq _08017DEA
	mov r2, sl
	adds r0, r3, r2
	ldrb r0, [r0, #0]
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov sl, r1
	cmp r0, #0
	beq _08017DEA
	ldr r1, [r3, #0x14]
	mov r2, r8
	subs r1, r2, r1
	lsls r1, r1, #8
	ldr r0, [r3, #0x18]
	mov r3, r9
	subs r0, r3, r0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	asrs r6, r1, #0x10
	adds r1, r6, #0
	cmp r6, #0
	bge _08017D2A
	negs r1, r6
_08017D2A:
	cmp r1, #7
	bgt _08017DEA
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	adds r0, r5, #0
	cmp r5, #0
	bge _08017D3A
	negs r0, r5
_08017D3A:
	cmp r0, #7
	bgt _08017DEA
	movs r1, #0x10
	mov r0, ip
	orrs r0, r1
	strh r0, [r4, #0]
	adds r0, r6, #0
	muls r0, r6, r0
	adds r1, r5, #0
	muls r1, r5, r1
	adds r0, r0, r1
	bl sub_080B858C
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	mov r1, sl
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r2, r2, r4
	lsls r2, r2, #0x10
	ldr r6, _08017E24
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	adds r1, r3, #0
	adds r1, #0x40
	lsls r1, r1, #1
	adds r1, r1, r6
	movs r4, #0
	ldrsh r1, [r1, r4]
	asrs r5, r2, #0x11
	muls r1, r5, r1
	mov r2, r8
	adds r4, r2, r1
	lsls r3, r3, #1
	adds r3, r3, r6
	movs r2, #0
	ldrsh r1, [r3, r2]
	muls r1, r5, r1
	mov r3, r9
	adds r2, r3, r1
	ldr r1, _08017E28
	lsrs r0, r0, #0x14
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	adds r1, r4, #0
	movs r3, #0
	bl sub_0800B118
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	beq _08017DEA
	lsls r0, r1, #0x10
	ldr r1, _08017E2C
	ldr r4, _08017E30
	adds r0, r0, r4
	asrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	lsls r1, r1, #0x14
	asrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r5, r0
	mov r3, r8
	adds r4, r3, r0
	lsls r1, r1, #1
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	muls r0, r5, r0
	mov r3, r9
	adds r2, r3, r0
	str r4, [r7, #0x14]
	str r2, [r7, #0x18]
_08017DEA:
	adds r1, r7, #0
	adds r1, #0x76
	ldrh r0, [r1, #0]
	adds r0, #1
	strh r0, [r1, #0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bls _08017E02
_08017DFC:
	ldrh r0, [r7, #0]
	adds r0, #1
	strh r0, [r1, #0]
_08017E02:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08017E10: .4byte gUnk_03002344
_08017E14: .4byte 0x0000FFEF
_08017E18: .4byte 0x0000022E
_08017E1C: .4byte gUnk_030056F4
_08017E20: .4byte gUnk_030056FC
_08017E24: .4byte gUnk_080B9704
_08017E28: .4byte gUnk_084790B4
_08017E2C: .4byte gUnk_0849E730
_08017E30: .4byte 0xFFFF0000
	thumb_func_end sub_08017C6C
