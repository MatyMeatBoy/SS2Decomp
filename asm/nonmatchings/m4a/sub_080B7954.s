	thumb_func_start sub_080B7954
sub_080B7954: @ 0x080B7954
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _080B7990
	cmp r1, r0
	bne _080B798A
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r6, #4]
	ldrb r4, [r6, #8]
	ldr r5, [r6, #0x2c]
	cmp r4, #0
	ble _080B7986
_080B7976:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080B6DE0
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _080B7976
_080B7986:
	ldr r0, _080B7990
	str r0, [r6, #0x34]
_080B798A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080B7990: .4byte 0x68736D53
	thumb_func_end sub_080B7954
