	thumb_func_start sub_08031580
sub_08031580: @ 0x08031580
	push {r4, lr}
	sub sp, #8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080315B0
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	bl sub_0800CE30
	cmp r0, #0
	beq _080315B8
	ldr r0, _080315B4
	ldr r0, [r0, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	b _080315C0
_080315B0: .4byte gUnk_03003CE0
_080315B4: .4byte gUnk_03005CF4
_080315B8:
	ldr r0, _080315D0
	ldr r0, [r0, #0]
	movs r1, #0xdd
	lsls r1, r1, #1
_080315C0:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r0, r0, #2
	ands r0, r4
	cmp r0, #0
	bne _0803162C
	b _080315D8
	.2byte 0x0000
_080315D0: .4byte gUnk_03005CF4
_080315D4:
	bl sub_080003F0
_080315D8:
	bl sub_0805F184
	cmp r0, #0
	bne _080315D4
	b _080315E6
_080315E2:
	bl sub_080003F0
_080315E6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080315E2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08031608
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08031610
_08031608: .4byte 0x00140171
_0803160C:
	bl sub_080003F0
_08031610:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803167A
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803160C
	bl sub_0805EFBC
	b _0803167A
_08031628:
	bl sub_080003F0
_0803162C:
	bl sub_0805F184
	cmp r0, #0
	bne _08031628
	b _0803163A
_08031636:
	bl sub_080003F0
_0803163A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08031636
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803165C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08031664
_0803165C: .4byte 0x00140172
_08031660:
	bl sub_080003F0
_08031664:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803167A
	bl sub_0800CDF8
	cmp r0, #0
	beq _08031660
	bl sub_0805EFBC
_0803167A:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080316A0
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
_080316A0: .4byte gUnk_03003CE0
	thumb_func_end sub_08031580
