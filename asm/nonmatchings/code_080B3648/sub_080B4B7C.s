	thumb_func_start sub_080B4B7C
sub_080B4B7C: @ 0x080B4B7C
	push {r4, r5, lr}
	ldr r0, _080B4BB4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _080B4BAE
	movs r5, #0
	adds r4, r0, #0
_080B4B8A:
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _080B4B9A
	adds r0, r4, #0
	bl sub_080003A8
_080B4B9A:
	adds r4, #0x28
	adds r5, #1
	cmp r5, #3
	bls _080B4B8A
	movs r5, #0
	ldr r4, _080B4BB4
	ldr r0, [r4, #0]
	bl sub_08001538
	str r5, [r4, #0]
_080B4BAE:
	pop {r4, r5}
	pop {r0}
	bx r0
_080B4BB4: .4byte gUnk_030007D0
	thumb_func_end sub_080B4B7C
