	thumb_func_start sub_08092DF0
sub_08092DF0: @ 0x08092DF0
	push {r4, lr}
	ldr r4, _08092E18
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _08092E12
	bl sub_08000470
	cmp r0, #0
	beq _08092E08
	ldr r0, [r4, #0]
	bl sub_080003A8
_08092E08:
	ldr r0, [r4, #0]
	bl sub_08001538
	movs r0, #0
	str r0, [r4, #0]
_08092E12:
	pop {r4}
	pop {r0}
	bx r0
_08092E18: .4byte gUnk_03000260
	thumb_func_end sub_08092DF0
