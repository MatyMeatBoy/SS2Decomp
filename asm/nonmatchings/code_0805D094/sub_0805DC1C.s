	thumb_func_start sub_0805DC1C
sub_0805DC1C: @ 0x0805DC1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r1, #0
	ldr r0, _0805DC9C
	ldrb r2, [r0, #0]
	movs r5, #1
_0805DC40:
	adds r0, r2, #0
	asrs r0, r1
	ands r0, r5
	cmp r0, #0
	beq _0805DCA8
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0805DC40
	movs r0, #0xff
_0805DC56:
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xff
	bne _0805DC60
	b _0805DE82
_0805DC60:
	ldr r2, _0805DCA0
	movs r0, #0x34
	muls r1, r0, r1
	ldr r0, [r2, #0]
	adds r0, r0, r1
	mov ip, r0
	mov r1, ip
	adds r1, #0x30
	movs r2, #0
	movs r0, #1
	strb r0, [r1, #0]
	ldr r1, _0805DCA4
	strh r2, [r1, #0]
	strh r2, [r1, #2]
	lsrs r0, r4, #1
	adds r0, #1
	adds r0, r6, r0
	mov r2, ip
	strh r0, [r2, #0x28]
	lsrs r0, r3, #1
	adds r0, #1
	adds r0, r7, r0
	strh r0, [r2, #0x2a]
	cmp r4, #0
	beq _0805DCAC
	movs r0, #0x1c
	cmp r4, #0x1c
	bhi _0805DCAE
	adds r0, r4, #0
	b _0805DCAE
_0805DC9C: .4byte gUnk_03005D70
_0805DCA0: .4byte gUnk_03005D64
_0805DCA4: .4byte gUnk_03001250
_0805DCA8:
	adds r0, r1, #0
	b _0805DC56
_0805DCAC:
	movs r0, #1
_0805DCAE:
	mov r7, ip
	strh r0, [r7, #0x2c]
	cmp r3, #0
	beq _0805DCC0
	movs r0, #0x12
	cmp r3, #0x12
	bhi _0805DCC2
	adds r0, r3, #0
	b _0805DCC2
_0805DCC0:
	movs r0, #1
_0805DCC2:
	mov r1, ip
	strh r0, [r1, #0x2e]
	ldrh r1, [r1, #0x28]
	mov r2, ip
	ldrh r5, [r2, #0x2c]
	lsrs r3, r5, #1
	adds r2, r3, #0
	adds r0, r1, r2
	cmp r0, #0x1e
	ble _0805DCDE
	movs r0, #0x1e
	subs r0, r0, r3
	mov r7, ip
	strh r0, [r7, #0x28]
_0805DCDE:
	mov r0, ip
	ldrh r1, [r0, #0x28]
	subs r0, r1, r2
	movs r7, #0x80
	ands r0, r7
	cmp r0, #0
	beq _0805DCF0
	mov r1, ip
	strh r3, [r1, #0x28]
_0805DCF0:
	mov r2, ip
	ldrh r1, [r2, #0x2a]
	ldrh r6, [r2, #0x2e]
	lsrs r4, r6, #1
	adds r2, r4, #0
	adds r0, r1, r2
	cmp r0, #0x14
	ble _0805DD08
	movs r0, #0x1e
	subs r0, r0, r4
	mov r1, ip
	strh r0, [r1, #0x2a]
_0805DD08:
	mov r0, ip
	ldrh r1, [r0, #0x2a]
	subs r0, r1, r2
	ands r0, r7
	cmp r0, #0
	beq _0805DD18
	mov r1, ip
	strh r4, [r1, #0x2a]
_0805DD18:
	mov r2, ip
	ldrh r1, [r2, #0x28]
	subs r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	movs r2, #1
	ands r5, r2
	adds r0, r3, r5
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r7, ip
	ldrh r1, [r7, #0x2a]
	subs r0, r1, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0]
	adds r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ands r6, r2
	adds r0, r5, r6
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r6, _0805DE2C
	mov r1, r8
	subs r1, #1
	lsls r1, r1, #1
	ldr r0, [sp, #0]
	subs r0, #1
	lsls r7, r0, #6
	adds r0, r1, r7
	adds r0, r0, r6
	ldr r2, _0805DE30
	strh r2, [r0, #0]
	adds r0, r5, #1
	lsls r4, r0, #6
	adds r1, r1, r4
	adds r1, r1, r6
	ldr r0, _0805DE34
	strh r0, [r1, #0]
	adds r0, r3, #1
	lsls r0, r0, #1
	adds r1, r0, r7
	adds r1, r1, r6
	adds r2, #2
	strh r2, [r1, #0]
	adds r0, r0, r4
	adds r0, r0, r6
	ldr r1, _0805DE38
	strh r1, [r0, #0]
	mov r2, r8
	mov r0, ip
	adds r0, #0x31
	str r0, [sp, #4]
	cmp r8, r3
	bhi _0805DDB8
	str r7, [sp, #0x10]
	subs r1, #7
	mov sl, r1
	ldr r7, _0805DE3C
	mov r9, r7
_0805DD9A:
	lsls r0, r2, #1
	ldr r7, [sp, #0x10]
	adds r1, r0, r7
	adds r1, r1, r6
	mov r7, sl
	strh r7, [r1, #0]
	adds r0, r0, r4
	adds r0, r0, r6
	mov r1, r9
	strh r1, [r0, #0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r3
	bls _0805DD9A
_0805DDB8:
	ldr r2, [sp, #0]
	mov r6, r8
	subs r6, #1
	subs r7, r2, #1
	str r7, [sp, #8]
	adds r0, r3, #2
	mov sl, r0
	adds r1, r5, #2
	str r1, [sp, #0xc]
	cmp r2, r5
	bhi _0805DDFE
	ldr r4, _0805DE2C
	lsls r7, r6, #1
	str r7, [sp, #0x10]
	ldr r0, _0805DE40
	mov r9, r0
	adds r0, r3, #1
	lsls r3, r0, #1
	ldr r1, _0805DE44
	mov r8, r1
_0805DDE0:
	lsls r0, r2, #6
	ldr r7, [sp, #0x10]
	adds r1, r7, r0
	adds r1, r1, r4
	mov r7, r9
	strh r7, [r1, #0]
	adds r0, r3, r0
	adds r0, r0, r4
	mov r1, r8
	strh r1, [r0, #0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r5
	bls _0805DDE0
_0805DDFE:
	ldr r2, [sp, #4]
	ldrb r0, [r2, #0]
	cmp r0, #0
	bne _0805DE4C
	lsls r0, r6, #3
	adds r0, #3
	lsls r0, r0, #8
	mov r3, sl
	lsls r1, r3, #3
	subs r1, #3
	orrs r0, r1
	ldr r7, _0805DE48
	strh r0, [r7, #0x32]
	ldr r1, [sp, #8]
	lsls r0, r1, #3
	adds r0, #3
	lsls r0, r0, #8
	ldr r2, [sp, #0xc]
	lsls r1, r2, #3
	subs r1, #3
	orrs r0, r1
	strh r0, [r7, #0x36]
	b _0805DE70
_0805DE2C: .4byte gUnk_03005740
_0805DE30: .4byte 0x0000F120
_0805DE34: .4byte 0x0000F126
_0805DE38: .4byte 0x0000F128
_0805DE3C: .4byte 0x0000F127
_0805DE40: .4byte 0x0000F123
_0805DE44: .4byte 0x0000F125
_0805DE48: .4byte gUnk_03001250
_0805DE4C:
	lsls r0, r6, #3
	adds r0, #3
	lsls r0, r0, #8
	mov r3, sl
	lsls r1, r3, #3
	subs r1, #3
	orrs r0, r1
	ldr r7, _0805DE94
	strh r0, [r7, #0x30]
	ldr r1, [sp, #8]
	lsls r0, r1, #3
	adds r0, #3
	lsls r0, r0, #8
	ldr r2, [sp, #0xc]
	lsls r1, r2, #3
	subs r1, #3
	orrs r0, r1
	strh r0, [r7, #0x34]
_0805DE70:
	mov r3, ip
	ldrh r1, [r3, #0x2e]
	lsrs r0, r1, #1
	mvns r0, r0
	ldrh r7, [r3, #0x2a]
	adds r0, r0, r7
	adds r1, #3
	bl sub_0801A664
_0805DE82:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0805DE94: .4byte gUnk_03001250
	thumb_func_end sub_0805DC1C
