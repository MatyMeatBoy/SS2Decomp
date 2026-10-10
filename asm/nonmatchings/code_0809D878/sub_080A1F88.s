	thumb_func_start sub_080A1F88
sub_080A1F88: @ 0x080A1F88
	push {r4, r5, lr}
	movs r0, #0xc2
	bl sub_0805867C
	ldr r0, _080A1FEC
	movs r5, #0
	ldr r4, [r0, #0]
_080A1F96:
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _080A1FA6
	adds r0, r4, #0
	bl sub_080003A8
_080A1FA6:
	adds r4, #0x28
	adds r5, #1
	cmp r5, #7
	bls _080A1F96
	ldr r4, _080A1FEC
	ldr r0, [r4, #0]
	bl sub_08001538
	movs r0, #0
	str r0, [r4, #0]
	ldr r0, _080A1FF0
	movs r5, #0
	ldr r4, [r0, #0]
_080A1FC0:
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _080A1FD0
	adds r0, r4, #0
	bl sub_080003A8
_080A1FD0:
	adds r4, #0x28
	adds r5, #1
	cmp r5, #7
	bls _080A1FC0
	movs r5, #0
	ldr r4, _080A1FF0
	ldr r0, [r4, #0]
	bl sub_08001538
	str r5, [r4, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_080A1FEC: .4byte gUnk_03000350
_080A1FF0: .4byte gUnk_03000354
	thumb_func_end sub_080A1F88
