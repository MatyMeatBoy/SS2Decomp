	thumb_func_start sub_080A4B48
sub_080A4B48: @ 0x080A4B48
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _080A4B58
	ldr r4, [r0, #0]
	movs r5, #0
	b _080A4B64
	.2byte 0x0000
_080A4B58: .4byte gUnk_0300035C
_080A4B5C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, #0x28
_080A4B64:
	cmp r5, #2
	bhi _080A4BA0
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080A4B5C
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _080A4B5C
	adds r0, r6, #0
	adds r0, #0x46
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _080A4BA8
	str r0, [r4, #0xc]
	ldr r0, _080A4BAC
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08000274
_080A4BA0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_080A4BA8: .4byte sub_080A3D2C
_080A4BAC: .4byte sub_080A4BB0
	thumb_func_end sub_080A4B48
