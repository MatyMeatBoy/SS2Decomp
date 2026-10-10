	thumb_func_start sub_0801DF8C
sub_0801DF8C: @ 0x0801DF8C
	push {r4, r5, lr}
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0801DFDC
	adds r1, r1, r0
	ldr r2, [r1, #0x30]
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	bne _0801DFE0
	movs r4, #0
	ldrh r0, [r1, #0x20]
	cmp r0, #0xb
	beq _0801DFD6
	adds r0, r1, #0
	adds r0, #0xc4
	ldrh r3, [r0, #0]
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r0, #0
	beq _0801DFD6
	adds r0, r1, #0
	adds r0, #0x88
	ldrh r0, [r0, #0]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0801DFD6
	movs r0, #0x80
	lsls r0, r0, #6
	ands r2, r0
	cmp r2, #0
	beq _0801DFD8
_0801DFD6:
	movs r4, #1
_0801DFD8:
	adds r0, r4, #0
	b _0801DFE2
_0801DFDC: .4byte gUnk_03003CE0
_0801DFE0:
	movs r0, #0
_0801DFE2:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_0801DF8C
