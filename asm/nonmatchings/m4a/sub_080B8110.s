	thumb_func_start sub_080B8110
sub_080B8110: @ 0x080B8110
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _080B8180
	cmp r3, r0
	bne _080B8172
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r3, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _080B816E
	movs r0, #0x80
	mov r9, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x18
	movs r0, #0xc
	mov r8, r0
_080B8148:
	mov r0, ip
	ands r0, r5
	cmp r0, #0
	beq _080B8164
	ldrb r1, [r3, #0]
	mov r0, r9
	ands r0, r1
	cmp r0, #0
	beq _080B8164
	strb r7, [r3, #0xb]
	strb r6, [r3, #0xd]
	mov r0, r8
	orrs r0, r1
	strb r0, [r3, #0]
_080B8164:
	subs r2, #1
	adds r3, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _080B8148
_080B816E:
	ldr r0, _080B8180
	str r0, [r4, #0x34]
_080B8172:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B8180: .4byte 0x68736D53
	thumb_func_end sub_080B8110
