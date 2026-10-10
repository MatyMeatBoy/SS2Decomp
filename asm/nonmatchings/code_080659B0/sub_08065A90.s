	thumb_func_start sub_08065A90
sub_08065A90: @ 0x08065A90
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, _08065AA8
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08065ADA
	movs r0, #0x3c
	str r0, [r4, #8]
	b _08065AB0
_08065AA8: .4byte gUnk_030061B0
_08065AAC:
	bl sub_080003F0
_08065AB0:
	movs r0, #0x80
	lsls r0, r0, #2
	bl sub_08001638
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _08065AAC
	ldr r0, _08065AE0
	ldr r1, _08065AE4
	str r1, [r0, #0xc]
	ldr r1, [r0, #0x20]
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r1, r1, r2
	str r1, [r0, #0x10]
	movs r1, #0
	str r1, [r0, #0x24]
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08000274
_08065ADA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08065AE0: .4byte gUnk_030061B0
_08065AE4: .4byte sub_08065A1C
	thumb_func_end sub_08065A90
