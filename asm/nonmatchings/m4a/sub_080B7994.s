	thumb_func_start sub_080B7994
sub_080B7994: @ 0x080B7994
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r2, [r6, #0x24]
	cmp r2, #0
	beq _080B7A0E
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _080B79DC
	adds r1, r3, #0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080B7A0E
	ldrh r0, [r6, #0x28]
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r1
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080B79E0
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _080B7A0E
	movs r7, #0
_080B79C6:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080B6DE0
	strb r7, [r4, #0]
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080B79C6
	b _080B7A0E
	.2byte 0x0000
_080B79DC: .4byte 0x0000FFFF
_080B79E0:
	strh r2, [r6, #0x26]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _080B7A0E
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_080B79F0:
	ldrb r1, [r4, #0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080B7A06
	ldrh r7, [r6, #0x28]
	lsrs r0, r7, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4, #0]
_080B7A06:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080B79F0
_080B7A0E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080B7994
