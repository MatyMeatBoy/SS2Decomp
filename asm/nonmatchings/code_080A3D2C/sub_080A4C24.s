	thumb_func_start sub_080A4C24
sub_080A4C24: @ 0x080A4C24
	push {r4, lr}
	ldr r4, _080A4C6C
	ldr r0, [r4, #0]
	bl sub_08000470
	cmp r0, #0
	bne _080A4C3A
	ldr r0, [r4, #0]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _080A4C66
_080A4C3A:
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
	ldr r0, _080A4C70
	str r0, [r1, #0xc]
	movs r0, #0
	str r0, [r1, #0x24]
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl sub_08000274
_080A4C66:
	pop {r4}
	pop {r0}
	bx r0
_080A4C6C: .4byte gUnk_03000360
_080A4C70: .4byte sub_080A47A0
	thumb_func_end sub_080A4C24
