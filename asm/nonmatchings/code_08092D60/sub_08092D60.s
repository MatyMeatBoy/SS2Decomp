	thumb_func_start sub_08092D60
sub_08092D60: @ 0x08092D60
	push {r4, lr}
	ldr r4, _08092DB0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _08092DAA
	bl sub_08000470
	cmp r0, #0
	bne _08092D7A
	ldr r0, [r4, #0]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _08092DAA
_08092D7A:
	ldr r1, [r4, #0]
	ldr r0, _08092DB4
	str r0, [r1, #0xc]
	movs r0, #0x44
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	ldr r1, [r4, #0]
	str r0, [r1, #0x20]
	cmp r0, #0
	beq _08092DAA
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1, #0x10]
	movs r0, #0
	str r0, [r1, #0x24]
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl sub_08000274
_08092DAA:
	pop {r4}
	pop {r0}
	bx r0
_08092DB0: .4byte gUnk_03000260
_08092DB4: .4byte sub_08092E40
	thumb_func_end sub_08092D60
