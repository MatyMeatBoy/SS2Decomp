	thumb_func_start sub_080B774C
sub_080B774C: @ 0x080B774C
	push {r4, r5, r6, r7, lr}
	ldr r0, _080B7798
	ldr r6, [r0, #0]
	ldr r1, [r6, #0]
	ldr r0, _080B779C
	cmp r1, r0
	bne _080B7792
	adds r0, r1, #1
	str r0, [r6, #0]
	movs r5, #0xc
	adds r4, r6, #0
	adds r4, #0x50
	movs r0, #0
_080B7766:
	strb r0, [r4, #0]
	subs r5, #1
	adds r4, #0x40
	cmp r5, #0
	bgt _080B7766
	ldr r4, [r6, #0x1c]
	cmp r4, #0
	beq _080B778E
	movs r5, #1
	movs r7, #0
_080B777A:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r6, #0x2c]
	bl sub_080B8F28
	strb r7, [r4, #0]
	adds r5, #1
	adds r4, #0x40
	cmp r5, #4
	ble _080B777A
_080B778E:
	ldr r0, _080B779C
	str r0, [r6, #0]
_080B7792:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B7798: .4byte gUnk_03007FF0
_080B779C: .4byte 0x68736D53
	thumb_func_end sub_080B774C
