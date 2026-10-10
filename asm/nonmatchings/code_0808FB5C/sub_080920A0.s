	thumb_func_start sub_080920A0
sub_080920A0: @ 0x080920A0
	push {lr}
	ldr r0, _080920C0
	ldrb r1, [r0, #0]
	adds r3, r0, #0
	cmp r1, #0xd
	beq _080920E0
	ldr r0, _080920C4
	ldrb r2, [r3, #0]
	adds r0, r2, r0
	ldr r1, _080920C8
	ldrb r0, [r0, #0]
	ldrh r1, [r1, #0]
	cmp r0, r1
	bne _080920CC
	adds r0, r2, #1
	b _080920D2
_080920C0: .4byte gUnk_03000168
_080920C4: .4byte gUnk_0851844E
_080920C8: .4byte gUnk_03001324
_080920CC:
	cmp r1, #0
	beq _080920D4
	movs r0, #0
_080920D2:
	strb r0, [r3, #0]
_080920D4:
	ldrb r0, [r3, #0]
	cmp r0, #0xd
	bne _080920E0
	movs r0, #0x33
	bl sub_0805865C
_080920E0:
	pop {r0}
	bx r0
	thumb_func_end sub_080920A0
