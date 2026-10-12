	thumb_func_start sub_080AF350
sub_080AF350: @ 0x080AF350
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, _080AF360
	ldr r4, [r0, #0]
	movs r5, #0
	b _080AF36C
	.2byte 0x0000
_080AF360: .4byte gUnk_03000784
_080AF364:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, #0x28
_080AF36C:
	ldr r6, _080AF3B8
	ldrb r0, [r6, #0]
	cmp r5, r0
	bhs _080AF3B2
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080AF364
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _080AF364
	ldrb r6, [r6, #0]
	cmp r5, r6
	bhs _080AF3B2
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _080AF3BC
	str r0, [r4, #0xc]
	ldr r0, _080AF3C0
	str r0, [r4, #0x24]
	adds r0, r7, #0
	adds r0, #0x44
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08000274
_080AF3B2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AF3B8: .4byte gUnk_03000780
_080AF3BC: .4byte sub_080AE420
_080AF3C0: .4byte sub_080AF3C4
	thumb_func_end sub_080AF350
