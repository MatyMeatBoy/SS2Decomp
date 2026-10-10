	thumb_func_start sub_0801A3D0
sub_0801A3D0: @ 0x0801A3D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0]
	adds r4, r2, #0
	movs r5, #0
	movs r6, #0
_0801A3F0:
	ldr r0, _0801A404
	adds r1, r4, r6
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne _0801A408
	movs r0, #1
	strb r0, [r1, #0]
	adds r5, #1
	b _0801A424
_0801A404: .4byte gUnk_03005C40
_0801A408:
	cmp r5, #0
	beq _0801A422
	lsls r0, r4, #6
	ldr r1, _0801A4EC
	adds r3, r0, r1
	ldr r1, _0801A4F0
	adds r0, r0, r1
	lsls r2, r5, #6
	adds r1, r3, #0
	bl sub_08001348
	adds r4, r4, r5
	movs r5, #0
_0801A422:
	adds r4, #1
_0801A424:
	adds r6, #1
	cmp r6, #2
	blo _0801A3F0
	cmp r5, #0
	beq _0801A440
	lsls r0, r4, #6
	ldr r2, _0801A4EC
	adds r3, r0, r2
	ldr r1, _0801A4F0
	adds r0, r0, r1
	lsls r2, r5, #6
	adds r1, r3, #0
	bl sub_08001348
_0801A440:
	ldr r1, _0801A4F4
	ldrh r0, [r1, #0]
	lsrs r0, r0, #5
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r7, r0, r2
	mov r2, r8
	ldrb r0, [r2, #0]
	cmp r0, #0xfd
	beq _0801A4DA
	cmp r0, #0xf1
	bhi _0801A4DA
	mov r9, r1
_0801A45A:
	mov r0, r8
	ldrb r1, [r0, #0]
	subs r1, #1
	lsls r1, r1, #0x10
	ldr r0, _0801A4F8
	ldr r0, [r0, #0]
	movs r6, #0xff
	lsls r6, r6, #0x10
	ands r6, r1
	mov r1, sl
	lsls r5, r1, #1
	ldr r2, [sp, #0]
	lsls r3, r2, #6
	adds r3, r5, r3
	ldr r1, _0801A4F0
	adds r3, r3, r1
	adds r2, r7, #0
	adds r1, r2, #1
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	adds r4, r7, #0
	movs r1, #0xf0
	lsls r1, r1, #8
	orrs r2, r1
	strh r2, [r3, #0]
	ldr r1, [sp, #0]
	adds r1, #1
	lsls r1, r1, #6
	adds r5, r5, r1
	ldr r2, _0801A4F0
	adds r5, r5, r2
	adds r1, r4, #1
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r1, #0xf0
	lsls r1, r1, #8
	orrs r4, r1
	strh r4, [r5, #0]
	lsrs r6, r6, #9
	adds r0, r0, r6
	mov r2, r9
	ldrh r1, [r2, #0]
	ldr r2, _0801A4FC
	adds r1, r1, r2
	movs r2, #0x40
	bl sub_08001348
	mov r1, r9
	ldrh r0, [r1, #0]
	adds r0, #0x40
	strh r0, [r1, #0]
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r2, #1
	add r8, r2
	mov r1, r8
	ldrb r0, [r1, #0]
	cmp r0, #0xfd
	beq _0801A4DA
	cmp r0, #0xf1
	bls _0801A45A
_0801A4DA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0801A4EC: .4byte 0x0600E000
_0801A4F0: .4byte gUnk_03005740
_0801A4F4: .4byte gUnk_03005C54
_0801A4F8: .4byte gUnk_03005CA0
_0801A4FC: .4byte 0x0600B000
	thumb_func_end sub_0801A3D0
