	thumb_func_start sub_080854A0
sub_080854A0: @ 0x080854A0
	push {r4, lr}
	ldr r4, _080854B4
	ldr r0, [r4, #0]
	bl sub_08001538
	movs r0, #0
	str r0, [r4, #0]
	pop {r4}
	pop {r0}
	bx r0
_080854B4: .4byte gUnk_03006440
	thumb_func_end sub_080854A0
