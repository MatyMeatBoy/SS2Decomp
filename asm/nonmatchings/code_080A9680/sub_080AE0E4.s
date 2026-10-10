	thumb_func_start sub_080AE0E4
sub_080AE0E4: @ 0x080AE0E4
	push {r4, r5, lr}
	ldr r0, _080AE118
	movs r5, #0
	ldr r4, [r0, #0]
_080AE0EC:
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _080AE0FC
	adds r0, r4, #0
	bl sub_080003A8
_080AE0FC:
	adds r4, #0x28
	adds r5, #1
	cmp r5, #3
	bls _080AE0EC
	movs r5, #0
	ldr r4, _080AE118
	ldr r0, [r4, #0]
	bl sub_08001538
	str r5, [r4, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_080AE118: .4byte gUnk_030004C8
	thumb_func_end sub_080AE0E4
