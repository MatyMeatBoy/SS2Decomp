	thumb_func_start sub_080949A8
sub_080949A8: @ 0x080949A8
	push {r4, lr}
	ldr r4, _080949F8
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _080949F0
	bl sub_08000470
	cmp r0, #0
	bne _080949C2
	ldr r0, [r4, #0]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _080949F0
_080949C2:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	ldr r1, [r4, #0]
	str r0, [r1, #0x20]
	cmp r0, #0
	beq _080949F0
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r0, _080949FC
	str r0, [r1, #0xc]
	movs r0, #0
	str r0, [r1, #0x24]
	movs r0, #0x44
	str r0, [r1, #8]
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl sub_08000274
_080949F0:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080949F8: .4byte gUnk_03000278
_080949FC: .4byte sub_080948E0
	thumb_func_end sub_080949A8
