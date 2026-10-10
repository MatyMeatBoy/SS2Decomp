	thumb_func_start sub_0801F024
sub_0801F024: @ 0x0801F024
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	adds r6, r2, #0
	str r3, [sp, #0x10]
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #3
	beq _0801F054
	cmp r0, #8
	bne _0801F062
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bne _0801F054
	b _0801F1A0
_0801F054:
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _0801F062
	b _0801F1A0
_0801F062:
	ldr r0, [sp, #0x34]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x38]
	lsls r1, r1, #0x10
	lsrs r0, r0, #0x10
	orrs r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r6, #4]
	mov sl, r0
	ldr r5, _0801F1A4
	add r5, sl
	str r5, [sp, #4]
	ldr r4, _0801F1A8
	lsls r7, r7, #1
	mov r9, r7
	ldr r2, _0801F1AC
	add r2, r9
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #5
	adds r0, #0x80
	adds r0, r0, r4
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0xa5
	add r0, r8
	mov ip, r0
	ldrb r0, [r0, #0]
	adds r3, r1, #0
	muls r3, r0, r3
	ldr r6, [r6, #0]
	adds r3, r6, r3
	str r3, [sp, #0]
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #5
	adds r0, r0, r4
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r2, ip
	ldrb r0, [r2, #0]
	adds r2, r1, #0
	muls r2, r0, r2
	adds r2, r2, r5
	str r2, [sp, #4]
	mov r0, r8
	adds r0, #0xa6
	ldrb r1, [r0, #0]
	lsls r0, r1, #0x10
	orrs r0, r1
	str r0, [sp, #8]
	ldr r5, [sp, #0x10]
	ldr r1, [r5, #0]
	subs r3, r3, r1
	ldr r0, [r5, #4]
	subs r2, r2, r0
	asrs r2, r2, #8
	asrs r3, r3, #8
	mov r5, r9
	adds r4, r6, #0
	add r6, sp, #8
	add r7, sp, #0xc
	mov r9, r1
	mov ip, r0
	cmp r3, #0
	bge _0801F0E8
	negs r3, r3
_0801F0E8:
	ldrh r0, [r6, #0]
	ldrh r1, [r7, #0]
	adds r0, r0, r1
	asrs r0, r0, #1
	cmp r3, r0
	bgt _0801F108
	cmp r2, #0
	bge _0801F0FA
	negs r2, r2
_0801F0FA:
	ldrh r0, [r6, #2]
	ldrh r1, [r7, #2]
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #1
	cmp r2, r0
	ble _0801F10A
_0801F108:
	movs r1, #0
_0801F10A:
	cmp r1, #0
	bne _0801F1B0
	mov r0, r8
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #9
	beq _0801F1A0
	ldr r2, _0801F1A4
	add r2, sl
	str r2, [sp, #4]
	ldr r0, _0801F1AC
	adds r3, r5, r0
	movs r1, #0
	ldrsh r0, [r3, r1]
	lsls r0, r0, #5
	adds r0, #0x80
	ldr r5, _0801F1A8
	adds r0, r0, r5
	movs r5, #0
	ldrsh r1, [r0, r5]
	mov r5, r8
	adds r5, #0xa7
	ldrb r0, [r5, #0]
	muls r0, r1, r0
	adds r0, r4, r0
	str r0, [sp, #0]
	movs r1, #0
	ldrsh r0, [r3, r1]
	lsls r0, r0, #5
	ldr r3, _0801F1A8
	adds r0, r0, r3
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldrb r0, [r5, #0]
	muls r0, r1, r0
	adds r2, r2, r0
	str r2, [sp, #4]
	mov r0, r8
	adds r0, #0xa8
	ldrb r1, [r0, #0]
	adds r4, r6, #0
	strh r1, [r4, #2]
	add r0, sp, #8
	strh r1, [r0, #0]
	adds r5, r7, #0
	ldr r1, [sp, #0]
	mov r0, r9
	subs r1, r1, r0
	ldr r0, [sp, #4]
	mov r2, ip
	subs r0, r0, r2
	asrs r3, r0, #8
	asrs r2, r1, #8
	cmp r2, #0
	bge _0801F17A
	negs r2, r2
_0801F17A:
	ldrh r0, [r4, #0]
	ldrh r1, [r5, #0]
	adds r0, r0, r1
	asrs r0, r0, #1
	cmp r2, r0
	bgt _0801F19A
	cmp r3, #0
	bge _0801F18C
	negs r3, r3
_0801F18C:
	ldrh r0, [r6, #2]
	ldrh r1, [r7, #2]
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #1
	cmp r3, r0
	ble _0801F19C
_0801F19A:
	movs r1, #0
_0801F19C:
	cmp r1, #0
	bne _0801F1B0
_0801F1A0:
	movs r0, #0
	b _0801F1B2
_0801F1A4: .4byte 0xFFFFFC00
_0801F1A8: .4byte gUnk_080B9704
_0801F1AC: .4byte gUnk_0849E740
_0801F1B0:
	movs r0, #1
_0801F1B2:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0801F024
