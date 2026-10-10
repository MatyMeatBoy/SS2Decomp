	thumb_func_start sub_08047970
sub_08047970: @ 0x08047970
	push {r4, r5, r6, r7, lr}
	ldr r7, _08047980
	ldr r0, _08047984
	ldr r0, [r0, #0]
	ldr r1, _08047988
	adds r4, r0, r1
	movs r5, #0
	b _08047990
_08047980: .4byte sub_08047B2C
_08047984: .4byte gUnk_03005CF4
_08047988: .4byte 0x00000E34
_0804798C:
	adds r5, #1
	adds r4, #0x28
_08047990:
	cmp r5, #0x1d
	bhi _080479D0
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804798C
	b _080479A4
_080479A0:
	bl sub_080003F0
_080479A4:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080479A0
	movs r0, #0x3c
	str r0, [r4, #8]
	str r7, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000274
	adds r6, r4, #0
_080479D0:
	movs r0, #0x3c
	movs r1, #0xbe
	movs r2, #0xa0
	movs r3, #0x64
	bl sub_0802A080
	cmp r6, #0
	beq _080479F0
	adds r0, r6, #0
	bl sub_08000470
	cmp r0, #0
	beq _080479F0
	adds r0, r6, #0
	bl sub_080003A8
_080479F0:
	movs r4, #1
	b _080479FE
_080479F4:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08047A0A
_080479FE:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080479F4
_08047A0A:
	bl sub_0805EFBC
_08047A0E:
	bl sub_080003F0
	bl sub_0805F184
	cmp r0, #0
	bne _08047A0E
	ldr r6, _08047A28
	ldr r0, _08047A2C
	ldr r0, [r0, #0]
	ldr r1, _08047A30
	adds r4, r0, r1
	movs r5, #0
	b _08047A38
_08047A28: .4byte sub_08047B2C
_08047A2C: .4byte gUnk_03005CF4
_08047A30: .4byte 0x00000E34
_08047A34:
	adds r5, #1
	adds r4, #0x28
_08047A38:
	cmp r5, #0x1d
	bhi _08047A76
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08047A34
	b _08047A4C
_08047A48:
	bl sub_080003F0
_08047A4C:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08047A48
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
	movs r1, #2
	bl sub_08000274
_08047A76:
	ldr r6, _08047A84
	ldr r0, _08047A88
	ldr r0, [r0, #0]
	ldr r1, _08047A8C
	adds r4, r0, r1
	movs r5, #0
	b _08047A94
_08047A84: .4byte sub_08047B2C
_08047A88: .4byte gUnk_03005CF4
_08047A8C: .4byte 0x00000E34
_08047A90:
	adds r5, #1
	adds r4, #0x28
_08047A94:
	cmp r5, #0x1d
	bhi _08047AD2
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08047A90
	b _08047AA8
_08047AA4:
	bl sub_080003F0
_08047AA8:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08047AA4
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
	movs r1, #3
	bl sub_08000274
_08047AD2:
	movs r4, #0x3c
	b _08047AE0
_08047AD6:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08047AEC
_08047AE0:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08047AD6
_08047AEC:
	ldr r0, _08047B24
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _08047B28
	movs r6, #1
	movs r4, #0
_08047AF8:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _08047B0C
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _08047B0C
	strh r4, [r2, #0xc]
_08047B0C:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _08047AF8
	bl sub_08019F04
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08047B24: .4byte gUnk_030056F4
_08047B28: .4byte gUnk_030056FC
	thumb_func_end sub_08047970
