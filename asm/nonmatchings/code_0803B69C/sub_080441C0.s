	thumb_func_start sub_080441C0
sub_080441C0: @ 0x080441C0
	push {r4, lr}
	sub sp, #8
	bl sub_0800CE30
	cmp r0, #0
	beq _080441DC
	ldr r0, _080441D8
	ldr r0, [r0, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	b _080441E4
	.2byte 0x0000
_080441D8: .4byte gUnk_03005CF4
_080441DC:
	ldr r0, _08044220
	ldr r0, [r0, #0]
	movs r1, #0xdd
	lsls r1, r1, #1
_080441E4:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r1, r0, #4
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080441F4
	b _0804430C
_080441F4:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08044224
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	bl sub_0800CE30
	cmp r0, #0
	beq _0804422C
	ldr r0, _08044220
	ldr r0, [r0, #0]
	ldr r1, _08044228
	b _08044232
	.2byte 0x0000
_08044220: .4byte gUnk_03005CF4
_08044224: .4byte gUnk_03003CE0
_08044228: .4byte 0x000001C5
_0804422C:
	ldr r0, _08044240
	ldr r0, [r0, #0]
	ldr r1, _08044244
_08044232:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r1, r0, #2
	ands r1, r4
	cmp r1, #0
	beq _080442A0
	b _0804424C
_08044240: .4byte gUnk_03005CF4
_08044244: .4byte 0x000001B9
_08044248:
	bl sub_080003F0
_0804424C:
	bl sub_0805F184
	cmp r0, #0
	bne _08044248
	b _0804425A
_08044256:
	bl sub_080003F0
_0804425A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08044256
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0804427C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08044284
_0804427C: .4byte 0x00140211
_08044280:
	bl sub_080003F0
_08044284:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080442EE
	bl sub_0800CDF8
	cmp r0, #0
	beq _08044280
	bl sub_0805EFBC
	b _080442EE
_0804429C:
	bl sub_080003F0
_080442A0:
	bl sub_0805F184
	cmp r0, #0
	bne _0804429C
	b _080442AE
_080442AA:
	bl sub_080003F0
_080442AE:
	bl sub_0805EF90
	cmp r0, #0
	bne _080442AA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080442D0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080442D8
_080442D0: .4byte 0x00140212
_080442D4:
	bl sub_080003F0
_080442D8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080442EE
	bl sub_0800CDF8
	cmp r0, #0
	beq _080442D4
	bl sub_0805EFBC
_080442EE:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08044314
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
_0804430C:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
_08044314: .4byte gUnk_03003CE0
	thumb_func_end sub_080441C0
