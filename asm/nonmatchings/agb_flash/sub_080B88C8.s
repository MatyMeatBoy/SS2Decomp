	thumb_func_start sub_080B88C8
sub_080B88C8: @ 0x080B88C8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	subs r4, r2, #1
	cmp r2, #0
	beq _080B88EE
	movs r2, #1
	negs r2, r2
_080B88D8:
	ldrb r1, [r3, #0]
	ldrb r0, [r5, #0]
	adds r5, #1
	adds r3, #1
	cmp r1, r0
	beq _080B88E8
	subs r0, r3, #1
	b _080B88F0
_080B88E8:
	subs r4, #1
	cmp r4, r2
	bne _080B88D8
_080B88EE:
	movs r0, #0
_080B88F0:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_080B88C8
