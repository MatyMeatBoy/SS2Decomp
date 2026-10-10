	thumb_func_start sub_080AE0B8
sub_080AE0B8: @ 0x080AE0B8
	push {r4, lr}
	ldr r4, _080AE0E0
	movs r0, #0xa0
	bl sub_08001494
	str r0, [r4, #0]
	movs r2, #0
	movs r3, #0
	movs r1, #0
_080AE0CA:
	ldr r0, [r4, #0]
	adds r0, r1, r0
	str r3, [r0, #8]
	adds r1, #0x28
	adds r2, #1
	cmp r2, #3
	bls _080AE0CA
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080AE0E0: .4byte gUnk_030004C8
	thumb_func_end sub_080AE0B8
