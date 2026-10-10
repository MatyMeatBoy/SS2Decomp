	thumb_func_start sub_08098060
sub_08098060: @ 0x08098060
	push {r4, lr}
	ldr r4, _08098084
	ldr r0, [r4, #0]
	bl sub_08000470
	cmp r0, #0
	beq _08098074
	ldr r0, [r4, #0]
	bl sub_080003A8
_08098074:
	ldr r0, [r4, #0]
	bl sub_08001538
	movs r0, #0
	str r0, [r4, #0]
	pop {r4}
	pop {r0}
	bx r0
_08098084: .4byte gUnk_030002C0
	thumb_func_end sub_08098060
