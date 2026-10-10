	thumb_func_start sub_080B8184
sub_080B8184: @ 0x080B8184
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r3, [r4, #0x34]
	ldr r0, _080B81E8
	cmp r3, r0
	bne _080B81DC
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _080B81D8
	movs r0, #0x80
	mov r8, r0
	movs r0, #3
	mov ip, r0
_080B81B4:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _080B81CE
	ldrb r3, [r1, #0]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _080B81CE
	strb r6, [r1, #0x15]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1, #0]
_080B81CE:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _080B81B4
_080B81D8:
	ldr r0, _080B81E8
	str r0, [r4, #0x34]
_080B81DC:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B81E8: .4byte 0x68736D53
	thumb_func_end sub_080B8184
