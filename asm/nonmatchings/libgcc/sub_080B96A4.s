	thumb_func_start sub_080B96A4
sub_080B96A4: @ 0x080B96A4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r2, #0xf
	bls _080B96E4
	adds r0, r3, #0
	orrs r0, r5
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080B96E4
	adds r1, r5, #0
_080B96BE:
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _080B96BE
	cmp r2, #3
	bls _080B96E2
_080B96D8:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _080B96D8
_080B96E2:
	adds r4, r1, #0
_080B96E4:
	subs r2, #1
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	beq _080B96FE
	adds r1, r0, #0
_080B96F0:
	ldrb r0, [r3, #0]
	strb r0, [r4, #0]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _080B96F0
_080B96FE:
	adds r0, r5, #0
	pop {r4, r5, pc}
	thumb_func_end sub_080B96A4
