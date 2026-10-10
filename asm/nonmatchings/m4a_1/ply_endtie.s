	thumb_func_start ply_endtie
ply_endtie: @ 0x080B703C
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2, #0]
	cmp r3, #0x80
	bhs _080B704E
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _080B7050
_080B704E:
	ldrb r3, [r1, #5]
_080B7050:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _080B7078
	movs r4, #0x83
	movs r5, #0x40
_080B705A:
	ldrb r2, [r1, #0]
	tst r2, r4
	beq _080B7072
	tst r2, r5
	bne _080B7072
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _080B7072
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1, #0]
	b _080B7078
_080B7072:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _080B705A
_080B7078:
	pop {r4, r5}
	bx lr
	thumb_func_end ply_endtie
