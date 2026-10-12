	thumb_func_start sub_080A7E94
sub_080A7E94: @ 0x080A7E94
	push {r4, r5, lr}
	ldr r0, _080A7EC8
	movs r5, #0
	ldr r4, [r0, #0]
_080A7E9C:
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _080A7EAC
	adds r0, r4, #0
	bl sub_080003A8
_080A7EAC:
	adds r4, #0x28
	adds r5, #1
	cmp r5, #7
	bls _080A7E9C
	movs r5, #0
	ldr r4, _080A7EC8
	ldr r0, [r4, #0]
	bl sub_08001538
	str r5, [r4, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_080A7EC8: .4byte gUnk_03000408
	thumb_func_end sub_080A7E94
