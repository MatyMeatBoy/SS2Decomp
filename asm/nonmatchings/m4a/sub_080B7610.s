	thumb_func_start sub_080B7610
sub_080B7610: @ 0x080B7610
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _080B7690
	ldr r4, [r0, #0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r2
	lsrs r2, r0, #0x10
	movs r6, #0
	strb r2, [r4, #8]
	ldr r1, _080B7694
	subs r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0, #0]
	str r5, [r4, #0x10]
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r1, r5, #0
	bl sub_080B9394
	strb r0, [r4, #0xb]
	ldr r0, _080B7698
	muls r0, r5, r0
	ldr r1, _080B769C
	adds r0, r0, r1
	ldr r1, _080B76A0
	bl sub_080B9394
	adds r1, r0, #0
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl sub_080B9394
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
	ldr r0, _080B76A4
	strh r6, [r0, #0]
	ldr r4, _080B76A8
	ldr r0, _080B76AC
	adds r1, r5, #0
	bl sub_080B9394
	negs r0, r0
	strh r0, [r4, #0]
	bl sub_080B77EC
	ldr r1, _080B76B0
_080B7674:
	ldrb r0, [r1, #0]
	cmp r0, #0x9f
	beq _080B7674
	ldr r1, _080B76B0
_080B767C:
	ldrb r0, [r1, #0]
	cmp r0, #0x9f
	bne _080B767C
	ldr r1, _080B76A4
	movs r0, #0x80
	strh r0, [r1, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_080B7690: .4byte gUnk_03007FF0
_080B7694: .4byte gUnk_080BB95C
_080B7698: .4byte 0x00091D1B
_080B769C: .4byte 0x00001388
_080B76A0: .4byte 0x00002710
_080B76A4: .4byte 0x04000102
_080B76A8: .4byte 0x04000100
_080B76AC: .4byte 0x00044940
_080B76B0: .4byte 0x04000006
	thumb_func_end sub_080B7610
