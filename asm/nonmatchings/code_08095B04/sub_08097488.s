	thumb_func_start sub_08097488
sub_08097488: @ 0x08097488
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	adds r6, r0, #0
	adds r7, r1, #0
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	mov r0, sl
	strb r0, [r7, #0x1c]
	movs r0, #0
	add r1, sp, #0x38
	mov ip, r1
	mov r3, sp
	adds r3, #0x3a
	str r3, [sp, #0x4c]
	lsrs r2, r2, #0xc
	mov r9, r2
	movs r4, #0x1f
	mov r8, r4
_080974B8:
	lsls r3, r0, #0x10
	asrs r3, r3, #0x10
	mov r1, r9
	adds r0, r1, r3
	lsls r0, r0, #1
	ldr r4, [r7, #0xc]
	adds r4, r4, r0
	lsls r0, r3, #1
	mov r5, sp
	adds r5, r5, r0
	adds r5, #0x18
	ldr r1, [r4, #0]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	mov r2, r8
	ands r1, r2
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
	ldr r0, _08097578
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #0]
	ldr r1, [r4, #0]
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x1b
	mov r4, r8
	ands r1, r4
	lsls r1, r1, #2
	ldrb r2, [r5, #1]
	movs r0, #0x7d
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	adds r3, #1
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x10
	asrs r3, r3, #0x10
	cmp r3, #0xf
	ble _080974B8
	movs r0, #0
	str r0, [sp, #0x3c]
	mov r9, r0
	movs r5, #0
	movs r1, #2
	mov r8, r1
	mov r2, sl
	adds r2, #0x10
	str r2, [sp, #0x50]
	adds r3, r6, #0
	adds r3, #0x68
	str r3, [sp, #0x44]
	adds r4, r6, #0
	adds r4, #0x6a
	str r4, [sp, #0x48]
	adds r0, r7, #0
	adds r0, #0x1c
	str r0, [sp, #0x54]
	mov r1, ip
	str r1, [sp, #0x40]
	ldr r2, [sp, #0x4c]
	mov sl, r2
_08097546:
	mov r1, r9
	adds r1, #1
	lsls r1, r1, #0x10
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r1
	lsrs r0, r0, #0x10
	mov r9, r0
	ldr r1, [sp, #0x3c]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x3c]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0809757C
	movs r0, #0
	movs r1, #0
	mov r2, r9
	movs r3, #0
	bl sub_08009088
	b _08097588
	.2byte 0x0000
_08097578: .4byte 0xFFFFFC1F
_0809757C:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	mov r3, r9
	bl sub_08009088
_08097588:
	mov r3, r8
	cmp r3, #1
	beq _080975A6
	cmp r3, #2
	bne _080975C2
	adds r1, r5, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r1, #0x3c
	bls _080975C2
	movs r5, #0
	movs r4, #1
	mov r8, r4
	b _080975C2
_080975A6:
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
	beq _080975C2
	movs r5, #0
	mov r8, r5
_080975C2:
	ldr r0, [sp, #0x50]
	add r1, sp, #0x18
	movs r2, #1
	bl sub_08000AF0
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	ldr r1, [r6, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0x58]
	ldr r0, [r6, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r6, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	ldr r2, [sp, #0x40]
	mov r3, sl
	bl sub_0800BC08
	ldr r3, [sp, #0x40]
	movs r4, #0
	ldrsh r0, [r3, r4]
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0x44]
	ldrh r2, [r4, #0]
	ldr r4, [sp, #0x48]
	ldrh r3, [r4, #0]
	ldr r4, [sp, #0x58]
	str r4, [sp, #0]
	movs r4, #1
	str r4, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	ldr r4, [sp, #0x54]
	str r4, [sp, #0xc]
	ldr r4, [r7, #8]
	str r4, [sp, #0x10]
	ldr r4, [r7, #0]
	str r4, [sp, #0x14]
	bl sub_08007974
	bl sub_08000B38
	bl sub_080003F0
	mov r0, r8
	cmp r0, #0
	bne _08097546
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08009088
	movs r0, #1
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08097488
