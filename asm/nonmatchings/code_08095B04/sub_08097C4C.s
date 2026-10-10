	thumb_func_start sub_08097C4C
sub_08097C4C: @ 0x08097C4C
	push {r4, lr}
	ldr r4, _08097C68
	movs r0, #0x28
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0]
	cmp r1, #0
	beq _08097C62
	movs r0, #0
	str r0, [r1, #8]
_08097C62:
	pop {r4}
	pop {r0}
	bx r0
_08097C68: .4byte gUnk_03000298
	thumb_func_end sub_08097C4C
