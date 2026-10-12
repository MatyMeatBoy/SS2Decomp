	thumb_func_start sub_0805AD78
sub_0805AD78: @ 0x0805AD78
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r6, _0805AD84
	b _0805AD98
	.2byte 0x0000
_0805AD84: .4byte gUnk_03003CE0
_0805AD88:
	ldr r0, _0805ADFC
	ldr r1, [r0, #0]
	lsls r0, r4, #4
	adds r1, r1, r0
	adds r1, #0x79
	movs r0, #0
	strb r0, [r1, #0]
	adds r4, #1
_0805AD98:
	bl sub_080020F4
	movs r7, #0xa6
	lsls r7, r7, #1
	muls r0, r7, r0
	adds r0, r0, r6
	adds r0, #0x77
	ldrb r0, [r0, #0]
	cmp r4, r0
	blo _0805AD88
	ldr r6, _0805ADFC
	ldr r1, [r6, #0]
	lsls r4, r5, #4
	adds r0, r1, r4
	adds r0, #0x70
	ldrh r0, [r0, #0]
	cmp r0, #2
	bne _0805AE18
	adds r0, r4, #0
	adds r0, #0x70
	adds r0, r1, r0
	bl sub_0805AE34
	adds r5, r0, #0
	cmp r5, #0
	beq _0805AE04
	ldr r0, [r6, #0]
	adds r0, r0, r4
	adds r0, #0x79
	movs r1, #1
	strb r1, [r0, #0]
	ldr r0, [r6, #0]
	adds r0, r0, r4
	adds r0, #0x72
	ldrh r0, [r0, #0]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r4, r0, #0
	bl sub_080020F4
	ldr r1, _0805AE00
	muls r0, r7, r0
	adds r0, r0, r1
	adds r4, #0x9b
	ldrb r1, [r4, #0]
	b _0805AE24
	.2byte 0x0000
_0805ADFC: .4byte gUnk_030034E0
_0805AE00: .4byte gUnk_03003CE0
_0805AE04:
	bl sub_080020F4
	ldr r1, _0805AE14
	muls r0, r7, r0
	adds r0, r0, r1
	strh r5, [r0, #0x10]
	b _0805AE26
	.2byte 0x0000
_0805AE14: .4byte gUnk_03003CE0
_0805AE18:
	bl sub_080020F4
	ldr r1, _0805AE30
	muls r0, r7, r0
	adds r0, r0, r1
	movs r1, #0
_0805AE24:
	strh r1, [r0, #0x10]
_0805AE26:
	bl sub_08065DAC
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0805AE30: .4byte gUnk_03003CE0
	thumb_func_end sub_0805AD78
