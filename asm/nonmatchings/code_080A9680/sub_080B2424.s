	thumb_func_start sub_080B2424
sub_080B2424: @ 0x080B2424
	push {r4, lr}
	ldr r4, _080B2450
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _080B244A
	bl sub_08000470
	cmp r0, #0
	beq _080B243C
	ldr r0, [r4, #0]
	bl sub_080003A8
_080B243C:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _080B244A
	bl sub_08001538
	movs r0, #0
	str r0, [r4, #0]
_080B244A:
	pop {r4}
	pop {r0}
	bx r0
_080B2450: .4byte gUnk_030007AC
	thumb_func_end sub_080B2424
