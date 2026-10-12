	thumb_func_start sub_080A987C
sub_080A987C: @ 0x080A987C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _080A988C
	ldr r4, [r0, #0]
	movs r6, #0
	b _080A9898
	.2byte 0x0000
_080A988C: .4byte gUnk_03000424
_080A9890:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r4, #0x28
_080A9898:
	cmp r6, #2
	bhi _080A98D4
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080A9890
	ldr r5, [r4, #8]
	cmp r5, #0
	bne _080A9890
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _080A98D4
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _080A98DC
	str r0, [r4, #0xc]
	str r5, [r4, #0x24]
	movs r0, #0x40
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08000274
_080A98D4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080A98DC: .4byte sub_080A92C0
	thumb_func_end sub_080A987C
