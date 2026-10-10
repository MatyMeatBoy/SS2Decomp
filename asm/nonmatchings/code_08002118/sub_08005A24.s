	thumb_func_start sub_08005A24
sub_08005A24: @ 0x08005A24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	adds r0, r1, #0
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0]
	lsrs r4, r4, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #6
	movs r1, #0x64
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	ldr r1, _08005B04
	movs r0, #1
	str r0, [r1, #0]
	lsls r0, r4, #5
	bl sub_08001494
	str r0, [sp, #4]
	ldr r1, [sp, #0]
	lsls r0, r1, #5
	ldr r1, _08005B08
	adds r0, r0, r1
	lsls r2, r4, #3
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r2, r1
	ldr r1, [sp, #4]
	bl CpuSet
	lsls r7, r4, #4
	movs r6, #0x80
	lsls r6, r6, #3
	cmp r6, r9
	bls _08005B22
_08005A7A:
	ldr r2, [sp, #0]
	lsls r1, r2, #5
	ldr r0, _08005B08
	adds r3, r1, r0
	ldr r4, [sp, #4]
	movs r5, #0
	mov r0, r9
	subs r0, r6, r0
	mov r8, r0
	cmp r5, r7
	bhs _08005AF8
	movs r1, #0x1f
	mov ip, r1
	movs r2, #0x7d
	negs r2, r2
	mov sl, r2
_08005A9A:
	ldr r0, [r4, #0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	adds r1, r0, #0
	muls r1, r6, r1
	asrs r1, r1, #0xa
	mov r0, ip
	ands r1, r0
	ldrb r2, [r3, #0]
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
	ldr r0, [r4, #0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	adds r1, r0, #0
	muls r1, r6, r1
	asrs r1, r1, #0xa
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3, #0]
	ldr r0, _08005B0C
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0]
	ldr r0, [r4, #0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x1b
	adds r1, r0, #0
	muls r1, r6, r1
	asrs r1, r1, #0xa
	mov r2, ip
	ands r1, r2
	lsls r1, r1, #2
	ldrb r0, [r3, #1]
	mov r2, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	adds r5, #1
	adds r3, #2
	adds r4, #2
	cmp r5, r7
	blo _08005A9A
_08005AF8:
	mov r0, r8
	cmp r0, #1
	ble _08005B10
	asrs r0, r0, #1
	subs r0, r6, r0
	b _08005B12
_08005B04: .4byte gUnk_0300001C
_08005B08: .4byte gUnk_03001F40
_08005B0C: .4byte 0xFFFFFC1F
_08005B10:
	subs r0, r6, #1
_08005B12:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_08000B38
	bl sub_080003F0
	cmp r6, r9
	bhi _08005A7A
_08005B22:
	ldr r1, _08005B80
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _08005B36
	adds r5, r1, #0
_08005B2C:
	bl sub_080003F0
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _08005B2C
_08005B36:
	ldr r0, _08005B80
	ldr r0, [r0, #0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08005B64
	ldr r2, [sp, #0]
	lsls r1, r2, #5
	ldr r0, _08005B84
	adds r3, r1, r0
	ldr r4, [sp, #4]
	movs r5, #0
	cmp r5, r7
	bhs _08005B60
_08005B52:
	ldrh r0, [r4, #0]
	strh r0, [r3, #0]
	adds r5, #1
	adds r3, #2
	adds r4, #2
	cmp r5, r7
	blo _08005B52
_08005B60:
	bl sub_08000B38
_08005B64:
	bl sub_080003F0
	ldr r0, [sp, #4]
	bl sub_08001538
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08005B80: .4byte gUnk_0300001C
_08005B84: .4byte gUnk_03001F40
	thumb_func_end sub_08005A24
