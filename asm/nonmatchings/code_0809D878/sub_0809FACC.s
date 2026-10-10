	thumb_func_start sub_0809FACC
sub_0809FACC: @ 0x0809FACC
	push {r4, lr}
	ldr r4, _0809FAE8
	movs r0, #0x28
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0]
	cmp r1, #0
	beq _0809FAE2
	movs r0, #0
	str r0, [r1, #8]
_0809FAE2:
	pop {r4}
	pop {r0}
	bx r0
_0809FAE8: .4byte gUnk_03000328
	thumb_func_end sub_0809FACC
