	thumb_func_start sub_080B4BB8
sub_080B4BB8: @ 0x080B4BB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _080B4BD8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _080B4C24
	adds r4, r0, #0
	movs r6, #0
	b _080B4BE4
	.2byte 0x0000
_080B4BD8: .4byte gUnk_030007D0
_080B4BDC:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r4, #0x28
_080B4BE4:
	cmp r6, #3
	bhi _080B4C24
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080B4BDC
	ldr r5, [r4, #8]
	cmp r5, #0
	bne _080B4BDC
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _080B4C24
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _080B4C30
	str r0, [r4, #0xc]
	str r5, [r4, #0x24]
	adds r0, r7, #0
	adds r0, #0x40
	str r0, [r4, #8]
	adds r0, r4, #0
	mov r1, r8
	adds r2, r7, #0
	bl sub_08000274
_080B4C24:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080B4C30: .4byte sub_080B4690
	thumb_func_end sub_080B4BB8
