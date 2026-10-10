	thumb_func_start sub_08001804
sub_08001804: @ 0x08001804
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	mov r8, r1
	ldr r7, _08001824
	ldrb r0, [r7, #1]
	cmp r0, #1
	beq _0800188C
	cmp r0, #1
	bgt _08001828
	cmp r0, #0
	beq _0800182E
	b _080018C0
	.2byte 0x0000
_08001824: .4byte gUnk_030024B0
_08001828:
	cmp r0, #2
	beq _080018B4
	b _080018C0
_0800182E:
	ldr r5, _080018A0
	ldr r6, [r5, #0]
	movs r1, #0x30
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08001886
	movs r0, #0x88
	adds r4, r6, #0
	ands r4, r0
	cmp r4, #8
	bne _080018C0
	movs r1, #4
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08001886
	ldr r1, [r7, #0x14]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _08001886
	bl sub_08000EF4
	movs r0, #0x80
	bl sub_08000FD4
	movs r0, #0x40
	bl sub_08000F64
	bl sub_08000F2C
	ldrb r1, [r5, #1]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #1]
	ldr r1, _080018A4
	movs r0, #0xc0
	strh r0, [r1, #0]
	subs r1, #0xf6
	ldr r0, _080018A8
	str r0, [r1, #0]
	strb r4, [r7, #0]
_08001886:
	ldr r1, _080018AC
	movs r0, #1
	strb r0, [r1, #1]
_0800188C:
	ldr r1, _080018AC
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _080018B4
	ldrb r0, [r1, #0xa]
	cmp r0, #7
	bhi _080018B0
	adds r0, #1
	strb r0, [r1, #0xa]
	b _080018B4
_080018A0: .4byte 0x04000128
_080018A4: .4byte 0x04000202
_080018A8: .4byte 0x0000C352
_080018AC: .4byte gUnk_030024B0
_080018B0:
	movs r0, #2
	strb r0, [r1, #1]
_080018B4:
	mov r0, r8
	bl sub_08001990
	mov r0, r9
	bl sub_0800191C
_080018C0:
	ldr r1, _080018DC
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
	ldrb r3, [r1, #3]
	ldrb r0, [r1, #2]
	lsls r2, r0, #8
	ldrb r0, [r1, #0]
	cmp r0, #8
	bne _080018E0
	movs r0, #0x80
	orrs r0, r2
	orrs r0, r3
	b _080018E4
_080018DC: .4byte gUnk_030024B0
_080018E0:
	adds r0, r3, #0
	orrs r0, r2
_080018E4:
	adds r2, r0, #0
	ldrb r0, [r1, #9]
	cmp r0, #0
	beq _080018F2
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r2, r0
_080018F2:
	ldrb r0, [r1, #0xa]
	lsrs r0, r0, #3
	lsls r1, r0, #0xf
	lsls r0, r6, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bls _0800190A
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r0, r1
	orrs r0, r2
	b _0800190E
_0800190A:
	adds r0, r2, #0
	orrs r0, r1
_0800190E:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08001804
