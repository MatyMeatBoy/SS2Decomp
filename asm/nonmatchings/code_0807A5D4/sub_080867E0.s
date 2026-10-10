	thumb_func_start sub_080867E0
sub_080867E0: @ 0x080867E0
	push {r4, lr}
	ldr r4, _080867F4
	ldr r0, [r4, #0]
	bl sub_08001538
	movs r0, #0
	str r0, [r4, #0]
	pop {r4}
	pop {r0}
	bx r0
_080867F4: .4byte gUnk_03006478
	thumb_func_end sub_080867E0
