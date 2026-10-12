	thumb_func_start sub_0809F998
sub_0809F998: @ 0x0809F998
	push {r4, lr}
	ldr r4, _0809F9F0
	ldr r0, [r4, #0]
	bl sub_08000470
	cmp r0, #0
	bne _0809F9AE
	ldr r0, [r4, #0]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _0809F9E8
_0809F9AE:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	ldr r1, [r4, #0]
	str r0, [r1, #0x20]
	bl sub_080003F0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _0809F9AE
	ldr r0, _0809F9F0
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x20]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r0, #0x10]
	ldr r1, _0809F9F4
	str r1, [r0, #0xc]
	movs r1, #0
	str r1, [r0, #0x24]
	movs r1, #0x3e
	str r1, [r0, #8]
	movs r1, #0
	movs r2, #0
	bl sub_08000274
_0809F9E8:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_0809F9F0: .4byte gUnk_03000318
_0809F9F4: .4byte sub_0809E468
	thumb_func_end sub_0809F998
