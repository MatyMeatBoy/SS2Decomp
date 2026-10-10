	thumb_func_start sub_08045B68
sub_08045B68: @ 0x08045B68
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	movs r0, #0x2f
	movs r1, #0xbe
	movs r2, #0x95
	bl sub_080289C0
	adds r7, r0, #0
	ldr r0, _08045B94
	ldr r0, [r0, #0]
	ldr r2, _08045B98
	adds r1, r0, r2
	movs r2, #0
_08045B88:
	ldr r0, [r1, #0]
	cmp r0, r7
	bne _08045B9C
	adds r2, r1, #0
	b _08045BAA
	.2byte 0x0000
_08045B94: .4byte gUnk_03005CF4
_08045B98: .4byte 0x000007A4
_08045B9C:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08045B88
	bl sub_080003F0
	movs r2, #0
_08045BAA:
	cmp r2, #0
	beq _08045BBE
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_08045BBE:
	ldr r4, _08045BD4
	ldr r0, _08045BD8
	ldr r0, [r0, #0]
	ldr r2, _08045BDC
	adds r1, r0, r2
	movs r2, #0
_08045BCA:
	ldr r0, [r1, #0]
	cmp r0, r7
	bne _08045BE0
	adds r0, r1, #0
	b _08045BEE
_08045BD4: .4byte sub_08058F4C
_08045BD8: .4byte gUnk_03005CF4
_08045BDC: .4byte 0x000007A4
_08045BE0:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08045BCA
	bl sub_080003F0
	movs r0, #0
_08045BEE:
	cmp r0, #0
	beq _08045BF4
	str r4, [r0, #0x44]
_08045BF4:
	ldr r6, _08045BFC
	movs r5, #1
_08045BF8:
	movs r4, #1
	b _08045C0A
_08045BFC: .4byte gUnk_03005CF4
_08045C00:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08045C16
_08045C0A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08045C00
_08045C16:
	bl sub_0800CE30
	cmp r0, #0
	beq _08045C2C
	ldr r0, [r6, #0]
	ldr r1, _08045C28
	adds r0, r0, r1
	b _08045C32
	.2byte 0x0000
_08045C28: .4byte 0x000001C5
_08045C2C:
	ldr r0, [r6, #0]
	ldr r2, _08045C78
	adds r0, r0, r2
_08045C32:
	ldrb r0, [r0, #0]
	asrs r0, r0, #6
	ands r0, r5
	cmp r0, #0
	beq _08045BF8
	bl sub_0805EFBC
_08045C40:
	bl sub_080003F0
	bl sub_0805F184
	cmp r0, #0
	bne _08045C40
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08045C7C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	ldr r6, _08045C80
	ldr r0, _08045C84
	ldr r0, [r0, #0]
	ldr r1, _08045C88
	adds r4, r0, r1
	movs r5, #0
	b _08045C90
	.2byte 0x0000
_08045C78: .4byte 0x000001B9
_08045C7C: .4byte gUnk_03003CE0
_08045C80: .4byte sub_08059A40
_08045C84: .4byte gUnk_03005CF4
_08045C88: .4byte 0x00000E34
_08045C8C:
	adds r5, #1
	adds r4, #0x28
_08045C90:
	cmp r5, #0x1d
	bhi _08045CCE
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08045C8C
	b _08045CA4
_08045CA0:
	bl sub_080003F0
_08045CA4:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08045CA0
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0x3c
	bl sub_08000274
_08045CCE:
	ldr r0, _08045CE0
	movs r1, #0x10
	bl sub_08068070
	ldr r0, _08045CE4
	movs r1, #5
	bl sub_08068070
	b _08045CEC
_08045CE0: .4byte sub_08059968
_08045CE4: .4byte sub_08059A94
_08045CE8:
	bl sub_080003F0
_08045CEC:
	bl sub_0805F184
	cmp r0, #0
	bne _08045CE8
	b _08045CFA
_08045CF6:
	bl sub_080003F0
_08045CFA:
	bl sub_0805EF90
	cmp r0, #0
	bne _08045CF6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08045D1C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08045D24
_08045D1C: .4byte 0x001400B3
_08045D20:
	bl sub_080003F0
_08045D24:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08045D3A
	bl sub_0800CDF8
	cmp r0, #0
	beq _08045D20
	bl sub_0805EFBC
_08045D3A:
	mov r0, r8
	movs r1, #8
	bl sub_0802939C
	mov r0, r8
	movs r1, #0x10
	movs r2, #0x20
	movs r3, #0x1e
	bl sub_08028D98
	mov r0, r8
	movs r1, #0
	bl sub_0802939C
	adds r0, r7, #0
	mov r1, r8
	bl sub_0802949C
	b _08045D64
_08045D60:
	bl sub_080003F0
_08045D64:
	bl sub_0805F184
	cmp r0, #0
	bne _08045D60
	b _08045D72
_08045D6E:
	bl sub_080003F0
_08045D72:
	bl sub_0805EF90
	cmp r0, #0
	bne _08045D6E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08045D94
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08045D9C
_08045D94: .4byte 0x001400B4
_08045D98:
	bl sub_080003F0
_08045D9C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08045DB2
	bl sub_0800CDF8
	cmp r0, #0
	beq _08045D98
	bl sub_0805EFBC
_08045DB2:
	adds r0, r7, #0
	movs r1, #0
	bl sub_080290E4
	adds r0, r7, #0
	movs r1, #8
	bl sub_0802939C
	adds r0, r7, #0
	movs r1, #0x78
	movs r2, #0xb0
	movs r3, #0x28
	bl sub_08028AAC
	adds r0, r7, #0
	movs r1, #0x78
	movs r2, #0xf0
	movs r3, #0x28
	bl sub_08028AAC
	ldr r0, _08045E2C
	ldr r0, [r0, #0]
	ldr r2, _08045E30
	adds r1, r0, r2
	movs r2, #0
_08045DE4:
	ldr r0, [r1, #0]
	cmp r0, r7
	beq _08045DF8
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08045DE4
	bl sub_080003F0
	movs r1, #0
_08045DF8:
	cmp r1, #0
	beq _08045E00
	movs r0, #4
	strh r0, [r1, #0x36]
_08045E00:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08045E34
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08045E2C: .4byte gUnk_03005CF4
_08045E30: .4byte 0x000007A4
_08045E34: .4byte gUnk_03003CE0
	thumb_func_end sub_08045B68
