	thumb_func_start sub_080972B8
sub_080972B8: @ 0x080972B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x60
	mov r8, r0
	adds r6, r1, #0
	ldr r0, [sp, #0x80]
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x3c]
	mov r0, sl
	strb r0, [r6, #0x1c]
	movs r0, #0
	mov r1, sp
	adds r1, #0x38
	str r1, [sp, #0x50]
	mov r3, sp
	adds r3, #0x3a
	str r3, [sp, #0x54]
	lsrs r2, r2, #0xc
	mov r9, r2
	movs r7, #0x1f
	movs r4, #0x7d
	negs r4, r4
	mov ip, r4
_080972F6:
	lsls r3, r0, #0x10
	asrs r3, r3, #0x10
	mov r1, r9
	adds r0, r1, r3
	lsls r0, r0, #1
	ldr r4, [r6, #0xc]
	adds r4, r4, r0
	lsls r0, r3, #1
	mov r5, sp
	adds r5, r5, r0
	adds r5, #0x18
	ldr r1, [r4, #0]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	ands r1, r7
	ldrb r2, [r5, #0]
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0]
	ldr r1, [r4, #0]
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r1, r0
	ldrh r2, [r5, #0]
	ldr r0, _080973B0
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #0]
	ldr r1, [r4, #0]
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x1b
	ands r1, r7
	lsls r1, r1, #2
	ldrb r2, [r5, #1]
	mov r0, ip
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	adds r3, #1
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x10
	asrs r3, r3, #0x10
	cmp r3, #0xf
	ble _080972F6
	movs r2, #0
	str r2, [sp, #0x40]
	mov r9, r2
	movs r5, #0
	movs r7, #2
	mov r3, sl
	adds r3, #0x10
	str r3, [sp, #0x58]
	mov r4, r8
	adds r4, #0x6c
	str r4, [sp, #0x4c]
	adds r0, r6, #0
	adds r0, #0x1c
	str r0, [sp, #0x5c]
	mov r1, r8
	adds r1, #0x68
	str r1, [sp, #0x44]
	mov r2, r8
	adds r2, #0x6a
	str r2, [sp, #0x48]
	ldr r3, [sp, #0x50]
	mov sl, r3
_0809737E:
	mov r1, r9
	adds r1, #1
	lsls r1, r1, #0x10
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r1
	lsrs r0, r0, #0x10
	mov r9, r0
	ldr r1, [sp, #0x40]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x40]
	movs r4, #1
	ands r1, r4
	cmp r1, #0
	beq _080973B4
	movs r0, #0
	movs r1, #0
	mov r2, r9
	movs r3, #0
	bl sub_08009088
	b _080973C0
	.2byte 0x0000
_080973B0: .4byte 0xFFFFFC1F
_080973B4:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	mov r3, r9
	bl sub_08009088
_080973C0:
	cmp r7, #1
	beq _080973DA
	cmp r7, #2
	bne _080973F6
	adds r1, r5, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r1, #0x3c
	bls _080973F6
	movs r5, #0
	movs r7, #1
	b _080973F6
_080973DA:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	add r0, sp, #0x18
	movs r1, #2
	adds r2, r5, #0
	movs r3, #0x3c
	bl sub_08096E20
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080973F6
	movs r5, #0
	movs r7, #0
_080973F6:
	ldr r0, [sp, #0x58]
	add r1, sp, #0x18
	movs r2, #1
	bl sub_08000AF0
	ldr r0, [sp, #0x44]
	ldrh r1, [r0, #0]
	movs r2, #1
	str r2, [sp, #0]
	adds r0, r6, #0
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	bl sub_08065370
	mov r3, r8
	ldr r0, [r3, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r3, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r4, #0
	str r4, [sp, #0]
	str r4, [sp, #4]
	mov r2, sl
	ldr r3, [sp, #0x54]
	bl sub_0800BC08
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x54]
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldr r3, [sp, #0x44]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0x48]
	ldrh r3, [r4, #0]
	ldr r4, [sp, #0x3c]
	str r4, [sp, #0]
	movs r4, #1
	str r4, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	ldr r4, [sp, #0x5c]
	str r4, [sp, #0xc]
	ldr r4, [r6, #8]
	str r4, [sp, #0x10]
	ldr r4, [r6, #0]
	str r4, [sp, #0x14]
	bl sub_08007974
	bl sub_08000B38
	bl sub_080003F0
	cmp r7, #0
	bne _0809737E
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08009088
	movs r0, #1
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_080972B8
