	thumb_func_start sub_0809975C
sub_0809975C: @ 0x0809975C
	push {r4, lr}
	ldr r4, _08099784
	movs r0, #0xa0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0]
	movs r2, #0
	movs r3, #0
	movs r1, #0
_08099770:
	ldr r0, [r4, #0]
	adds r0, r1, r0
	str r3, [r0, #8]
	adds r1, #0x28
	adds r2, #1
	cmp r2, #0x3f
	bls _08099770
	pop {r4}
	pop {r0}
	bx r0
_08099784: .4byte gUnk_030002D8
	thumb_func_end sub_0809975C
