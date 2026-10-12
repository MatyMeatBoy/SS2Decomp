	thumb_func_start sub_080A7F5C
sub_080A7F5C: @ 0x080A7F5C
	push {r4, r5, lr}
	ldr r0, _080A7F90
	movs r5, #0
	ldr r4, [r0, #0]
_080A7F64:
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _080A7F74
	adds r0, r4, #0
	bl sub_080003A8
_080A7F74:
	adds r4, #0x28
	adds r5, #1
	cmp r5, #1
	bls _080A7F64
	movs r5, #0
	ldr r4, _080A7F90
	ldr r0, [r4, #0]
	bl sub_08001538
	str r5, [r4, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_080A7F90: .4byte gUnk_0300040C
	thumb_func_end sub_080A7F5C
