	thumb_func_start sub_08027C1C
sub_08027C1C: @ 0x08027C1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08027C50
	add sp, r4
	adds r1, r0, #0
	movs r0, #0
	str r0, [sp, #0x230]
	movs r2, #0
	str r2, [sp, #0x234]
	movs r3, #0
	str r3, [sp, #0x23c]
	ldrh r0, [r1, #0]
	ldr r2, _08027C54
	cmp r0, #0
	beq _08027C70
	movs r4, #0x92
	lsls r4, r4, #1
_08027C44:
	ldrh r0, [r1, #0]
	cmp r0, #8
	beq _08027C58
	cmp r0, #9
	beq _08027C60
	b _08027C68
_08027C50: .4byte 0xFFFFFDB4
_08027C54: .4byte gUnk_03005CF4
_08027C58:
	adds r6, r1, #4
	ldrh r5, [r1, #2]
	str r5, [sp, #0x230]
	b _08027C68
_08027C60:
	adds r0, r1, #4
	str r0, [sp, #0x240]
	ldrh r3, [r1, #2]
	str r3, [sp, #0x234]
_08027C68:
	adds r1, r1, r4
	ldrh r0, [r1, #0]
	cmp r0, #0
	bne _08027C44
_08027C70:
	ldr r0, [r2, #0]
	ldr r4, _08027CC0
	adds r7, r0, r4
	movs r5, #0
	mov r8, r5
	ldr r0, [sp, #0x230]
	cmp r8, r0
	blo _08027C82
	b _08027DAE
_08027C82:
	ldr r1, _08027CC4
	mov r9, r1
_08027C86:
	movs r2, #0
	mov sl, r2
	movs r3, #1
	add r8, r3
	adds r4, r6, #0
	adds r4, #0x24
	str r4, [sp, #0x248]
	adds r4, r6, #0
_08027C96:
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _08027D94
	ldr r0, _08027CC8
	ldr r0, [r0, #0]
	lsls r1, r5, #3
	movs r6, #0xb0
	lsls r6, r6, #1
	adds r0, r0, r6
	adds r1, r0, r1
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _08027CCC
	ldrh r0, [r4, #0]
	lsls r0, r0, #0xb
	str r0, [r7, #0]
	ldrh r0, [r4, #2]
	lsls r0, r0, #0xb
	str r0, [r7, #4]
	b _08027CD4
	.2byte 0x0000
_08027CC0: .4byte 0x0000058C
_08027CC4: .4byte gUnk_084B1860
_08027CC8: .4byte gUnk_03005CF4
_08027CCC:
	ldr r0, [r1, #0]
	ldr r1, [r1, #4]
	str r0, [r7, #0]
	str r1, [r7, #4]
_08027CD4:
	ldrh r0, [r4, #4]
	lsls r0, r0, #5
	ldr r1, _08027D10
	adds r2, r0, r1
	str r2, [r7, #0x20]
	ldrh r0, [r2, #0]
	lsls r1, r0, #1
	adds r1, r1, r0
	movs r3, #0
	strh r1, [r7, #0x10]
	ldrh r0, [r4, #6]
	strh r0, [r7, #0x16]
	ldrh r0, [r2, #8]
	cmp r0, #1
	bls _08027D14
	movs r0, #0x34
	muls r0, r5, r0
	add r0, sp
	adds r0, #0x10
	ldrh r1, [r2, #8]
	lsls r1, r1, #4
	add r1, r9
	ldr r1, [r1, #0]
	str r3, [sp, #0]
	movs r2, #0xd
	movs r3, #1
	bl sub_08065158
	b _08027D30
	.2byte 0x0000
_08027D10: .4byte gUnk_0849E760
_08027D14:
	movs r0, #0x34
	muls r0, r5, r0
	add r0, sp
	adds r0, #0x10
	ldrh r1, [r2, #8]
	lsls r1, r1, #4
	add r1, r9
	ldr r1, [r1, #0]
	str r3, [sp, #0]
	movs r2, #0xd
	movs r3, #1
	negs r3, r3
	bl sub_08065158
_08027D30:
	ldr r0, _08027E04
	ldr r0, [r0, #0]
	movs r1, #0x8b
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r5
	ldrb r0, [r0, #0]
	strh r0, [r7, #0x14]
	ldr r2, [r7, #0x20]
	ldrh r0, [r2, #8]
	lsls r0, r0, #4
	mov r1, r9
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	strh r0, [r7, #8]
	movs r3, #0
	strh r3, [r7, #0xa]
	strh r3, [r7, #0xc]
	strh r3, [r7, #0xe]
	movs r0, #1
	strh r0, [r7, #0x18]
	ldrh r0, [r2, #8]
	lsls r0, r0, #4
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	strh r0, [r7, #0x1a]
	ldrh r0, [r2, #8]
	lsls r0, r0, #4
	ldr r6, _08027E08
	adds r0, r0, r6
	ldr r0, [r0, #0]
	strh r0, [r7, #0x1c]
	ldrh r0, [r7, #0x16]
	cmp r0, #0
	beq _08027D80
	ldr r0, [sp, #0x23c]
	adds r0, #1
	str r0, [sp, #0x23c]
_08027D80:
	adds r7, #0x24
	adds r5, #1
	bl sub_0800CDC0
	cmp r0, #0
	beq _08027D94
	bl sub_08002164
	cmp r5, r0
	beq _08027DA2
_08027D94:
	adds r4, #8
	movs r1, #1
	add sl, r1
	mov r2, sl
	cmp r2, #3
	bhi _08027DA2
	b _08027C96
_08027DA2:
	ldr r6, [sp, #0x248]
	ldr r2, _08027E04
	ldr r3, [sp, #0x230]
	cmp r8, r3
	bhs _08027DAE
	b _08027C86
_08027DAE:
	ldr r4, [sp, #0x234]
	cmp r4, #0
	bne _08027DB6
	b _08027ED0
_08027DB6:
	ldr r0, [r2, #0]
	ldrh r0, [r0, #0x34]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r6, [sp, #0x240]
	adds r6, r6, r1
	str r6, [sp, #0x240]
	ldr r6, _08027E0C
	movs r0, #0xc
	adds r0, r0, r6
	mov r9, r0
	ldr r4, [sp, #0x240]
	movs r1, #0
	mov r8, r1
_08027DDA:
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _08027EC6
	ldr r0, _08027E04
	ldr r0, [r0, #0]
	lsls r1, r5, #3
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r1, r0, r1
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _08027E10
	ldrh r0, [r4, #0]
	lsls r0, r0, #0xb
	str r0, [r7, #0]
	ldrh r0, [r4, #2]
	lsls r0, r0, #0xb
	str r0, [r7, #4]
	b _08027E18
	.2byte 0x0000
_08027E04: .4byte gUnk_03005CF4
_08027E08: .4byte gUnk_084B186C
_08027E0C: .4byte gUnk_084B1860
_08027E10:
	ldr r0, [r1, #0]
	ldr r1, [r1, #4]
	str r0, [r7, #0]
	str r1, [r7, #4]
_08027E18:
	ldrh r0, [r4, #4]
	lsls r0, r0, #5
	ldr r1, _08027E54
	adds r2, r0, r1
	str r2, [r7, #0x20]
	ldrh r1, [r2, #0]
	lsls r0, r1, #1
	adds r0, r0, r1
	movs r3, #0
	strh r0, [r7, #0x10]
	ldrh r0, [r4, #6]
	strh r0, [r7, #0x16]
	ldrh r0, [r2, #8]
	cmp r0, #1
	bls _08027E58
	movs r0, #0x34
	muls r0, r5, r0
	add r0, sp
	adds r0, #0x10
	ldrh r1, [r2, #8]
	lsls r1, r1, #4
	adds r1, r1, r6
	ldr r1, [r1, #0]
	str r3, [sp, #0]
	movs r2, #0xd
	movs r3, #1
	bl sub_08065158
	b _08027E74
	.2byte 0x0000
_08027E54: .4byte gUnk_0849E760
_08027E58:
	movs r0, #0x34
	muls r0, r5, r0
	add r0, sp
	adds r0, #0x10
	ldrh r1, [r2, #8]
	lsls r1, r1, #4
	adds r1, r1, r6
	ldr r1, [r1, #0]
	str r3, [sp, #0]
	movs r2, #0xd
	movs r3, #1
	negs r3, r3
	bl sub_08065158
_08027E74:
	ldr r3, _08027F3C
	ldr r0, [r3, #0]
	movs r1, #0x8b
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r5
	ldrb r0, [r0, #0]
	strh r0, [r7, #0x14]
	ldr r2, [r7, #0x20]
	ldrh r0, [r2, #8]
	lsls r0, r0, #4
	adds r1, r6, #4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	strh r0, [r7, #8]
	mov r0, r8
	strh r0, [r7, #0xa]
	strh r0, [r7, #0xc]
	strh r0, [r7, #0xe]
	movs r0, #1
	strh r0, [r7, #0x18]
	ldrh r0, [r2, #8]
	lsls r0, r0, #4
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	strh r0, [r7, #0x1a]
	ldrh r0, [r2, #8]
	lsls r0, r0, #4
	add r0, r9
	ldr r0, [r0, #0]
	strh r0, [r7, #0x1c]
	ldrh r0, [r7, #0x16]
	adds r2, r3, #0
	cmp r0, #0
	beq _08027EC2
	ldr r1, [sp, #0x23c]
	adds r1, #1
	str r1, [sp, #0x23c]
_08027EC2:
	adds r7, #0x24
	adds r5, #1
_08027EC6:
	adds r4, #8
	ldr r0, [sp, #0x240]
	adds r0, #0x18
	cmp r4, r0
	bls _08027DDA
_08027ED0:
	ldr r0, [r2, #0]
	str r5, [sp, #0x238]
	str r5, [r0, #0x48]
	ldr r3, _08027F40
	adds r0, r0, r3
	movs r1, #0
	str r1, [r0, #0]
	mov r8, r1
	ldr r5, _08027F44
	movs r4, #0
	adds r3, #4
_08027EE6:
	ldr r0, [r2, #0]
	mov r6, r8
	lsls r1, r6, #2
	adds r0, r0, r1
	adds r0, r0, r5
	strb r4, [r0, #0]
	ldr r0, [r2, #0]
	adds r0, r0, r1
	adds r0, r0, r3
	strh r4, [r0, #0]
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #3
	bls _08027EE6
	ldr r2, [sp, #0x23c]
	cmp r2, #0
	beq _08027F0E
	bl sub_08056FCC
_08027F0E:
	ldr r2, _08027F3C
	ldr r0, [r2, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08027F20
	b _08028312
_08027F20:
	ldr r3, [sp, #0x238]
	cmp r3, #0
	bne _08027F28
	b _08028312
_08027F28:
	mov sl, r2
_08027F2A:
	mov r4, sl
	ldr r0, [r4, #0]
	ldr r5, _08027F48
	adds r7, r0, r5
	movs r6, #0
	str r6, [sp, #0x22c]
	mov r8, r6
	b _080282B6
	.2byte 0x0000
_08027F3C: .4byte gUnk_03005CF4
_08027F40: .4byte 0x00001E4C
_08027F44: .4byte 0x00001E52
_08027F48: .4byte 0x0000058C
_08027F4C:
	mov r1, sl
	ldr r3, [r1, #0]
	mov r2, r8
	lsls r0, r2, #3
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r2, r3, r4
	adds r2, r2, r0
	ldr r0, [r7, #0]
	ldr r1, [r7, #4]
	str r0, [r2, #0]
	str r1, [r2, #4]
	movs r5, #0x8b
	lsls r5, r5, #2
	adds r0, r3, r5
	add r0, r8
	ldrh r1, [r7, #0x14]
	strb r1, [r0, #0]
	ldrh r0, [r7, #0x14]
	cmp r0, #0
	beq _08027F9A
	movs r6, #0x24
	adds r6, r6, r7
	mov r9, r6
	cmp r0, #0
	bge _08027F82
	b _080281AC
_08027F82:
	cmp r0, #0xa
	beq _08027FB8
	cmp r0, #0xa
	bge _08027F8C
	b _080281AC
_08027F8C:
	cmp r0, #0xb
	bne _08027F92
	b _0802818C
_08027F92:
	cmp r0, #0xc
	bne _08027F98
	b _08028132
_08027F98:
	b _080281AC
_08027F9A:
	ldr r0, [r7, #0x20]
	ldrh r0, [r0, #8]
	lsls r0, r0, #4
	ldr r1, _08027FB4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	strh r0, [r7, #8]
	movs r2, #1
	str r2, [sp, #0x244]
	movs r3, #0x24
	adds r3, r3, r7
	mov r9, r3
	b _080281AC
_08027FB4: .4byte gUnk_084B1864
_08027FB8:
	ldr r0, [r7, #0x20]
	ldrh r0, [r0, #8]
	lsls r0, r0, #4
	ldr r4, _08027FE4
	adds r0, r0, r4
	ldr r0, [r0, #0]
	adds r0, #1
	strh r0, [r7, #8]
	movs r5, #0
	str r5, [sp, #0x244]
	ldrh r0, [r7, #0xe]
	cmp r0, #0
	bne _08027FD4
	b _080281AC
_08027FD4:
	ldrh r0, [r7, #0x10]
	cmp r0, #0
	beq _08027FDC
	b _0802812A
_08027FDC:
	ldrh r0, [r7, #0x16]
	cmp r0, #0
	beq _08028000
	b _08027FEC
_08027FE4: .4byte gUnk_084B1864
_08027FE8:
	bl sub_080003F0
_08027FEC:
	bl sub_08068558
	cmp r0, #0
	beq _08027FE8
	mov r6, sl
	ldr r0, [r6, #0]
	ldrh r2, [r0, #4]
	movs r1, #8
	orrs r1, r2
	strh r1, [r0, #4]
_08028000:
	ldr r0, [r7, #0]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	ldr r1, [r7, #4]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	ldrh r2, [r7, #0x1a]
	ldrh r3, [r7, #0x1c]
	movs r4, #0
	str r4, [sp, #0]
	bl sub_0800AEF4
	strh r4, [r7, #0x18]
	movs r0, #0xc
	strh r0, [r7, #0x14]
	movs r5, #0
	strh r5, [r7, #0xa]
	strh r5, [r7, #0xc]
	bl sub_0800CCCC
	cmp r0, #0
	bne _0802805A
	ldr r0, [r7, #0x20]
	ldrb r0, [r0, #7]
	cmp r0, #1
	beq _0802804C
	cmp r0, #1
	bgt _0802803E
	cmp r0, #0
	beq _08028044
	b _0802805A
_0802803E:
	cmp r0, #2
	beq _08028054
	b _0802805A
_08028044:
	movs r0, #0x22
	bl sub_0805865C
	b _0802805A
_0802804C:
	movs r0, #0x23
	bl sub_0805865C
	b _0802805A
_08028054:
	movs r0, #0x2b
	bl sub_0805865C
_0802805A:
	bl sub_08002204
	cmp r0, #0
	bne _08028064
	b _080281AC
_08028064:
	mov r6, sl
	ldr r0, [r6, #0]
	ldrh r0, [r0, #0]
	cmp r0, #0xb
	beq _08028116
	bl sub_0800CE30
	cmp r0, #0
	beq _08028082
	ldr r1, [r7, #0x20]
	ldrh r0, [r1, #0x10]
	adds r3, r0, #0
	adds r3, #0x32
	adds r0, r1, #0
	b _08028086
_08028082:
	ldr r0, [r7, #0x20]
	ldrh r3, [r0, #0x10]
_08028086:
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0802808E
	movs r3, #0
_0802808E:
	add r4, sp, #0x218
	ldrh r2, [r7, #0x12]
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_0805C4FC
	cmp r0, #0
	bne _080280A0
	b _080281AC
_080280A0:
	ldr r0, _080280C4
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #0xa
	bls _080280B6
	ldrh r0, [r4, #0]
	cmp r0, #9
	bne _080280B6
	movs r0, #1
	strh r0, [r4, #0]
	strh r0, [r4, #2]
_080280B6:
	bl sub_0800CCCC
	cmp r0, #0
	beq _080280F2
	ldr r6, _080280C8
	b _080280D0
	.2byte 0x0000
_080280C4: .4byte gUnk_03003170
_080280C8: .4byte gUnk_03003CE0
_080280CC:
	bl sub_080003F0
_080280D0:
	ldr r4, [r7, #0]
	ldr r5, [r7, #4]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r6
	ldrh r2, [r0, #0x2c]
	adds r0, r4, #0
	adds r1, r5, #0
	add r3, sp, #0x218
	bl sub_08066520
	cmp r0, #0
	beq _080280CC
	b _080281AC
_080280F2:
	ldr r4, _080280F8
	b _08028100
	.2byte 0x0000
_080280F8: .4byte gUnk_03003200
_080280FC:
	bl sub_080003F0
_08028100:
	ldr r0, [r7, #0]
	ldr r1, [r7, #4]
	ldrh r2, [r4, #0]
	add r3, sp, #0x218
	bl sub_08066520
	cmp r0, #0
	beq _080280FC
	b _080281AC
_08028112:
	bl sub_080003F0
_08028116:
	ldr r0, [r7, #0]
	ldr r1, [r7, #4]
	mov r3, sl
	ldr r2, [r3, #0]
	adds r2, #0x5c
	bl sub_08066490
	cmp r0, #0
	beq _08028112
	b _080281AC
_0802812A:
	add r4, sp, #0x244
	ldrh r4, [r4, #0]
	strh r4, [r7, #0x14]
	b _080281AC
_08028132:
	ldr r2, [r7, #0x20]
	ldrb r1, [r2, #6]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _08028154
	ldrh r0, [r2, #8]
	lsls r0, r0, #4
	ldr r5, _08028150
	adds r0, r0, r5
	ldr r0, [r0, #0]
	adds r0, #2
	b _08028170
_08028150: .4byte gUnk_084B1864
_08028154:
	movs r0, #0x34
	mov r6, r8
	muls r6, r0, r6
	adds r0, r6, #0
	add r0, sp
	adds r0, #0x10
	str r1, [sp, #0]
	ldr r1, _08028188
	movs r2, #0xd
	movs r3, #1
	negs r3, r3
	bl sub_08065158
	movs r0, #6
_08028170:
	strh r0, [r7, #8]
	movs r0, #0
	str r0, [sp, #0x244]
	ldrh r0, [r7, #0xe]
	movs r1, #0x24
	adds r1, r1, r7
	mov r9, r1
	cmp r0, #0
	beq _080281AC
	movs r0, #0xb
	strh r0, [r7, #0x14]
	b _080281AC
_08028188: .4byte 0x00050053
_0802818C:
	ldrh r4, [r7, #0x18]
	cmp r4, #0
	beq _08028194
	b _080282B0
_08028194:
	ldr r0, [r7, #0]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	ldr r1, [r7, #4]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	ldrh r2, [r7, #0x1a]
	ldrh r3, [r7, #0x1c]
	str r4, [sp, #0]
	bl sub_0800AEF4
	b _080282AC
_080281AC:
	movs r0, #0x34
	mov r6, r8
	muls r6, r0, r6
	mov r0, sp
	adds r0, r0, r6
	adds r0, #0x10
	ldrh r1, [r7, #8]
	adds r2, r7, #0
	adds r2, #0xa
	adds r3, r7, #0
	adds r3, #0xc
	ldr r5, [sp, #0x244]
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	str r4, [sp, #0]
	bl sub_08065370
	strh r0, [r7, #0xe]
	bl sub_0800CC98
	cmp r0, #0
	bne _080282AC
	bl sub_0800CCCC
	cmp r0, #0
	bne _080282AC
	bl sub_0800CD8C
	adds r5, r0, #0
	cmp r5, #0
	bne _080282AC
	bl sub_0800BA6C
	cmp r0, #0
	beq _080282AC
	ldrh r0, [r7, #0x18]
	cmp r0, #0
	beq _08028212
	ldr r0, [r7, #0]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	ldr r1, [r7, #4]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	ldrh r2, [r7, #0x1a]
	ldrh r3, [r7, #0x1c]
	movs r4, #1
	str r4, [sp, #0]
	bl sub_0800AEF4
	strh r5, [r7, #0x18]
_08028212:
	ldr r0, [sp, #0x22c]
	cmp r0, #0
	bne _0802823A
	ldr r0, [r7, #0x20]
	ldrh r0, [r0, #8]
	cmp r0, #5
	bls _0802823A
	movs r1, #1
	str r1, [sp, #0x22c]
	add r0, sp, #0x1c
	adds r0, r0, r6
	ldr r1, [r0, #0]
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #0x1d
	movs r2, #1
	bl sub_08000AF0
	b _0802823E
_0802823A:
	movs r3, #0
	str r3, [sp, #0x22c]
_0802823E:
	ldr r0, [r7, #0]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, [r7, #0]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r7, #4]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r5, sp, #0x228
	ldr r6, _080282A8
	add r6, sp
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800BC08
	movs r3, #0
	ldrsh r0, [r5, r3]
	movs r5, #0
	ldrsh r1, [r6, r5]
	ldrh r2, [r7, #8]
	ldrh r3, [r7, #0xa]
	str r4, [sp, #0]
	movs r4, #0x34
	mov r5, r8
	muls r5, r4, r5
	mov r6, sp
	adds r6, r6, r5
	adds r6, #0x10
	adds r4, r6, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	add r4, sp, #0x18
	adds r4, r4, r5
	ldr r4, [r4, #0]
	str r4, [sp, #8]
	ldr r4, [r6, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
	b _080282B0
	.2byte 0x0000
_080282A8: .4byte 0x0000022A
_080282AC:
	movs r0, #1
	strh r0, [r7, #0x18]
_080282B0:
	movs r6, #1
	add r8, r6
	mov r7, r9
_080282B6:
	ldr r0, [sp, #0x238]
	cmp r8, r0
	bhs _080282BE
	b _08027F4C
_080282BE:
	bl sub_08066404
	mov r1, sl
	ldr r0, [r1, #0]
	ldr r2, _08028358
	adds r0, r0, r2
	movs r3, #0
	str r3, [r0, #0]
	mov r8, r3
	ldr r3, _0802835C
	ldr r5, _08028360
	movs r2, #0
	ldr r4, _08028364
_080282D8:
	ldr r0, [r3, #0]
	mov r6, r8
	lsls r1, r6, #2
	adds r0, r0, r1
	adds r0, r0, r5
	strb r2, [r0, #0]
	ldr r0, [r3, #0]
	adds r0, r0, r1
	adds r0, r0, r4
	strh r2, [r0, #0]
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #3
	bls _080282D8
	bl sub_080003F0
	mov r2, sl
	ldr r0, [r2, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08028312
	ldr r3, [sp, #0x238]
	cmp r3, #0
	beq _08028312
	b _08027F2A
_08028312:
	movs r3, #0
	ldr r5, _0802835C
	movs r4, #0
_08028318:
	ldr r0, [r5, #0]
	movs r6, #0x8b
	lsls r6, r6, #2
	adds r0, r0, r6
	adds r0, r0, r3
	strb r4, [r0, #0]
	ldr r2, [r5, #0]
	lsls r1, r3, #3
	subs r6, #0xcc
	adds r0, r2, r6
	adds r0, r0, r1
	str r4, [r0, #0]
	adds r6, #4
	adds r0, r2, r6
	adds r0, r0, r1
	str r4, [r0, #0]
	adds r3, #1
	cmp r3, #9
	bls _08028318
	bl sub_08056FE0
	movs r3, #0x93
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08028358: .4byte 0x00001E4C
_0802835C: .4byte gUnk_03005CF4
_08028360: .4byte 0x00001E52
_08028364: .4byte 0x00001E50
	thumb_func_end sub_08027C1C
