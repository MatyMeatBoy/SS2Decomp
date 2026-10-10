	thumb_func_start sub_0809AE24
sub_0809AE24: @ 0x0809AE24
	push {r4, lr}
	ldr r4, _0809AE4C
	movs r0, #0xc8
	bl sub_08001494
	str r0, [r4, #0]
	movs r2, #0
	movs r3, #0
	movs r1, #0
_0809AE36:
	ldr r0, [r4, #0]
	adds r0, r1, r0
	str r3, [r0, #8]
	adds r1, #0x28
	adds r2, #1
	cmp r2, #4
	bls _0809AE36
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_0809AE4C: .4byte gUnk_030002E4
	thumb_func_end sub_0809AE24
