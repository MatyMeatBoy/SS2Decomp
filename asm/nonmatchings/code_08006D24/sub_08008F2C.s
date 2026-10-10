	thumb_func_start sub_08008F2C
sub_08008F2C: @ 0x08008F2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	mov ip, r1
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	ldr r4, [sp, #0x28]
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r9, r1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov sl, r4
	ldr r3, _08008F68
	ldr r2, [r3, #0]
	cmp r2, #0x31
	bls _08008F6C
	movs r0, #0
	b _08009000
	.2byte 0x0000
_08008F68: .4byte gUnk_030028C8
_08008F6C:
	movs r0, #0x2c
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _08008FEC
	adds r4, r1, r0
	adds r0, r2, #1
	str r0, [r3, #0]
	str r5, [r4, #8]
	mov r0, ip
	str r0, [r4, #0xc]
	movs r5, #0
	strh r7, [r4, #0x10]
	strh r6, [r4, #0x12]
	movs r1, #0x22
	adds r1, r1, r4
	mov ip, r1
	movs r3, #7
	mov r1, r8
	ands r1, r3
	mov r0, ip
	ldrb r2, [r0, #0]
	movs r0, #8
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #0]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0x1c]
	ldr r0, [sp, #0x30]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x34]
	str r0, [r4, #0x18]
	movs r1, #1
	mov r0, r9
	ands r1, r0
	lsls r1, r1, #3
	mov r0, ip
	ldrb r2, [r0, #0]
	movs r0, #9
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	mov r1, sl
	ands r1, r3
	lsls r1, r1, #4
	movs r2, #0x71
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #0]
	strh r5, [r4, #0x24]
	strh r5, [r4, #0x26]
	strh r5, [r4, #0x28]
	ldr r2, _08008FF0
	ldr r1, [r2, #0]
	cmp r1, #0
	beq _08008FF4
	str r4, [r1, #4]
	str r1, [r4, #0]
	str r5, [r4, #4]
	str r4, [r2, #0]
	b _08008FFE
_08008FEC: .4byte gUnk_030028D0
_08008FF0: .4byte gUnk_030028C4
_08008FF4:
	ldr r0, _08009010
	str r4, [r0, #0]
	str r4, [r2, #0]
	str r1, [r4, #0]
	str r1, [r4, #4]
_08008FFE:
	adds r0, r4, #0
_08009000:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_08009010: .4byte gUnk_030028C0
	thumb_func_end sub_08008F2C
