	thumb_func_start sub_08094E84
sub_08094E84: @ 0x08094E84
	push {r4, lr}
	ldr r4, _08094EA0
	movs r0, #0x28
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0]
	cmp r1, #0
	beq _08094E9A
	movs r0, #0
	str r0, [r1, #8]
_08094E9A:
	pop {r4}
	pop {r0}
	bx r0
_08094EA0: .4byte gUnk_0300027C
	thumb_func_end sub_08094E84
