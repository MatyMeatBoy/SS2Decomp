	thumb_func_start sub_0809D7E4
sub_0809D7E4: @ 0x0809D7E4
	push {r4, lr}
	ldr r4, _0809D80C
	movs r0, #0x50
	bl sub_08001494
	str r0, [r4, #0]
	movs r2, #0
	movs r3, #0
	movs r1, #0
_0809D7F6:
	ldr r0, [r4, #0]
	adds r0, r1, r0
	str r3, [r0, #8]
	adds r1, #0x28
	adds r2, #1
	cmp r2, #1
	bls _0809D7F6
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_0809D80C: .4byte gUnk_03000308
	thumb_func_end sub_0809D7E4
