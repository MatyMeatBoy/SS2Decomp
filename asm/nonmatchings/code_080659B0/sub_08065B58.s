	thumb_func_start sub_08065B58
sub_08065B58: @ 0x08065B58
	push {r4, lr}
	ldr r4, _08065B80
	movs r0, #0xa0
	bl sub_08001494
	str r0, [r4, #0]
	movs r2, #0
	movs r3, #0
	movs r1, #0
_08065B6A:
	ldr r0, [r4, #0]
	adds r0, r1, r0
	str r3, [r0, #8]
	adds r1, #0x28
	adds r2, #1
	cmp r2, #3
	bls _08065B6A
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_08065B80: .4byte gUnk_03006030
	thumb_func_end sub_08065B58
