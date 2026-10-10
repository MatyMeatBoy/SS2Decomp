	thumb_func_start sub_080B6948
sub_080B6948: @ 0x080B6948
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080B696C
_080B6952:
	ldrb r1, [r4, #0]
	movs r0, #0xc7
	tst r0, r1
	beq _080B6960
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4, #0]
_080B6960:
	adds r0, r4, #0
	bl sub_080B6928
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080B6952
_080B696C:
	movs r0, #0
	strb r0, [r5, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_080B6948
