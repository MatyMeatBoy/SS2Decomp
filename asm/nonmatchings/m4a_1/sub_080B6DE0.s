	thumb_func_start sub_080B6DE0
sub_080B6DE0: @ 0x080B6DE0
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5, #0]
	movs r0, #0x80
	tst r0, r1
	beq _080B6E18
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080B6E16
	movs r6, #0
_080B6DF4:
	ldrb r0, [r4, #0]
	cmp r0, #0
	beq _080B6E0E
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _080B6E0C
	ldr r3, _080B6E20
	ldr r3, [r3, #0]
	ldr r3, [r3, #0x2c]
	bl sub_080B6DD0
_080B6E0C:
	strb r6, [r4, #0]
_080B6E0E:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080B6DF4
_080B6E16:
	str r4, [r5, #0x20]
_080B6E18:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_080B6E20: .4byte gUnk_03007FF0
	thumb_func_end sub_080B6DE0
