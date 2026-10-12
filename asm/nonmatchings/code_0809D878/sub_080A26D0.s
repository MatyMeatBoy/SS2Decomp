	thumb_func_start sub_080A26D0
sub_080A26D0: @ 0x080A26D0
	push {r4, lr}
	ldr r4, _080A2718
	movs r0, #0xa0
	lsls r0, r0, #1
	bl sub_08001494
	str r0, [r4, #0]
	movs r3, #0
	movs r2, #0
	movs r1, #7
_080A26E4:
	ldr r0, [r4, #0]
	adds r0, r2, r0
	str r3, [r0, #8]
	adds r2, #0x28
	subs r1, #1
	cmp r1, #0
	bge _080A26E4
	ldr r4, _080A271C
	movs r0, #0xa0
	lsls r0, r0, #1
	bl sub_08001494
	str r0, [r4, #0]
	movs r3, #0
	movs r2, #0
	movs r1, #7
_080A2704:
	ldr r0, [r4, #0]
	adds r0, r2, r0
	str r3, [r0, #8]
	adds r2, #0x28
	subs r1, #1
	cmp r1, #0
	bge _080A2704
	pop {r4}
	pop {r0}
	bx r0
_080A2718: .4byte gUnk_03000350
_080A271C: .4byte gUnk_03000354
	thumb_func_end sub_080A26D0
