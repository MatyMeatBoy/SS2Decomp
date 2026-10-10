	thumb_func_start sub_080B2454
sub_080B2454: @ 0x080B2454
	push {r4, lr}
	ldr r4, _080B24B0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _080B24A8
	bl sub_08000470
	cmp r0, #0
	bne _080B246E
	ldr r0, [r4, #0]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _080B24A8
_080B246E:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	ldr r1, [r4, #0]
	str r0, [r1, #0x20]
	bl sub_080003F0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _080B246E
	ldr r0, _080B24B0
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x20]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r0, #0x10]
	ldr r1, _080B24B4
	str r1, [r0, #0xc]
	movs r1, #0
	str r1, [r0, #0x24]
	movs r1, #0x44
	str r1, [r0, #8]
	movs r1, #0
	movs r2, #0
	bl sub_08000274
_080B24A8:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080B24B0: .4byte gUnk_030007AC
_080B24B4: .4byte sub_080B2200
	thumb_func_end sub_080B2454
