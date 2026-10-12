	thumb_func_start sub_080A0FEC
sub_080A0FEC: @ 0x080A0FEC
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r4, _080A1020
	ldr r0, [r4, #0]
	bl sub_08000470
	cmp r0, #0
	bne _080A1008
	ldr r0, [r4, #0]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _080A1042
_080A1008:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	ldr r1, [r4, #0]
	str r0, [r1, #0x20]
	cmp r0, #0
	bne _080A1024
	movs r0, #1
	strb r0, [r5, #0]
	b _080A1042
	.2byte 0x0000
_080A1020: .4byte gUnk_03000334
_080A1024:
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r0, _080A1048
	str r0, [r1, #0xc]
	movs r0, #0
	str r0, [r1, #0x24]
	movs r0, #0x44
	str r0, [r1, #8]
	adds r0, r1, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08000274
_080A1042:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080A1048: .4byte sub_080A05B4
	thumb_func_end sub_080A0FEC
