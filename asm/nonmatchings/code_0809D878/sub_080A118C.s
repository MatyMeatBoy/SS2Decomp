	thumb_func_start sub_080A118C
sub_080A118C: @ 0x080A118C
	push {r4, lr}
	ldr r4, _080A11B0
	ldr r0, [r4, #0]
	bl sub_08000470
	cmp r0, #0
	beq _080A11A0
	ldr r0, [r4, #0]
	bl sub_080003A8
_080A11A0:
	ldr r0, [r4, #0]
	bl sub_08001538
	movs r0, #0
	str r0, [r4, #0]
	pop {r4}
	pop {r0}
	bx r0
_080A11B0: .4byte gUnk_03000344
	thumb_func_end sub_080A118C
