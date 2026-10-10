	thumb_func_start sub_080B63BC
sub_080B63BC: @ 0x080B63BC
	push {r4, lr}
	ldr r4, _080B6404
	ldr r0, [r4, #0]
	bl sub_08000470
	cmp r0, #0
	bne _080B63D2
	ldr r0, [r4, #0]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _080B63FE
_080B63D2:
	ldr r1, [r4, #0]
	movs r0, #0x44
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	ldr r1, [r4, #0]
	str r0, [r1, #0x20]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r0, _080B6408
	str r0, [r1, #0xc]
	movs r0, #0
	str r0, [r1, #0x24]
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl sub_08000274
_080B63FE:
	pop {r4}
	pop {r0}
	bx r0
_080B6404: .4byte gUnk_030007E4
_080B6408: .4byte sub_080B5F94
	thumb_func_end sub_080B63BC
