	thumb_func_start sub_0809AE50
sub_0809AE50: @ 0x0809AE50
	push {r4, r5, lr}
	ldr r0, _0809AE84
	movs r5, #0
	ldr r4, [r0, #0]
_0809AE58:
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _0809AE68
	adds r0, r4, #0
	bl sub_080003A8
_0809AE68:
	adds r4, #0x28
	adds r5, #1
	cmp r5, #4
	bls _0809AE58
	movs r5, #0
	ldr r4, _0809AE84
	ldr r0, [r4, #0]
	bl sub_08001538
	str r5, [r4, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_0809AE84: .4byte gUnk_030002E4
	thumb_func_end sub_0809AE50
