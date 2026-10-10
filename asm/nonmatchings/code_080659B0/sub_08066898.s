	thumb_func_start sub_08066898
sub_08066898: @ 0x08066898
	push {r4, r5, r6, lr}
	bl sub_080020F4
	bl sub_08002118
	ldr r6, _080668C4
_080668A4:
	ldr r0, _080668C8
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	movs r5, #0
	cmp r0, #1
	bne _080668B2
	adds r5, r1, #0
_080668B2:
	cmp r5, #0
	beq _080668FE
	ldr r0, [r6, #0]
	bl sub_08000470
	cmp r0, #0
	bne _080668FE
	ldr r4, _080668C4
	b _080668D0
_080668C4: .4byte gUnk_03006368
_080668C8: .4byte gUnk_03006300
_080668CC:
	bl sub_080003F0
_080668D0:
	movs r0, #0x80
	lsls r0, r0, #4
	bl sub_08001494
	ldr r1, [r4, #0]
	str r0, [r1, #0x20]
	cmp r0, #0
	beq _080668CC
	ldr r0, [r6, #0]
	ldr r1, _08066904
	str r1, [r0, #0xc]
	ldr r1, [r0, #0x20]
	ldr r2, _08066908
	adds r1, r1, r2
	str r1, [r0, #0x10]
	movs r1, #0x65
	str r1, [r0, #8]
	movs r1, #0
	str r1, [r0, #0x24]
	adds r1, r5, #0
	movs r2, #0
	bl sub_08000274
_080668FE:
	bl sub_080003F0
	b _080668A4
_08066904: .4byte sub_08066720
_08066908: .4byte 0x000007FC
	thumb_func_end sub_08066898
