	thumb_func_start sub_08043664
sub_08043664: @ 0x08043664
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08043698
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	bl sub_0800CE30
	cmp r0, #0
	beq _080436A0
	ldr r0, _0804369C
	ldr r0, [r0, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	b _080436A8
	.2byte 0x0000
_08043698: .4byte gUnk_03003CE0
_0804369C: .4byte gUnk_03005CF4
_080436A0:
	ldr r0, _080436C4
	ldr r0, [r0, #0]
	movs r1, #0xdd
	lsls r1, r1, #1
_080436A8:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r0, r0, #4
	ands r0, r4
	cmp r0, #0
	beq _080436B6
	b _08043826
_080436B6:
	bl sub_080020F4
	cmp r0, #0
	beq _080436C0
	b _080437D8
_080436C0:
	b _080436CC
	.2byte 0x0000
_080436C4: .4byte gUnk_03005CF4
_080436C8:
	bl sub_080003F0
_080436CC:
	bl sub_0805F184
	cmp r0, #0
	bne _080436C8
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080436F0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080436F8
	.2byte 0x0000
_080436F0: .4byte 0x00140207
_080436F4:
	bl sub_080003F0
_080436F8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080436F4
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	beq _08043784
	ldr r0, _08043718
	movs r1, #0x1c
	bl sub_08068070
	b _08043720
	.2byte 0x0000
_08043718: .4byte sub_0805990C
_0804371C:
	bl sub_080003F0
_08043720:
	bl sub_0805F184
	cmp r0, #0
	bne _0804371C
	b _0804372E
_0804372A:
	bl sub_080003F0
_0804372E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804372A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08043750
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08043758
_08043750: .4byte 0x00140208
_08043754:
	bl sub_080003F0
_08043758:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0804376E
	bl sub_0800CDF8
	cmp r0, #0
	beq _08043754
	bl sub_0805EFBC
_0804376E:
	ldr r0, _0804377C
	adds r1, r5, #0
	movs r2, #0
	bl sub_08068820
	b _08043826
	.2byte 0x0000
_0804377C: .4byte sub_08043850
_08043780:
	bl sub_080003F0
_08043784:
	bl sub_0805F184
	cmp r0, #0
	bne _08043780
	b _08043792
_0804378E:
	bl sub_080003F0
_08043792:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804378E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080437B4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080437BC
_080437B4: .4byte 0x00140209
_080437B8:
	bl sub_080003F0
_080437BC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08043826
	bl sub_0800CDF8
	cmp r0, #0
	beq _080437B8
	bl sub_0805EFBC
	b _08043826
_080437D4:
	bl sub_080003F0
_080437D8:
	bl sub_0805F184
	cmp r0, #0
	bne _080437D4
	b _080437E6
_080437E2:
	bl sub_080003F0
_080437E6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080437E2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08043808
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08043810
_08043808: .4byte 0x0014020A
_0804380C:
	bl sub_080003F0
_08043810:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08043826
	bl sub_0800CDF8
	cmp r0, #0
	beq _0804380C
	bl sub_0805EFBC
_08043826:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804384C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
_0804384C: .4byte gUnk_03003CE0
	thumb_func_end sub_08043664
