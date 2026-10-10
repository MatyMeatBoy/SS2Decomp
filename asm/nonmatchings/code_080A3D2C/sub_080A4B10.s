	thumb_func_start sub_080A4B10
sub_080A4B10: @ 0x080A4B10
	push {r4, r5, lr}
	ldr r0, _080A4B44
	movs r5, #0
	ldr r4, [r0, #0]
_080A4B18:
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _080A4B28
	adds r0, r4, #0
	bl sub_080003A8
_080A4B28:
	adds r4, #0x28
	adds r5, #1
	cmp r5, #2
	bls _080A4B18
	movs r5, #0
	ldr r4, _080A4B44
	ldr r0, [r4, #0]
	bl sub_08001538
	str r5, [r4, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_080A4B44: .4byte gUnk_0300035C
	thumb_func_end sub_080A4B10
