	thumb_func_start sub_0809FAEC
sub_0809FAEC: @ 0x0809FAEC
	push {r4, lr}
	ldr r4, _0809FB14
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0809FB0E
	bl sub_08000470
	cmp r0, #0
	beq _0809FB04
	ldr r0, [r4, #0]
	bl sub_080003A8
_0809FB04:
	ldr r0, [r4, #0]
	bl sub_08001538
	movs r0, #0
	str r0, [r4, #0]
_0809FB0E:
	pop {r4}
	pop {r0}
	bx r0
_0809FB14: .4byte gUnk_03000328
	thumb_func_end sub_0809FAEC
