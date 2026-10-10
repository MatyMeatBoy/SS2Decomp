	thumb_func_start sub_08099788
sub_08099788: @ 0x08099788
	push {r4, r5, lr}
	ldr r0, _080997BC
	movs r5, #0
	ldr r4, [r0, #0]
_08099790:
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _080997A0
	adds r0, r4, #0
	bl sub_080003A8
_080997A0:
	adds r4, #0x28
	adds r5, #1
	cmp r5, #0x3f
	bls _08099790
	movs r5, #0
	ldr r4, _080997BC
	ldr r0, [r4, #0]
	bl sub_08001538
	str r5, [r4, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_080997BC: .4byte gUnk_030002D8
	thumb_func_end sub_08099788
