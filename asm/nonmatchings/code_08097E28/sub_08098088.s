	thumb_func_start sub_08098088
sub_08098088: @ 0x08098088
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r6, _080980C0
	ldr r0, [r6, #0]
	bl sub_08000470
	cmp r0, #0
	bne _080980A6
	ldr r0, [r6, #0]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _080980E4
_080980A6:
	ldr r0, _080980C4
	str r4, [r0, #0]
	str r5, [r0, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	ldr r1, [r6, #0]
	str r0, [r1, #0x20]
	cmp r0, #0
	bne _080980C8
	str r0, [r1, #8]
	b _080980E4
_080980C0: .4byte gUnk_030002C0
_080980C4: .4byte gUnk_030002C8
_080980C8:
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r0, _080980EC
	str r0, [r1, #0xc]
	movs r0, #0
	str r0, [r1, #0x24]
	movs r0, #0x44
	str r0, [r1, #8]
	adds r0, r1, #0
	adds r1, r7, #0
	bl sub_08000274
_080980E4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080980EC: .4byte sub_08096FA0
	thumb_func_end sub_08098088
