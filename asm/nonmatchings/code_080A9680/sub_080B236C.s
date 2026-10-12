	thumb_func_start sub_080B236C
sub_080B236C: @ 0x080B236C
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r6, r0, #0
	ldr r4, _080B23C0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _080B23B8
	bl sub_08000470
	cmp r0, #0
	bne _080B23B8
	ldr r0, [r4, #0]
	ldr r5, [r0, #8]
	cmp r5, #0
	bne _080B23B8
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	ldr r1, [r4, #0]
	str r0, [r1, #0x20]
	cmp r0, #0
	beq _080B23B8
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r0, _080B23C4
	str r0, [r1, #0xc]
	str r5, [r1, #0x24]
	movs r0, #0x3b
	str r0, [r1, #8]
	adds r0, r1, #0
	adds r2, r7, #0
	adds r1, r6, #0
	movs r3, #0
	bl sub_08000274
_080B23B8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080B23C0: .4byte gUnk_030007A8
_080B23C4: .4byte sub_080B2058
	thumb_func_end sub_080B236C
