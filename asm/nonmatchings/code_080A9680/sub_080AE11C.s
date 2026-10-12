	thumb_func_start sub_080AE11C
sub_080AE11C: @ 0x080AE11C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _080AE12C
	ldr r4, [r0, #0]
	movs r5, #0
	b _080AE138
	.2byte 0x0000
_080AE12C: .4byte gUnk_030004C8
_080AE130:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, #0x28
_080AE138:
	cmp r5, #3
	bhi _080AE176
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080AE130
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _080AE130
	adds r0, r6, #0
	adds r0, #0x40
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _080AE17C
	str r0, [r4, #0xc]
	ldr r0, _080AE180
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0
	bl sub_08000274
_080AE176:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080AE17C: .4byte sub_080AD534
_080AE180: .4byte sub_080AE184
	thumb_func_end sub_080AE11C
