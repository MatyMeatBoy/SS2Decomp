	thumb_func_start sub_08001990
sub_08001990: @ 0x08001990
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #0xc]
	ldr r0, _08001A40
	movs r4, #0
	str r4, [sp, #0]
	bl _call_via_r0
	str r0, [sp, #4]
	ldr r0, _08001A44
	strb r4, [r0, #3]
	add r1, sp, #4
	mov sl, r1
	add r2, sp, #8
	mov r9, r2
	mov r8, r0
	mov r7, r8
	adds r7, #0x50
_080019BC:
	movs r3, #0
	movs r2, #0
	lsls r5, r4, #2
	adds r6, r4, #1
	adds r0, r5, r7
	ldr r1, [r0, #0]
_080019C8:
	ldrh r0, [r1, #0]
	adds r3, r3, r0
	adds r1, #2
	adds r2, #1
	cmp r2, #0xd
	bls _080019C8
	mov r1, sl
	adds r0, r1, r4
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _08001A0C
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x11
	negs r2, r2
	cmp r0, r2
	bne _08001A0C
	adds r0, r5, r7
	ldr r0, [r0, #0]
	adds r0, #4
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #3
	ldr r2, [sp, #0xc]
	adds r1, r2, r1
	ldr r2, _08001A48
	bl sub_080B8578
	movs r0, #1
	lsls r0, r4
	mov r2, r8
	ldrb r1, [r2, #3]
	orrs r0, r1
	strb r0, [r2, #3]
_08001A0C:
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r5, r7
	ldr r1, [r0, #0]
	adds r1, #4
	mov r0, r9
	ldr r2, _08001A4C
	bl sub_080B8578
	adds r4, r6, #0
	cmp r4, #3
	ble _080019BC
	ldr r1, _08001A44
	ldrb r0, [r1, #2]
	ldrb r2, [r1, #3]
	orrs r0, r2
	strb r0, [r1, #2]
	ldrb r0, [r1, #3]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08001A40: .4byte gUnk_030026D0
_08001A44: .4byte gUnk_030024B0
_08001A48: .4byte 0x04000006
_08001A4C: .4byte 0x05000006
	thumb_func_end sub_08001990
