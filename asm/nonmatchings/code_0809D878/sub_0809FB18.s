	thumb_func_start sub_0809FB18
sub_0809FB18: @ 0x0809FB18
	push {r4, lr}
	ldr r4, _0809FB64
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0809FB5E
	bl sub_08000470
	cmp r0, #0
	bne _0809FB32
	ldr r0, [r4, #0]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _0809FB5E
_0809FB32:
	ldr r0, [r4, #0]
	movs r1, #0x40
	str r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	ldr r1, [r4, #0]
	str r0, [r1, #0x20]
	cmp r0, #0
	beq _0809FB5E
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r0, _0809FB68
	str r0, [r1, #0xc]
	movs r0, #0
	str r0, [r1, #0x24]
	adds r0, r1, #0
	bl sub_08000274
_0809FB5E:
	pop {r4}
	pop {r0}
	bx r0
_0809FB64: .4byte gUnk_03000328
_0809FB68: .4byte sub_0809F4A8
	thumb_func_end sub_0809FB18
