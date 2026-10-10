	thumb_func_start sub_080659F4
sub_080659F4: @ 0x080659F4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r4, r2
	bne _08065A02
	str r4, [r5, #0]
	b _08065A16
_08065A02:
	adds r0, r2, #0
	muls r0, r3, r0
	asrs r0, r0, #0xa
	movs r1, #0x80
	lsls r1, r1, #3
	subs r1, r1, r3
	muls r1, r4, r1
	asrs r1, r1, #0xa
	adds r0, r0, r1
	str r0, [r5, #0]
_08065A16:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_080659F4
