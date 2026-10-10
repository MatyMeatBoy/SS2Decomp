	thumb_func_start sub_0804BC38
sub_0804BC38: @ 0x0804BC38
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #0x20
	mov r9, r0
	ldr r5, _0804BC94
	ldr r2, [r5, #0]
	movs r3, #2
	ldr r1, [r2, #0x38]
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0804BC56
	b _0804BEE6
_0804BC56:
	orrs r1, r3
	str r1, [r2, #0x38]
	bl sub_0800CCCC
	ldr r1, _0804BC98
	adds r1, #0x90
	ldrh r1, [r1, #0]
	cmp r0, #0
	beq _0804BC6A
	b _0804BEE6
_0804BC6A:
	cmp r1, #4
	beq _0804BC70
	b _0804BEE6
_0804BC70:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804BC9C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	mov r8, r5
	movs r7, #1
	b _0804BCAA
	.2byte 0x0000
_0804BC94: .4byte gUnk_03005CF4
_0804BC98: .4byte gUnk_03003170
_0804BC9C: .4byte gUnk_03003CE0
_0804BCA0:
	ldr r5, [r1, #0]
	b _0804BCD2
_0804BCA4:
	ldr r0, _0804BCD8
	cmp r6, r0
	bgt _0804BCFC
_0804BCAA:
	mov r1, r8
	ldr r0, [r1, #0]
	ldr r2, _0804BCDC
	adds r1, r0, r2
	movs r2, #0
	adds r6, r4, #1
	ldr r3, [r0, #0x54]
_0804BCB8:
	adds r0, r7, #0
	lsls r0, r2
	ands r0, r3
	cmp r0, #0
	beq _0804BCC8
	ldr r0, [r1, #4]
	cmp r0, #0x13
	beq _0804BCA0
_0804BCC8:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0804BCB8
	movs r5, #0
_0804BCD2:
	movs r4, #1
	b _0804BCEA
	.2byte 0x0000
_0804BCD8: .4byte 0x00000257
_0804BCDC: .4byte 0x000007A4
_0804BCE0:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804BCF6
_0804BCEA:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804BCE0
_0804BCF6:
	adds r4, r6, #0
	cmp r5, #0
	beq _0804BCA4
_0804BCFC:
	movs r1, #0xc4
	ldr r0, _0804BD48
	str r1, [r0, #0]
	ldr r0, _0804BD4C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804BD14
	movs r0, #0xc4
	bl sub_08006CB4
_0804BD14:
	adds r2, r5, #0
	movs r4, #3
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r5, r0
	bls _0804BD5C
	ldr r0, _0804BD50
	ldr r0, [r0, #0]
	ldr r3, _0804BD54
	adds r1, r0, r3
	movs r3, #0
_0804BD2A:
	ldr r0, [r1, #0]
	cmp r0, r2
	beq _0804BD58
	adds r3, #1
	adds r1, #0x70
	cmp r3, #0xe
	bls _0804BD2A
	bl sub_080003F0
	movs r0, #0
_0804BD3E:
	cmp r0, #0
	beq _0804BD9A
	adds r0, #0x42
	b _0804BD98
	.2byte 0x0000
_0804BD48: .4byte gUnk_03005CF8
_0804BD4C: .4byte gUnk_030027D0
_0804BD50: .4byte gUnk_03005CF4
_0804BD54: .4byte 0x000007A4
_0804BD58:
	adds r0, r1, #0
	b _0804BD3E
_0804BD5C:
	cmp r5, #0
	beq _0804BD84
	subs r2, r5, #1
	cmp r2, #4
	bhi _0804BD9A
	ldr r1, _0804BD80
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	movs r1, #3
	bl sub_08019EB8
	b _0804BD9A
_0804BD80: .4byte gUnk_030056F4
_0804BD84:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _0804BDA0
	adds r0, r0, r1
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r0, r1
_0804BD98:
	strh r4, [r0, #0]
_0804BD9A:
	movs r4, #0x1e
	b _0804BDAE
	.2byte 0x0000
_0804BDA0: .4byte gUnk_03003CE0
_0804BDA4:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804BDBA
_0804BDAE:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804BDA4
_0804BDBA:
	adds r0, r5, #0
	movs r1, #8
	bl sub_0802939C
	adds r0, r5, #0
	movs r1, #0xb8
	movs r2, #0xbb
	movs r3, #0x28
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #0
	bl sub_0802939C
	b _0804BDDC
_0804BDD8:
	bl sub_080003F0
_0804BDDC:
	bl sub_0805F184
	cmp r0, #0
	bne _0804BDD8
	b _0804BDEA
_0804BDE6:
	bl sub_080003F0
_0804BDEA:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804BDE6
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804BE0C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804BE14
	.2byte 0x0000
_0804BE0C: .4byte 0x00140043
_0804BE10:
	bl sub_080003F0
_0804BE14:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804BE10
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804BE5C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	bl sub_0800CB9C
	cmp r0, #0
	bne _0804BE68
	ldr r0, _0804BE60
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804BE6E
	ldr r1, _0804BE64
	movs r0, #3
	str r0, [r1, #0]
	bl sub_08006CB4
	b _0804BE6E
_0804BE5C: .4byte gUnk_03003CE0
_0804BE60: .4byte gUnk_030027D0
_0804BE64: .4byte gUnk_03005CF8
_0804BE68:
	movs r0, #0
	bl sub_080586B4
_0804BE6E:
	ldr r7, _0804BE7C
	ldr r0, _0804BE80
	ldr r0, [r0, #0]
	ldr r2, _0804BE84
	adds r4, r0, r2
	movs r5, #0
	b _0804BE8C
_0804BE7C: .4byte sub_0804BEF8
_0804BE80: .4byte gUnk_03005CF4
_0804BE84: .4byte 0x00000E34
_0804BE88:
	adds r5, #1
	adds r4, #0x28
_0804BE8C:
	cmp r5, #0x1d
	bhi _0804BEE6
	adds r0, r4, #0
	bl sub_08000470
	adds r6, r0, #0
	cmp r6, #0
	bne _0804BE88
	movs r0, #0xb7
	lsls r0, r0, #8
	str r0, [sp, #8]
	movs r0, #0xc8
	lsls r0, r0, #8
	str r0, [sp, #0xc]
	add r1, sp, #8
	movs r0, #0x14
	strh r0, [r1, #8]
	movs r0, #0xe
	strh r0, [r1, #0xa]
	str r7, [sp, #0x14]
	mov r3, r9
	str r3, [sp, #0x18]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _0804BEF4
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #0x24]
	adds r0, r4, #0
	add r1, sp, #8
	movs r2, #1
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
_0804BEE6:
	add sp, #0x20
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0804BEF4: .4byte sub_0805A874
	thumb_func_end sub_0804BC38
