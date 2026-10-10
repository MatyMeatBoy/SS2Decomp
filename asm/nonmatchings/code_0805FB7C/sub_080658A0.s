	thumb_func_start sub_080658A0
sub_080658A0: @ 0x080658A0
	push {r4, lr}
	ldr r4, _080658C8
	movs r0, #0xa0
	bl sub_08001494
	str r0, [r4, #0]
	movs r2, #0
	movs r3, #0
	movs r1, #0
_080658B2:
	ldr r0, [r4, #0]
	adds r0, r1, r0
	str r3, [r0, #8]
	adds r1, #0x28
	adds r2, #1
	cmp r2, #3
	bls _080658B2
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080658C8: .4byte gUnk_03006208
	thumb_func_end sub_080658A0
