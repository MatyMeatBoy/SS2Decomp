	thumb_func_start sub_080B8808
sub_080B8808: @ 0x080B8808
	push {r4, lr}
	adds r4, r0, #0
	subs r3, r2, #1
	cmp r2, #0
	beq _080B8824
	movs r2, #1
	negs r2, r2
_080B8816:
	ldrb r0, [r4, #0]
	strb r0, [r1, #0]
	adds r4, #1
	adds r1, #1
	subs r3, #1
	cmp r3, r2
	bne _080B8816
_080B8824:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_080B8808
