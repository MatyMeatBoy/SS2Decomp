	thumb_func_start sub_08068894
sub_08068894: @ 0x08068894
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, _080688A8
	ldr r0, [r4, #0]
	bl sub_08000470
	cmp r0, #0
	bne _080688E0
	b _080688B0
_080688A8: .4byte gUnk_03006368
_080688AC:
	bl sub_080003F0
_080688B0:
	movs r0, #0x80
	lsls r0, r0, #4
	bl sub_08001494
	ldr r1, [r4, #0]
	str r0, [r1, #0x20]
	cmp r0, #0
	beq _080688AC
	ldr r0, _080688E8
	ldr r0, [r0, #0]
	ldr r1, _080688EC
	str r1, [r0, #0xc]
	ldr r1, [r0, #0x20]
	ldr r2, _080688F0
	adds r1, r1, r2
	str r1, [r0, #0x10]
	movs r1, #0x65
	str r1, [r0, #8]
	movs r1, #0
	str r1, [r0, #0x24]
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08000274
_080688E0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_080688E8: .4byte gUnk_03006368
_080688EC: .4byte sub_08066720
_080688F0: .4byte 0x000007FC
	thumb_func_end sub_08068894
