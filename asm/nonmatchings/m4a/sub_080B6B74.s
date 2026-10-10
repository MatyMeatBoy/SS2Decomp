	thumb_func_start sub_080B6B74
sub_080B6B74: @ 0x080B6B74
	ldr r2, _080B6DDC
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _080B6B7E
	bx lr
_080B6B7E:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _080B6B90
	ldr r0, [r0, #0x3c]
	bl sub_080B6DD0
_080B6B90:
	pop {r0}
	push {r4, r5, r6, r7}
	mov r4, r8
	mov r5, r9
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _080B6BA8
	b _080B6DC0
_080B6BA8:
	ldr r0, _080B6DD8
	ldr r0, [r0, #0]
	mov r8, r0
	adds r0, r7, #0
	bl sub_080B7994
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _080B6D04
_080B6BBC:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_080B6BC4:
	ldrb r0, [r5, #0]
	movs r1, #0x80
	tst r1, r0
	bne _080B6BCE
	b _080B6CE0
_080B6BCE:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080B6C02
_080B6BDA:
	ldrb r1, [r4, #0]
	movs r0, #0xc7
	tst r0, r1
	beq _080B6BF6
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _080B6BFC
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _080B6BFC
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4, #0]
	b _080B6BFC
_080B6BF6:
	adds r0, r4, #0
	bl sub_080B7520
_080B6BFC:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080B6BDA
_080B6C02:
	ldrb r3, [r5, #0]
	movs r0, #0x40
	tst r0, r3
	beq _080B6C80
	adds r0, r5, #0
	bl sub_080B7534
	movs r0, #0x80
	strb r0, [r5, #0]
	movs r0, #2
	strb r0, [r5, #0xf]
	movs r0, #0x40
	strb r0, [r5, #0x13]
	movs r0, #0x16
	strb r0, [r5, #0x19]
	movs r0, #1
	adds r1, r5, #6
	strb r0, [r1, #0x1e]
	b _080B6C80
_080B6C28:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2, #0]
	cmp r1, #0x80
	bhs _080B6C34
	ldrb r1, [r5, #7]
	b _080B6C3E
_080B6C34:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _080B6C3E
	strb r1, [r5, #7]
_080B6C3E:
	cmp r1, #0xcf
	blo _080B6C54
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_080B6DD0
	b _080B6C80
_080B6C54:
	cmp r1, #0xb0
	bls _080B6C76
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_080B6DD0
	ldrb r0, [r5, #0]
	cmp r0, #0
	beq _080B6CDC
	b _080B6C80
_080B6C76:
	ldr r0, _080B6DD4
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	strb r0, [r5, #1]
_080B6C80:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _080B6C28
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _080B6CDC
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _080B6CDC
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _080B6CA2
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _080B6CDC
_080B6CA2:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _080B6CB6
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	b _080B6CBA
_080B6CB6:
	movs r0, #0x80
	subs r2, r0, r1
_080B6CBA:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _080B6CDC
	strb r2, [r5, #0x16]
	ldrb r0, [r5, #0]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _080B6CD6
	movs r1, #0xc
	b _080B6CD8
_080B6CD6:
	movs r1, #3
_080B6CD8:
	orrs r0, r1
	strb r0, [r5, #0]
_080B6CDC:
	mov r3, sl
	mov r4, fp
_080B6CE0:
	subs r6, #1
	ble _080B6CEC
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _080B6BC4
_080B6CEC:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _080B6CFE
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	b _080B6DC0
_080B6CFE:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_080B6D04:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _080B6D0C
	b _080B6BBC
_080B6D0C:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_080B6D10:
	ldrb r0, [r5, #0]
	movs r1, #0x80
	tst r1, r0
	beq _080B6DB6
	movs r1, #0xf
	tst r1, r0
	beq _080B6DB6
	mov r9, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_080B7A14
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080B6DAC
_080B6D2E:
	ldrb r1, [r4, #0]
	movs r0, #0xc7
	tst r0, r1
	bne _080B6D3E
	adds r0, r4, #0
	bl sub_080B7520
	b _080B6DA6
_080B6D3E:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5, #0]
	movs r0, #3
	tst r0, r3
	beq _080B6D6A
	ldrb r1, [r4, #0x12]
	ldrb r0, [r5, #0x10]
	muls r0, r1, r0
	asrs r0, r0, #7
	strb r0, [r4, #2]
	ldrb r0, [r5, #0x11]
	muls r0, r1, r0
	asrs r0, r0, #7
	strb r0, [r4, #3]
	cmp r6, #0
	beq _080B6D6A
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_080B6D6A:
	movs r0, #0xc
	tst r0, r3
	beq _080B6DA6
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _080B6D7C
	movs r2, #0
_080B6D7C:
	cmp r6, #0
	beq _080B6D9A
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0
	bl sub_080B6DD0
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _080B6DA6
_080B6D9A:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl sub_080B70CC
	str r0, [r4, #0x20]
_080B6DA6:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080B6D2E
_080B6DAC:
	ldrb r0, [r5, #0]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5, #0]
	mov r2, r9
_080B6DB6:
	subs r2, #1
	ble _080B6DC0
	movs r0, #0x50
	adds r5, r5, r0
	bgt _080B6D10
_080B6DC0:
	ldr r0, _080B6DDC
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov r9, r1
	mov sl, r2
	mov fp, r3
	pop {r3}
	thumb_func_end sub_080B6B74
