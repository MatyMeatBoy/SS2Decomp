	thumb_func_start sub_08014D60
sub_08014D60: @ 0x08014D60
	push {r4, r5, r6, lr}
	bl sub_080020F4
	adds r5, r0, #0
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r4, r0, #3
	ldr r6, _08014DA8
	adds r0, r4, r6
	bl sub_08000470
	cmp r0, #0
	beq _08014DB0
	ldr r3, _08014DAC
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r5, #0
	muls r2, r0, r2
	adds r1, r2, r3
	ldrh r0, [r1, #0x20]
	subs r0, #0xa
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08014E5E
	adds r0, r3, #0
	adds r0, #0x30
	adds r0, r2, r0
	ldr r2, [r0, #0]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r2, r0
	cmp r2, #0
	bne _08014E5E
	strh r2, [r1, #0x20]
	b _08014E5E
_08014DA8: .4byte gUnk_03003C40
_08014DAC: .4byte gUnk_03003CE0
_08014DB0:
	ldr r1, _08014DCC
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r5, r0
	adds r0, r0, r1
	ldrh r0, [r0, #0x10]
	cmp r0, #2
	beq _08014DF8
	cmp r0, #2
	bgt _08014DD0
	cmp r0, #1
	beq _08014DDA
	b _08014E5E
	.2byte 0x0000
_08014DCC: .4byte gUnk_03003CE0
_08014DD0:
	cmp r0, #3
	beq _08014DE8
	cmp r0, #8
	beq _08014DF8
	b _08014E5E
_08014DDA:
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, _08014DE4
	b _08014E00
_08014DE4: .4byte sub_08014B28
_08014DE8:
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, _08014DF4
	b _08014E00
	.2byte 0x0000
_08014DF4: .4byte sub_08014C8C
_08014DF8:
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, _08014E18
_08014E00:
	str r1, [r0, #0]
	ldr r1, _08014E1C
	lsls r2, r5, #2
	adds r0, r2, r5
	lsls r0, r0, #3
	adds r1, #8
	adds r0, r0, r1
	movs r1, #0x34
	str r1, [r0, #0]
	adds r4, r2, #0
	b _08014E24
	.2byte 0x0000
_08014E18: .4byte sub_08014C04
_08014E1C: .4byte gUnk_03003C40
_08014E20:
	bl sub_080003F0
_08014E24:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	ldr r3, _08014E64
	adds r0, r4, r5
	lsls r2, r0, #3
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r2, r0
	str r1, [r0, #0]
	cmp r1, #0
	beq _08014E20
	adds r0, r3, #0
	adds r0, #0x10
	adds r0, r2, r0
	movs r4, #0xff
	lsls r4, r4, #2
	adds r1, r1, r4
	str r1, [r0, #0]
	adds r0, r3, #0
	adds r0, #0x24
	adds r0, r2, r0
	movs r1, #0
	str r1, [r0, #0]
	adds r0, r2, r3
	bl sub_08000274
_08014E5E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08014E64: .4byte gUnk_03003C40
	thumb_func_end sub_08014D60
