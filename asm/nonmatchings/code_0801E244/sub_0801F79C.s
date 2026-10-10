	thumb_func_start sub_0801F79C
sub_0801F79C: @ 0x0801F79C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r5, r0, #0
	mov r8, r1
	adds r4, r2, #0
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _0801F7F8
	adds r0, r5, #0
	movs r3, #1
	bl sub_0801E988
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r2, #0
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0801F7E8
	ldr r1, [sp, #0xc]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0xc]
	ldr r1, _0801F7EC
	ldr r0, [sp, #8]
	ands r0, r1
	ldr r1, _0801F7F0
	ands r0, r1
	ldr r1, _0801F7F4
	ands r0, r1
	str r0, [sp, #8]
	b _0801F8A2
	.2byte 0x0000
_0801F7E8: .4byte 0xFFFF0000
_0801F7EC: .4byte 0xFFFF00FF
_0801F7F0: .4byte 0xFF00FFFF
_0801F7F4: .4byte 0x00FFFFFF
_0801F7F8:
	adds r0, r5, #0
	mov r1, r8
	adds r2, r4, #0
	movs r3, #0
	bl sub_0801E988
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _0801F984
	mov r9, r3
	add r6, sp, #8
	ldr r1, [sp, #0xc]
	ands r1, r3
	orrs r1, r0
	str r1, [sp, #0xc]
	adds r0, r4, #0
	adds r0, #0xa9
	ldrb r1, [r0, #0]
	lsls r1, r1, #0x10
	ldr r2, _0801F988
	ldr r0, [sp, #8]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	movs r7, #0xa4
	lsls r7, r7, #1
	mov r1, r8
	adds r0, r1, r7
	ldr r2, [r0, #0]
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	adds r1, r5, #0
	adds r1, #0x8c
	ldr r1, [r1, #0]
	asrs r1, r1, #8
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r2, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	adds r2, r5, #0
	adds r2, #0x90
	ldr r2, [r2, #0]
	asrs r2, r2, #8
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_080B8570
	lsls r0, r0, #0x10
	ldr r1, _0801F98C
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r1, [r0, #0]
	lsls r1, r1, #0x18
	ldr r2, _0801F990
	ldr r0, [sp, #8]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	ldrh r0, [r5, #0x20]
	cmp r0, #5
	bne _0801F8A2
	ldrh r0, [r5, #0x10]
	cmp r0, #8
	bne _0801F8A2
	ldrh r1, [r6, #4]
	adds r0, r5, r7
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1d
	adds r0, #5
	muls r0, r1, r0
	movs r1, #0xa
	bl sub_080B9394
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0xc]
	mov r2, r9
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0xc]
_0801F8A2:
	add r3, sp, #8
	mov r9, r3
	mov r0, r8
	adds r0, #0x4c
	str r0, [sp, #0x10]
	adds r4, #0xbc
	mov sl, r4
	ldrh r3, [r4, #0]
	mov r1, r8
	ldrh r0, [r1, #0]
	str r0, [sp, #0]
	add r0, sp, #8
	ldr r1, [sp, #0x10]
	movs r2, #1
	bl sub_08069388
	adds r7, r5, #0
	adds r7, #0xc4
	mov r2, r9
	ldrh r1, [r2, #4]
	ldr r4, _0801F994
	ands r1, r4
	adds r0, r5, #0
	adds r0, #0x6a
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r0, r1, r0
	movs r1, #0x64
	bl sub_080B9394
	ldrh r1, [r7, #0]
	adds r1, r1, r0
	strh r1, [r7, #0]
	adds r6, r5, #0
	adds r6, #0xc2
	mov r3, r9
	ldrh r0, [r3, #4]
	ands r0, r4
	adds r1, r5, #0
	adds r1, #0x6b
	ldrb r1, [r1, #0]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	muls r0, r1, r0
	movs r1, #0x64
	bl sub_080B9394
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	ldrh r0, [r6, #0]
	adds r1, r1, r0
	strh r1, [r6, #0]
	adds r0, r5, #0
	adds r0, #0x62
	movs r2, #0
	ldrsh r1, [r7, r2]
	ldrh r2, [r0, #0]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	ble _0801F922
	strh r2, [r7, #0]
_0801F922:
	adds r0, r5, #0
	adds r0, #0x60
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldrh r2, [r0, #0]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	ble _0801F936
	strh r2, [r6, #0]
_0801F936:
	ldrh r0, [r5, #0]
	lsls r0, r0, #2
	mov r1, r8
	adds r1, #0xf8
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0xdc
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	mov r0, r8
	ldrh r1, [r0, #0]
	add r0, sp, #8
	strb r1, [r0, #0]
	bl sub_080660EC
	mov r1, r9
	ldrh r0, [r1, #4]
	ldr r1, _0801F998
	ands r1, r0
	ldrh r3, [r5, #0]
	mov r2, r8
	ldrh r0, [r2, #0]
	str r0, [sp, #0]
	mov r2, sl
	ldrh r0, [r2, #0]
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	movs r2, #0
	bl sub_08069080
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0801F984: .4byte 0xFFFF0000
_0801F988: .4byte 0xFF00FFFF
_0801F98C: .4byte gUnk_084790B4
_0801F990: .4byte 0x00FFFFFF
_0801F994: .4byte 0xFFFF7FFF
_0801F998: .4byte 0x00007FFF
	thumb_func_end sub_0801F79C
