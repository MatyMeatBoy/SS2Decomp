	thumb_func_start sub_0800AEF4
sub_0800AEF4: @ 0x0800AEF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r3, [sp, #0]
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r0, r0, #0x13
	mov sl, r0
	lsrs r1, r1, #0x13
	mov r5, sl
	ldr r0, _0800AFE8
	mov ip, r0
	mov r7, ip
	adds r7, #0x78
	ldrh r0, [r7, #0]
	cmp r5, r0
	ble _0800AF1E
	b _0800B106
_0800AF1E:
	movs r6, #0x80
	lsls r6, r6, #8
	adds r0, r5, #0
	ands r0, r6
	cmp r0, #0
	beq _0800AF2C
	b _0800B106
_0800AF2C:
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	mov r1, ip
	adds r1, #0x7a
	str r0, [sp, #0x18]
	ldrh r1, [r1, #0]
	cmp r4, r1
	ble _0800AF3E
	b _0800B106
_0800AF3E:
	adds r0, r4, #0
	ands r0, r6
	cmp r0, #0
	beq _0800AF48
	b _0800B106
_0800AF48:
	cmp r2, #0
	bne _0800AF4E
	b _0800B106
_0800AF4E:
	cmp r3, #0
	bne _0800AF54
	b _0800B106
_0800AF54:
	mov r1, ip
	ldr r1, [r1, #0x68]
	str r1, [sp, #4]
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _0800B04C
	ldr r0, [sp, #0x18]
	lsrs r3, r0, #0x10
	ldr r1, [sp, #0]
	adds r0, r4, r1
	cmp r3, r0
	blo _0800AF6E
	b _0800B106
_0800AF6E:
	lsrs r2, r2, #1
	str r2, [sp, #8]
	adds r5, r5, r2
	str r5, [sp, #0xc]
_0800AF76:
	mov r2, sl
	ldr r1, [sp, #8]
	subs r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r2, r4, #0x10
	asrs r1, r2, #0x10
	ldr r0, [sp, #8]
	add r0, sl
	lsls r6, r3, #0x10
	cmp r1, r0
	bhs _0800B034
	asrs r0, r6, #0x10
	mov r9, r0
	ldr r7, _0800AFE8
	movs r1, #0x8c
	adds r1, r1, r7
	mov ip, r1
	movs r5, #0xa
	movs r0, #0xc
	mov r8, r0
_0800AFA0:
	asrs r0, r2, #0x10
	adds r1, r7, #0
	adds r1, #0x78
	ldrh r1, [r1, #0]
	mov r2, r9
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [sp, #4]
	adds r3, r1, r0
	ldrb r1, [r3, #1]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800AFFA
	ldrb r1, [r3, #0]
	adds r0, r1, #0
	movs r2, #0xf
	ands r0, r2
	cmp r0, #0xc
	beq _0800AFFA
	mov r2, ip
	ldrh r0, [r2, #0]
	cmp r0, #0xb
	bne _0800AFEC
	cmp r1, #8
	beq _0800B012
	strb r5, [r3, #0]
	ldr r0, [r3, #0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1c
	lsls r0, r0, #4
	orrs r0, r5
	b _0800B010
	.2byte 0x0000
_0800AFE8: .4byte gUnk_03003170
_0800AFEC:
	strb r5, [r3, #0]
	ldr r0, [r3, #0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1c
	lsls r0, r0, #4
	orrs r0, r5
	b _0800B010
_0800AFFA:
	mov r1, ip
	ldrh r0, [r1, #0]
	cmp r0, #0xb
	bne _0800B00E
	ldrb r0, [r3, #0]
	cmp r0, #8
	beq _0800B012
	mov r2, r8
	strb r2, [r3, #0]
	b _0800B012
_0800B00E:
	mov r0, r8
_0800B010:
	strb r0, [r3, #0]
_0800B012:
	ldrb r1, [r3, #1]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #1]
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	lsls r2, r4, #0x10
	asrs r0, r2, #0x10
	ldr r1, [sp, #0xc]
	cmp r0, r1
	blo _0800AFA0
_0800B034:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r6, r2
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #0x18]
	asrs r0, r2, #0x10
	ldr r2, [sp, #0]
	adds r0, r0, r2
	cmp r1, r0
	blo _0800AF76
	b _0800B106
_0800B04C:
	ldr r0, [sp, #0x18]
	lsrs r3, r0, #0x10
	ldr r1, [sp, #0]
	adds r0, r4, r1
	cmp r3, r0
	bhs _0800B106
	lsrs r2, r2, #1
	mov r9, r2
	add r5, r9
	str r5, [sp, #0x14]
	mov r1, sl
	subs r0, r1, r2
	lsls r0, r0, #0x10
	str r0, [sp, #0x10]
_0800B068:
	ldr r2, [sp, #0x10]
	lsrs r4, r2, #0x10
	lsls r2, r4, #0x10
	asrs r1, r2, #0x10
	mov r0, sl
	add r0, r9
	lsls r6, r3, #0x10
	cmp r1, r0
	bhs _0800B0F0
	asrs r0, r6, #0x10
	mov r8, r0
	movs r1, #0xf
	mov ip, r1
	movs r5, #0x10
	negs r5, r5
	movs r7, #0
_0800B088:
	asrs r0, r2, #0x10
	ldr r2, _0800B0B4
	ldrh r1, [r2, #0]
	mov r2, r8
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [sp, #4]
	adds r3, r1, r0
	ldrb r0, [r3, #0]
	adds r1, r0, #0
	mov r2, ip
	ands r1, r2
	cmp r1, #0xc
	bne _0800B0B8
	ldrb r1, [r3, #1]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r3, #1]
	strb r7, [r3, #0]
	b _0800B0DC
_0800B0B4: .4byte gUnk_030031E8
_0800B0B8:
	cmp r1, #0xa
	bne _0800B0D0
	lsrs r0, r0, #4
	mov r1, ip
	ands r0, r1
	ldrb r2, [r3, #1]
	adds r1, r5, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	strb r7, [r3, #0]
	b _0800B0DC
_0800B0D0:
	cmp r0, #8
	bne _0800B0DC
	ldrb r1, [r3, #1]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r3, #1]
_0800B0DC:
	lsls r0, r4, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r4, r0, #0x10
	lsls r2, r4, #0x10
	asrs r0, r2, #0x10
	ldr r1, [sp, #0x14]
	cmp r0, r1
	blo _0800B088
_0800B0F0:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r6, r2
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #0x18]
	asrs r0, r2, #0x10
	ldr r2, [sp, #0]
	adds r0, r0, r2
	cmp r1, r0
	blo _0800B068
_0800B106:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0800AEF4
