	thumb_func_start sub_080B6E24
sub_080B6E24: @ 0x080B6E24
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, r9
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp, #0]
	adds r5, r2, #0
	ldr r1, _080B7034
	ldr r1, [r1, #0]
	str r1, [sp, #4]
	ldr r1, _080B7038
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3, #0]
	cmp r0, #0x80
	bhs _080B6E6A
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3, #0]
	cmp r0, #0x80
	bhs _080B6E68
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3, #0]
	cmp r0, #0x80
	bhs _080B6E68
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_080B6E68:
	str r3, [r5, #0x40]
_080B6E6A:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4, #0]
	movs r0, #0xc0
	tst r0, r2
	beq _080B6EB8
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _080B6E8A
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1, #0]
	b _080B6E8C
_080B6E8A:
	adds r0, r3, #0
_080B6E8C:
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5, #0x28]
	adds r1, r1, r0
	mov r9, r1
	mov r6, r9
	ldrb r1, [r6, #0]
	movs r0, #0xc0
	tst r0, r1
	beq _080B6EA4
	b _080B7024
_080B6EA4:
	movs r0, #0x80
	tst r0, r2
	beq _080B6EBC
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _080B6EB4
	str r1, [sp, #0x14]
_080B6EB4:
	ldrb r3, [r6, #1]
	b _080B6EBC
_080B6EB8:
	mov r9, r4
	ldrb r3, [r5, #5]
_080B6EBC:
	str r3, [sp, #8]
	ldr r6, [sp, #0]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _080B6ECC
	movs r0, #0xff
_080B6ECC:
	str r0, [sp, #0x10]
	mov r6, r9
	ldrb r0, [r6, #0]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _080B6F0C
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _080B6EE4
	b _080B7024
_080B6EE4:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4, #0]
	movs r0, #0xc7
	tst r0, r1
	beq _080B6F60
	movs r0, #0x40
	tst r0, r1
	bne _080B6F60
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _080B6F60
	beq _080B6F04
	b _080B7024
_080B6F04:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _080B6F60
	b _080B7024
_080B6F0C:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_080B6F1A:
	ldrb r1, [r4, #0]
	movs r0, #0xc7
	tst r0, r1
	beq _080B6F60
	movs r0, #0x40
	tst r0, r1
	beq _080B6F34
	cmp r2, #0
	bne _080B6F38
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _080B6F52
_080B6F34:
	cmp r2, #0
	bne _080B6F54
_080B6F38:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _080B6F44
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _080B6F52
_080B6F44:
	bhi _080B6F54
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _080B6F50
	adds r7, r0, #0
	b _080B6F52
_080B6F50:
	blo _080B6F54
_080B6F52:
	mov r8, r4
_080B6F54:
	adds r4, #0x40
	subs r3, #1
	bgt _080B6F1A
	mov r4, r8
	cmp r4, #0
	beq _080B7024
_080B6F60:
	adds r0, r4, #0
	bl sub_080B7520
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _080B6F74
	str r4, [r3, #0x30]
_080B6F74:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _080B6F86
	adds r1, r5, #0
	bl sub_080B707C
_080B6F86:
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _080B6F9A
	subs r1, #0xc0
	lsls r1, r1, #1
	strb r1, [r5, #0x15]
	ldrb r0, [r5, #0]
	movs r1, #3
	orrs r0, r1
	strb r0, [r5, #0]
_080B6F9A:
	ldr r0, [sp, #0]
	adds r1, r5, #0
	bl sub_080B7A14
	ldr r0, [r5, #4]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x10]
	strb r0, [r4, #0x13]
	ldr r0, [sp, #8]
	strb r0, [r4, #8]
	mov r6, r9
	ldrb r0, [r6, #0]
	strb r0, [r4, #1]
	ldr r7, [r6, #4]
	str r7, [r4, #0x24]
	ldr r0, [r6, #8]
	str r0, [r4, #4]
	ldrh r0, [r5, #0x1e]
	strh r0, [r4, #0xc]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r5, #0x10]
	muls r0, r1, r0
	asrs r0, r0, #7
	strb r0, [r4, #2]
	ldrb r0, [r5, #0x11]
	muls r0, r1, r0
	asrs r0, r0, #7
	strb r0, [r4, #3]
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _080B6FDE
	movs r3, #0
_080B6FDE:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _080B700C
	mov r6, r9
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _080B6FF8
	movs r0, #0x70
	tst r0, r1
	bne _080B6FFA
_080B6FF8:
	movs r1, #8
_080B6FFA:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl sub_080B6DD0
	b _080B7016
_080B700C:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl sub_080B70CC
_080B7016:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4, #0]
	ldrb r1, [r5, #0]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5, #0]
_080B7024:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov r9, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
_080B7034: .4byte gUnk_03007FF0
_080B7038: .4byte gUnk_080BBA5C
	thumb_func_end sub_080B6E24
