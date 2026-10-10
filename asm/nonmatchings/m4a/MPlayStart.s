	thumb_func_start MPlayStart
MPlayStart: @ 0x080B78A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _080B7950
	cmp r1, r0
	bne _080B7946
	adds r0, r1, #1
	str r0, [r5, #0x34]
	movs r1, #0
	str r1, [r5, #4]
	str r7, [r5, #0]
	ldr r0, [r7, #4]
	str r0, [r5, #0x30]
	ldrb r0, [r7, #2]
	strb r0, [r5, #9]
	str r1, [r5, #0xc]
	movs r0, #0x96
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x20]
	adds r0, #0x6a
	strh r0, [r5, #0x1e]
	strh r1, [r5, #0x22]
	strh r1, [r5, #0x24]
	movs r6, #0
	ldr r4, [r5, #0x2c]
	ldrb r0, [r7, #0]
	cmp r6, r0
	bge _080B7912
	ldrb r1, [r5, #8]
	cmp r6, r1
	bge _080B7932
	mov r8, r6
_080B78E6:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop
	movs r0, #0xc0
	strb r0, [r4, #0]
	mov r0, r8
	str r0, [r4, #0x20]
	lsls r1, r6, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	str r0, [r4, #0x40]
	adds r6, #1
	adds r4, #0x50
	ldrb r1, [r7, #0]
	cmp r6, r1
	bge _080B7912
	ldrb r0, [r5, #8]
	cmp r6, r0
	blt _080B78E6
_080B7912:
	ldrb r1, [r5, #8]
	cmp r6, r1
	bge _080B7932
	movs r0, #0
	mov r8, r0
_080B791C:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop
	mov r1, r8
	strb r1, [r4, #0]
	adds r6, #1
	adds r4, #0x50
	ldrb r0, [r5, #8]
	cmp r6, r0
	blt _080B791C
_080B7932:
	movs r0, #0x80
	ldrb r1, [r7, #3]
	ands r0, r1
	cmp r0, #0
	beq _080B7942
	ldrb r0, [r7, #3]
	bl m4aSoundMode
_080B7942:
	ldr r0, _080B7950
	str r0, [r5, #0x34]
_080B7946:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B7950: .4byte 0x68736D53
	thumb_func_end MPlayStart
