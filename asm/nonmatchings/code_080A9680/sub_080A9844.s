	thumb_func_start sub_080A9844
sub_080A9844: @ 0x080A9844
	push {r4, r5, lr}
	ldr r0, _080A9878
	movs r5, #0
	ldr r4, [r0, #0]
_080A984C:
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _080A985C
	adds r0, r4, #0
	bl sub_080003A8
_080A985C:
	adds r4, #0x28
	adds r5, #1
	cmp r5, #2
	bls _080A984C
	movs r5, #0
	ldr r4, _080A9878
	ldr r0, [r4, #0]
	bl sub_08001538
	str r5, [r4, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_080A9878: .4byte gUnk_03000424
	thumb_func_end sub_080A9844
