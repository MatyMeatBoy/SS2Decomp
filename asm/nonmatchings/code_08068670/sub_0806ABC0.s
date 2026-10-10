	thumb_func_start sub_0806ABC0
sub_0806ABC0: @ 0x0806ABC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x94
	str r0, [sp, #0x58]
	bl sub_080020F4
	str r0, [sp, #0x80]
	ldr r0, [sp, #0x58]
	ldrh r0, [r0, #8]
	str r0, [sp, #0x64]
	ldr r1, [sp, #0x58]
	ldr r1, [r1, #0]
	str r1, [sp, #0x78]
	ldr r2, [sp, #0x58]
	ldr r2, [r2, #4]
	str r2, [sp, #0x7c]
	ldr r3, [sp, #0x58]
	ldrh r3, [r3, #0x14]
	str r3, [sp, #0x6c]
	str r3, [sp, #0x70]
	str r3, [sp, #0x68]
	mov r0, sp
	adds r0, #0x4a
	movs r1, #0
	strh r1, [r0, #0]
	add r2, sp, #0x48
	strh r1, [r2, #0]
	ldr r4, [sp, #0x64]
	cmp r4, #3
	bhi _0806AC58
	bl sub_08002164
	adds r6, r0, #0
	movs r5, #0
	ldr r7, [sp, #0x78]
	lsls r7, r7, #2
	str r7, [sp, #0x8c]
	cmp r5, r6
	bhs _0806AC42
	ldr r4, _0806AC4C
	ldrh r0, [r4, #0]
	ldr r7, _0806AC50
	ldr r1, [sp, #0x64]
	cmp r0, r1
	beq _0806AC3E
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, #0
_0806AC26:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r6
	bhs _0806AC42
	adds r0, r5, #0
	muls r0, r2, r0
	adds r4, r0, r1
	ldrh r0, [r4, #0]
	ldr r3, [sp, #0x64]
	cmp r0, r3
	bne _0806AC26
_0806AC3E:
	cmp r5, r6
	blo _0806ACB8
_0806AC42:
	ldr r4, _0806AC54
	str r4, [sp, #0x64]
	ldr r7, _0806AC50
	b _0806ACB8
	.2byte 0x0000
_0806AC4C: .4byte gUnk_03003CE0
_0806AC50: .4byte gUnk_0847AD0A
_0806AC54: .4byte 0x0000FFFF
_0806AC58:
	movs r5, #0
	ldr r3, _0806AC74
	ldr r7, [r3, #0]
	str r7, [sp, #0x5c]
	ldr r2, _0806AC78
	movs r1, #1
	ldr r0, [r2, #0]
	ands r0, r1
	ldr r7, _0806AC7C
	ldr r1, [sp, #0x78]
	lsls r1, r1, #2
	str r1, [sp, #0x8c]
	b _0806ACA2
	.2byte 0x0000
_0806AC74: .4byte gUnk_030056F4
_0806AC78: .4byte gUnk_030056FC
_0806AC7C: .4byte gUnk_0847AD0A
_0806AC80:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bhi _0806ACB4
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	subs r0, r0, r5
	lsls r0, r0, #5
	ldr r1, [r3, #0]
	adds r1, r1, r0
	str r1, [sp, #0x5c]
	movs r1, #1
	lsls r1, r5
	ldr r0, [r2, #0]
	ands r0, r1
_0806ACA2:
	cmp r0, #0
	beq _0806AC80
	ldr r4, [sp, #0x5c]
	ldrh r0, [r4, #2]
	ldr r1, [sp, #0x64]
	cmp r0, r1
	bne _0806AC80
	cmp r5, #4
	bls _0806ACB8
_0806ACB4:
	ldr r2, _0806ACF4
	str r2, [sp, #0x64]
_0806ACB8:
	ldr r3, [sp, #0x78]
	cmp r3, #3
	bhi _0806ACFC
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, _0806ACF8
	adds r1, r1, r0
	str r1, [sp, #0x60]
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r1, r4
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	mov sl, r0
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	mov r9, r0
	ldrb r0, [r1, #3]
	lsrs r0, r0, #4
	str r0, [sp, #0x74]
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r6, [r0, #0]
	b _0806AD96
	.2byte 0x0000
_0806ACF4: .4byte 0x0000FFFF
_0806ACF8: .4byte gUnk_03003CE0
_0806ACFC:
	ldr r1, _0806AD70
	ldr r2, [sp, #0x78]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r3, _0806AD74
	adds r0, r0, r3
	ldr r1, [r1, #0]
	adds r1, r1, r0
	str r1, [sp, #0x5c]
	ldr r4, [r1, #0x14]
	mov sl, r4
	ldr r0, [r1, #0x18]
	mov r9, r0
	ldrh r1, [r1, #8]
	str r1, [sp, #0x74]
	ldr r2, [sp, #0x5c]
	movs r3, #8
	ldrsh r0, [r2, r3]
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r6, [r0, #0]
	adds r0, r2, #0
	adds r0, #0x6a
	ldr r4, _0806AD78
	adds r1, r2, r4
	ldrh r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	bhs _0806AD96
	ldr r0, _0806AD7C
	ldr r7, [sp, #0x8c]
	adds r4, r7, r0
	movs r0, #1
	ldr r1, [sp, #0x7c]
	lsls r0, r1
	mvns r5, r0
_0806AD4A:
	bl sub_08056E90
	cmp r0, #0
	bne _0806AD66
	bl sub_0800BA6C
	cmp r0, #0
	beq _0806AD66
	ldr r2, [sp, #0x5c]
	ldrh r0, [r2, #0xc]
	cmp r0, #0xa
	beq _0806AD66
	cmp r0, #0xb
	bne _0806AD80
_0806AD66:
	ldr r0, [r4, #0]
	ands r0, r5
	str r0, [r4, #0]
	b _0806B390
	.2byte 0x0000
_0806AD70: .4byte gUnk_030056F4
_0806AD74: .4byte 0xFFFFF480
_0806AD78: .4byte 0x0000022B
_0806AD7C: .4byte gUnk_030063E0
_0806AD80:
	bl sub_080003F0
	ldr r0, [sp, #0x5c]
	adds r0, #0x6a
	ldr r3, [sp, #0x5c]
	ldr r7, _0806ADE8
	adds r1, r3, r7
	ldrh r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	blo _0806AD4A
_0806AD96:
	bl sub_080020F4
	ldr r1, [sp, #0x78]
	cmp r0, r1
	beq _0806ADF4
	cmp r1, #3
	bls _0806AE26
	ldr r3, _0806ADEC
	ldr r4, [sp, #0x6c]
	lsls r2, r4, #1
	ldr r7, [sp, #0x58]
	ldr r1, [r7, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r3, #6
	adds r2, r2, r3
	ldr r3, [sp, #0x5c]
	adds r3, #0x5e
	ldrh r0, [r3, #0]
	movs r4, #0
	ldrsh r1, [r2, r4]
	subs r0, r0, r1
	strh r0, [r3, #0]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0806AE26
	ldr r2, _0806ADF0
	ldr r7, [sp, #0x8c]
	adds r2, r7, r2
	movs r1, #1
	ldr r0, [sp, #0x7c]
	lsls r1, r0
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	movs r0, #0
	strh r0, [r3, #0]
	b _0806B390
	.2byte 0x0000
_0806ADE8: .4byte 0x0000022B
_0806ADEC: .4byte gUnk_084EBF1C
_0806ADF0: .4byte gUnk_030063E0
_0806ADF4:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r0, _0806AE8C
	adds r4, r4, r0
	ldr r1, [sp, #0x58]
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0x14]
	bl sub_0806898C
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, #0xc2
	ldrh r1, [r4, #0]
	subs r1, r1, r0
	strh r1, [r4, #0]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0806AE26
	movs r0, #0
	strh r0, [r4, #0]
_0806AE26:
	bl sub_080020F4
	ldr r2, [sp, #0x78]
	cmp r0, r2
	bne _0806AE4A
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806AE4A
	bl sub_0800CD34
	cmp r0, #0
	bne _0806AE4A
	ldr r3, [sp, #0x6c]
	ldr r4, _0806AE90
	adds r0, r3, r4
	bl sub_0805865C
_0806AE4A:
	ldr r2, _0806AE94
	lsls r3, r6, #0x10
	asrs r1, r3, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r7, #0
	ldrsh r0, [r0, r7]
	lsls r0, r0, #2
	add sl, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #2
	add r9, r0
	str r3, [sp, #0x90]
	ldr r3, [sp, #0x6c]
	cmp r3, #4
	bhi _0806AE9C
	ldr r1, _0806AE98
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08065158
	ldr r0, [sp, #0x6c]
	subs r0, #1
	b _0806AEE8
_0806AE8C: .4byte gUnk_03003CE0
_0806AE90: .4byte 0x00000147
_0806AE94: .4byte gUnk_080B9704
_0806AE98: .4byte 0x00050051
_0806AE9C:
	ldr r4, [sp, #0x6c]
	cmp r4, #6
	bhi _0806AED2
	ldr r1, _0806AEBC
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08065158
	adds r0, r4, #0
	subs r0, #5
	b _0806AEE8
	.2byte 0x0000
_0806AEBC: .4byte 0x00050054
_0806AEC0:
	ldr r7, [sp, #0x70]
	str r7, [sp, #0]
	mov r0, sl
	mov r1, r9
	ldr r2, [sp, #0x78]
	movs r3, #0xd
	bl sub_08069A30
	b _0806B33C
_0806AED2:
	ldr r1, _0806AF34
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08065158
	ldr r0, [sp, #0x6c]
	subs r0, #7
_0806AEE8:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
	ldr r1, [sp, #0x6c]
	lsls r0, r1, #0x13
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
	add r1, sp, #0x10
	movs r2, #0
	movs r0, #7
	strb r0, [r1, #0x1c]
	movs r0, #8
	strb r0, [r1, #0x1d]
	add r3, sp, #0x48
	strh r2, [r3, #0]
	movs r4, #0x4a
	add r4, sp
	strh r2, [r4, #0]
	ldr r7, [sp, #0x68]
	lsls r0, r7, #0x13
	movs r1, #0xa0
	lsls r1, r1, #0xd
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	ldr r1, _0806AF38
	ldr r2, [sp, #0x58]
	ldr r0, [r2, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	mov r8, r0
	ldr r3, [sp, #0x90]
	str r3, [sp, #0x84]
	asrs r4, r3, #0x14
	str r4, [sp, #0x88]
	b _0806B2FC
	.2byte 0x0000
_0806AF34: .4byte 0x0005005F
_0806AF38: .4byte gUnk_084EC17C
_0806AF3C:
	ldr r7, [sp, #0x64]
	cmp r7, #3
	bls _0806B006
	movs r5, #0
	add r7, sp, #0x44
	ldr r6, [sp, #0x60]
	adds r6, #0xdc
_0806AF4A:
	ldr r0, _0806AFC8
	movs r1, #1
	lsls r1, r5
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq _0806AFFC
	ldr r1, _0806AFCC
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	subs r0, r0, r5
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r4, r1, r0
	movs r1, #0xee
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0806AFFC
	ldr r0, [r4, #0x14]
	mov r2, sl
	subs r0, r0, r2
	lsrs r0, r0, #8
	strh r0, [r7, #0]
	ldr r0, [r4, #0x18]
	mov r3, r9
	subs r0, r0, r3
	lsls r0, r0, #8
	lsrs r1, r0, #0x10
	mov r0, sp
	adds r0, #0x46
	strh r1, [r0, #0]
	movs r2, #0
	ldrsh r0, [r7, r2]
	cmp r0, #0
	bge _0806AF98
	negs r0, r0
_0806AF98:
	cmp r0, r8
	bge _0806AFFC
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0806AFA6
	negs r0, r0
_0806AFA6:
	cmp r0, r8
	bge _0806AFFC
	ldr r3, [sp, #0x58]
	ldr r1, [r3, #0]
	cmp r1, #3
	bhi _0806AFD8
	ldr r0, [sp, #0x80]
	cmp r0, r1
	bne _0806AFD0
	ldrh r0, [r4, #0xc]
	cmp r0, #0xb
	beq _0806AFFC
	ldr r1, [r4, #0x54]
	ldr r0, [r6, #0]
	cmp r1, r0
	beq _0806AFFC
	b _0806B33C
_0806AFC8: .4byte gUnk_030056FC
_0806AFCC: .4byte gUnk_030056F4
_0806AFD0:
	adds r0, r4, #0
	adds r0, #0x58
	strh r1, [r0, #0]
	b _0806AFFC
_0806AFD8:
	bl sub_08002204
	cmp r0, #0
	beq _0806AFFC
	ldrh r1, [r4, #0]
	ldr r2, [sp, #0x58]
	ldr r0, [r2, #0]
	subs r0, #4
	cmp r1, r0
	beq _0806AFFC
	ldrh r0, [r4, #0xc]
	cmp r0, #0xb
	beq _0806AFFC
	ldr r1, [r4, #0x54]
	ldr r0, [r6, #0]
	cmp r1, r0
	beq _0806AFFC
	b _0806B33C
_0806AFFC:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _0806AF4A
_0806B006:
	movs r3, #0
	cmp r3, #0
	beq _0806B00E
	b _0806B33C
_0806B00E:
	bl sub_08002164
	adds r6, r0, #0
	ldr r4, [sp, #0x58]
	ldr r0, [r4, #0]
	cmp r0, #3
	bhi _0806B0CC
	movs r5, #0
	cmp r5, r6
	blo _0806B024
	b _0806B17E
_0806B024:
	add r7, sp, #0x44
_0806B026:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _0806B0C8
	adds r4, r1, r0
	adds r0, r4, #0
	adds r0, #0x68
	ldr r1, [sp, #0x60]
	adds r1, #0x68
	ldrb r3, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r3, r1
	beq _0806B0BC
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r2, [r0, #0]
	ldrb r0, [r2, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	beq _0806B0BC
	cmp r3, #0
	beq _0806B0BC
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	mov r3, sl
	asrs r1, r3, #8
	subs r0, r0, r1
	strh r0, [r7, #0]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	mov r2, r9
	asrs r1, r2, #8
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r0, sp
	adds r0, #0x46
	strh r1, [r0, #0]
	movs r3, #0
	ldrsh r0, [r7, r3]
	cmp r0, #0
	bge _0806B084
	negs r0, r0
_0806B084:
	cmp r0, r8
	bge _0806B0BC
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0806B092
	negs r0, r0
_0806B092:
	cmp r0, r8
	bge _0806B0BC
	ldr r0, [sp, #0x80]
	cmp r0, r5
	bne _0806B0BC
	ldrh r0, [r4, #0x20]
	cmp r0, #0xb
	beq _0806B0BC
	ldr r1, [sp, #0x60]
	ldrh r0, [r1, #0]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0xf8
	adds r1, r1, r0
	ldr r0, [sp, #0x60]
	adds r0, #0xdc
	ldr r1, [r1, #0]
	ldr r0, [r0, #0]
	cmp r1, r0
	beq _0806B0BC
	b _0806B33C
_0806B0BC:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r6
	blo _0806B026
	b _0806B17E
_0806B0C8: .4byte gUnk_03003CE0
_0806B0CC:
	movs r5, #0
	cmp r5, r6
	bhs _0806B17E
	add r2, sp, #0x44
	mov ip, r2
_0806B0D6:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _0806B3A0
	adds r4, r1, r0
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _0806B174
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r2, [r0, #0]
	ldrb r0, [r2, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	beq _0806B174
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0806B174
	ldrh r3, [r4, #0x20]
	cmp r3, #0xc
	beq _0806B174
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	mov r7, sl
	asrs r1, r7, #8
	subs r0, r0, r1
	mov r1, ip
	strh r0, [r1, #0]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	mov r2, r9
	asrs r1, r2, #8
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r0, sp
	adds r0, #0x46
	strh r1, [r0, #0]
	mov r7, ip
	movs r2, #0
	ldrsh r0, [r7, r2]
	cmp r0, #0
	bge _0806B140
	negs r0, r0
_0806B140:
	cmp r0, r8
	bge _0806B174
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0806B14E
	negs r0, r0
_0806B14E:
	cmp r0, r8
	bge _0806B174
	ldr r7, [sp, #0x80]
	cmp r7, r5
	bne _0806B174
	cmp r3, #0xb
	beq _0806B174
	ldr r0, [sp, #0x5c]
	ldrh r1, [r0, #0]
	lsls r1, r1, #2
	adds r0, r4, #0
	adds r0, #0xe4
	adds r0, r0, r1
	ldr r1, [r0, #0]
	ldr r2, [sp, #0x5c]
	ldr r0, [r2, #0x50]
	cmp r1, r0
	beq _0806B174
	b _0806B33C
_0806B174:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r6
	blo _0806B0D6
_0806B17E:
	movs r3, #0
	cmp r3, #0
	beq _0806B186
	b _0806B33C
_0806B186:
	mov r0, sl
	mov r1, r9
	movs r2, #0
	bl sub_0800AE50
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0806B1A6
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0806B1A6
	b _0806AEC0
_0806B1A6:
	ldr r4, [sp, #0x78]
	ldr r7, [sp, #0x80]
	cmp r4, r7
	bne _0806B1DA
	mov r0, sl
	str r0, [sp, #0x4c]
	add r4, sp, #0x4c
	mov r1, r9
	str r1, [r4, #4]
	ldr r0, _0806B3A4
	str r0, [sp, #0x54]
	add r5, sp, #0x54
	ldr r0, [sp, #0x58]
	movs r1, #0
	bl sub_08068F9C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0801FB14
	cmp r0, #0
	beq _0806B1DA
	b _0806B33C
_0806B1DA:
	ldr r2, _0806B3A8
	ldr r3, [sp, #0x84]
	asrs r1, r3, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r0, r0, #1
	add sl, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r7, #0
	ldrsh r0, [r1, r7]
	lsls r0, r0, #1
	add r9, r0
	mov r0, sl
	asrs r5, r0, #8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, r9
	asrs r4, r1, #8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_0800BC08
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, _0806B3AC
	ldr r3, [sp, #0x88]
	adds r0, r3, r0
	ldrb r1, [r0, #0]
	ldr r4, [sp, #0x6c]
	adds r1, r4, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r4, #1
	str r4, [sp, #0]
	add r0, sp, #0x10
	add r2, sp, #0x48
	mov r3, sp
	adds r3, #0x4a
	bl sub_08065370
	ldr r0, _0806B3B0
	ldr r0, [r0, #0]
	ldrh r1, [r0, #4]
	movs r0, #4
	ands r0, r1
	add r5, sp, #0x44
	mov r6, sp
	adds r6, #0x46
	cmp r0, #0
	bne _0806B2F8
	bl sub_0800CC98
	cmp r0, #0
	bne _0806B2F8
	bl sub_0800CD8C
	cmp r0, #0
	bne _0806B2F8
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806B2F8
	ldr r0, _0806B3B4
	ldr r0, [r0, #0]
	ands r0, r4
	cmp r0, #0
	bne _0806B28C
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_0806B28C:
	ldr r0, _0806B3B8
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _0806B2A0
	bl sub_0800CDC0
	cmp r0, #0
	beq _0806B2A0
	movs r7, #0
_0806B2A0:
	ldr r0, _0806B3B4
	ldr r1, [r0, #0]
	movs r2, #1
	ands r1, r2
	ldr r0, [sp, #0x78]
	ands r0, r2
	cmp r1, r0
	bne _0806B2F8
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r3, _0806B3BC
	ldr r2, _0806B3AC
	ldr r4, [sp, #0x90]
	asrs r1, r4, #0x14
	adds r1, r1, r2
	ldrb r2, [r1, #0]
	lsls r2, r2, #2
	adds r1, r2, r3
	movs r4, #0
	ldrsh r1, [r1, r4]
	adds r0, r0, r1
	movs r4, #0
	ldrsh r1, [r6, r4]
	adds r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	ldr r4, [sp, #0x6c]
	ldr r3, [sp, #0x74]
	adds r2, r4, r3
	lsls r2, r2, #0x10
	add r4, sp, #0x48
	ldrh r3, [r4, #0]
	str r7, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	lsrs r2, r2, #0x10
	bl sub_08007870
_0806B2F8:
	bl sub_080003F0
_0806B2FC:
	ldr r1, [sp, #0x68]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	cmp r1, #0
	beq _0806B336
	bl sub_0800BA6C
	cmp r0, #0
	beq _0806B336
	bl sub_080020F4
	ldr r7, [sp, #0x78]
	cmp r7, r0
	beq _0806B31E
	b _0806AF3C
_0806B31E:
	ldr r1, [sp, #0x60]
	ldrh r0, [r1, #0x20]
	subs r0, #0xb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0806B336
	bl sub_0800D11C
	cmp r0, #0
	bne _0806B336
	b _0806AF3C
_0806B336:
	movs r2, #0
	cmp r2, #0
	beq _0806B368
_0806B33C:
	ldr r2, _0806B3A8
	ldr r3, [sp, #0x90]
	asrs r1, r3, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r0, r0, #1
	add sl, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r7, #0
	ldrsh r0, [r1, r7]
	lsls r0, r0, #1
	add r9, r0
	ldr r0, [sp, #0x58]
	mov r1, sl
	mov r2, r9
	bl sub_08079ED0
_0806B368:
	ldr r0, [sp, #0x78]
	cmp r0, #3
	bhi _0806B37E
	ldr r1, [sp, #0x80]
	cmp r0, r1
	beq _0806B37E
	ldr r1, [sp, #0x60]
	adds r1, #0xdc
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
_0806B37E:
	ldr r2, _0806B3C0
	ldr r3, [sp, #0x8c]
	adds r2, r3, r2
	movs r1, #1
	ldr r4, [sp, #0x7c]
	lsls r1, r4
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
_0806B390:
	add sp, #0x94
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806B3A0: .4byte gUnk_03003CE0
_0806B3A4: .4byte 0x00080008
_0806B3A8: .4byte gUnk_080B9704
_0806B3AC: .4byte gUnk_084790B4
_0806B3B0: .4byte gUnk_03005CF4
_0806B3B4: .4byte gUnk_03002344
_0806B3B8: .4byte gUnk_03003170
_0806B3BC: .4byte gUnk_084EBEBC
_0806B3C0: .4byte gUnk_030063E0
	thumb_func_end sub_0806ABC0
