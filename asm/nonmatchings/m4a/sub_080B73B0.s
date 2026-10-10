	thumb_func_start sub_080B73B0
sub_080B73B0: @ 0x080B73B0
	push {r4, r5, r6, r7, lr}
	ldrb r5, [r0, #8]
	ldr r4, [r0, #0x2c]
	cmp r5, #0
	ble _080B73F2
	movs r7, #0x80
_080B73BC:
	ldrb r1, [r4, #0]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080B73EA
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080B73EA
	adds r0, r4, #0
	bl sub_080B7534
	strb r7, [r4, #0]
	movs r0, #2
	strb r0, [r4, #0xf]
	strb r6, [r4, #0x13]
	movs r0, #0x16
	strb r0, [r4, #0x19]
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1, #0]
_080B73EA:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080B73BC
_080B73F2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080B73B0
