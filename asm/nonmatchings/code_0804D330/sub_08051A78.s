	thumb_func_start sub_08051A78
sub_08051A78: @ 0x08051A78
	push {r4, r5, r6, lr}
	sub sp, #0x18
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [sp, #8]
	movs r0, #0xb0
	lsls r0, r0, #7
	str r0, [sp, #0xc]
	ldr r0, _08051AA4
	str r0, [sp, #0x14]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08051AA8
	adds r6, r1, r0
	add r5, sp, #0x10
	add r4, sp, #0x14
	b _08051AB0
_08051AA4: .4byte 0x00180010
_08051AA8: .4byte gUnk_03003CE0
_08051AAC:
	bl sub_080003F0
_08051AB0:
	adds r0, r6, #0
	adds r0, #0x8c
	add r1, sp, #8
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_08021FE0
	cmp r0, #0
	beq _08051AAC
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08051AF0
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	bl sub_0800CE30
	cmp r0, #0
	beq _08051AF8
	ldr r0, _08051AF4
	ldr r0, [r0, #0]
	movs r1, #0xe2
	lsls r1, r1, #1
	b _08051B00
	.2byte 0x0000
_08051AF0: .4byte gUnk_03003CE0
_08051AF4: .4byte gUnk_03005CF4
_08051AF8:
	ldr r0, _08051B10
	ldr r0, [r0, #0]
	movs r1, #0xdc
	lsls r1, r1, #1
_08051B00:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _08051B84
	b _08051B18
	.2byte 0x0000
_08051B10: .4byte gUnk_03005CF4
_08051B14:
	bl sub_080003F0
_08051B18:
	bl sub_0805F184
	cmp r0, #0
	bne _08051B14
	b _08051B26
_08051B22:
	bl sub_080003F0
_08051B26:
	bl sub_0805EF90
	cmp r0, #0
	bne _08051B22
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08051B48
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08051B50
_08051B48: .4byte 0x0014008E
_08051B4C:
	bl sub_080003F0
_08051B50:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08051B66
	bl sub_0800CDF8
	cmp r0, #0
	beq _08051B4C
	bl sub_0805EFBC
_08051B66:
	ldr r0, _08051B78
	movs r1, #6
	bl sub_08068070
	ldr r0, _08051B7C
	movs r1, #0x11
	bl sub_08068070
	b _08051BD2
_08051B78: .4byte sub_0805A474
_08051B7C: .4byte sub_0805990C
_08051B80:
	bl sub_080003F0
_08051B84:
	bl sub_0805F184
	cmp r0, #0
	bne _08051B80
	b _08051B92
_08051B8E:
	bl sub_080003F0
_08051B92:
	bl sub_0805EF90
	cmp r0, #0
	bne _08051B8E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08051BB4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08051BBC
_08051BB4: .4byte 0x0014008F
_08051BB8:
	bl sub_080003F0
_08051BBC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08051BD2
	bl sub_0800CDF8
	cmp r0, #0
	beq _08051BB8
	bl sub_0805EFBC
_08051BD2:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08051BF8
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08051BF8: .4byte gUnk_03003CE0
	thumb_func_end sub_08051A78
