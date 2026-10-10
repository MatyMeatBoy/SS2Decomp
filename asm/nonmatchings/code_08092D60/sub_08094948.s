	thumb_func_start sub_08094948
sub_08094948: @ 0x08094948
	push {r4, lr}
	ldr r4, _08094964
	movs r0, #0x28
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0]
	cmp r1, #0
	beq _0809495E
	movs r0, #0
	str r0, [r1, #8]
_0809495E:
	pop {r4}
	pop {r0}
	bx r0
_08094964: .4byte gUnk_03000278
	thumb_func_end sub_08094948
