	thumb_func_start sub_0805B4CC
sub_0805B4CC: @ 0x0805B4CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #0]
	mov sl, r1
	movs r6, #0
_0805B4DE:
	adds r0, r6, #0
	subs r0, #0xa
	lsls r0, r0, #0xa
	ldr r2, [sp, #0]
	ldr r1, [r2, #0]
	adds r7, r1, r0
	movs r4, #0
	adds r5, r6, #1
	str r5, [sp, #4]
_0805B4F0:
	adds r0, r4, #0
	subs r0, #0xa
	lsls r0, r0, #0xa
	mov r2, sl
	ldr r1, [r2, #0]
	adds r5, r1, r0
	adds r0, r7, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_0800AE50
	movs r1, #7
	ands r1, r0
	lsls r0, r4, #2
	mov ip, r0
	adds r2, r4, #1
	mov r9, r2
	cmp r1, #0
	bne _0805B580
	movs r0, #0
	mov r8, r0
	ldr r0, _0805B574
	ldr r2, [r0, #0]
	movs r3, #0
_0805B520:
	ldrh r1, [r2, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805B550
	ldr r0, [r2, #0]
	subs r0, r7, r0
	asrs r1, r0, #8
	cmp r1, #0
	bge _0805B536
	negs r1, r1
_0805B536:
	ldr r0, [r2, #4]
	subs r0, r5, r0
	asrs r0, r0, #8
	cmp r0, #0
	bge _0805B542
	negs r0, r0
_0805B542:
	cmp r1, #7
	bgt _0805B550
	cmp r0, #7
	bgt _0805B550
	ldrh r1, [r2, #8]
	cmp r8, r1
	beq _0805B57C
_0805B550:
	adds r3, #1
	adds r2, #0x20
	cmp r3, #0xf
	bls _0805B520
	movs r0, #0
_0805B55A:
	cmp r0, #0
	bne _0805B580
	ldr r2, _0805B578
	ldr r0, [r2, #0]
	mov r5, ip
	adds r1, r5, r4
	lsls r1, r1, #2
	adds r1, r1, r4
	adds r1, r1, r6
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0]
	b _0805B594
_0805B574: .4byte gUnk_03005D58
_0805B578: .4byte gUnk_03000124
_0805B57C:
	adds r0, r2, #0
	b _0805B55A
_0805B580:
	ldr r0, _0805B5E8
	ldr r1, [r0, #0]
	mov r2, ip
	adds r0, r2, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r0, r0, r6
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1, #0]
_0805B594:
	mov r4, r9
	cmp r4, #0x14
	ble _0805B4F0
	ldr r6, [sp, #4]
	cmp r6, #0x14
	ble _0805B4DE
	movs r3, #0
	movs r5, #0
	str r5, [sp, #8]
_0805B5A6:
	negs r6, r3
	mov r9, r6
	cmp r6, r3
	bge _0805B5FA
	ldr r0, [sp, #8]
	mov r8, r0
_0805B5B2:
	lsls r1, r6, #0xa
	ldr r2, [sp, #0]
	ldr r0, [r2, #0]
	adds r7, r0, r1
	mov r4, r9
	cmp r4, r3
	bge _0805B5F4
	ldr r5, _0805B5E8
	mov ip, r5
	mov r0, r8
	adds r2, r0, r6
_0805B5C8:
	lsls r1, r4, #0xa
	mov r5, sl
	ldr r0, [r5, #0]
	adds r5, r0, r1
	mov r1, ip
	ldr r0, [r1, #0]
	adds r0, r2, r0
	adds r0, #0xdc
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0805B5EC
	ldr r2, [sp, #0]
	str r7, [r2, #0]
	mov r0, sl
	str r5, [r0, #0]
	b _0805B606
_0805B5E8: .4byte gUnk_03000124
_0805B5EC:
	adds r2, #0x15
	adds r4, #1
	cmp r4, r3
	blt _0805B5C8
_0805B5F4:
	adds r6, #1
	cmp r6, r3
	blt _0805B5B2
_0805B5FA:
	ldr r1, [sp, #8]
	subs r1, #0x15
	str r1, [sp, #8]
	adds r3, #1
	cmp r3, #9
	ble _0805B5A6
_0805B606:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0805B4CC
