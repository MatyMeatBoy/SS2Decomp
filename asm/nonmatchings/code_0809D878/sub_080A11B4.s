	thumb_func_start sub_080A11B4
sub_080A11B4: @ 0x080A11B4
	push {r4, lr}
	ldr r4, _080A1200
	ldr r0, [r4, #0]
	bl sub_08000470
	cmp r0, #0
	bne _080A11CA
	ldr r0, [r4, #0]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _080A11F8
_080A11CA:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	ldr r1, [r4, #0]
	str r0, [r1, #0x20]
	cmp r0, #0
	beq _080A11F8
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r0, _080A1204
	str r0, [r1, #0xc]
	movs r0, #0
	str r0, [r1, #0x24]
	movs r0, #0x46
	str r0, [r1, #8]
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl sub_08000274
_080A11F8:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080A1200: .4byte gUnk_03000344
_080A1204: .4byte sub_080A0B44
	thumb_func_end sub_080A11B4
