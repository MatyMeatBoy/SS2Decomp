	thumb_func_start sub_08065AFC
sub_08065AFC: @ 0x08065AFC
	push {r4, r5, lr}
	ldr r4, _08065B4C
	adds r0, r4, #0
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _08065B46
	bl sub_080020F4
	ldr r1, _08065B50
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r2, #0]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001638
	str r0, [r4, #0x20]
	ldr r1, _08065B54
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	bl sub_08000274
_08065B46:
	pop {r4, r5}
	pop {r0}
	bx r0
_08065B4C: .4byte gUnk_030061E0
_08065B50: .4byte gUnk_03003CE0
_08065B54: .4byte sub_0806335C
	thumb_func_end sub_08065AFC
