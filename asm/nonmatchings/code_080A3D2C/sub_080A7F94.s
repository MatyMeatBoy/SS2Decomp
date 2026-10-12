	thumb_func_start sub_080A7F94
sub_080A7F94: @ 0x080A7F94
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _080A7FA4
	ldr r4, [r0, #0]
	movs r6, #0
	b _080A7FB0
	.2byte 0x0000
_080A7FA4: .4byte gUnk_0300040C
_080A7FA8:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r4, #0x28
_080A7FB0:
	cmp r6, #1
	bhi _080A7FEE
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080A7FA8
	ldr r5, [r4, #8]
	cmp r5, #0
	bne _080A7FA8
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _080A7FEE
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _080A7FF4
	str r0, [r4, #0xc]
	str r5, [r4, #0x24]
	movs r0, #0x40
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0
	bl sub_08000274
_080A7FEE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A7FF4: .4byte sub_080A6BE8
	thumb_func_end sub_080A7F94
