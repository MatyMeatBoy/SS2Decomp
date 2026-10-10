	thumb_func_start sub_08065918
sub_08065918: @ 0x08065918
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, _08065930
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08065960
	movs r0, #0x3c
	str r0, [r4, #8]
	b _08065938
_08065930: .4byte gUnk_030061E0
_08065934:
	bl sub_080003F0
_08065938:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _08065934
	ldr r0, _08065968
	ldr r1, _0806596C
	str r1, [r0, #0xc]
	ldr r1, [r0, #0x20]
	ldr r2, _08065970
	adds r1, r1, r2
	str r1, [r0, #0x10]
	movs r1, #0
	str r1, [r0, #0x24]
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08000274
_08065960:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_08065968: .4byte gUnk_030061E0
_0806596C: .4byte sub_0806441C
_08065970: .4byte 0x00000BFC
	thumb_func_end sub_08065918
