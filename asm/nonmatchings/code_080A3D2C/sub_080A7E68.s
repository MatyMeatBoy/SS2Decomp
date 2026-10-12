	thumb_func_start sub_080A7E68
sub_080A7E68: @ 0x080A7E68
	push {r4, lr}
	ldr r4, _080A7E90
	movs r0, #0xa0
	lsls r0, r0, #1
	bl sub_08001494
	str r0, [r4, #0]
	movs r3, #0
	movs r2, #0
	movs r1, #7
_080A7E7C:
	ldr r0, [r4, #0]
	adds r0, r2, r0
	str r3, [r0, #8]
	adds r2, #0x28
	subs r1, #1
	cmp r1, #0
	bge _080A7E7C
	pop {r4}
	pop {r0}
	bx r0
_080A7E90: .4byte gUnk_03000408
	thumb_func_end sub_080A7E68
