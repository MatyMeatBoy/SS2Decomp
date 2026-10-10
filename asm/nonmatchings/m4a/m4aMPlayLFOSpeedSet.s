	thumb_func_start m4aMPlayLFOSpeedSet
m4aMPlayLFOSpeedSet: @ 0x080B8280
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _080B82F0
	cmp r1, r0
	bne _080B82E0
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _080B82DC
	mov r9, r8
_080B82B0:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _080B82D2
	movs r0, #0x80
	ldrb r1, [r4, #0]
	ands r0, r1
	cmp r0, #0
	beq _080B82D2
	mov r0, r8
	strb r0, [r4, #0x19]
	mov r1, r9
	cmp r1, #0
	bne _080B82D2
	adds r0, r4, #0
	bl ClearModM
_080B82D2:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _080B82B0
_080B82DC:
	ldr r0, _080B82F0
	str r0, [r6, #0x34]
_080B82E0:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080B82F0: .4byte 0x68736D53
	thumb_func_end m4aMPlayLFOSpeedSet
