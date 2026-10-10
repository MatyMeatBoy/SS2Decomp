	thumb_func_start sub_080B23FC
sub_080B23FC: @ 0x080B23FC
	push {r4, lr}
	ldr r4, _080B2420
_080B2400:
	movs r0, #0x28
	bl sub_08001494
	str r0, [r4, #0]
	bl sub_080003F0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _080B2400
	ldr r0, _080B2420
	ldr r1, [r0, #0]
	movs r0, #0
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
_080B2420: .4byte gUnk_030007AC
	thumb_func_end sub_080B23FC
